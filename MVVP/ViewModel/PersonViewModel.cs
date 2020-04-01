using MVVP.Command;
using MVVP.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace MVVP.ViewModel
{
    public class PersonViewModel : INotifyPropertyChanged
    {
        private Person personName;
        

        public Person PersonName
        {
            get { return personName; }
            set {
                personName = value;
                NotifyPropertyChanged("PersonName");
            }
        }

        private ObservableCollection<Person> _persons;

        public PersonViewModel()
        {
            personName = new Person();
            _persons = new ObservableCollection<Person>();

        }

        public ObservableCollection<Person> Persons
        {
            get { return _persons; }
            set
            {
                _persons = value;
                NotifyPropertyChanged("Persons");
            }
        }

        private ICommand _submitCommand;
        public ICommand SubmitCommand
        {
            get
            {
                if (_submitCommand == null)
                {
                    _submitCommand = new RelayCommand(SubmitExecute, CanSubmitExecute, true);
                }
                return _submitCommand;
            }
        }
       
        private bool CanSubmitExecute(object parameter)
        {
            if (string.IsNullOrEmpty(personName.FName)  || string.IsNullOrEmpty(personName.LName))
            {
                return false;
            }
            return true;
        }

        private void SubmitExecute(object parameter)
        {
            Persons.Add(PersonName);
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void NotifyPropertyChanged(string propertyName)
        {
            if(PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
}

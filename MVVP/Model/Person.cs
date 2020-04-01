using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVVP.Model
{
    public class Person : INotifyPropertyChanged
    {
        private string fName;
        
        public string FName
        {
            get { return fName; }
            set { fName = value; } 
        }

        private string lName;

        public string LName
        {
            get { return lName; }
            set { lName = value; }
        }

        public string fullName;

        public string FullName
        {
            get { return fullName = FName + " " + LName; }
            set {

                if(fullName != value)
                {
                    fullName = value;
                }
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string p)
        {
            PropertyChangedEventHandler ph = PropertyChanged;
            if (ph != null)
            {
                ph(this, new PropertyChangedEventArgs(p));
            }
        }
    }
}

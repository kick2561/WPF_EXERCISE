   M S B A M L   `   `   `  ����?  ;MVVP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MVVPMVVP  5   	   /clr-namespace:MVVP.ViewModelMVVP.ViewModel  5   	       MVVP.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:MVVP     5   	   +vmclr-namespace:MVVP.ViewModel     5   	     � Title$  
MainWindow��5	   	   $	��450��6   $	��800��6)    � 	Resources 5
      $   MVVP.ViewModel.PersonViewModel   PersonViewModel��%   &	          5   
   6   5      .��5      � $	��420��6K   $��0,0,-0.4,-6q�6X   $��Bottom=�6m    � DataContext 6   ��  �� Source# [   � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��0��6!   $��
First Name��61   $��Center=�6C   �� 5   
   $��0��6   $��1��6   $	��100��6/   $��Center=�6;   ��6X   �� *FName+ �� Mode$ TwoWay=��� 5   
   $��1��6   $��0��6!   $��	Last Name��61   $��Center=�6B   �� 5   
   $��1��6   $��1��6   $��Center=�6/   ��6L   �� *LName+$ TwoWay=��� 5!   
   $��Submit��6   $��Center=�6D   $��2��6a   $��0��6n   ��6"   �� *SubmitCommand+6n   �� 5"   
   -   5        $��3��5"   3   $��1��6@   $
��Auto��6P   ��6   �� *	Persons+ �� View 5#      �� 5$      .P�5%      �� $��
First name��6%    �� Width$
 Auto��6`   	 �� DisplayMemberBinding	 69   �� *FName+6`   �� 5&      $��	Last name��6%   $
 Auto��6_   	 68   �� *LName+6_   �� 5'      $��	Full name��6%   $
 Auto��6b   	 68   �� *
FullName+6b   5(      5*      5+      5,      
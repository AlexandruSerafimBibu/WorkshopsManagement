   M S B A M L   `   `   `  ����N  JWorkshopsManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WorkshopsManagementWorkshopsManagement  5   	   $    WorkshopsManagement.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WorkshopsManagement     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
MainWindow��5	   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�62   $
��1060��6W   $
��1960��6e    � WindowStyle$
 None=�6r    � WindowState$ 	Maximized=�6�   ��5
      �� 5   
    �� ImageSource$ /Views/wallpaper2.jpg��6   .��5      � .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $	��Top=�6.   $��90��6F   ��5      �� 5       �� Color$ 	#FF5F74AE��6"    �� Opacity$
 0.65Q�64   .+�5      �� -   5        $
��Home��5      $��60��67   $	��120��6C   $��
20,10,0,10q�6O   �� 5      -   5        $��	Workshops��5      $��60��6@   $	��120��6L   $��
10,10,0,10q�6X   �� 5      -   5        $��Forum��5      $��60��69   $	��120��6E   $��
10,10,0,10q�6Q   �� 5      -   5        $��Contact��5      $��60��6=   $	��120��6I   $��
10,10,0,10q�6U   �� 5      -   5        $��Log Out��5      $��60��6C   $	��120��6O   $��
10,10,0,10q�6[   �� 5      -   5        	 ��Name$	 adminButton��5      $��Admin��6*   $��60��6:   $	��120��6F   $��
10,10,0,10q�6R   6f   5       � 5   
   -   5        
  �Name$
 MainWin��5      $��0,90,0,0q�6!     � NavigationUIVisibility$ Hidden=�63   �� 5   
   -   5        $
��Left=�5      $��1788,10,0,0q�6,   $	��Top=�6A   $��62��6Y   $��97��6e   ��5      �� 5      $ 	#FF673AB7��6"   $ 0Q�64   ��5      �� 5       $ Black��6"   $ 0Q�60   .��5"      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Power=�6&   $��40��63   $��40��6?   5#      �� 5$   
   -	   5        $
��Left=�5$      $��1708,10,0,0q�6,   $	��Top=�6A   $��62��6Y   $��80��6e   ��5%      �� 5&      $ 	#FF673AB7��6"   $ 0Q�64   ��5(      �� 5)      $ 	#FF673AB7��6"   $
 0.04Q�64   .��5+        $ Account=�6&   $��40��65   $��40��6A   5,      �� 5-   
   -
   5         ��Name$ label_UserName��5-      $��UserName��6(   $
��Left=�6;   $��1352,22,0,0q�6V   $	��Top=�6k   $��38��6�   $	��356��6�   $��21(�6�   $��Right=�6�   ���	#DDFFFFFF6�   5.      5/      
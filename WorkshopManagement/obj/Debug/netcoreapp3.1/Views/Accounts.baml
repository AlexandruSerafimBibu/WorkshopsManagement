   M S B A M L   `   `   `  ����N  JWorkshopsManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WorkshopsManagementWorkshopsManagement  5      "    WorkshopsManagement.Accounts   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:WorkshopsManagement     5      V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� Title$  Accounts��5
      .��5      � .+�5   
   ��  �� RadiusX$ 80��6    �� RadiusY$ 80��6!   $
��Left=�6.   $	��900��6I   $��Center=�6V   $	��800��6q   $��50,20,20,20q�6}   ��5      �� 5       �� Color$ 	#FF673AB7��6"    �� Opacity$
 0.97Q�64   5      �� 5   
   $��/Views/accounts.png��6   $
��Left=�6-   $��Center=�6H   $	��896��6c   $��	910,0,0,0q�6p   $	��950��6�   � 5   
   $
��Left=�6   $	��900��6*   $��Center=�67   $	��800��6R   $��50,20,20,20q�6^   .+�5      �� $��Center=�6   $��Center=�66   $	��748��6Q   $	��782��6]   .+�5      �� -   5         ��Name$ textBox_First��5      ${�False��61   $
��0,50q�6C    (  $MaterialDesignFilledTextFieldTextBox#��[  6Q   *  $MaterialDesignThemes.Wpf.ThemeAssist   Theme$
 Dark=�6�   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
First Name��6�      
Foreground
 �����$��Champagne & Limousines)�6  
�������68  �� 5      -   5        $ textBox_Last��5      ${�False��60   $
��0,50q�6B   #��[  6P   $
 Dark=�6�   $ 	Last Name��6�   
 �����$��Champagne & Limousines)�6  
�������67  �� 5      -   5        $ textBox_User��5      ${�False��60   $
��0,50q�6B   #��[  6P   $
 Dark=�6�   $ Username��6�   
 �����$��Champagne & Limousines)�6  
�������65  �� 5      -   5        $ textBox_Email��5      ${�False��61   $
��0,50q�6C   #��[  6Q   $
 Dark=�6�   $ Email��6�   
 �����$��Champagne & Limousines)�6  
�������63  G� 5      -   5        	 G�Name$	 textBox_Pass��5      ${�False��64   $
��0,50q�6F    0 ,MaterialDesignFilledPasswordFieldPasswordBox#��[ 6T   $
 Dark=�6�   $ Password��6�   
 �����$��Champagne & Limousines)�6  
�������6B  5      �� 5      -   5        
 ��Name$
 button_Edit��5      $
��Edit��6*   $
��Left=�69   $��
80,842,0,0q�6T   $	��Top=�6h   6�   �� 5      -   5        $
 button_Save��5      ${�False��6*   $
��Save��6=    �� 	IsDefault$
 True��6L   $
��Left=�6]   $��178,842,0,0q�6x   $	��Top=�6�   ��5      �� 5      $ 	#DDFFFFFF��6&   $ 1Q�68   ��5!      �� 5"      $ 	#FF673AB7��6&   $ 1Q�68   ��5$      �� 5%      $ 	#FF673AB7��6&   $ 1Q�68   5'      5(      5)      5*      
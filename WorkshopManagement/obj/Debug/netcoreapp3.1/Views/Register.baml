   M S B A M L   `   `   `  ����N  JWorkshopsManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WorkshopsManagementWorkshopsManagement  5   	   "    WorkshopsManagement.Register   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WorkshopsManagement     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Login��5	   	   $	��500��6   $	��350��6$    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	   $��Segoe UI Emoji)�5   	   .��5      � .+�5   
   �� $	��280��6   $	��Top=�6!   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ 	#FF2281D1��6#   � 5      $ 	#FF34268A��6#    � Offset$ 1Q�65   � 5      $ 	#FF33288B��6#   $ 0.546Q�65   5      5      �� 5   
   $	��280��6   $	��426��6    $	��Top=�6-   $��
35,32,35,0q�6E    �� RadiusY$ 10��6Y   	 �� RadiusX$	 10��6f   
�������
 J� Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#      	Direction$ 0Q�63      RenderingBias$ Quality=�6A      ShadowDepth$ 1Q�6Y      Color$ 	#FFBBBBBB��6i   5      � 5   
   $	��Top=�6   $��
35,50,35,0q�6'   $	��377��6;   .+�5       �� -   5         ��Name$ label_Register��5       $��Register��6,   $��Center=�6?   $	��Top=�6\   
�������$��18(�6�   $��0,-8,0,0q�6�   �� 5!      $��15q�6   .+�5"      �� -   5         ��Name$ textBox_First��5"      $
��0,10q�61    %  !MaterialDesignFloatingHintTextBox#��[  6?   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ 
First Name��6z   $��Champagne & Limousines)�6�   �� 5#      -   5        $ textBox_Last��5#      $
��0,10q�60   #��[  6>   $ 	Last Name��6y   $��Champagne & Limousines)�6�   �� 5$      -   5        $ textBox_User��5$      $
��0,10q�60   #��[  6>   $ Username��6y   $��Champagne & Limousines)�6�   �� 5%      -   5        $ textBox_Email��5%      $
��0,10q�61   #��[  6?   $ Email��6z   $��Champagne & Limousines)�6�   G� 5&      -   5         G�Name$ textBox_Pass��5&      $
��0,10q�64    ) %MaterialDesignFloatingHintPasswordBox#��[ 6B   $ Password��6�   $��Champagne & Limousines)�6�   6�   G� 5'      -   5        $ textBox_ConfirmPass��5'      $
��0,10q�6;   #��[ 6I   $ Confirm Password��6�   $��Champagne & Limousines)�6�   
���   �6�   5(      5)      �� 5+   
   -   5        $	��150��5+      $��Center=�6   $	��Top=�6:   $��	0,442,0,0q�6R   $��Register��6e   6x   �� 5,   
   -	   5        $��Right=�5,      $	��Top=�6-    J� RenderTransformOrigin$ -0.604,0.161&�6E   $��27��6j   $��56��6v   $��	0,0,294,0q�6�   ��5-      �� 5.       �� Color$ 	#FF673AB7��6"    �� Opacity$ 0Q�64   ��50      �� 51      $ 	#FF673AB7��6"   $ 0Q�64   z�53      V� 54      .~�55      �� �� 56      �� 57      T� 58      59      .��5;      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	ArrowBack=�6&   $��17��67   $��Center=�6C   $��21��6^   $ 1.485,0.452&�6i   6�   5<      �� 5=   
   -
   5        $
��Left=�5=      $��	294,0,0,0q�6,   $	��Top=�6?   $ -0.604,0.161&�6W   $��27��6|   $��56��6�   ��5>      �� 5?      $ 	#FF673AB7��6"   $ 0Q�64   ��5A      �� 5B      $ 	#FF673AB7��6"   $ 0Q�64   z�5D      V� 5E      .~�5F      �� �� 5G      �� 5H      T� 5I      5J      .��5L        $ Power=�6&   $��17��63   $��21��6?   $ 1.485,0.452&�6J   5M      5P      5Q      
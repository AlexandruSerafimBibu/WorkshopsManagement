   M S B A M L   `   `   `  ����N  JWorkshopsManagement, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:WorkshopsManagementWorkshopsManagement  5   	       WorkshopsManagement.Login   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:WorkshopsManagement     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Login��5	   	   $	��500��6   $	��350��6$   $��Disabled=�5
   	    � 
ResizeMode$ NoResize=�5   	    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�6   $��Center=�5   	   .��5      � .+�5   
   �� $	��280��6   $	��Top=�6!   ��5      �� 5       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5      �  � Color$ 	#FF2281D1��6#   � 5      $ 	#FF34268A��6#    � Offset$ 1Q�65   � 5      $ 	#FF33288B��6#   $ 0.546Q�65   5      5      �� 5   
   $	��280��6   $	��240��6    $��Bottom=�6-   $
��0,80q�6H    �� RadiusY$ 10��6V   	 �� RadiusX$	 10��6c   
�������
 J� Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6#      	Direction$ 0Q�63      RenderingBias$ Quality=�6A      ShadowDepth$ 1Q�6Y      Color$ 	#FFBBBBBB��6i   5      � 5   
   $��Bottom=�6   $��35,80q�6*   $	��240��69   .+�5      �� -   5         ��Name$ textBlock_WelcomeMessage��5      $��Login��6:   $��Center=�6G   $	��Top=�6d   $��5q�6|   
�������$��18(�6�   �� 5      $��Center=�6   $��	15,0,15,0q�64   $	��140��6G   .+�5       �� -   5         ��Name$ textBox_User��5       $
��0,10q�60   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 User��6>    %  !MaterialDesignFloatingHintTextBox#��[  6d   6�   G� 5!      -   5         G�Name$ textBox_Pass��5!      $
��0,10q�64   $ Password��6B    ) %MaterialDesignFloatingHintPasswordBox#��[ 6l   6�   5"      5#      �� 5%   
   -   5         ��Name$ button_Login��5%      $	��150��6'   $��Center=�63   $��Bottom=�6P   $
��0,65q�6k   $��LOGIN��6y    �� 	IsDefault$
 True��6�   �� 5&   
   -   5        $��Not having an account?��5&      $��Center=�62   $��Bottom=�6O   $��30q�6j   
������� � Cursor$
 Hand��6�   6�   �� 5'   
   -   5        $��305,0,-10,0q�5'      $	��Top=�6&    J� RenderTransformOrigin$ 0.297,0.485&�6>   $��21��6b   ��5(      �� 5)       �� Color$ 	#FF673AB7��6"    �� Opacity$ 0Q�64   ��5+      �� 5,      $ 	#FF673AB7��6"   $ 0Q�64   .��5.      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Power=�6&   5/      �� 50   
   -   5         ��Name$ pass_Error_Label��50      $�� ��6*   $
��Left=�65   $��
48,335,0,0q�6P   $	��Top=�6d   
���  ��6|   �� 51   
   -   5        $ user_Error_Label��51      $�� ��6*   $
��Left=�65   $��
48,280,0,0q�6P   $	��Top=�6d   
���  ��6|   52      53      
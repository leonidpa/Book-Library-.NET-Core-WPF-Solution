   M S B A M L   `   `   `  ����Y  UBook Library .NET Core WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:Book_Library_.NET_Core_WPF_App.Windows&Book_Library_.NET_Core_WPF_App.Windows  5   	   8    2Book_Library_.NET_Core_WPF_App.Windows.LoginWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Cbl4clr-namespace:Book_Library_.NET_Core_WPF_App.Windows     5   	     � Title$  Book library Login Window��5   	   $	��280��6+   $	��400��68   ��6D   Z� .��5	      � -   5         �Name$ 	LoginGrid��5	      $��Center=�6   $��Center=�6;   $	��230��6V   $	��400��6c   ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� Opacity$
 0.25Q�63    �� 
StartPoint$ 0.5,0&�6B   .��5      �  � Color$ Black��6   � 5      $ 	#FF13C123��6    � Offset$ 1Q�61   5       � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $
��3.5* �6    � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $
��1.5* �6   .+�5   
   �� -   5        	 ��Name$	 Message��5      $��Welcome��6!   $
��Left=�63   $��Center=�6N   $��52��6r   $��	19,12,0,0q�6~   $	��Top=�6�   $	��361��6�   $��24(�6�   ���	#FFFFD100
 J� RenderTransformOrigin$
 
0.512,0.51&�6�   $��2��6  $��2��6$  ��6�   Z� 6$  �� 5   
   $��Login:��6   $��10,0,5,0q�6!   $��Center=�63   $��Right=�6N   $
 0.514,0.508&�6q   $��26��6�   $��1��6�   $��Stretch=�6�   ���	#FFFFD1006�   �� 5   
   -   5         ��Name$ tbLogin��5      $�� ��6#   $��1��6+   $��1��6;   $
��Left=�6H   $��26��6c   $��
5,10,20,10q�6o    �� TextWrapping$
 Wrap=�6�   $��Center=�6�   $	��256��6�   $��Center=�6�   $��Center=�6�   �� 5   
   $��	Password:��6   $��0��6$   $��2��64   $��24��6A   $��10,0,5,0q�6M   $��Center=�6_   $��Right=�6z   $
 0.509,0.546&�6�   ���	#FFFFD100��6�   Z� G� 5   
   -   5         G�Name$ 
tbPassword��5      $��1��6*   $��2��6:    G� PasswordChar$ *��6G   $
��Left=�6X   $��24��6s   $��
5,10,20,10q�6   $��Center=�6�   $	��256��6�   $��Center=�6�   $��Center=�6�   �� 5   
   -   5         ��Name$ btnLogin��5      $��Login��6#   $
��Left=�63   $��32��6N   $��	52,51,0,0q�6Z   $	��Top=�6m   $	��118��6�   $��2��6�   $��1��6�   $��2��6�   ���	#FFDBFDD9���	#FF17FF006�   �� 5    
   -   5        $ btnRegistration��5       $��Registration��6*   $��1��6A   $
��Left=�6Q   $��32��6l   $��	52,45,0,0q�6x   $��3��6�   $	��Top=�6�   $	��118��6�   ���	#FFFDFFCC6�   5!      5"      
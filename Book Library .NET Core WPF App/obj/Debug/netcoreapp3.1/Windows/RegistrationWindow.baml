   M S B A M L   `   `   `  ����Y  UBook Library .NET Core WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:Book_Library_.NET_Core_WPF_App.Windows&Book_Library_.NET_Core_WPF_App.Windows  5   	   ?    9Book_Library_.NET_Core_WPF_App.Windows.RegistrationWindow   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Cbl4clr-namespace:Book_Library_.NET_Core_WPF_App.Windows     5   	     � Title$&   Book library Registration Window��5   	   $	��450��62   $	��417��6?   .��5	      � -   5         �Name$ RegistrationGrid��5	      $��Center=�6%   $��Center=�6B   $	��435��6]   $	��400��6j   ��5
   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� Opacity$
 0.25Q�63    �� 
StartPoint$ 0.5,0&�6B   .��5      �  � Color$ Black��6   � 5      $ 	#FF13C123��6    � Offset$ 1Q�61   5       � ColumnDefinitions 5   
   �� 5      $
��114* �6   �� 5      $
��193* �6   �� 5      $	��92* �6    � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $
��1.5* �6   .+�5   
   �� -   5        	 ��Name$	 Message��5      $��Registration��6!   $
��Left=�68   $��Center=�6S   $��52��6w   $��	19,12,0,0q�6�   $	��Top=�6�   $	��361��6�   $��24(�6�   ���	#FFFFD100
 J� RenderTransformOrigin$
 
0.512,0.51&�6�   $��2��6  $��3��6)  ��6�   Z� 6)  �� 5    
   $��Login:��6   $��Center=�6!   $��Right=�6<   $
 0.514,0.508&�6_   $��51��6�   $��1��6�   ���	#FFFFD100$��Center=�6�   �� 5!   
   -   5         ��Name$ tbLogin��5!      $�� ��6#   $��1��6+   $��1��6;   $
��Left=�6H   $��26��6c    �� TextWrapping$
 Wrap=�6o   $��Center=�6�   $	��242��6�   $��Center=�6�   $��Center=�6�   $��2��6�   $��22,0,0,0q�6  �� 5"   
   -   5        $ tbFirstName��5"      $�� ��6'   $��1��6/   $��4��6?   $
��Left=�6L   $��26��6g   $
 Wrap=�6s   $��Center=�6�   $	��242��6�   $��Center=�6�   $��Center=�6�   $��2��6�   $��22,0,0,0q�6  �� 5#   
   -   5        $ 
tbLastName��5#      $�� ��6&   $��1��6.   $��5��6>   $
��Left=�6K   $��26��6f   $
 Wrap=�6r   $��Center=�6�   $	��242��6�   $��Center=�6�   $��Center=�6�   $��2��6�   $��22,0,0,0q�6  �� 5$   
   -   5        $ tbEmail��5$      $�� ��6#   $��1��6+   $��6��6;   $
��Left=�6H   $��26��6c   $
 Wrap=�6o   $��Center=�6�   $	��242��6�   $��Center=�6�   $��Center=�6�   $��2��6�   $��22,0,0,0q�6  �� 5%   
   $��	Password:��6   $��0��6$   $��2��64   $��51��6A   $��Center=�6M   $��Right=�6h   $
 0.509,0.546&�6�   ���	#FFFFD100$��Center=�6�   ��6�   Z� 6�   G� 5&   
   -   5         G�Name$ 
pbPassword��5&      $��1��6*   $��2��6:    G� PasswordChar$ *��6G   $
��Left=�6X   $��24��6s   $��Center=�6   $	��242��6�   $��Center=�6�   $��Center=�6�   $��2��6�   $��22,0,0,0q�6   G� 5'   
   -   5        $ pbConfirmPassword��5'      $��1��61   $��3��6A   $ *��6N   $
��Left=�6_   $��24��6z   $��Center=�6�   $	��242��6�   $��Center=�6�   $��Center=�6�   $��2��6�   $��22,0,0,0q�6  �� 5(   
   -	   5         ��Name$ btnRegister��5(      $��Register��6&   $
��Left=�69   $��32��6T   $��	27,18,0,0q�6`   $	��Top=�6s   $	��118��6�   $��7��6�   $��1��6�   ���	#FFDBFDD9���	#FF17FF006�   �� 5)   
   $��Confirm passsword: ��6   $��Center=�6.   $��51��6K   $��3��6W   $��Center=�6d   $	��114��6   ���	#FFFFD200$��Right=�6�   $��Center=�6�   �� 5*   
   $��First name:��6   $��Center=�6&   $��51��6C   $��4��6O   $��Center=�6\   $	��114��6w   ���	#FFFFD200$��Right=�6�   $��Center=�6�   �� 5+   
   $��Last name: ��6   $��Center=�6&   $��51��6C   $��5��6O   $��Center=�6\   $	��114��6w   ���	#FFFFD200$��Right=�6�   $��Center=�6�   �� 5,   
   $��Email: ��6   $��Center=�6"   $��6��6?   $��Center=�6L   $��51��6g   $	��114��6s   ���	#FFFFD200$��Right=�6�   $��Center=�6�   5-      5.      
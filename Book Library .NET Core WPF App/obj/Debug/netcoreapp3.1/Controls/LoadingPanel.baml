   M S B A M L   `   `   `  ����Y  UBook Library .NET Core WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nulla5clr-namespace:Book_Library_.NET_Core_WPF_App.Controls'Book_Library_.NET_Core_WPF_App.Controls  5      d `PresentationFramework.Classic, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35jMclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.ClassicMicrosoft.Windows.Themes 5      :    4Book_Library_.NET_Core_WPF_App.Controls.LoadingPanel   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Ectr5clr-namespace:Book_Library_.NET_Core_WPF_App.Controls     5      fclassicThemeMclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Classic     5        � 	Resources  5         bool2visibility  panelBackground �� EndPoint �� 
StartPoint � Color � Offset  basicButton �� 
TargetType �� Property �� Value5  /Microsoft.Windows.Themes.ClassicBorderDecorator   ClassicBorderBrush	 �� 
TargetType
  Name   BorderBrush   BorderThickness   BorderStyle   
Background J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName  closeButton �� BasedOn  panelMessageText  panelSubMessageText��%�	  &	        &	      &	 �     &	 �    7  &	 �    &	 ^    �� 5   
   6'   �� 5	   
   $ 0.5,1&�66   $ 0.5,0&�6G   .��5
      � $ Black��6   $ 1Q�6)   � 5      $ 	#FF1B1B1B��6   5      �� 5   
   " ��6$   .�5      ��  � ��# � ��6+   �� 5       � ��# � ��6+   �� 5       � ��# Z 6,   �� 5       � ��$ 3q�60   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � ��$ 0,0,1,1q�6(   �� 5       � �� 5      �� 5      "	 ��6&   .R�5        $
 ContentContainer��6>   # z��6X   $ 0q�6�   $
 None=�6�   # z��6�   $
 True��6�   ._�5      �� #��z��6/   #��z��6r   $
��True��6�   # z 6�   #��z��6�   5       5      P� 5       �@J�IsKeyboardFocused$
 True��6C   . �5   "   �� $ ContentContainer��6@    �@ BorderStyle$ RaisedFocused=�6^   5      P� 5        �@��IsDefaulted$
 True��6=   . �5!   "   �� $ ContentContainer��6@    �@ BorderStyle$ RaisedFocused=�6^   5"      P� 5#       � ��$
 True��6;   . �5$   "   �� $ ContentContainer��6@    �@ BorderStyle$ RaisedPressed=�6^   5%      P� 5&       �@d�	IsChecked$
 TrueY�6H   . �5'   "   �� $ ContentContainer��6@    �@ BorderStyle$ RaisedPressed=�6^   5(      P� 5)       � {�$ False��6;   . �5*   "   �� # � ��6?    � ��5+      5-      5/      50      �� 52   
   8   " ��6K   .�53      ��  � ��$	 Top=�62   �� 54       � ��$ Verdana)�6+   �� 55       � ��$ 9(�6)   �� 56       � ��$
 Bold"�6+   �� 57       � ��
 �����6+   �� 58       �@�Cursor$
 Hand��6'   �� 59       � ��$
 15,7q�6'   �� 5:       � �� 6+   Z� 5;      �� 5=   
   " ��6)   .�5>      ��  � ��$
 Left=�64   �� 5?       � ��$ 0,11,0,0q�6'   �� 5@       � ��$ WrapWithOverflow=�6-   �� 5A       � ��$
 Bold"�6+   �� 5B       � ��$ 16(�6)   �� 5C       � ��$	 Top=�62   �� 5D       � ��$ Arial)�6+   �� 5E       �@J�SnapsToDevicePixels$
 True��64   5F      �� 5H   
   " ��6,   .�5I      ��  � ��$
 Left=�64   �� 5J       � ��$	 0,5q�6'   �� 5K       � ��$
 Wrap=�6-   �� 5L       � ��$ 12(�6)   �� 5M       � ��$	 Top=�62   �� 5N       � ��$ Arial)�6+   �� 5O       �@J�SnapsToDevicePixels$
 True��64   5P      5Q      .��5S      ]� $	��250��5T   �   y�6   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType" >� �� Path$ 	IsLoading� �� Mode$ OneWay=� �� 	Converter# [  ��5U   
   �� 5V       �� Color$ Black��6    �� Opacity$ 0Q�6,   .+�5[   
   �� -   5         ��Name$ btnClose��5[      $��Right=�5\      #��[ 5]       � ToolTip$ Close��5^      $��Close X��5`      A   ;Book_Library_.NET_Core_WPF_App.Controls.CircularProgressBar  5b   
   -   5          Name$ progressBar��5b   "   $
��Left=�5c      $
��Left=�5d      $	��Top=�5e      $��45��5f      $��18,10q�5g      �� 5i   
   $	��Top=�6   .+�5j      �� -   5         ��Name$ 
txtMessage��5j      #��[ 5k      ���	#FFA1C3D2��5l      ��  �� *FindAncestor+" >�$ Message�5m      �� 5o      -   5        $ txtSubMessage��5o      #��[ 5p      ���	#FFA1C3D2��5q      ��  �� *FindAncestor+" >�$ 
SubMessage�5r      5s      5t      5u      
   M S B A M L   `   `   `  ����Y  UBook Library .NET Core WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:Book_Library_.NET_Core_WPF_App.Pages$Book_Library_.NET_Core_WPF_App.Pages  5      8    2Book_Library_.NET_Core_WPF_App.Pages.BookTrackPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Abl2clr-namespace:Book_Library_.NET_Core_WPF_App.Pages     5        N� Title$  BookTrackPage��5	      .��5      � $��21,21,21,21q�6   ��5   
   �� 5       �� Color$ Black��6    �� Opacity$	 0.5Q�6,   .+�5   
   �� -   5         ��Name$ btnBackward��5      $�� ��6&   $
��Left=�61   $��38��6L   $	��Top=�6X   $��43��6p   ��6{   Z� ��5      �� 5      5      �� 5   
   -   5        $ btnActionBook��5      $�� ��6(   $��50��63   $	��Top=�6?   $��Center=�6W   $��18(�6{   $��1,1,10,1q�6�   ���	#FF2FF341$��Center=�6�   $	��100��6�   ��6�   Z� ��5      �� 5      $ 	#FFDDDDDD��6"   $ 0Q�64   5      � 5   
   $��21,50,21,21q�6   ��5      �� 5      $ Black��6"   $	 0.5Q�60   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ 	BooksGrid��5         
IsReadOnly$
 True��5!      
������    RowBackground
 ���� ���	#FFFFD200$	��Top=�5%      $��
21,21,21,0q�6)      HorizontalGridLinesBrush �	#FF1C1E4B   VerticalGridLinesBrush �	#FF0E322A$��16(�6�   $��Normal$�6�   $��5,5,5,1q�6�   ��5       �� 	 �� Path$	 
BookTracks�
 �� Mode$
 OneWay=���5$   (   Z�    RowHeaderStyle 5&      �� 5'       �� 
TargetType:  4System.Windows.Controls.Primitives.DataGridRowHeader"  6   .�5(      ��  �� Property � �� �� Value
 ���� 67   �� 5)       � �� �	#FF00C90067   �� 5*       � ��$ Center=�6G   �� 5+       � ��$ Center=�6E   �� 5,       � ��$ 5q�64   5-         ColumnHeaderStyle 5/      �� 50      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�51      ��  � ��
 ���� 67   �� 52       � �� �	#FF00C90067   �� 53       � ��$ Center=�6G   �� 54       � ��$ Center=�6E   �� 55       � ��$ 5q�64   56         	CellStyle 58      �� 59      *  $System.Windows.Controls.DataGridCell"  6   .�5:      ��  � ��$ 5q�64   �� 5;       � �� 5<      �� 5=   "    �� 
TargetType"  62   .R�5>   &   ��  �� Padding# z��6-   #��z��6Q   #��z��6}   #��z��6�    J� SnapsToDevicePixels$
 True��6�   ._�5?   *   �� # z 6;   5@   '   5A   #   5C      5D      5F      5G      5I      5J      
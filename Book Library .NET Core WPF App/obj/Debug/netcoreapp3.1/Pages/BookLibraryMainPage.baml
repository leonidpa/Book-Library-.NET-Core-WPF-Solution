   M S B A M L   `   `   `  ����Y  UBook Library .NET Core WPF App, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:Book_Library_.NET_Core_WPF_App.Pages$Book_Library_.NET_Core_WPF_App.Pages  5      a5clr-namespace:Book_Library_.NET_Core_WPF_App.Controls'Book_Library_.NET_Core_WPF_App.Controls  5      >    8Book_Library_.NET_Core_WPF_App.Pages.BookLibraryMainPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Abl2clr-namespace:Book_Library_.NET_Core_WPF_App.Pages     5      Ectr5clr-namespace:Book_Library_.NET_Core_WPF_App.Controls     5        N� Title$  BookLibraryMainPage��5
      $
��Auto��6#   .��5      � $��	0,21,0,21q�6   ��5   
   �� 5       �� Color$ Black��6    �� Opacity$	 0.5Q�6,   .+�5   
   �� $��	App User:��6   $��50��6$   $	��Top=�60   $��18(�6H   ���	#FF07D4A6$
��Left=�6m   $��88��6�   $��Center=�6�   $��Center=�6�   $��21,0,0,0q�6�   �� 5   
   -   5         ��Name$ btnUser��5      $
��Left=�6�   $��50��6�   $��	109,0,0,0q�6�   $	��Top=�6�   ���	#FFFFD100$��18(�6�   $
��Left=�6  ��6"   ��  �� Path$ UserName� �� Mode$ OneWay=���6Q   �� $ NavigateUserCabinet�$ OneWay=���6$  Z� ��5      �� 5      $ 	#FFDDDDDD��6"   $ 0Q�64   5      � 5   
   $	��Top=�6   $��0,0,21,0q�6'   $��Right=�69   $	��540��6U    � RowDefinitions 5      �� 5      $	��23* �6    �� 5      $��2* �6    .+�5      �� $��Search:��6   $��50��6&   $	��Top=�62    J� RenderTransformOrigin$ 0.5,0.5&�6J   ���	#FFFFD200$��18(�6�   $��Center=�6�   $��Center=�6�   $
��Left=�6�   $��67��6�   $��5,0,0,0q�6�   $��2��6  z�5      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ -0.057Q�6*   T� 5       5!      5#      �� 5$      -   5        	 ��Name$	 tbSearch��5$      $��50��6(   $�� ��64   
 �� TextWrapping$

 Wrap=�6<   $	��Top=�6P   $��Center=�6h   $��Center=�6�   $
��Left=�6�   $	��164��6�   ���	#FFFFD200$��77,0,0,0q�6�   $��2��6�   .��6  ��5%      �� 5&      $ White��6&   $ 0Q�64   .��5'   &   5(      �� 5)      -   5        $ 
btnAddBook��5)      $	��Add��6)   $��50��67   $��	241,0,0,0q�6C   $	��Top=�6V   $��Center=�6n   $��18(�6�   $��1,1,10,1q�6�   ���	#FF2FF341$
��Left=�6�   $��75��6�   $��2��6  ��6�   Z� ��5*      �� 5+      $ 	#FFDDDDDD��6&   $ 0Q�68   5-      �� 5.      -   5        $ btnEditBook��5.      $
��Edit��6*   ${�False��69   $��50��6K   $��	391,0,0,0q�6W   $	��Top=�6j   $��Center=�6�   $��18(�6�   $��1,1,10,1q�6�   ���	#FFFFD200$
��Left=�6�   $��75��6�   $��2��6  ��6  Z� ��5/      �� 50      $ 	#FFDDDDDD��6&   $ 0Q�68   52      �� 53      -   5        $ btnDeleteBook��53      $��Delete��6,   ${�False��6=   $��50��6O   $��	466,0,0,0q�6[   $	��Top=�6n   $��Center=�6�   $��18(�6�   $��1,1,10,1q�6�   
���  ��$
��Left=�6�   $��75��6�   $��2��6  ��6  Z� ��54      �� 55      $ 	#FFDDDDDD��6&   $ 0Q�68   57      �� 58      -   5        $ btnTrackBook��58      $��Track��6+   ${�False��6;   $
��Left=�6M   $��	316,0,0,0q�6h   $	��Top=�6{   $��75��6�   $��50��6�   $��2��6�   ���	#FFFFD200$��18(�6�   ��6�   Z� ��59      �� 5:      $ 	#FFDDDDDD��6&   $ 0Q�68   5<      5=      � 5?   
   $��21,50,21,21q�6   ��5@      �� 5A      $ Black��6"   $	 0.5Q�60   .+�5C      &   System.Windows.Controls.DataGrid  -   5          Name$ 	BooksGrid��5D         
IsReadOnly$
 True��5F         RowBackground
 ���� ���	#FFFFD200$��
21,21,21,0q�5H   ?      HorizontalGridLinesBrush �	#FF1C1E4B   VerticalGridLinesBrush �	#FF0E322A$��16(�6�   $��Normal$�6�   $��5,5,5,1q�6�   $��4��6�   $��Center=�6�   $��Center=�6  ��5E      �� $ Books�$ OneWay=���5H   (   Z� ��6%  Z�    RowHeaderStyle 5I      �� 5J       �� 
TargetType:  4System.Windows.Controls.Primitives.DataGridRowHeader"  6   .�5K      ��  �� Property � �� �� Value
 ���� 67   �� 5L       � �� �	#FF00C90067   �� 5M       � ��$ Center=�6G   �� 5N       � ��$ Center=�6E   �� 5O       � ��$ 5q�64   5P         ColumnHeaderStyle 5R      �� 5S      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5T      ��  � ��
 ���� 67   �� 5U       � �� �	#FF00C90067   �� 5V       � ��$ Center=�6G   �� 5W       � ��$ Center=�6E   �� 5X       � ��$ 5q�64   5Y         	CellStyle 5[      �� 5\      *  $System.Windows.Controls.DataGridCell"  6   .�5]      ��  � ��$ 5q�64   �� 5^       � �� 5_      �� 5`   "    �� 
TargetType"  62   .R�5a   &   ��  �� Padding# z��6-   #��z��6Q   #��z��6}   #��z��6�    J� SnapsToDevicePixels$
 True��6�   ._�5b   *   �� # z 6;   5c   '   5d   #   5f      5g      5i      5j      � 5k   
   $��21,50,21,21q�6   .+�5l      :   4Book_Library_.NET_Core_WPF_App.Controls.LoadingPanel  -   5          Name$ loadingPanel��5l      $��Center=�5p   J   $��Center=�6g   $	��250��6�      	IsLoading 5m      �� $ PanelLoading�   Message 5n      �� $ PanelMainMessage�   
SubMessage 5o      �� $ PanelSubMessage�   ClosePanelCommand 5p      �� $ PanelCloseCommand�6�   5q      5s      5t      
   M S B A M L   `   `   `  ����@  <MMDB3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MMDB3MMDB3  5   	   E'clr-namespace:MMDB.MovieDatabase.DomainMMDB.MovieDatabase.Domain  5   	       MMDB3.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   %localclr-namespace:MMDB3     5   	   :local3'clr-namespace:MMDB.MovieDatabase.Domain     5   	     � Title$  
MainWindow��5	   	   $	��600��6   $	��920��6)    � 	Resources 5         
testActors �� 	UriSource  testDirectors  MMDB3.DataTypeConverter  dataTypeConverter&   MMDB3.MovieDirectorListConverter  movieDirectorListConverter#  MMDB3.MovieActorListConverter  movieActorListConverter#  MMDB3.ActorMovieListConverter  actorMovieListConverter&   MMDB3.DirectorMovieListConverter  directorMovieListConverter  MMDB3.ResultItemConverter  resultItemConvert�� 5   
   %  &	        &	 -     &	 ]     &	 p     &	 �     &	 �     &	 �     &	 �     �� 5      $ Resources/actor.png?�6-   �� 5      $ Resources/director.png?�60     5      6&     5      6/     5      6,     5      6,     5      6/     5      6(   5      .��5      � ��5    
   �� 5!       �� 
StartPoint$	 0,0&�6"    �� EndPoint$	 1,1&�63   .��5"      �  � Color$	 Red��6    � Offset$	 0.0Q�6+   � 5#      $ DarkRed��6   $	 0.5Q�6/   � 5$      $ Black��6   $	 1.0Q�6-   5%       � ColumnDefinitions 5'   
   �� 5(      $��1.35* �6   �� 5)      $��2* �6   .+�5,   
   �� -   5        $��searchTextBox��5,      $��0��6'   $	��Top=�67   $��5,15,5,5q�6O   6�   �� 5-   
    J� IsHitTestVisible .  $��0��6-   $��5,15,5,5q�6=   $��'Search for movie/cast��6O   $	��Top=�6m   
���������5.      �� 5/      	 �� 
TargetType"	 ��6   .�50      �� 
 �� Property
 � y� �� Value$ 	Collapsed=�63    �� Triggers 51      �� 52       �� Binding 6&   �� *Text+ �� ElementName$ searchTextBox�� �� Value  6Z   .a�53      �� 
 � y�$ Visible=�6;   54      56      58      �� 5:   
   -   5        $��
searchList��5:      $��0��6$   $��5,35,5,5q�64   ��5;      �� 5<      .R�5=      ��  �� Orientation$ 
Horizontal=�6!   .+�5>      �� $��48��65   $��48��6@   
 � Tag 6    �� *Type+��5?      �� 5@   "   "	 ��6(    5A   &   �� 5B   *    67   �� *Type+ Director6P   .a�5C   .   �� 
 � ��# [ 6G   5D   +   �� 5E   *    67   �� *Type+	 Actor6P   .a�5F   .   �� 
 � ��# [ 6G   5G   +   �� 5H   *    67   �� *Type+ ActorDirector6P   .a�5I   .   �� 
 � ��# [ 6G   5J   +   �� 5K   *    67   �� *Type+	 Movie6P   .a�5L   .   �� 
 � ��# [ 6G   5M   +   �� 5N   *    67   �� *Type+ None6P   .a�5O   .   �� 
 � ��# [ 6G   5P   +   5R   #   5T      �� 5U      $��15��6$   ��60   ��  �� Path$ 
ResultItem� �� 	Converter# [ 5V      5W      5Y      � 5^   
   $��1��6    � RowDefinitions 5_      �� 5`      $
��Auto �6    �� 5a      $
��Auto �6    �� 5b      $
��Auto �6    �� 5c      $
��Auto �6    �� 5d      $
��Auto �6    .+�5g      �� $ 
Horizontal=�6   $��0��62   $��5,20,5,5q�6?   $��Center=�6Q   $
��Left=�6l   .+�5h      �� $��48��6X   $��48��6c    6   �� $ 
searchList��$ SelectedValue.Type���5i      �� 5j      "	 ��6     5k      �� 5l   "    6/   �� $ 
searchList��$ SelectedValue.Type� Director6s   .a�5m   &   �� 
 � ��# [ 6?   5n   #   �� 5o   "    6/   �� $ 
searchList��$ SelectedValue.Type�	 Actor6s   .a�5p   &   �� 
 � ��# [ 6?   5q   #   �� 5r   "    6/   �� $ 
searchList��$ SelectedValue.Type� ActorDirector6s   .a�5s   &   �� 
 � ��# [ 6?   5t   #   �� 5u   "    6/   �� $ 
searchList��$ SelectedValue.Type�	 Movie6s   .a�5v   &   �� 
 � ��# [ 6?   5w   #   �� 5x   "    6/   �� $ 
searchList��$ SelectedValue.Type� None6s   .a�5y   &   �� 
 � ��# [ 6?   5z   #   5|      5~      �� 5      $��20(�6�   $
��Bold"�6�    �� TextAlignment$
 Left=�6�   ��6   �� $ 
searchList��$ SelectedItem.ResultItem�# [ 6�   5�      �� 5�      $��1��6   $��20(�6&   $
��Bold"�64   $��5,20,5,0q�6F   $
 Left=�6X   ��5�      �� 5�      "	 ��6    5�      �� 5�      %   MMDB.MovieDatabase.Domain.Movie"  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � ��$ 
Directors:��69   5�      �� 5�      *   $MMDB.MovieDatabase.Domain.CastOrCrew"  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � ��$ Directed in:��69   5�      5�      5�      �� 5�      $��2��6   $��15(�6&   $��5q�64   $
 Left=�6?   ��5�      �� 5�      "	 ��6    5�      �� 5�      "  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � �� 69   �� $ 
searchList��$ SelectedValue.ResultItem�# [ 5�      �� 5�      "  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � �� 69   �� $ 
searchList��$ SelectedValue.ResultItem�# [ 5�      5�      5�      �� 5�      $��3��6   $��20(�6%   $
��Bold"�63   $��5,20,5,0q�6E   $
 Left=�6W   ��5�      �� 5�      "	 ��6    5�      �� 5�      "  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � ��$ Actors:��69   5�      �� 5�      "  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � ��$ 	Acted in:��69   5�      5�      5�      �� 5�      $��4��6   $��15(�6%   $��5q�63   $
 Left=�6>   ��5�      �� 5�      "	 ��6    5�      �� 5�      "  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � �� 69   �� $ 
searchList��$ SelectedValue.ResultItem�# [ 5�      �� 5�      "  6�    6*   �� $ 
searchList��$ SelectedValue.ResultItem�# [ .a�5�   "   �� 
 � �� 69   �� $ 
searchList��$ SelectedValue.ResultItem�# [ 5�      5�      5�      5�      5�      5�      
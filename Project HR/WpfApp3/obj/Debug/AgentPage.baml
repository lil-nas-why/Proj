   M S B A M L   `   `   `  ����B  >WpfApp3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp3WpfApp3  5          WpfApp3.AgentPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp3     5      -   5          N� 
FontFamily$  Centry Gothic)�5   3    N� Title$ 	AgentPage��5	      .��5      � .+�5   
   � .+�5      �� -   5        $��NotFoundLabel��5      $��sasasasa��6)   $��Center=�6<   $	��Top=�6Y   $��12(�6q   $
��-8.4q�6   ���#B175EE$y�Hidden=�6�   �� 5       �� Orientation$ 
Horizontal=�6   $��Center=�62   $��0 5 0 0q�6O   .+�5      �� $��Поиск: ��6   $��5 10 0 5q�6+   $��Center=�6=   �� 5      -   5         ��Name$ 	SearchBar��5      $��2q�6-   $
��auto��68   $	��400��6E   $��Center=�6x   5      5      �� 5   
   -   5        $��AgentsLV��5      
������ 
������ $��1��6V   ��5      �� 5      .R�5      � .+�5      �� $ Vertical=�6%   .+�5      ��  ��Name$ FullName��6(   $
��Wrap=�6i   $��18(�6}   ��6:   �� *
FullName+ �� StringFormat$	 {0}��6}   �� 5      $ Birthday��6(   ��6:   �� *
Birthday+$&  Дата рождения: {0:d}���� 5      $ 
Department��6(   ��6<   �� *
Department+$ Отдел: {0}���� 5      $
 Post��6(   ��66   �� *Post+$ Должность: {0}���� 5      $ Salary��6(   ��68   �� *Salary+$ Оклад: {0:n} Руб.���� 5       $ Datapreception��6(   ��6@   �� *Datapreception+$&  Дата принятия: {0:d}���� 5!      $ DataExtensions��6(   ��6@   �� *DataExtensions+$* $Дата увольнения: {0:d}�� �� TargetNullValue$7 1Дата увольнения не указана��5$      5%      5&      5(      �� 5*   
   -   5         ��Name$ AddAgent��5*      $+��% Добавить \ Изменить ��6#   $��14(�6C   $��2��6Q   $	��150��6_   $��Bottom=�6n   $
��Left=�6�   $
��50 5q�6�   6�   �� 5+   
   -   5        $ DeleteAgent��5+      $�� Удалить ��6&   $��14(�6:   $��2��6H   $	��150��6U   $��Bottom=�6d   $��Right=�6   $
��50 5q�6�   6�    � RowDefinitions 5.   
   �� 5/      $��30 �6   �� 50      �� 51      $��30 �6   55      56      
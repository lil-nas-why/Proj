   M S B A M L   `   `   `  ����B  >WpfApp3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp3WpfApp3  5          WpfApp3.ViewAgentPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp3     5        N� Title$  ViewAgentPage��5	      .��5      � .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��Center=�6.   $��0 5 0 0q�6K   .+�5      �� $��Поиск: ��6   $��5 10 0 5q�6'   $��Center=�69   �� 5      -   5         ��Name$ 	SearchBar��5      $��2q�6)   $
��auto��64   $	��400��6A   $��Center=�6t   5      �� 5   
   -   5        $��ViewAgentsLV��5      
������ 
������ $��1��6Z   ��5      �� 5      .R�5      � .+�5      �� $ Vertical=�6%   .+�5      ��  ��Name$ FullName��6(   $
��Wrap=�6i   $��18(�6}   ��6:   �� *
FullName+ �� StringFormat$	 {0}��6}   �� 5      $ Birthday��6(   ��6:   �� *
Birthday+$&  Дата рождения: {0:d}���� 5      $ 
Department��6(   ��6<   �� *
Department+$ Отдел: {0}���� 5      $
 Post��6(   ��66   �� *Post+$ Должность: {0}���� 5      $ Salary��6(   ��68   �� *Salary+$ Оклад: {0:n} Руб.���� 5      $ Datapreception��6(   ��6@   �� *Datapreception+$&  Дата принятия: {0:d}���� 5      $ DataExtensions��6(   ��6@   �� *DataExtensions+$* $Дата увольнения: {0:d}�� �� TargetNullValue$7 1Дата увольнения не указана��5      5      5       5"       � RowDefinitions 5#   
   �� 5$      $��30 �6   �� 5%      �� 5&      $��30 �6   5*      5+      
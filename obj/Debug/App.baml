   M S B A M L   `   `   `  ����B  >RoboGui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:RoboGuiRoboGui  5   �       RoboGui.App   6   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    6$   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6f   'localclr-namespace:RoboGui     6�   @d2http://schemas.microsoft.com/expression/blend/2008     6�   Ld1p1;http://schemas.openxmlformats.org/markup-compatibility/2006     6.    �� 	Resources  5      5clr-namespace:RoboGui.ViewModelRoboGui.ViewModel  5   B   (   "RoboGui.ViewModel.ViewModelLocator   Locator  ControlNormalColor  ControlMouseOverColor  DisabledControlColor  DisabledForegroundColor  ControlPressedColor  ButtonFocusVisual �� Property �� Value �� StrokeDashArray �� 
TargetType �� 
TargetType ��Name �� CornerRadius �� Color'  !System.Windows.VisualStateManager	   VisualStateGroups%  System.Windows.VisualStateGroup
   Transitions%  System.Windows.VisualTransition   GeneratedDuration	   To   States   System.Windows.VisualState   
Storyboard �� TargetProperty �� 
TargetName8  2System.Windows.Media.Animation.EasingColorKeyFrame �� KeyTime �� Value�� 5      %  &	        &	 B     &	 c     &	 �     &	 �     &	 �     &	 �     '�� �    7  7  7  7  7    5      .vmclr-namespace:RoboGui.ViewModel     6B   ��5   
   	#FFCE9A09��66   ��5   
   	#FF000000��69   ��5	   
   	#FF999999��68   ��5
   
   	#FFFFFFFF��6;   ��5   
   	#FF3B66DC��67   �� 5   
   .�5      ��  � �� 5      �� 5      .R�5      �� ._�5   "   �� $��2q�6,   $��10��67   
���  ��$	 1 2R�6]   5      5      5      5      �� 5   
   " ��6   .�5      ��  �@J�SnapsToDevicePixels . 64   �� 5       �@�OverridesDefaultStyle . 66   �� 5       �@�FocusVisualStyle8   61   �� 5        � ��$
 29px��6*   �� 5!       � ��$ 103px��6*   �� 5"       � ��
 �����6+   �� 5#       � �� 5$      �� 5%      " ��6&   .R�5'      �� $ Border��5,   !   #��z��5'   !   $ 10��5(   !   $��3q�5)   !   
��� d ���50   "   �� 51   "   # �  63   	 54        55   "   CommonStates��
 56   &     57   *   $ 0:0:0.5D�6;     58   *   $ 0D�6;   $ Pressed��6Q   . 5:   &     
Normal��62     5;   &   	MouseOver��. 5<   *   �� .��5=   .   �� $0 *(Panel.Background).(SolidColorBrush.Color)�6K   $ Border��5>   1   .g�5?   2     $ 0��6F   8  6R   5@   /   5A   +   5B   '     5C   &   Pressed��. 5D   *   �� .��5E   .   �� $0 *(Panel.Background).(SolidColorBrush.Color)�6K   $ Border��5F   1   .g�5G   2     $ 0��6F   8  6R   5H   /   5I   +   5J   '     5K   &   Disabled��. 5L   *   �� .��5M   .   �� $0 *(Panel.Background).(SolidColorBrush.Color)�6K   $ Border��5N   1   .g�5O   2     $ 0��6F   8  6R   5P   /   �� 5Q   .   $4 .(TextBlock.Foreground).(SolidColorBrush.Color)�6K   $ Border��5R   1   .g�5S   2     $ 0��6F   8  6R   5T   /   5U   +   5V   '   5W   #   ._�5Y      �� $��2q�6/   $��Center=�5Z      $��Center=�5[      ��. 5\      5]      5^      5`      5a      5b      5d      
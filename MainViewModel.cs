using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.CommandWpf;
using System.Windows;
using System.Windows.Input;

namespace RoboGUI.ViewModel
{
    /// <summary>
    /// This class contains properties that the main View can data bind to.
    /// <para>
    /// Use the <strong>mvvminpc</strong> snippet to add bindable properties to this ViewModel.
    /// </para>
    /// <para>
    /// You can also use Blend to data bind with the tool's support.
    /// </para>
    /// <para>
    /// See http://www.galasoft.ch/mvvm
    /// </para>
    /// </summary>
    public class MainViewModel : ViewModelBase
    {
        /// <summary>
        /// Initializes a new instance of the MainViewModel class.
        /// </summary>
        public MainViewModel()
        {
            ////if (IsInDesignMode)
            ////{
            ////    // Code runs in Blend --> create design time data.
            ////}
            ////else
            ////{
            ////    // Code runs "for real"
            ////}
            ForwardChangeText = new RelayCommand(() => ForwardChangeTextExecute(), () => true);
        }

        public ICommand ForwardChangeText { get; private set; }

        private void ForwardChangeTextExecute()
        {
            //MessageBox.Show("Hello!");
            DirectionText = "Forward";

        }

        private const string DirectionTextName = "DirectionText";
        private string _directionText;
        public string DirectionText
        {
            get { return _directionText; }
            set
            {
                _directionText = value;
                RaisePropertyChanged(DirectionTextName);
            }
        }

       
    }
}
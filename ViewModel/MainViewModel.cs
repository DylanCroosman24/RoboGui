using System;
using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.CommandWpf;
using RoboGui.Services;
using System.Windows;
using System.Windows.Input;
using DirectShowLib;
using System.Windows.Media;
using WPFMediaKit.DirectShow.MediaPlayers;

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
            ReverseChangeText = new RelayCommand(() => ReverseChangeTextExecute(), () => true);
            LeftChangeText = new RelayCommand(() => LeftChangeTextExecute(), () => true);
            RightChangeText = new RelayCommand(() => RightChangeTextExecute(), () => true);
        }

        public ICommand ForwardChangeText { get; private set; }

        private void ForwardChangeTextExecute()
        {
            DirectionText = "Forward";
            var serialService = new SerialService();
        }

        public ICommand ReverseChangeText { get; private set; }

        private void ReverseChangeTextExecute()
        {
            DirectionText = "Reverse";
        }

        public ICommand LeftChangeText { get; private set; }

        private void LeftChangeTextExecute()
        {
            DirectionText = "Left";
        }

        public ICommand RightChangeText { get; private set; }

        private void RightChangeTextExecute()
        {
            DirectionText = "Right";
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

        public string CaptureDeviceName
        {
            get { return getCamName(); }
        }

        // get the devices name
        private string getCamName()
        {
            try
            {
                DsDevice webCam = DsDevice.GetDevicesOfCat(DirectShowLib.FilterCategory.VideoInputDevice)[1];
                return webCam.Name;
            }
            catch (ApplicationException)
            {
                return null;
            }
        }
    }
}
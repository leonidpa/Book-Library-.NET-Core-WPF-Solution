﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace Book_Library_.NET_Core_WPF_App.Pages
{
    internal static class PagesPropertiesProvider
    {
        internal static ImageBrush DefaultBackground
        {
            get
            {
                var backgroundImage = new ImageBrush(
                    (BitmapSource)new ImageSourceConverter()
                    .ConvertFrom(Properties.Resources.background_image_0)
                    );
                backgroundImage.Stretch = Stretch.UniformToFill;
                return backgroundImage;
            }
        }

        internal static ImageBrush BackwardImage
        {
            get
            {
                var backgroundImage = new ImageBrush(
                    (BitmapSource)new ImageSourceConverter()
                    .ConvertFrom(Properties.Resources.backward_image)
                    );
                backgroundImage.Stretch = Stretch.Fill;
                return backgroundImage;
            }
        }
    }
}

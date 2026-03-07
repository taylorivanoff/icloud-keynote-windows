const path = require('path');
require('icloud-windows-base').run({
  appName: 'iCloud Keynote',
  protocol: 'icloud-keynote',
  icloudUrl: 'https://www.icloud.com/keynote',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});

X-GM-THRID: 6396247239473233920
Date: Sat, 11 Mar 2017 06:26:01 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
Subject: Trouble with IIO dummy build.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5605_2100085404.1489242361395"
X-Google-Token: EPmRkMYF2cEyINPJ_8g0
X-Google-IP: 117.192.128.140

------=_Part_5605_2100085404.1489242361395
Content-Type: multipart/alternative; 
	boundary="----=_Part_5606_9919262.1489242361396"

------=_Part_5606_9919262.1489242361396
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

 
 Hello,
 
 I am having issues with dummy modules compilation. I have selected the 
required config options.
 $ cat .config | grep IIO 
 And output of it is as listed below.

# CONFIG_SENSORS_IIO_HWMON is not set
CONFIG_DVB_USB_FRIIO=m
# IIO staging drivers
CONFIG_IIO=y
CONFIG_IIO_BUFFER=y
CONFIG_IIO_BUFFER_CB=m
CONFIG_IIO_KFIFO_BUF=y
CONFIG_IIO_TRIGGERED_BUFFER=y
CONFIG_IIO_CONFIGFS=y
CONFIG_IIO_TRIGGER=y
CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
CONFIG_IIO_SW_DEVICE=m
CONFIG_IIO_SW_TRIGGER=m
CONFIG_IIO_TRIGGERED_EVENT=m
CONFIG_IIO_ST_ACCEL_3AXIS=m
CONFIG_IIO_ST_ACCEL_I2C_3AXIS=m
CONFIG_IIO_ST_ACCEL_SPI_3AXIS=m
# Hid Sensor IIO Common
CONFIG_HID_SENSOR_IIO_COMMON=m
CONFIG_HID_SENSOR_IIO_TRIGGER=m
CONFIG_IIO_MS_SENSORS_I2C=m
CONFIG_IIO_SSP_SENSORS_COMMONS=m
CONFIG_IIO_SSP_SENSORHUB=m
CONFIG_IIO_ST_SENSORS_I2C=m
CONFIG_IIO_ST_SENSORS_SPI=m
CONFIG_IIO_ST_SENSORS_CORE=m
# IIO dummy driver
CONFIG_IIO_DUMMY_EVGEN=m
CONFIG_IIO_SIMPLE_DUMMY=m
CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
CONFIG_IIO_ST_GYRO_3AXIS=m
CONFIG_IIO_ST_GYRO_I2C_3AXIS=m
CONFIG_IIO_ST_GYRO_SPI_3AXIS=m
CONFIG_INV_MPU6050_IIO=m
CONFIG_IIO_ST_LSM6DSX=m
CONFIG_IIO_ST_LSM6DSX_I2C=m
CONFIG_IIO_ST_LSM6DSX_SPI=m
CONFIG_IIO_ADIS_LIB=y
CONFIG_IIO_ADIS_LIB_BUFFER=y
CONFIG_IIO_ST_MAGN_3AXIS=m
CONFIG_IIO_ST_MAGN_I2C_3AXIS=m
CONFIG_IIO_ST_MAGN_SPI_3AXIS=m
CONFIG_IIO_HRTIMER_TRIGGER=m
CONFIG_IIO_INTERRUPT_TRIGGER=m
CONFIG_IIO_TIGHTLOOP_TRIGGER=m
CONFIG_IIO_SYSFS_TRIGGER=m
# CONFIG_IIO_ST_PRESS is not set

 There is no iio directory created after mounting configfs.
 sudo mount -t configfs none /config

  config]$ ls -a
  .  ..
 
  The following command execute without any error.
  $ make drivers/iio/dummy/iio_dummy_evgen.ko 

 $ make drivers/iio/dummy/iio_dummy.ko

  
  I tried to load module with insmod, SELinux prevented access to it.

    $ insmod iio_dummy_evgen.ko

    $ insmod iio_dummy.ko


 So, I tried to load modules with modprobe. I used the following commands 
and they executed with errors.

  $ sudo modprobe iio_dummy_evgen

  modprobe: ERROR: could not insert 'iio_dummy_evgen': Unknown symbol in 
module, or unknown parameter (see dmesg)


  $ sudo modprobe iio_dummy

  modprobe: ERROR: could not insert 'iio_dummy': Unknown symbol in module, 
or unknown parameter (see dmesg)

 

  dmesg output 

  [ 7093.419225] iio_dummy_evgen: Unknown symbol iio_bus_type (err 0)


 I am using fedora 25 x86_64 with kernel version 4.11.0-rc1+.

  

 Any idea to resolve this issue?


  Thanks,

  Varsha

------=_Part_5606_9919262.1489242361396
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0<br>=C2=A0Hello,<br>=C2=A0<br>=C2=A0I am having issu=
es with dummy modules compilation. I have selected the required config opti=
ons.<br>=C2=A0$ cat .config | grep IIO <br>=C2=A0And output of it is as lis=
ted below.<br><br><div style=3D"margin-left: 40px;"># CONFIG_SENSORS_IIO_HW=
MON is not set<br>CONFIG_DVB_USB_FRIIO=3Dm<br># IIO staging drivers<br>CONF=
IG_IIO=3Dy<br>CONFIG_IIO_BUFFER=3Dy<br>CONFIG_IIO_BUFFER_CB=3Dm<br>CONFIG_I=
IO_KFIFO_BUF=3Dy<br>CONFIG_IIO_TRIGGERED_BUFFER=3Dy<br>CONFIG_IIO_CONFIGFS=
=3Dy<br>CONFIG_IIO_TRIGGER=3Dy<br>CONFIG_IIO_CONSUMERS_PER_TRIGGER=3D2<br>C=
ONFIG_IIO_SW_DEVICE=3Dm<br>CONFIG_IIO_SW_TRIGGER=3Dm<br>CONFIG_IIO_TRIGGERE=
D_EVENT=3Dm<br>CONFIG_IIO_ST_ACCEL_3AXIS=3Dm<br>CONFIG_IIO_ST_ACCEL_I2C_3AX=
IS=3Dm<br>CONFIG_IIO_ST_ACCEL_SPI_3AXIS=3Dm<br># Hid Sensor IIO Common<br>C=
ONFIG_HID_SENSOR_IIO_COMMON=3Dm<br>CONFIG_HID_SENSOR_IIO_TRIGGER=3Dm<br>CON=
FIG_IIO_MS_SENSORS_I2C=3Dm<br>CONFIG_IIO_SSP_SENSORS_COMMONS=3Dm<br>CONFIG_=
IIO_SSP_SENSORHUB=3Dm<br>CONFIG_IIO_ST_SENSORS_I2C=3Dm<br>CONFIG_IIO_ST_SEN=
SORS_SPI=3Dm<br>CONFIG_IIO_ST_SENSORS_CORE=3Dm<br># IIO dummy driver<br>CON=
FIG_IIO_DUMMY_EVGEN=3Dm<br>CONFIG_IIO_SIMPLE_DUMMY=3Dm<br>CONFIG_IIO_SIMPLE=
_DUMMY_EVENTS=3Dy<br>CONFIG_IIO_SIMPLE_DUMMY_BUFFER=3Dy<br>CONFIG_IIO_ST_GY=
RO_3AXIS=3Dm<br>CONFIG_IIO_ST_GYRO_I2C_3AXIS=3Dm<br>CONFIG_IIO_ST_GYRO_SPI_=
3AXIS=3Dm<br>CONFIG_INV_MPU6050_IIO=3Dm<br>CONFIG_IIO_ST_LSM6DSX=3Dm<br>CON=
FIG_IIO_ST_LSM6DSX_I2C=3Dm<br>CONFIG_IIO_ST_LSM6DSX_SPI=3Dm<br>CONFIG_IIO_A=
DIS_LIB=3Dy<br>CONFIG_IIO_ADIS_LIB_BUFFER=3Dy<br>CONFIG_IIO_ST_MAGN_3AXIS=
=3Dm<br>CONFIG_IIO_ST_MAGN_I2C_3AXIS=3Dm<br>CONFIG_IIO_ST_MAGN_SPI_3AXIS=3D=
m<br>CONFIG_IIO_HRTIMER_TRIGGER=3Dm<br>CONFIG_IIO_INTERRUPT_TRIGGER=3Dm<br>=
CONFIG_IIO_TIGHTLOOP_TRIGGER=3Dm<br>CONFIG_IIO_SYSFS_TRIGGER=3Dm<br># CONFI=
G_IIO_ST_PRESS is not set<br><br></div>=C2=A0There is no iio directory crea=
ted after mounting configfs.<br>=C2=A0sudo mount -t configfs none /config<b=
r><br>=C2=A0 config]$ ls -a<br>=C2=A0 .=C2=A0 ..<br>=C2=A0<br>=C2=A0 The fo=
llowing command execute without any error.<br>=C2=A0 <tt>$=C2=A0make=C2=A0d=
rivers/iio/dummy/iio_dummy_evgen.ko</tt> <p><tt>=C2=A0$=C2=A0make=C2=A0driv=
ers/iio/dummy/iio_dummy.ko</tt></p><p><tt>=C2=A0 </tt><br>=C2=A0 I tried to=
 load module with insmod, SELinux prevented access to it.<tt><br></tt></p><=
p><tt>=C2=A0=C2=A0=C2=A0 $=C2=A0insmod=C2=A0iio_dummy_evgen.ko</tt></p><p><=
tt>=C2=A0=C2=A0=C2=A0 $=C2=A0insmod=C2=A0iio_dummy.ko</tt></p><p><tt><br></=
tt></p><p><tt>=C2=A0So, I tried to load modules with modprobe. I used the f=
ollowing commands and they executed with errors.</tt></p><p><tt>=C2=A0 $ su=
do modprobe iio_dummy_evgen</tt></p><p><tt>=C2=A0 modprobe: ERROR: could no=
t insert &#39;iio_dummy_evgen&#39;: Unknown symbol in module, or unknown pa=
rameter (see dmesg)</tt></p><p><tt><br></tt></p><p><tt>=C2=A0 $ sudo modpro=
be iio_dummy</tt></p><p><tt>=C2=A0 modprobe: ERROR: could not insert &#39;i=
io_dummy&#39;: Unknown symbol in module, or unknown parameter (see dmesg)<b=
r></tt></p><p><tt>=C2=A0</tt></p><p><tt>=C2=A0 dmesg output <br></tt></p><p=
><tt>=C2=A0 [ 7093.419225] iio_dummy_evgen: Unknown symbol iio_bus_type (er=
r 0)<br></tt></p><p><tt><br></tt></p><p><tt>=C2=A0I am using fedora 25 x86_=
64 with kernel version 4.11.0-rc1+.</tt></p><p><tt>=C2=A0 <br></tt></p><p><=
tt>=C2=A0Any idea to resolve this issue?<br></tt></p><p><tt><br></tt></p><p=
><tt>=C2=A0 Thanks,</tt></p><p><tt>=C2=A0 Varsha<br></tt></p></div>
------=_Part_5606_9919262.1489242361396--

------=_Part_5605_2100085404.1489242361395--


X-GM-THRID: 6396247239473233920
Date: Tue, 14 Mar 2017 19:07:54 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com>
In-Reply-To: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
Subject: Re: Trouble with IIO dummy build.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4187_955998789.1489543674357"
X-Google-Token: EPrDosYF2ASTSWGjV1A0
X-Google-IP: 118.151.209.30

------=_Part_4187_955998789.1489543674357
Content-Type: multipart/alternative; 
	boundary="----=_Part_4188_657236780.1489543674357"

------=_Part_4188_657236780.1489543674357
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I am again having issues with dummy modules compilation. I am unable to=20
create sub directory after mounting.

 $ sudo mount -t configfs none /config
 $ sudo mkdir /config/iio/devices/dummy/my_dummy_device
  mkdir: cannot create directory=20
=E2=80=98/config/iio/devices/dummy/my_dummy_device=E2=80=99: Invalid argume=
nt
=20
 I have the following permissions set for the file.

 drwxr-xr-x.  3 root root    0 Mar 15 07:06 .
 dr-xr-xr-x. 19 root root 4096 Mar 14 23:55 ..
 drwxr-xr-x.  3 root root    0 Mar 15 07:06 iio

 I can create sub directory if the directory is not mounted.
 I  also have iio files created in  /sys/kernel/config, even though I have=
=20
not mounted it. =20
 $ ls -al /sys/kernel/config/
  total 0
 drwxr-xr-x.  3 root root 0 Mar 15 07:06 .
 drwxr-xr-x. 11 root root 0 Mar 15 06:28 ..
 drwxr-xr-x.  3 root root 0 Mar 15 07:06 iio
=20
 As earlier these commands worked, don't know if this is causing the=20
problem.
 I tried to mkdir in /config after unmounting  /sys/kernel/config, it did=
=20
not work.
 $ cat /etc/mtab | grep "config"
 configfs /sys/kernel/config configfs rw,relatime 0 0
 none /config configfs rw,relatime 0 0
=20
 I am able to run the following commands successfully.
  sudo modprobe iio_dummy_evgen
  sudo modprobe iio_dummy
  sudo mount -t configfs none /config
  ls -l /sys/bus/iio/devices/iio_evgen/

 I am using fedora 25 x86_64 with kernel version 4.11.0-rc1+.
=20
 $ cat .config | grep IIO
# CONFIG_SENSORS_IIO_HWMON is not set
CONFIG_DVB_USB_FRIIO=3Dm
# IIO staging drivers
CONFIG_IIO=3Dm
CONFIG_IIO_BUFFER=3Dy
CONFIG_IIO_BUFFER_CB=3Dm
CONFIG_IIO_KFIFO_BUF=3Dm
CONFIG_IIO_TRIGGERED_BUFFER=3Dm
CONFIG_IIO_CONFIGFS=3Dm
CONFIG_IIO_TRIGGER=3Dy
CONFIG_IIO_CONSUMERS_PER_TRIGGER=3D2
CONFIG_IIO_SW_DEVICE=3Dm
CONFIG_IIO_SW_TRIGGER=3Dm
CONFIG_IIO_ST_ACCEL_3AXIS=3Dm
CONFIG_IIO_ST_ACCEL_I2C_3AXIS=3Dm
CONFIG_IIO_ST_ACCEL_SPI_3AXIS=3Dm
# Hid Sensor IIO Common
CONFIG_HID_SENSOR_IIO_COMMON=3Dm
CONFIG_HID_SENSOR_IIO_TRIGGER=3Dm
# CONFIG_IIO_SSP_SENSORHUB is not set
CONFIG_IIO_ST_SENSORS_I2C=3Dm
CONFIG_IIO_ST_SENSORS_SPI=3Dm
CONFIG_IIO_ST_SENSORS_CORE=3Dm
# IIO dummy driver
CONFIG_IIO_DUMMY_EVGEN=3Dm
CONFIG_IIO_SIMPLE_DUMMY=3Dm
CONFIG_IIO_SIMPLE_DUMMY_EVENTS=3Dy
CONFIG_IIO_SIMPLE_DUMMY_BUFFER=3Dy
CONFIG_IIO_ST_GYRO_3AXIS=3Dm
CONFIG_IIO_ST_GYRO_I2C_3AXIS=3Dm
CONFIG_IIO_ST_GYRO_SPI_3AXIS=3Dm
# CONFIG_IIO_ST_LSM6DSX is not set
CONFIG_IIO_ADIS_LIB=3Dm
CONFIG_IIO_ADIS_LIB_BUFFER=3Dy
CONFIG_IIO_ST_MAGN_3AXIS=3Dm
CONFIG_IIO_ST_MAGN_I2C_3AXIS=3Dm
CONFIG_IIO_ST_MAGN_SPI_3AXIS=3Dm
# CONFIG_IIO_HRTIMER_TRIGGER is not set
CONFIG_IIO_INTERRUPT_TRIGGER=3Dm
CONFIG_IIO_TIGHTLOOP_TRIGGER=3Dm
# CONFIG_IIO_SYSFS_TRIGGER is not set
# CONFIG_IIO_ST_PRESS is not set

 Any ideas?
=20
 Thanks,
 Varsha


------=_Part_4188_657236780.1489543674357
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am again having issues with dummy modules =
compilation. I am unable to create sub directory after mounting.<br><br>=C2=
=A0$ sudo mount -t configfs none /config<br>=C2=A0$ sudo mkdir /config/iio/=
devices/dummy/my_dummy_device<br>=C2=A0 mkdir: cannot create directory =E2=
=80=98/config/iio/devices/dummy/my_dummy_device=E2=80=99: Invalid argument<=
br>=C2=A0<br>=C2=A0I have the following permissions set for the file.<br><b=
r>=C2=A0drwxr-xr-x.=C2=A0 3 root root=C2=A0=C2=A0=C2=A0 0 Mar 15 07:06 .<br=
>=C2=A0dr-xr-xr-x. 19 root root 4096 Mar 14 23:55 ..<br>=C2=A0drwxr-xr-x.=
=C2=A0 3 root root=C2=A0=C2=A0=C2=A0 0 Mar 15 07:06 iio<br><br>=C2=A0I can =
create sub directory if the directory is not mounted.<br>=C2=A0I=C2=A0 also=
 have iio files created in=C2=A0 /sys/kernel/config, even though I have not=
 mounted it.=C2=A0 <br>=C2=A0$ ls -al /sys/kernel/config/<br>=C2=A0 total 0=
<br>=C2=A0drwxr-xr-x.=C2=A0 3 root root 0 Mar 15 07:06 .<br>=C2=A0drwxr-xr-=
x. 11 root root 0 Mar 15 06:28 ..<br>=C2=A0drwxr-xr-x.=C2=A0 3 root root 0 =
Mar 15 07:06 iio<br>=C2=A0<br>=C2=A0As earlier these commands worked, don&#=
39;t know if this is causing the problem.<br>=C2=A0I tried to mkdir in /con=
fig after unmounting=C2=A0 /sys/kernel/config, it did not work.<br>=C2=A0$ =
cat /etc/mtab | grep &quot;config&quot;<br>=C2=A0configfs /sys/kernel/confi=
g configfs rw,relatime 0 0<br>=C2=A0none /config configfs rw,relatime 0 0<b=
r>=C2=A0<br>=C2=A0I am able to run the following commands successfully.<br>=
=C2=A0 sudo modprobe iio_dummy_evgen<br>=C2=A0 sudo modprobe iio_dummy<br>=
=C2=A0 sudo mount -t configfs none /config<br>=C2=A0 ls -l /sys/bus/iio/dev=
ices/iio_evgen/<br><br>=C2=A0I am using fedora 25 x86_64 with kernel versio=
n 4.11.0-rc1+<tt>.<br>=C2=A0<br>=C2=A0$ cat .config | grep IIO<br></tt><div=
 style=3D"margin-left: 80px;"><tt># CONFIG_SENSORS_IIO_HWMON is not set</tt=
><br><tt>CONFIG_DVB_USB_FRIIO=3Dm</tt><br><tt># IIO staging drivers</tt><br=
><tt>CONFIG_IIO=3Dm</tt><br><tt>CONFIG_IIO_BUFFER=3Dy</tt><br><tt>CONFIG_II=
O_BUFFER_CB=3Dm</tt><br><tt>CONFIG_IIO_KFIFO_BUF=3Dm</tt><br><tt>CONFIG_IIO=
_TRIGGERED_BUFFER=3Dm</tt><br><tt>CONFIG_IIO_CONFIGFS=3Dm</tt><br><tt>CONFI=
G_IIO_TRIGGER=3Dy</tt><br><tt>CONFIG_IIO_CONSUMERS_PER_TRIGGER=3D2</tt><br>=
<tt>CONFIG_IIO_SW_DEVICE=3Dm</tt><br><tt>CONFIG_IIO_SW_TRIGGER=3Dm</tt><br>=
<tt>CONFIG_IIO_ST_ACCEL_3AXIS=3Dm</tt><br><tt>CONFIG_IIO_ST_ACCEL_I2C_3AXIS=
=3Dm</tt><br><tt>CONFIG_IIO_ST_ACCEL_SPI_3AXIS=3Dm</tt><br><tt># Hid Sensor=
 IIO Common</tt><br><tt>CONFIG_HID_SENSOR_IIO_COMMON=3Dm</tt><br><tt>CONFIG=
_HID_SENSOR_IIO_TRIGGER=3Dm</tt><br><tt># CONFIG_IIO_SSP_SENSORHUB is not s=
et</tt><br><tt>CONFIG_IIO_ST_SENSORS_I2C=3Dm</tt><br><tt>CONFIG_IIO_ST_SENS=
ORS_SPI=3Dm</tt><br><tt>CONFIG_IIO_ST_SENSORS_CORE=3Dm</tt><br><tt># IIO du=
mmy driver</tt><br><tt>CONFIG_IIO_DUMMY_EVGEN=3Dm</tt><br><tt>CONFIG_IIO_SI=
MPLE_DUMMY=3Dm</tt><br><tt>CONFIG_IIO_SIMPLE_DUMMY_EVENTS=3Dy</tt><br><tt>C=
ONFIG_IIO_SIMPLE_DUMMY_BUFFER=3Dy</tt><br><tt>CONFIG_IIO_ST_GYRO_3AXIS=3Dm<=
/tt><br><tt>CONFIG_IIO_ST_GYRO_I2C_3AXIS=3Dm</tt><br><tt>CONFIG_IIO_ST_GYRO=
_SPI_3AXIS=3Dm</tt><br><tt># CONFIG_IIO_ST_LSM6DSX is not set</tt><br><tt>C=
ONFIG_IIO_ADIS_LIB=3Dm</tt><br><tt>CONFIG_IIO_ADIS_LIB_BUFFER=3Dy</tt><br><=
tt>CONFIG_IIO_ST_MAGN_3AXIS=3Dm</tt><br><tt>CONFIG_IIO_ST_MAGN_I2C_3AXIS=3D=
m</tt><br><tt>CONFIG_IIO_ST_MAGN_SPI_3AXIS=3Dm</tt><br><tt># CONFIG_IIO_HRT=
IMER_TRIGGER is not set</tt><br><tt>CONFIG_IIO_INTERRUPT_TRIGGER=3Dm</tt><b=
r><tt>CONFIG_IIO_TIGHTLOOP_TRIGGER=3Dm</tt><br><tt># CONFIG_IIO_SYSFS_TRIGG=
ER is not set</tt><br><tt># CONFIG_IIO_ST_PRESS is not set<br></tt></div><f=
ont face=3D"monospace"><br>=C2=A0Any ideas?<br>=C2=A0<br>=C2=A0Thanks,<br>=
=C2=A0Varsha<br></font><div style=3D"margin-left: 40px;"><br></div></div>
------=_Part_4188_657236780.1489543674357--

------=_Part_4187_955998789.1489543674357--


X-GM-THRID: 6396247239473233920
Date: Sat, 11 Mar 2017 07:19:17 -0800 (PST)
From: Narcisa Vasile <narcisaanamaria12@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <9139fda1-a9d3-47cd-a566-c6b454c752e5@googlegroups.com>
In-Reply-To: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
Subject: Re: Trouble with IIO dummy build.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2583_14168179.1489245557757"
X-Google-Token: EPWqkMYF4iGM9-ufm7w0
X-Google-IP: 141.85.0.122

------=_Part_2583_14168179.1489245557757
Content-Type: multipart/alternative; 
	boundary="----=_Part_2584_2020398375.1489245557758"

------=_Part_2584_2020398375.1489245557758
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Varsha

Maybe using modinfo command (modinfo iio_dummy.ko for example) will help 
you find more information about what you are trying to insert.
It will output the dependencies, which I think will help you solve this 
problem since it seems to me that the error you got:
"Unknown symbol iio_bus_type" happens because of some missing dependency.

Also, do you get any error message when trying to mount?

Hope this helps,
Narcisa

On Saturday, March 11, 2017 at 4:26:01 PM UTC+2, Varsha Rao wrote:
>
>  
>  Hello,
>  
>  I am having issues with dummy modules compilation. I have selected the 
> required config options.
>  $ cat .config | grep IIO 
>  And output of it is as listed below.
>
> # CONFIG_SENSORS_IIO_HWMON is not set
> CONFIG_DVB_USB_FRIIO=m
> # IIO staging drivers
> CONFIG_IIO=y
> CONFIG_IIO_BUFFER=y
> CONFIG_IIO_BUFFER_CB=m
> CONFIG_IIO_KFIFO_BUF=y
> CONFIG_IIO_TRIGGERED_BUFFER=y
> CONFIG_IIO_CONFIGFS=y
> CONFIG_IIO_TRIGGER=y
> CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
> CONFIG_IIO_SW_DEVICE=m
> CONFIG_IIO_SW_TRIGGER=m
> CONFIG_IIO_TRIGGERED_EVENT=m
> CONFIG_IIO_ST_ACCEL_3AXIS=m
> CONFIG_IIO_ST_ACCEL_I2C_3AXIS=m
> CONFIG_IIO_ST_ACCEL_SPI_3AXIS=m
> # Hid Sensor IIO Common
> CONFIG_HID_SENSOR_IIO_COMMON=m
> CONFIG_HID_SENSOR_IIO_TRIGGER=m
> CONFIG_IIO_MS_SENSORS_I2C=m
> CONFIG_IIO_SSP_SENSORS_COMMONS=m
> CONFIG_IIO_SSP_SENSORHUB=m
> CONFIG_IIO_ST_SENSORS_I2C=m
> CONFIG_IIO_ST_SENSORS_SPI=m
> CONFIG_IIO_ST_SENSORS_CORE=m
> # IIO dummy driver
> CONFIG_IIO_DUMMY_EVGEN=m
> CONFIG_IIO_SIMPLE_DUMMY=m
> CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
> CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
> CONFIG_IIO_ST_GYRO_3AXIS=m
> CONFIG_IIO_ST_GYRO_I2C_3AXIS=m
> CONFIG_IIO_ST_GYRO_SPI_3AXIS=m
> CONFIG_INV_MPU6050_IIO=m
> CONFIG_IIO_ST_LSM6DSX=m
> CONFIG_IIO_ST_LSM6DSX_I2C=m
> CONFIG_IIO_ST_LSM6DSX_SPI=m
> CONFIG_IIO_ADIS_LIB=y
> CONFIG_IIO_ADIS_LIB_BUFFER=y
> CONFIG_IIO_ST_MAGN_3AXIS=m
> CONFIG_IIO_ST_MAGN_I2C_3AXIS=m
> CONFIG_IIO_ST_MAGN_SPI_3AXIS=m
> CONFIG_IIO_HRTIMER_TRIGGER=m
> CONFIG_IIO_INTERRUPT_TRIGGER=m
> CONFIG_IIO_TIGHTLOOP_TRIGGER=m
> CONFIG_IIO_SYSFS_TRIGGER=m
> # CONFIG_IIO_ST_PRESS is not set
>
>  There is no iio directory created after mounting configfs.
>  sudo mount -t configfs none /config
>
>   config]$ ls -a
>   .  ..
>  
>   The following command execute without any error.
>   $ make drivers/iio/dummy/iio_dummy_evgen.ko 
>
>  $ make drivers/iio/dummy/iio_dummy.ko
>
>   
>   I tried to load module with insmod, SELinux prevented access to it.
>
>     $ insmod iio_dummy_evgen.ko
>
>     $ insmod iio_dummy.ko
>
>
>  So, I tried to load modules with modprobe. I used the following commands 
> and they executed with errors.
>
>   $ sudo modprobe iio_dummy_evgen
>
>   modprobe: ERROR: could not insert 'iio_dummy_evgen': Unknown symbol in 
> module, or unknown parameter (see dmesg)
>
>
>   $ sudo modprobe iio_dummy
>
>   modprobe: ERROR: could not insert 'iio_dummy': Unknown symbol in module, 
> or unknown parameter (see dmesg)
>
>  
>
>   dmesg output 
>
>   [ 7093.419225] iio_dummy_evgen: Unknown symbol iio_bus_type (err 0)
>
>
>  I am using fedora 25 x86_64 with kernel version 4.11.0-rc1+.
>
>   
>
>  Any idea to resolve this issue?
>
>
>   Thanks,
>
>   Varsha
>

------=_Part_2584_2020398375.1489245557758
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, Varsha<br><br>Maybe using modinfo command (modinfo iio=
_dummy.ko for example) will help you find more information about what you a=
re trying to insert.<br>It will output the dependencies, which I think will=
 help you solve this problem since it seems to me that the error you got:<b=
r>&quot;<tt>Unknown symbol iio_bus_type</tt>&quot; happens because of some =
missing dependency.<br><br>Also, do you get any error message when trying t=
o mount?<br><br>Hope this helps,<br>Narcisa<br><br>On Saturday, March 11, 2=
017 at 4:26:01 PM UTC+2, Varsha Rao wrote:<blockquote class=3D"gmail_quote"=
 style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-=
left: 1ex;"><div dir=3D"ltr">=C2=A0<br>=C2=A0Hello,<br>=C2=A0<br>=C2=A0I am=
 having issues with dummy modules compilation. I have selected the required=
 config options.<br>=C2=A0$ cat .config | grep IIO <br>=C2=A0And output of =
it is as listed below.<br><br><div style=3D"margin-left:40px"># CONFIG_SENS=
ORS_IIO_HWMON is not set<br>CONFIG_DVB_USB_FRIIO=3Dm<br># IIO staging drive=
rs<br>CONFIG_IIO=3Dy<br>CONFIG_IIO_BUFFER=3Dy<br>CONFIG_IIO_BUFFER_CB=3Dm<b=
r>CONFIG_IIO_KFIFO_BUF=3Dy<br>CONFIG_IIO_TRIGGERED_BUFFER=3Dy<br>CONFIG_IIO=
_CONFIGFS=3Dy<br>CONFIG_IIO_TRIGGER=3Dy<br>CONFIG_IIO_CONSUMERS_PER_<wbr>TR=
IGGER=3D2<br>CONFIG_IIO_SW_DEVICE=3Dm<br>CONFIG_IIO_SW_TRIGGER=3Dm<br>CONFI=
G_IIO_TRIGGERED_EVENT=3Dm<br>CONFIG_IIO_ST_ACCEL_3AXIS=3Dm<br>CONFIG_IIO_ST=
_ACCEL_I2C_3AXIS=3D<wbr>m<br>CONFIG_IIO_ST_ACCEL_SPI_3AXIS=3D<wbr>m<br># Hi=
d Sensor IIO Common<br>CONFIG_HID_SENSOR_IIO_COMMON=3Dm<br>CONFIG_HID_SENSO=
R_IIO_TRIGGER=3D<wbr>m<br>CONFIG_IIO_MS_SENSORS_I2C=3Dm<br>CONFIG_IIO_SSP_S=
ENSORS_<wbr>COMMONS=3Dm<br>CONFIG_IIO_SSP_SENSORHUB=3Dm<br>CONFIG_IIO_ST_SE=
NSORS_I2C=3Dm<br>CONFIG_IIO_ST_SENSORS_SPI=3Dm<br>CONFIG_IIO_ST_SENSORS_COR=
E=3Dm<br># IIO dummy driver<br>CONFIG_IIO_DUMMY_EVGEN=3Dm<br>CONFIG_IIO_SIM=
PLE_DUMMY=3Dm<br>CONFIG_IIO_SIMPLE_DUMMY_<wbr>EVENTS=3Dy<br>CONFIG_IIO_SIMP=
LE_DUMMY_<wbr>BUFFER=3Dy<br>CONFIG_IIO_ST_GYRO_3AXIS=3Dm<br>CONFIG_IIO_ST_G=
YRO_I2C_3AXIS=3Dm<br>CONFIG_IIO_ST_GYRO_SPI_3AXIS=3Dm<br>CONFIG_INV_MPU6050=
_IIO=3Dm<br>CONFIG_IIO_ST_LSM6DSX=3Dm<br>CONFIG_IIO_ST_LSM6DSX_I2C=3Dm<br>C=
ONFIG_IIO_ST_LSM6DSX_SPI=3Dm<br>CONFIG_IIO_ADIS_LIB=3Dy<br>CONFIG_IIO_ADIS_=
LIB_BUFFER=3Dy<br>CONFIG_IIO_ST_MAGN_3AXIS=3Dm<br>CONFIG_IIO_ST_MAGN_I2C_3A=
XIS=3Dm<br>CONFIG_IIO_ST_MAGN_SPI_3AXIS=3Dm<br>CONFIG_IIO_HRTIMER_TRIGGER=
=3Dm<br>CONFIG_IIO_INTERRUPT_TRIGGER=3Dm<br>CONFIG_IIO_TIGHTLOOP_TRIGGER=3D=
m<br>CONFIG_IIO_SYSFS_TRIGGER=3Dm<br># CONFIG_IIO_ST_PRESS is not set<br><b=
r></div>=C2=A0There is no iio directory created after mounting configfs.<br=
>=C2=A0sudo mount -t configfs none /config<br><br>=C2=A0 config]$ ls -a<br>=
=C2=A0 .=C2=A0 ..<br>=C2=A0<br>=C2=A0 The following command execute without=
 any error.<br>=C2=A0 <tt>$=C2=A0make=C2=A0drivers/iio/dummy/iio_<wbr>dummy=
_evgen.ko</tt> <p><tt>=C2=A0$=C2=A0make=C2=A0drivers/iio/dummy/iio_<wbr>dum=
my.ko</tt></p><p><tt>=C2=A0 </tt><br>=C2=A0 I tried to load module with ins=
mod, SELinux prevented access to it.<tt><br></tt></p><p><tt>=C2=A0=C2=A0=C2=
=A0 $=C2=A0insmod=C2=A0iio_dummy_evgen.ko</tt></p><p><tt>=C2=A0=C2=A0=C2=A0=
 $=C2=A0insmod=C2=A0iio_dummy.ko</tt></p><p><tt><br></tt></p><p><tt>=C2=A0S=
o, I tried to load modules with modprobe. I used the following commands and=
 they executed with errors.</tt></p><p><tt>=C2=A0 $ sudo modprobe iio_dummy=
_evgen</tt></p><p><tt>=C2=A0 modprobe: ERROR: could not insert &#39;iio_dum=
my_evgen&#39;: Unknown symbol in module, or unknown parameter (see dmesg)</=
tt></p><p><tt><br></tt></p><p><tt>=C2=A0 $ sudo modprobe iio_dummy</tt></p>=
<p><tt>=C2=A0 modprobe: ERROR: could not insert &#39;iio_dummy&#39;: Unknow=
n symbol in module, or unknown parameter (see dmesg)<br></tt></p><p><tt>=C2=
=A0</tt></p><p><tt>=C2=A0 dmesg output <br></tt></p><p><tt>=C2=A0 [ 7093.41=
9225] iio_dummy_evgen: Unknown symbol iio_bus_type (err 0)<br></tt></p><p><=
tt><br></tt></p><p><tt>=C2=A0I am using fedora 25 x86_64 with kernel versio=
n 4.11.0-rc1+.</tt></p><p><tt>=C2=A0 <br></tt></p><p><tt>=C2=A0Any idea to =
resolve this issue?<br></tt></p><p><tt><br></tt></p><p><tt>=C2=A0 Thanks,</=
tt></p><p><tt>=C2=A0 Varsha<br></tt></p></div></blockquote></div>
------=_Part_2584_2020398375.1489245557758--

------=_Part_2583_14168179.1489245557757--


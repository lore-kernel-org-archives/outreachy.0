X-GM-THRID: 6396325489451991040
Date: Sun, 12 Mar 2017 10:49:10 -0700 (PDT)
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: daniel.baluta@gmail.com
Message-Id: <fb1edf8a-b3ed-441c-9d02-9649088d2062@googlegroups.com>
In-Reply-To: <20170312173701.GA3783@aishwarya>
References: <20170311192931.GA3443@aishwarya>
 <CAEnQRZDYBOhOpR7uo4sBGUuir7BVKL6Aw+etDzzrMAKT37boKQ@mail.gmail.com>
 <20170312042735.GA3109@aishwarya>
 <20170312173701.GA3783@aishwarya>
Subject: Re: [Outreachy kernel] [IIO Task1] Module load error
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_8354_2144714183.1489340950828"
X-Google-Token: EJaUlsYF-MJseRLavP40
X-Google-IP: 14.139.82.6

------=_Part_8354_2144714183.1489340950828
Content-Type: multipart/alternative; 
	boundary="----=_Part_8355_1966699476.1489340950829"

------=_Part_8355_1966699476.1489340950829
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Sunday, March 12, 2017 at 11:07:14 PM UTC+5:30, Aishwarya Pant wrote:
>
> On Sun, Mar 12, 2017 at 09:57:35AM +0530, Aishwarya Pant wrote: 
> > On Sat, Mar 11, 2017 at 10:36:28PM +0200, Daniel Baluta wrote: 
> > > On Sat, Mar 11, 2017 at 9:29 PM, Aishwarya Pant <aish...@gmail.com 
> <javascript:>> wrote: 
> > > > Hi 
> > > > 
> > > > When I try to load the modules iio_dummy and iio_dummy_evgen, I see 
> the 
> > > > following error in dmesg: 
> > > > 
> > > > iio_dummy_evgen: exports duplicate symbol iio_dummy_evgen_get_irq 
> (owned 
> > > > by kernel) 
> > > > 
> > > > Looks like I've got a circular dependency, something that should 
> have 
> > > > been added as a module (or not at all) is built-in by default. Here 
> is 
> > > > the config I've got: 
> > > > 
> > > > # 
> > > > # IIO dummy driver 
> > > > # 
> > > > CONFIG_IIO_DUMMY_EVGEN=m 
> > > > CONFIG_IIO_SIMPLE_DUMMY=m 
> > > > CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y 
> > > > CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y 
> > > > CONFIG_IIO_CONFIGFS=y 
> > > > 
> > > > Any leads for where the error is popping from? 
> > > 
> > > Hi, 
> > > 
> > > Is that the only error related to IIO in dmesg? 
> > > 
> > > Can you please post the output from: 
> > > 
> > > 
> > > cat .config | grep IIO 
> > # CONFIG_SENSORS_IIO_HWMON is not set 
> > CONFIG_IIO=y 
> > CONFIG_IIO_BUFFER=y 
> > # CONFIG_IIO_BUFFER_CB is not set 
> > CONFIG_IIO_KFIFO_BUF=m 
> > CONFIG_IIO_CONFIGFS=y 
> > CONFIG_IIO_TRIGGER=y 
> > CONFIG_IIO_CONSUMERS_PER_TRIGGER=2 
> > CONFIG_IIO_SW_DEVICE=y 
> > CONFIG_IIO_SW_TRIGGER=m 
> > # CONFIG_IIO_ST_ACCEL_3AXIS is not set 
> > # Hid Sensor IIO Common 
> > CONFIG_HID_SENSOR_IIO_COMMON=y 
> > CONFIG_HID_SENSOR_IIO_TRIGGER=y 
> > # IIO dummy driver 
> > CONFIG_IIO_DUMMY_EVGEN=m 
> > CONFIG_IIO_SIMPLE_DUMMY=m 
> > CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y 
> > CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y 
> > # CONFIG_IIO_ST_GYRO_3AXIS is not set 
> > # CONFIG_IIO_ST_LSM6DSX is not set 
> > # CONFIG_IIO_ST_MAGN_3AXIS is not set 
> > # CONFIG_IIO_HRTIMER_TRIGGER is not set 
> > # CONFIG_IIO_INTERRUPT_TRIGGER is not set 
> > # CONFIG_IIO_TIGHTLOOP_TRIGGER is not set 
> > # CONFIG_IIO_SYSFS_TRIGGER is not set 
> > # CONFIG_IIO_ST_PRESS is not set 
> > > 
> > > and 
> > > 
> > > dmesg | grep iio 
> > [  217.380166] iio_dummy_evgen: exports duplicate symbol 
> > iio_dummy_evgen_get_irq (owned by kernel) 
> > [  228.650871] iio_dummy_evgen: exports duplicate symbol 
> > iio_dummy_evgen_get_irq (owned by kernel) 
> > 
> > Nothing else just iio_dummy module load error. 
>
>
> This is solved thanks. I had an issue with module dependencies. 
>
> Hi Aishwarya,

Can you please share how you solved this.

Thanks in Advance! 
 

------=_Part_8355_1966699476.1489340950829
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Sunday, March 12, 2017 at 11:07:14 PM UTC+5:30,=
 Aishwarya Pant wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;=
margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Sun, =
Mar 12, 2017 at 09:57:35AM +0530, Aishwarya Pant wrote:
<br>&gt; On Sat, Mar 11, 2017 at 10:36:28PM +0200, Daniel Baluta wrote:
<br>&gt; &gt; On Sat, Mar 11, 2017 at 9:29 PM, Aishwarya Pant &lt;<a href=
=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D"NQkBo-s7AwAJ" r=
el=3D"nofollow" onmousedown=3D"this.href=3D&#39;javascript:&#39;;return tru=
e;" onclick=3D"this.href=3D&#39;javascript:&#39;;return true;">aish...@gmai=
l.com</a>&gt; wrote:
<br>&gt; &gt; &gt; Hi
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; When I try to load the modules iio_dummy and iio_dummy_e=
vgen, I see the
<br>&gt; &gt; &gt; following error in dmesg:
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; iio_dummy_evgen: exports duplicate symbol iio_dummy_evge=
n_get_irq (owned
<br>&gt; &gt; &gt; by kernel)
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; Looks like I&#39;ve got a circular dependency, something=
 that should have
<br>&gt; &gt; &gt; been added as a module (or not at all) is built-in by de=
fault. Here is
<br>&gt; &gt; &gt; the config I&#39;ve got:
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; #
<br>&gt; &gt; &gt; # IIO dummy driver
<br>&gt; &gt; &gt; #
<br>&gt; &gt; &gt; CONFIG_IIO_DUMMY_EVGEN=3Dm
<br>&gt; &gt; &gt; CONFIG_IIO_SIMPLE_DUMMY=3Dm
<br>&gt; &gt; &gt; CONFIG_IIO_SIMPLE_DUMMY_<wbr>EVENTS=3Dy
<br>&gt; &gt; &gt; CONFIG_IIO_SIMPLE_DUMMY_<wbr>BUFFER=3Dy
<br>&gt; &gt; &gt; CONFIG_IIO_CONFIGFS=3Dy
<br>&gt; &gt; &gt;
<br>&gt; &gt; &gt; Any leads for where the error is popping from?
<br>&gt; &gt;=20
<br>&gt; &gt; Hi,
<br>&gt; &gt;=20
<br>&gt; &gt; Is that the only error related to IIO in dmesg?
<br>&gt; &gt;=20
<br>&gt; &gt; Can you please post the output from:
<br>&gt; &gt;=20
<br>&gt; &gt;=20
<br>&gt; &gt; cat .config | grep IIO
<br>&gt; # CONFIG_SENSORS_IIO_HWMON is not set
<br>&gt; CONFIG_IIO=3Dy
<br>&gt; CONFIG_IIO_BUFFER=3Dy
<br>&gt; # CONFIG_IIO_BUFFER_CB is not set
<br>&gt; CONFIG_IIO_KFIFO_BUF=3Dm
<br>&gt; CONFIG_IIO_CONFIGFS=3Dy
<br>&gt; CONFIG_IIO_TRIGGER=3Dy
<br>&gt; CONFIG_IIO_CONSUMERS_PER_<wbr>TRIGGER=3D2
<br>&gt; CONFIG_IIO_SW_DEVICE=3Dy
<br>&gt; CONFIG_IIO_SW_TRIGGER=3Dm
<br>&gt; # CONFIG_IIO_ST_ACCEL_3AXIS is not set
<br>&gt; # Hid Sensor IIO Common
<br>&gt; CONFIG_HID_SENSOR_IIO_COMMON=3Dy
<br>&gt; CONFIG_HID_SENSOR_IIO_TRIGGER=3D<wbr>y
<br>&gt; # IIO dummy driver
<br>&gt; CONFIG_IIO_DUMMY_EVGEN=3Dm
<br>&gt; CONFIG_IIO_SIMPLE_DUMMY=3Dm
<br>&gt; CONFIG_IIO_SIMPLE_DUMMY_<wbr>EVENTS=3Dy
<br>&gt; CONFIG_IIO_SIMPLE_DUMMY_<wbr>BUFFER=3Dy
<br>&gt; # CONFIG_IIO_ST_GYRO_3AXIS is not set
<br>&gt; # CONFIG_IIO_ST_LSM6DSX is not set
<br>&gt; # CONFIG_IIO_ST_MAGN_3AXIS is not set
<br>&gt; # CONFIG_IIO_HRTIMER_TRIGGER is not set
<br>&gt; # CONFIG_IIO_INTERRUPT_TRIGGER is not set
<br>&gt; # CONFIG_IIO_TIGHTLOOP_TRIGGER is not set
<br>&gt; # CONFIG_IIO_SYSFS_TRIGGER is not set
<br>&gt; # CONFIG_IIO_ST_PRESS is not set
<br>&gt; &gt;=20
<br>&gt; &gt; and
<br>&gt; &gt;=20
<br>&gt; &gt; dmesg | grep iio
<br>&gt; [ =C2=A0217.380166] iio_dummy_evgen: exports duplicate symbol
<br>&gt; iio_dummy_evgen_get_irq (owned by kernel)
<br>&gt; [ =C2=A0228.650871] iio_dummy_evgen: exports duplicate symbol
<br>&gt; iio_dummy_evgen_get_irq (owned by kernel)
<br>&gt;=20
<br>&gt; Nothing else just iio_dummy module load error.
<br>
<br>
<br>This is solved thanks. I had an issue with module dependencies.
<br>
<br></blockquote><div>Hi Aishwarya,<br><br>Can you please share how you sol=
ved this.<br><br>Thanks in Advance! <br></div><div>=C2=A0</div></div>
------=_Part_8355_1966699476.1489340950829--

------=_Part_8354_2144714183.1489340950828--


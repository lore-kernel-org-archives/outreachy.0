X-GM-THRID: 6396247239473233920
Date: Sun, 12 Mar 2017 01:28:45 -0800 (PST)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com
Message-Id: <ef00617d-c715-4f51-ae09-32670a5423a8@googlegroups.com>
In-Reply-To: <CAEnQRZBJDh4eQRX9OjpVSJkoj3Wm3qwizfqqAP20ZVMvWL1StA@mail.gmail.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <CAEnQRZBJDh4eQRX9OjpVSJkoj3Wm3qwizfqqAP20ZVMvWL1StA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Trouble with IIO dummy build.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_7123_1932842911.1489310925329"
X-Google-Token: EM2plMYF_ixxkTuPzA40
X-Google-IP: 117.194.58.130

------=_Part_7123_1932842911.1489310925329
Content-Type: multipart/alternative; 
	boundary="----=_Part_7124_341206627.1489310925330"

------=_Part_7124_341206627.1489310925330
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


 Hello,

  Thanks Daniel, finally it worked.

Having this should create /config/iio dir after 
> mounting configfs. 
>
> Can you please add a printk in iio_configfs_init function: 
>
> http://lxr.linux.no/#linux+v4.10.1/drivers/iio/industrialio-configfs.c#L37 
> <http://lxr.linux.no/#linux+v4.10.1/drivers/iio/industrialio-configfs.c%23L37> 
>
> Then use dmesg to check for the message. 
>
 
    Printk message is displayed in dmesg when CONFIG_IIO_SW_DEVICE=m.
   It does not display when CONFIG_IIO_SW_DEVICE=y.
 

> Also, please apply this patch: 
>
> http://marc.info/?l=linux-iio&m=148907643001389&w=2 
>
> if you use CONFIG_IIO_SW_DEVICE=m 
>
> You can workaround the patch above if you select CONFIG_IIO_SW_DEVICE=y 
>
>   
   It works with CONFIG_IIO_SW_DEVICE=m and if patch is applied.
     Both modules got loaded using modprobe.

$ lsmod | grep "iio"
iio_dummy              16384  0
industrialio_sw_device    16384  1 iio_dummy
kfifo_buf              16384  1 iio_dummy
iio_dummy_evgen        16384  1 iio_dummy
industrialio           69632  3 iio_dummy,iio_dummy_evgen,kfifo_buf 
   
    Thanks,
    Varsha

------=_Part_7124_341206627.1489310925330
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>=C2=A0Hello,<br><br>=C2=A0 Thanks Daniel, finally it w=
orked.<br><br><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-l=
eft: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Having this shou=
ld create /config/iio dir after
<br>mounting configfs.
<br>
<br>Can you please add a printk in iio_configfs_init function:
<br>
<br><a href=3D"http://lxr.linux.no/#linux+v4.10.1/drivers/iio/industrialio-=
configfs.c%23L37" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.hr=
ef=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Flxr.linux.no%2F%23lin=
ux%2Bv4.10.1%2Fdrivers%2Fiio%2Findustrialio-configfs.c%2523L37\x26sa\x3dD\x=
26sntz\x3d1\x26usg\x3dAFQjCNGq8b8wRqowGP6PpfI3iCN-Sm9xUQ&#39;;return true;"=
 onclick=3D"this.href=3D&#39;http://www.google.com/url?q\x3dhttp%3A%2F%2Flx=
r.linux.no%2F%23linux%2Bv4.10.1%2Fdrivers%2Fiio%2Findustrialio-configfs.c%2=
523L37\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGq8b8wRqowGP6PpfI3iCN-Sm9xUQ=
&#39;;return true;">http://lxr.linux.no/#linux+v4.<wbr>10.1/drivers/iio/ind=
ustrialio-<wbr>configfs.c#L37</a>
<br>
<br>Then use dmesg to check for the message.
<br></blockquote><div>=C2=A0</div><div>=C2=A0 =C2=A0 Printk message is disp=
layed in dmesg when CONFIG_IIO_SW_DEVICE=3Dm.<br>=C2=A0=C2=A0 It does not d=
isplay when CONFIG_IIO_SW_DEVICE=3Dy.<br>=C2=A0<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #cc=
c solid;padding-left: 1ex;">Also, please apply this patch:
<br>
<br><a href=3D"http://marc.info/?l=3Dlinux-iio&amp;m=3D148907643001389&amp;=
w=3D2" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;h=
ttp://www.google.com/url?q\x3dhttp%3A%2F%2Fmarc.info%2F%3Fl%3Dlinux-iio%26m=
%3D148907643001389%26w%3D2\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFb6YNkiu=
RSCUfxutOj1GAWAKHc6w&#39;;return true;" onclick=3D"this.href=3D&#39;http://=
www.google.com/url?q\x3dhttp%3A%2F%2Fmarc.info%2F%3Fl%3Dlinux-iio%26m%3D148=
907643001389%26w%3D2\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNFb6YNkiuRSCUfx=
utOj1GAWAKHc6w&#39;;return true;">http://marc.info/?l=3Dlinux-iio&amp;<wbr>=
m=3D148907643001389&amp;w=3D2</a>
<br>
<br>if you use CONFIG_IIO_SW_DEVICE=3Dm
<br>
<br>You can workaround the patch above if you select CONFIG_IIO_SW_DEVICE=
=3Dy
<br>
<br></blockquote><div>=C2=A0 <br>=C2=A0=C2=A0 It works with CONFIG_IIO_SW_D=
EVICE=3Dm and if patch is applied.<br>=C2=A0 =C2=A0=C2=A0 Both modules got =
loaded using modprobe.<br><br><div style=3D"margin-left: 40px;">$ lsmod | g=
rep &quot;iio&quot;<br>iio_dummy=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 16384=C2=A0 0<br>industrialio_sw_devic=
e=C2=A0=C2=A0=C2=A0 16384=C2=A0 1 iio_dummy<br>kfifo_buf=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 16384=C2=A0 1 =
iio_dummy<br>iio_dummy_evgen=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1638=
4=C2=A0 1 iio_dummy<br>industrialio=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 69632=C2=A0 3 iio_dummy,iio_dummy_evgen,kfifo_buf <br=
></div></div><div>=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=
=A0=C2=A0 Varsha<br></div></div>
------=_Part_7124_341206627.1489310925330--

------=_Part_7123_1932842911.1489310925329--


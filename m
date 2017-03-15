X-GM-THRID: 6396247239473233920
Date: Wed, 15 Mar 2017 07:58:30 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com
Message-Id: <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com>
In-Reply-To: <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com> <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com>
 <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4602_368408823.1489589910124"
X-Google-Token: EJatpcYFBDz4qUph31Y0
X-Google-IP: 118.151.209.30

------=_Part_4602_368408823.1489589910124
Content-Type: multipart/alternative; 
	boundary="----=_Part_4603_93514740.1489589910124"

------=_Part_4603_93514740.1489589910124
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


Hello,

>
> My first thought on this is to compile everything related to IIO as Y=20
> not m. Then we can see=20
> if there is some module dependency etc.=20
>
 =20
   I have configured accordingly but few could not be set to Y, as they=20
were dependent on some other module.
   http://pastebin.com/49AvqiGP=20
  =20
   After setting to Y, I am no longer able to load the modules successfully=
.
   Even though these commands execute with no errors.

   sudo modprobe iio_dummy_evgen
   sudo modprobe iio_dummy
   $ lsmod | grep "iio"  does not give any output.
   =20
    But I can mount the config directory. After mounting, I cannot create=
=20
sub directory.
 =20
    $ sudo mount -t configfs none /config
    $ sudo mkdir /config/conf1
    mkdir: cannot create directory =E2=80=98/config/conf1=E2=80=99: Operati=
on not permitted
=20
   Thanks,
   Varsha

After we make everything work with module compiled in kernel image (y)=20
> we can go back and use your current config.=20
>
> thanks,=20
> Daniel.=20
>
=20

=20

------=_Part_4603_93514740.1489589910124
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>Hello,<br><blockquote class=3D"gmail_quote" style=3D"m=
argin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"=
>
<br>My first thought on this is to compile everything related to IIO as Y
<br>not m. Then we can see
<br>if there is some module dependency etc.
<br></blockquote><div>=C2=A0 <br>=C2=A0=C2=A0 I have configured accordingly=
 but few could not be set to Y, as they were dependent on some other module=
.<br>=C2=A0=C2=A0 http://pastebin.com/49AvqiGP <br>=C2=A0=C2=A0 <br>=C2=A0=
=C2=A0 After setting to Y, I am no longer able to load the modules successf=
ully.<br>=C2=A0=C2=A0 Even though these commands execute with no errors.<br=
><br>=C2=A0=C2=A0 sudo modprobe iio_dummy_evgen<br>=C2=A0=C2=A0 sudo modpro=
be iio_dummy<br>=C2=A0=C2=A0 $ lsmod | grep &quot;iio&quot;=C2=A0 does not =
give any output.<br></div><div>=C2=A0=C2=A0=C2=A0 <br>=C2=A0=C2=A0=C2=A0 Bu=
t I can mount the config directory. After mounting, I cannot create sub dir=
ectory.<br>=C2=A0 <br>=C2=A0 =C2=A0  $ sudo mount -t configfs none /config<=
br>=C2=A0=C2=A0=C2=A0 $ sudo mkdir /config/conf1<br>=C2=A0=C2=A0=C2=A0 mkdi=
r: cannot create directory =E2=80=98/config/conf1=E2=80=99: Operation not p=
ermitted<br>=C2=A0<br>=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0 Varsha<br><br></=
div><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">After we make everything w=
ork with module compiled in kernel image (y)
<br>we can go back and use your current config.
<br>
<br>thanks,
<br>Daniel.
<br></blockquote><div>=C2=A0<br><br>=C2=A0</div></div>
------=_Part_4603_93514740.1489589910124--

------=_Part_4602_368408823.1489589910124--


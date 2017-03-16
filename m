X-GM-THRID: 6396247239473233920
X-Gmail-Labels: Topic type: DISCUSSION
Date: Wed, 15 Mar 2017 19:16:53 -0700 (PDT)
From: Varsha Rao <rvarsha016@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: rvarsha016@gmail.com, daniel.baluta@gmail.com
Message-Id: <ff265c71-c5d2-459f-8e6b-05c2079571eb@googlegroups.com>
In-Reply-To: <CAHWJYFm573LU3oX-fewdHnDe70K7WqSVHSrPDB2K7Mma=SRCOQ@mail.gmail.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com> <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
 <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com> <CAEnQRZCjGJYSeO2TaeFGuRURMC2CRpinOTaBBiOrTuYXBGVGKQ@mail.gmail.com>
 <CAAFX7JSiXo-kLxc4xni0+nGahoCsDtRbWiFgmSQoKBDYUwNoxA@mail.gmail.com>
 <CAEnQRZD5BS3VrgLb2y0OvOqrnGoxY3D6J57fCb_FgjF1ZYPPpQ@mail.gmail.com> <CAAFX7JTDR9wrn4XdUCwADB5AoOQA_76U33sWgTA-AF5Fr9RMJw@mail.gmail.com>
 <CAHWJYFm573LU3oX-fewdHnDe70K7WqSVHSrPDB2K7Mma=SRCOQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_16270_1403912892.1489630613496"
X-Google-Token: EJXrp8YFH7m6gDfUa2c0
X-Google-IP: 117.211.102.41

------=_Part_16270_1403912892.1489630613496
Content-Type: multipart/alternative; 
	boundary="----=_Part_16271_845959875.1489630613496"

------=_Part_16271_845959875.1489630613496
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello Ioana, 

>    The modules did not get loaded. 
> >     As there was no output for $ lsmod | grep "iio" 
> > 
>
> lsmod does not list the drivers that are compiled into the kernel but 
> only those that are inserted afterwards. 
>
>     I had used modprobe to load the modules, later I grepped them. But 
iio_dummy_evgen and modprobe iio_dummy were not listed in lsmod.

   Thanks,
   Varsha
    

> Ioana 
>
>
> >     Thanks, 
> >     Varsha 
> > 
>

------=_Part_16271_845959875.1489630613496
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Ioana, <br><br><blockquote class=3D"gmail_quote" sty=
le=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left=
: 1ex;">&gt; =C2=A0 =C2=A0The modules did not get loaded.
<br>&gt; =C2=A0 =C2=A0 As there was no output for $ lsmod | grep &quot;iio&=
quot;
<br>&gt;
<br>
<br>lsmod does not list the drivers that are compiled into the kernel but
<br>only those that are inserted afterwards.
<br>
<br></blockquote><div>=C2=A0=C2=A0=C2=A0 I had used modprobe to load the mo=
dules, later I grepped them. But iio_dummy_evgen and modprobe iio_dummy wer=
e not listed in lsmod.<br><br>=C2=A0=C2=A0 Thanks,<br>=C2=A0=C2=A0 Varsha<b=
r>=C2=A0 =C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"margin=
: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Ioan=
a
<br>
<br>
<br>&gt; =C2=A0 =C2=A0 Thanks,
<br>&gt; =C2=A0 =C2=A0 Varsha
<br>&gt;
<br></blockquote></div>
------=_Part_16271_845959875.1489630613496--

------=_Part_16270_1403912892.1489630613496--


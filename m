X-GM-THRID: 205981220864
Date: Wed, 18 Feb 2015 09:58:33 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <11edf72c-1a1c-4af8-838a-b9600d9fc1a2@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502181835470.2390@hadrien>
References: <1424204282-31960-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.02.1502172227300.2306@localhost6.localdomain6> <CAL7P5jKiTvGSxTrJE7uApKy7Z+EnVZH2x-VRRcPqWYDquqViwg@mail.gmail.com> <alpine.DEB.2.02.1502172301520.2306@localhost6.localdomain6>
 <55c23bda-fe3e-414c-9da8-a898799af64c@googlegroups.com>
 <alpine.DEB.2.10.1502181835470.2390@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg().
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_5310_1544082189.1424282313257"
X-Google-Token: EMmlk6cFmPROXVN5q5M0
X-Google-IP: 77.46.215.254

------=_Part_5310_1544082189.1424282313257
Content-Type: multipart/alternative; 
	boundary="----=_Part_5311_1196960175.1424282313257"

------=_Part_5311_1196960175.1424282313257
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

make drivers/staging/media/vino/saa7191.o shows me errors.
I fixed them, and hope now is fine.
I'll be sending v3.

On Wednesday, February 18, 2015 at 6:36:22 PM UTC+1, Julia Lawall wrote:
>
> On Wed, 18 Feb 2015, Ksenija Stanojevic wrote:=20
>
> > I missunderstood how dev_dbg works.=20
> > i did compile my code and it haven't shown any errors, but I don't have=
=20
> > corresponding .ko file=20
>
> OK, you can try=20
>
> make drivers/staging/media/vino/saa7191.o=20
>
> julia=20
>
>
> >=20
> > On Tuesday, February 17, 2015 at 11:04:31 PM UTC+1, Julia Lawall wrote:=
=20
> >       On Tue, 17 Feb 2015, Ksenija Stanojevi=C4=87 wrote:=20
> >=20
> >       > I removed variables KERN_ERR and KERN_INFO=20
> >       >  and added device argument to dev_dbg in line 230,=20
> >=20
> >       When you send a v2 patch, you could describe the change that you=
=20
> >       have made=20
> >       as compared to the previous patch under the ---=20
> >=20
> >       > I don't know where else to put that argument.=20
> >=20
> >       Every call to dev_dbg needs a pointer to a device structure as=20
> >       the first=20
> >       argument.=20
> >=20
> >       Did you compile your code?  If so, perhaps this file was not=20
> >       selected in=20
> >       your configuration and thus it was not compiled.  You can see if=
=20
> >       it was=20
> >       compiled by looking to see if it has a corresponding .o file.=20
> >        If not, you=20
> >       can try selecting the driver in your configuration.=20
> >=20
> >       julia=20
> >=20
> >       > On Tue, Feb 17, 2015 at 10:27 PM, Julia Lawall=20
> >       <julia....@lip6.fr>=20
> >       > wrote:=20
> >       >       On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:=20
> >       >=20
> >       >       > Making variants of existing macros is against kernel=20
> >       coding=20
> >       >       style. This=20
> >       >       > patch removes all definitions made by macro dprinkt()=
=20
> >       and=20
> >       >       replaces them=20
> >       >       > with dev_dbg().=20
> >       >       >=20
> >       >       > Signed-off-by: Ksenija Stanojevic=20
> >       >       <ksenija.s...@gmail.com>=20
> >       >       > ---=20
> >       >=20
> >       >       What change is made for v2?=20
> >       >=20
> >       >       julia=20
> >       >=20
> >       >       >  drivers/staging/media/vino/saa7191.c | 58=20
> >       >       ++++++++++++++++--------------------=20
> >       >       >  1 file changed, 26 insertions(+), 32 deletions(-)=20
> >       >       >=20
> >       >       > diff --git a/drivers/staging/media/vino/saa7191.c=20
> >       >       b/drivers/staging/media/vino/saa7191.c=20
> >       >       > index 087acab..2aa68c6 100644=20
> >       >       > --- a/drivers/staging/media/vino/saa7191.c=20
> >       >       > +++ b/drivers/staging/media/vino/saa7191.c=20
> >       >       > @@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen=20
> >       >       <tmno...@cc.hut.fi>");=20
> >       >       >  MODULE_LICENSE("GPL");=20
> >       >       >=20
> >       >       >=20
> >       >       > -/* #define SAA7191_DEBUG */=20
> >       >       >=20
> >       >       > -#ifdef SAA7191_DEBUG=20
> >       >       > -#define dprintk(x...) printk("SAA7191: " x);=20
> >       >       > -#else=20
> >       >       > -#define dprintk(x...)=20
> >       >       > -#endif=20
> >       >       >=20
> >       >       >  #define SAA7191_SYNC_COUNT   30=20
> >       >       >  #define SAA7191_SYNC_DELAY   100     /* milliseconds=
=20
> >       */=20
> >       >       > @@ -116,7 +110,7 @@ static int=20
> >       saa7191_read_status(struct=20
> >       >       v4l2_subdev *sd, u8 *value)=20
> >       >       >=20
> >       >       >       ret =3D i2c_master_recv(client, value, 1);=20
> >       >       >       if (ret < 0) {=20
> >       >       > -             printk(KERN_ERR "SAA7191:=20
> >       >       saa7191_read_status(): read failed\n");=20
> >       >       > +             dev_dbg("saa7191_read_status(): read=20
> >       >       failed\n");=20
> >       >       >               return ret;=20
> >       >       >       }=20
> >       >       >=20
> >       >       > @@ -147,7 +141,7 @@ static int=20
> >       saa7191_write_block(struct=20
> >       >       v4l2_subdev *sd,=20
> >       >       >=20
> >       >       >       ret =3D i2c_master_send(client, data, length);=20
> >       >       >       if (ret < 0) {=20
> >       >       > -             printk(KERN_ERR "SAA7191:=20
> >       >       saa7191_write_block(): "=20
> >       >       > +             dev_dbg("saa7191_write_block(): "=20
> >       >       >                      "write failed\n");=20
> >       >       >               return ret;=20
> >       >       >       }=20
> >       >       > @@ -230,9 +224,9 @@ static int saa7191_s_std(struct=20
> >       >       v4l2_subdev *sd, v4l2_std_id norm)=20
> >       >       >=20
> >       >       >       decoder->norm =3D norm;=20
> >       >       >=20
> >       >       > -     dprintk("ctl3: %02x stdc: %02x chcv: %02x\n",=20
> >       ctl3,=20
> >       >       > +     dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv:=20
> >       %02x\n",=20
> >       >       ctl3,=20
> >       >       >               stdc, chcv);=20
> >       >       > -     dprintk("norm: %llx\n", norm);=20
> >       >       > +     dev_dbg("norm: %llx\n", norm);=20
> >       >       >=20
> >       >       >       return 0;=20
> >       >       >  }=20
> >       >       > @@ -241,21 +235,21 @@ static int=20
> >       >       saa7191_wait_for_signal(struct v4l2_subdev *sd, u8=20
> >       *status)=20
> >       >       >  {=20
> >       >       >       int i =3D 0;=20
> >       >       >=20
> >       >       > -     dprintk("Checking for signal...\n");=20
> >       >       > +     dev_dbg("Checking for signal...\n");=20
> >       >       >=20
> >       >       >       for (i =3D 0; i < SAA7191_SYNC_COUNT; i++) {=20
> >       >       >               if (saa7191_read_status(sd, status))=20
> >       >       >                       return -EIO;=20
> >       >       >=20
> >       >       >               if (((*status) & SAA7191_STATUS_HLCK) =3D=
=3D=20
> >       0) {=20
> >       >       > -                     dprintk("Signal found\n");=20
> >       >       > +                     dev_dbg("Signal found\n");=20
> >       >       >                       return 0;=20
> >       >       >               }=20
> >       >       >=20
> >       >       >               msleep(SAA7191_SYNC_DELAY);=20
> >       >       >       }=20
> >       >       >=20
> >       >       > -     dprintk("No signal\n");=20
> >       >       > +     dev_dbg("No signal\n");=20
> >       >       >=20
> >       >       >       return -EBUSY;=20
> >       >       >  }=20
> >       >       > @@ -269,7 +263,7 @@ static int saa7191_querystd(struct=
=20
> >       >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >       >       v4l2_std_id old_norm =3D decoder->norm;=20
> >       >       >       int err =3D 0;=20
> >       >       >=20
> >       >       > -     dprintk("SAA7191 extended signal=20
> >       auto-detection...\n");=20
> >       >       > +     dev_dbg("SAA7191 extended signal=20
> >       auto-detection...\n");=20
> >       >       >=20
> >       >       >       *norm &=3D V4L2_STD_NTSC | V4L2_STD_PAL |=20
> >       V4L2_STD_SECAM;=20
> >       >       >       stdc &=3D ~SAA7191_STDC_SECS;=20
> >       >       > @@ -301,13 +295,13 @@ static int=20
> >       saa7191_querystd(struct=20
> >       >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >       >=20
> >       >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       >       >               /* 60Hz signal -> NTSC */=20
> >       >       > -             dprintk("60Hz signal: NTSC\n");=20
> >       >       > +             dev_dbg("60Hz signal: NTSC\n");=20
> >       >       >               *norm &=3D V4L2_STD_NTSC;=20
> >       >       >               return 0;=20
> >       >       >       }=20
> >       >       >=20
> >       >       >       /* 50Hz signal */=20
> >       >       > -     dprintk("50Hz signal: Trying PAL...\n");=20
> >       >       > +     dev_dbg("50Hz signal: Trying PAL...\n");=20
> >       >       >=20
> >       >       >       /* try PAL first */=20
> >       >       >       err =3D saa7191_s_std(sd, V4L2_STD_PAL);=20
> >       >       > @@ -322,19 +316,19 @@ static int=20
> >       saa7191_querystd(struct=20
> >       >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >       >=20
> >       >       >       /* not 50Hz ? */=20
> >       >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       >       > -             dprintk("No 50Hz signal\n");=20
> >       >       > +             dev_dbg("No 50Hz signal\n");=20
> >       >       >               saa7191_s_std(sd, old_norm);=20
> >       >       >               *norm =3D V4L2_STD_UNKNOWN;=20
> >       >       >               return 0;=20
> >       >       >       }=20
> >       >       >=20
> >       >       >       if (status & SAA7191_STATUS_CODE) {=20
> >       >       > -             dprintk("PAL\n");=20
> >       >       > +             dev_dbg("PAL\n");=20
> >       >       >               *norm &=3D V4L2_STD_PAL;=20
> >       >       >               return saa7191_s_std(sd, old_norm);=20
> >       >       >       }=20
> >       >       >=20
> >       >       > -     dprintk("No color detected with PAL - Trying=20
> >       >       SECAM...\n");=20
> >       >       > +     dev_dbg("No color detected with PAL - Trying=20
> >       >       SECAM...\n");=20
> >       >       >=20
> >       >       >       /* no color detected ? -> try SECAM */=20
> >       >       >       err =3D saa7191_s_std(sd, V4L2_STD_SECAM);=20
> >       >       > @@ -349,19 +343,19 @@ static int=20
> >       saa7191_querystd(struct=20
> >       >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >       >=20
> >       >       >       /* not 50Hz ? */=20
> >       >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       >       > -             dprintk("No 50Hz signal\n");=20
> >       >       > +             dev_dbg("No 50Hz signal\n");=20
> >       >       >               *norm =3D V4L2_STD_UNKNOWN;=20
> >       >       >               goto out;=20
> >       >       >       }=20
> >       >       >=20
> >       >       >       if (status & SAA7191_STATUS_CODE) {=20
> >       >       >               /* Color detected -> SECAM */=20
> >       >       > -             dprintk("SECAM\n");=20
> >       >       > +             dev_dbg("SECAM\n");=20
> >       >       >               *norm &=3D V4L2_STD_SECAM;=20
> >       >       >               return saa7191_s_std(sd, old_norm);=20
> >       >       >       }=20
> >       >       >=20
> >       >       > -     dprintk("No color detected with SECAM - Going=20
> >       back to=20
> >       >       PAL.\n");=20
> >       >       > +     dev_dbg("No color detected with SECAM - Going=20
> >       back to=20
> >       >       PAL.\n");=20
> >       >       >       *norm =3D V4L2_STD_UNKNOWN;=20
> >       >       >=20
> >       >       >  out:=20
> >       >       > @@ -372,30 +366,30 @@ static int=20
> >       >       saa7191_autodetect_norm(struct v4l2_subdev *sd)=20
> >       >       >  {=20
> >       >       >       u8 status;=20
> >       >       >=20
> >       >       > -     dprintk("SAA7191 signal auto-detection...\n");=20
> >       >       > +     dev_dbg("SAA7191 signal auto-detection...\n");=20
> >       >       >=20
> >       >       > -     dprintk("Reading status...\n");=20
> >       >       > +     dev_dbg("Reading status...\n");=20
> >       >       >=20
> >       >       >       if (saa7191_read_status(sd, &status))=20
> >       >       >               return -EIO;=20
> >       >       >=20
> >       >       > -     dprintk("Checking for signal...\n");=20
> >       >       > +     dev_dbg("Checking for signal...\n");=20
> >       >       >=20
> >       >       >       /* no signal ? */=20
> >       >       >       if (status & SAA7191_STATUS_HLCK) {=20
> >       >       > -             dprintk("No signal\n");=20
> >       >       > +             dev_dbg("No signal\n");=20
> >       >       >               return -EBUSY;=20
> >       >       >       }=20
> >       >       >=20
> >       >       > -     dprintk("Signal found\n");=20
> >       >       > +     dev_dbg("Signal found\n");=20
> >       >       >=20
> >       >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       >       >               /* 60hz signal -> NTSC */=20
> >       >       > -             dprintk("NTSC\n");=20
> >       >       > +             dev_dbg("NTSC\n");=20
> >       >       >               return saa7191_s_std(sd, V4L2_STD_NTSC);=
=20
> >       >       >       } else {=20
> >       >       >               /* 50hz signal -> PAL */=20
> >       >       > -             dprintk("PAL\n");=20
> >       >       > +             dev_dbg("PAL\n");=20
> >       >       >               return saa7191_s_std(sd, V4L2_STD_PAL);=
=20
> >       >       >       }=20
> >       >       >  }=20
> >       >       > @@ -606,18 +600,18 @@ static int saa7191_probe(struct=
=20
> >       >       i2c_client *client,=20
> >       >       >=20
> >       >       >       err =3D saa7191_write_block(sd, sizeof(initseq),=
=20
> >       >       initseq);=20
> >       >       >       if (err) {=20
> >       >       > -             printk(KERN_ERR "SAA7191 initialization=
=20
> >       >       failed\n");=20
> >       >       > +             dev_dbg("SAA7191 initialization=20
> >       failed\n");=20
> >       >       >               return err;=20
> >       >       >       }=20
> >       >       >=20
> >       >       > -     printk(KERN_INFO "SAA7191 initialized\n");=20
> >       >       > +     dev_dbg("SAA7191 initialized\n");=20
> >       >       >=20
> >       >       >       decoder->input =3D SAA7191_INPUT_COMPOSITE;=20
> >       >       >       decoder->norm =3D V4L2_STD_PAL;=20
> >       >       >=20
> >       >       >       err =3D saa7191_autodetect_norm(sd);=20
> >       >       >       if (err && (err !=3D -EBUSY))=20
> >       >       > -             printk(KERN_ERR "SAA7191: Signal=20
> >       auto-detection=20
> >       >       failed\n");=20
> >       >       > +             dev_dbg("SAA7191: Signal auto-detection=
=20
> >       >       failed\n");=20
> >       >       >=20
> >       >       >       return 0;=20
> >       >       >  }=20
> >       >       > --=20
> >       >       > 1.9.1=20
> >       >       >=20
> >       > > --=20
> >       > > You received this message because you are subscribed to the=
=20
> >       Google=20
> >       > Groups "outreachy-kernel" group.=20
> >       > > To unsubscribe from this group and stop receiving emails=20
> >       from it,=20
> >       > send an email to outreachy-kern...@googlegroups.com.=20
> >       > > To post to this group, send email to=20
> >       > outreach...@googlegroups.com.=20
> >       > > To view this discussion on the webvisithttps://
> groups.google.com/d/msgid/outreachy-kernel/1424204282-31960-1-=20
> >       git-=20
> >       > send-email-ksenija.stanojevic%40gmail.com.=20
> >       > > For more options, visit https://groups.google.com/d/optout.=
=20
> >       > >=20
> >       >=20
> >       >=20
> >       > --=20
> >       > You received this message because you are subscribed to the=20
> >       Google Groups=20
> >       > "outreachy-kernel" group.=20
> >       > To unsubscribe from this group and stop receiving emails from=
=20
> >       it, send an=20
> >       > email to outreachy-kern...@googlegroups.com.=20
> >       > To post to this group, send email to=20
> >       outreach...@googlegroups.com.=20
> >       > To view this discussion on the webvisithttps://
> groups.google.com/d/msgid/outreachy-kernel/CAL7P5jKiTvGSxTrJE7=20
> >       uApK=20
> >       > y7Z%2BEnVZH2x-VRRcPqWYDquqViwg%40mail.gmail.com.=20
> >       > For more options, visit https://groups.google.com/d/optout.=20
> >       >=20
> >       >=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups=20
> > "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an=20
> > email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/55c23bda-fe3e-414c-9da8-=20
> > a898799af64c%40googlegroups.com.=20
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
> >


------=_Part_5311_1196960175.1424282313257
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">make drivers/staging/media/vino/saa7191.o shows me errors.=
<br>I fixed them, and hope now is fine.<br>I'll be sending v3.<br><br>On We=
dnesday, February 18, 2015 at 6:36:22 PM UTC+1, Julia Lawall wrote:<blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left=
: 1px #ccc solid;padding-left: 1ex;">On Wed, 18 Feb 2015, Ksenija Stanojevi=
c wrote:
<br>
<br>&gt; I missunderstood how dev_dbg works.
<br>&gt; i did compile my code and it haven't shown any errors, but I don't=
 have
<br>&gt; corresponding .ko file
<br>
<br>OK, you can try
<br>
<br>make drivers/staging/media/vino/<wbr>saa7191.o
<br>
<br>julia
<br>
<br>
<br>&gt;
<br>&gt; On Tuesday, February 17, 2015 at 11:04:31 PM UTC+1, Julia Lawall w=
rote:
<br>&gt; &nbsp; &nbsp; &nbsp; On Tue, 17 Feb 2015, Ksenija Stanojevi=C4=87 =
wrote:
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; I removed variables KERN_ERR and KERN_IN=
FO
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp;and added device argument to dev_d=
bg in line 230,
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; When you send a v2 patch, you could describe =
the change that you
<br>&gt; &nbsp; &nbsp; &nbsp; have made
<br>&gt; &nbsp; &nbsp; &nbsp; as compared to the previous patch under the -=
--
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; I don't know where else to put that argu=
ment.
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; Every call to dev_dbg needs a pointer to a de=
vice structure as
<br>&gt; &nbsp; &nbsp; &nbsp; the first
<br>&gt; &nbsp; &nbsp; &nbsp; argument.
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; Did you compile your code? &nbsp;If so, perha=
ps this file was not
<br>&gt; &nbsp; &nbsp; &nbsp; selected in
<br>&gt; &nbsp; &nbsp; &nbsp; your configuration and thus it was not compil=
ed. &nbsp;You can see if
<br>&gt; &nbsp; &nbsp; &nbsp; it was
<br>&gt; &nbsp; &nbsp; &nbsp; compiled by looking to see if it has a corres=
ponding .o file.
<br>&gt; &nbsp; &nbsp; &nbsp; &nbsp;If not, you
<br>&gt; &nbsp; &nbsp; &nbsp; can try selecting the driver in your configur=
ation.
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; julia
<br>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; On Tue, Feb 17, 2015 at 10:27 PM, Julia =
Lawall
<br>&gt; &nbsp; &nbsp; &nbsp; &lt;<a>julia....@lip6.fr</a>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; wrote:
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; On Tue, 17 Feb 2015=
, Ksenija Stanojevic wrote:
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; Making variant=
s of existing macros is against kernel
<br>&gt; &nbsp; &nbsp; &nbsp; coding
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; style. This
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; patch removes =
all definitions made by macro dprinkt()
<br>&gt; &nbsp; &nbsp; &nbsp; and
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; replaces them
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; with dev_dbg()=
.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; Signed-off-by:=
 Ksenija Stanojevic
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &lt;<a>ksenija.s...=
@gmail.com</a>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; ---
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; What change is made=
 for v2?
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; julia
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; drivers/=
staging/media/vino/<wbr>saa7191.c | 58
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; ++++++++++++++++---=
-----------<wbr>------
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; 1 file c=
hanged, 26 insertions(+), 32 deletions(-)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; diff --git a/d=
rivers/staging/media/vino/<wbr>saa7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; b/drivers/staging/m=
edia/vino/<wbr>saa7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; index 087acab.=
.2aa68c6 100644
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; --- a/drivers/=
staging/media/vino/<wbr>saa7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +++ b/drivers/=
staging/media/vino/<wbr>saa7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -33,13 +33,=
7 @@ MODULE_AUTHOR("Mikael Nousiainen
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &lt;<a>tmno...@cc.h=
ut.fi</a>&gt;");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; MODULE_L=
ICENSE("GPL");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -/* #define SA=
A7191_DEBUG */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -#ifdef SAA719=
1_DEBUG
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -#define dprin=
tk(x...) printk("SAA7191: " x);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -#else
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -#define dprin=
tk(x...)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -#endif
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; #define =
SAA7191_SYNC_COUNT&nbsp; &nbsp;30
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; #define =
SAA7191_SYNC_DELAY&nbsp; &nbsp;100&nbsp; &nbsp; &nbsp;/* milliseconds
<br>&gt; &nbsp; &nbsp; &nbsp; */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -116,7 +110=
,7 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_read_status(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, u8=
 *value)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;ret =3D i2c_master_recv(client, value, 1);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (ret &lt; 0) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;printk(KERN_ERR "SAA7191:
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; saa7191_read_status=
(): read failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("saa7191_read_status(<wbr>): rea=
d
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return ret;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -147,7 +141=
,7 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_write_block(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;ret =3D i2c_master_send(client, data, length);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (ret &lt; 0) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;printk(KERN_ERR "SAA7191:
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; saa7191_write_block=
(): "
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("saa7191_write_block(<wbr>): "
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "write failed=
\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return ret;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -230,9 +224=
,9 @@ static int saa7191_s_std(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4=
l2_std_id norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;decoder-&gt;norm =3D norm;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("ctl3: %02x stdc: %02x chcv: %02x\n",
<br>&gt; &nbsp; &nbsp; &nbsp; ctl3,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg(&amp;sd-&gt;dev, "ctl3: %02x stdc: %02x chcv:
<br>&gt; &nbsp; &nbsp; &nbsp; %02x\n",
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; ctl3,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;stdc, chcv);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("norm: %llx\n", norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("norm: %llx\n", norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -241,21 +23=
5,21 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; saa7191_wait_for_si=
gnal(struct v4l2_subdev *sd, u8
<br>&gt; &nbsp; &nbsp; &nbsp; *status)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;int i =3D 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("Checking for signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("Checking for signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;for (i =3D 0; i &lt; SAA7191_SYNC_COUNT; i++) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (saa7191_read_status(sd, status)=
)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return =
-EIO;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if (((*status) &amp; SAA7191_STATUS=
_HLCK) =3D=3D
<br>&gt; &nbsp; &nbsp; &nbsp; 0) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("Sig=
nal found\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("Sig=
nal found\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return =
0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;msleep(SAA7191_SYNC_DELAY);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("No signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("No signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;return -EBUSY;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -269,7 +263=
,7 @@ static int saa7191_querystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4=
l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;v4l2_std_id old_norm =3D decoder-&gt;norm;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;int err =3D 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("SAA7191 extended signal
<br>&gt; &nbsp; &nbsp; &nbsp; auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("SAA7191 extended signal
<br>&gt; &nbsp; &nbsp; &nbsp; auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;*norm &amp;=3D V4L2_STD_NTSC | V4L2_STD_PAL |
<br>&gt; &nbsp; &nbsp; &nbsp; V4L2_STD_SECAM;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;stdc &amp;=3D ~SAA7191_STDC_SECS;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -301,13 +29=
5,13 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_querystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4=
l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* 60Hz signal -&gt; NTSC */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("60Hz signal: NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("60Hz signal: NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*norm &amp;=3D V4L2_STD_NTSC;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;/* 50Hz signal */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("50Hz signal: Trying PAL...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("50Hz signal: Trying PAL...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;/* try PAL first */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;err =3D saa7191_s_std(sd, V4L2_STD_PAL);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -322,19 +31=
6,19 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_querystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4=
l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;/* not 50Hz ? */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*norm =3D V4L2_STD_UNKNOWN;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*norm &amp;=3D V4L2_STD_PAL;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("No color detected with PAL - Trying
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; SECAM...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("No color detected with PAL - Trying
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; SECAM...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;/* no color detected ? -&gt; try SECAM */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;err =3D saa7191_s_std(sd, V4L2_STD_SECAM);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -349,19 +34=
3,19 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_querystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4=
l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;/* not 50Hz ? */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*norm =3D V4L2_STD_UNKNOWN;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;goto out;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* Color detected -&gt; SECAM */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("SECAM\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("SECAM\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*norm &amp;=3D V4L2_STD_SECAM;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("No color detected with SECAM - Going
<br>&gt; &nbsp; &nbsp; &nbsp; back to
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; PAL.\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("No color detected with SECAM - Going
<br>&gt; &nbsp; &nbsp; &nbsp; back to
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; PAL.\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;*norm =3D V4L2_STD_UNKNOWN;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; out:
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -372,30 +36=
6,30 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; saa7191_autodetect_=
norm(struct v4l2_subdev *sd)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;u8 status;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("SAA7191 signal auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("SAA7191 signal auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("Reading status...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("Reading status...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (saa7191_read_status(sd, &amp;status))
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return -EIO;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("Checking for signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("Checking for signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;/* no signal ? */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (status &amp; SAA7191_STATUS_HLCK) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("No signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("No signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return -EBUSY;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;dprintk("Signal found\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("Signal found\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* 60hz signal -&gt; NTSC */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return saa7191_s_std(sd, V4L2_STD_N=
TSC);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;} else {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/* 50hz signal -&gt; PAL */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return saa7191_s_std(sd, V4L2_STD_P=
AL);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; @@ -606,18 +60=
0,18 @@ static int saa7191_probe(struct
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; i2c_client *client,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;err =3D saa7191_write_block(sd, sizeof(initseq),
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; initseq);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (err) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;printk(KERN_ERR "SAA7191 initialization
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("SAA7191 initialization
<br>&gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return err;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp;printk(KERN_INFO "SAA7191 initialized\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp;dev_dbg("SAA7191 initialized\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;decoder-&gt;input =3D SAA7191_INPUT_COMPOSITE;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;decoder-&gt;norm =3D V4L2_STD_PAL;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;err =3D saa7191_autodetect_norm(sd);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;if (err &amp;&amp; (err !=3D -EBUSY))
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;printk(KERN_ERR "SAA7191: Signal
<br>&gt; &nbsp; &nbsp; &nbsp; auto-detection
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("SAA7191: Signal auto-detection
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &=
nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; --
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt; 1.9.1
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &gt; --
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &gt; You received this message because y=
ou are subscribed to the
<br>&gt; &nbsp; &nbsp; &nbsp; Google
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; Groups "outreachy-kernel" group.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &gt; To unsubscribe from this group and =
stop receiving emails
<br>&gt; &nbsp; &nbsp; &nbsp; from it,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; send an email to <a>outreachy-kern...@<w=
br>googlegroups.com</a>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &gt; To post to this group, send email t=
o
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; <a>outreach...@googlegroups.com</a>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &gt; To view this discussion on the webv=
isithttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/14=
24204282-31960-1-" target=3D"_blank" rel=3D"nofollow">groups.google.<wbr>co=
m/d/msgid/outreachy-kernel/<wbr>1424204282-31960-1-</a>
<br>&gt; &nbsp; &nbsp; &nbsp; git-
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; send-email-ksenija.stanojevic%<a href=3D=
"http://40gmail.com" target=3D"_blank" rel=3D"nofollow"><wbr>40gmail.com</a=
>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &gt; For more options, visit <a href=3D"=
https://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow">http=
s://groups.google.com/d/<wbr>optout</a>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; --
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; You received this message because you ar=
e subscribed to the
<br>&gt; &nbsp; &nbsp; &nbsp; Google Groups
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; "outreachy-kernel" group.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; To unsubscribe from this group and stop =
receiving emails from
<br>&gt; &nbsp; &nbsp; &nbsp; it, send an
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; email to <a>outreachy-kern...@<wbr>googl=
egroups.com</a>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; To post to this group, send email to
<br>&gt; &nbsp; &nbsp; &nbsp; <a>outreach...@googlegroups.com</a>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; To view this discussion on the webvisith=
ttps://<a href=3D"http://groups.google.com/d/msgid/outreachy-kernel/CAL7P5j=
KiTvGSxTrJE7" target=3D"_blank" rel=3D"nofollow">groups.google.<wbr>com/d/m=
sgid/outreachy-kernel/<wbr>CAL7P5jKiTvGSxTrJE7</a>
<br>&gt; &nbsp; &nbsp; &nbsp; uApK
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; y7Z%2BEnVZH2x-<wbr>VRRcPqWYDquqViwg%<a h=
ref=3D"http://40mail.gmail.com" target=3D"_blank" rel=3D"nofollow">40mail.g=
mail.<wbr>com</a>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; For more options, visit <a href=3D"https=
://groups.google.com/d/optout" target=3D"_blank" rel=3D"nofollow">https://g=
roups.google.com/d/<wbr>optout</a>.
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"3Pks54PEDYkJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroup=
s.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"3Pks54PEDYkJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/55c23bda-fe3e-414c-9da8-" target=
=3D"_blank" rel=3D"nofollow">groups.google.<wbr>com/d/msgid/outreachy-kerne=
l/<wbr>55c23bda-fe3e-414c-9da8-</a>
<br>&gt; a898799af64c%<a href=3D"http://40googlegroups.com" target=3D"_blan=
k" rel=3D"nofollow">40googlegroups.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;
<br>&gt;</blockquote></div>
------=_Part_5311_1196960175.1424282313257--

------=_Part_5310_1544082189.1424282313257--


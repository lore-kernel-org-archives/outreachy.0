X-GM-THRID: 205981220864
Date: Wed, 18 Feb 2015 09:01:56 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <55c23bda-fe3e-414c-9da8-a898799af64c@googlegroups.com>
In-Reply-To: <alpine.DEB.2.02.1502172301520.2306@localhost6.localdomain6>
References: <1424204282-31960-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.02.1502172227300.2306@localhost6.localdomain6> <CAL7P5jKiTvGSxTrJE7uApKy7Z+EnVZH2x-VRRcPqWYDquqViwg@mail.gmail.com>
 <alpine.DEB.2.02.1502172301520.2306@localhost6.localdomain6>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg().
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_604_275015495.1424278916069"
X-Google-Token: EISLk6cFgrDlUSxxIjE0
X-Google-IP: 77.46.215.254

------=_Part_604_275015495.1424278916069
Content-Type: multipart/alternative; 
	boundary="----=_Part_605_800616121.1424278916069"

------=_Part_605_800616121.1424278916069
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I missunderstood how dev_dbg works.
i did compile my code and it haven't shown any errors, but I don't have=20
corresponding .ko file

On Tuesday, February 17, 2015 at 11:04:31 PM UTC+1, Julia Lawall wrote:
>
> On Tue, 17 Feb 2015, Ksenija Stanojevi=C4=87 wrote:=20
>
> > I removed variables KERN_ERR and KERN_INFO=20
> >  and added device argument to dev_dbg in line 230,=20
>
> When you send a v2 patch, you could describe the change that you have mad=
e=20
> as compared to the previous patch under the ---=20
>
> > I don't know where else to put that argument.=20
>
> Every call to dev_dbg needs a pointer to a device structure as the first=
=20
> argument.=20
>
> Did you compile your code?  If so, perhaps this file was not selected in=
=20
> your configuration and thus it was not compiled.  You can see if it was=
=20
> compiled by looking to see if it has a corresponding .o file.  If not, yo=
u=20
> can try selecting the driver in your configuration.=20
>
> julia=20
>
> > On Tue, Feb 17, 2015 at 10:27 PM, Julia Lawall <julia....@lip6.fr=20
> <javascript:>>=20
> > wrote:=20
> >       On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:=20
> >=20
> >       > Making variants of existing macros is against kernel coding=20
> >       style. This=20
> >       > patch removes all definitions made by macro dprinkt() and=20
> >       replaces them=20
> >       > with dev_dbg().=20
> >       >=20
> >       > Signed-off-by: Ksenija Stanojevic=20
> >       <ksenija.s...@gmail.com <javascript:>>=20
> >       > ---=20
> >=20
> >       What change is made for v2?=20
> >=20
> >       julia=20
> >=20
> >       >  drivers/staging/media/vino/saa7191.c | 58=20
> >       ++++++++++++++++--------------------=20
> >       >  1 file changed, 26 insertions(+), 32 deletions(-)=20
> >       >=20
> >       > diff --git a/drivers/staging/media/vino/saa7191.c=20
> >       b/drivers/staging/media/vino/saa7191.c=20
> >       > index 087acab..2aa68c6 100644=20
> >       > --- a/drivers/staging/media/vino/saa7191.c=20
> >       > +++ b/drivers/staging/media/vino/saa7191.c=20
> >       > @@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen=20
> >       <tmno...@cc.hut.fi <javascript:>>");=20
> >       >  MODULE_LICENSE("GPL");=20
> >       >=20
> >       >=20
> >       > -/* #define SAA7191_DEBUG */=20
> >       >=20
> >       > -#ifdef SAA7191_DEBUG=20
> >       > -#define dprintk(x...) printk("SAA7191: " x);=20
> >       > -#else=20
> >       > -#define dprintk(x...)=20
> >       > -#endif=20
> >       >=20
> >       >  #define SAA7191_SYNC_COUNT   30=20
> >       >  #define SAA7191_SYNC_DELAY   100     /* milliseconds */=20
> >       > @@ -116,7 +110,7 @@ static int saa7191_read_status(struct=20
> >       v4l2_subdev *sd, u8 *value)=20
> >       >=20
> >       >       ret =3D i2c_master_recv(client, value, 1);=20
> >       >       if (ret < 0) {=20
> >       > -             printk(KERN_ERR "SAA7191:=20
> >       saa7191_read_status(): read failed\n");=20
> >       > +             dev_dbg("saa7191_read_status(): read=20
> >       failed\n");=20
> >       >               return ret;=20
> >       >       }=20
> >       >=20
> >       > @@ -147,7 +141,7 @@ static int saa7191_write_block(struct=20
> >       v4l2_subdev *sd,=20
> >       >=20
> >       >       ret =3D i2c_master_send(client, data, length);=20
> >       >       if (ret < 0) {=20
> >       > -             printk(KERN_ERR "SAA7191:=20
> >       saa7191_write_block(): "=20
> >       > +             dev_dbg("saa7191_write_block(): "=20
> >       >                      "write failed\n");=20
> >       >               return ret;=20
> >       >       }=20
> >       > @@ -230,9 +224,9 @@ static int saa7191_s_std(struct=20
> >       v4l2_subdev *sd, v4l2_std_id norm)=20
> >       >=20
> >       >       decoder->norm =3D norm;=20
> >       >=20
> >       > -     dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,=20
> >       > +     dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n",=
=20
> >       ctl3,=20
> >       >               stdc, chcv);=20
> >       > -     dprintk("norm: %llx\n", norm);=20
> >       > +     dev_dbg("norm: %llx\n", norm);=20
> >       >=20
> >       >       return 0;=20
> >       >  }=20
> >       > @@ -241,21 +235,21 @@ static int=20
> >       saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)=20
> >       >  {=20
> >       >       int i =3D 0;=20
> >       >=20
> >       > -     dprintk("Checking for signal...\n");=20
> >       > +     dev_dbg("Checking for signal...\n");=20
> >       >=20
> >       >       for (i =3D 0; i < SAA7191_SYNC_COUNT; i++) {=20
> >       >               if (saa7191_read_status(sd, status))=20
> >       >                       return -EIO;=20
> >       >=20
> >       >               if (((*status) & SAA7191_STATUS_HLCK) =3D=3D 0) {=
=20
> >       > -                     dprintk("Signal found\n");=20
> >       > +                     dev_dbg("Signal found\n");=20
> >       >                       return 0;=20
> >       >               }=20
> >       >=20
> >       >               msleep(SAA7191_SYNC_DELAY);=20
> >       >       }=20
> >       >=20
> >       > -     dprintk("No signal\n");=20
> >       > +     dev_dbg("No signal\n");=20
> >       >=20
> >       >       return -EBUSY;=20
> >       >  }=20
> >       > @@ -269,7 +263,7 @@ static int saa7191_querystd(struct=20
> >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >       v4l2_std_id old_norm =3D decoder->norm;=20
> >       >       int err =3D 0;=20
> >       >=20
> >       > -     dprintk("SAA7191 extended signal auto-detection...\n");=
=20
> >       > +     dev_dbg("SAA7191 extended signal auto-detection...\n");=
=20
> >       >=20
> >       >       *norm &=3D V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;=
=20
> >       >       stdc &=3D ~SAA7191_STDC_SECS;=20
> >       > @@ -301,13 +295,13 @@ static int saa7191_querystd(struct=20
> >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >=20
> >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       >               /* 60Hz signal -> NTSC */=20
> >       > -             dprintk("60Hz signal: NTSC\n");=20
> >       > +             dev_dbg("60Hz signal: NTSC\n");=20
> >       >               *norm &=3D V4L2_STD_NTSC;=20
> >       >               return 0;=20
> >       >       }=20
> >       >=20
> >       >       /* 50Hz signal */=20
> >       > -     dprintk("50Hz signal: Trying PAL...\n");=20
> >       > +     dev_dbg("50Hz signal: Trying PAL...\n");=20
> >       >=20
> >       >       /* try PAL first */=20
> >       >       err =3D saa7191_s_std(sd, V4L2_STD_PAL);=20
> >       > @@ -322,19 +316,19 @@ static int saa7191_querystd(struct=20
> >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >=20
> >       >       /* not 50Hz ? */=20
> >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       > -             dprintk("No 50Hz signal\n");=20
> >       > +             dev_dbg("No 50Hz signal\n");=20
> >       >               saa7191_s_std(sd, old_norm);=20
> >       >               *norm =3D V4L2_STD_UNKNOWN;=20
> >       >               return 0;=20
> >       >       }=20
> >       >=20
> >       >       if (status & SAA7191_STATUS_CODE) {=20
> >       > -             dprintk("PAL\n");=20
> >       > +             dev_dbg("PAL\n");=20
> >       >               *norm &=3D V4L2_STD_PAL;=20
> >       >               return saa7191_s_std(sd, old_norm);=20
> >       >       }=20
> >       >=20
> >       > -     dprintk("No color detected with PAL - Trying=20
> >       SECAM...\n");=20
> >       > +     dev_dbg("No color detected with PAL - Trying=20
> >       SECAM...\n");=20
> >       >=20
> >       >       /* no color detected ? -> try SECAM */=20
> >       >       err =3D saa7191_s_std(sd, V4L2_STD_SECAM);=20
> >       > @@ -349,19 +343,19 @@ static int saa7191_querystd(struct=20
> >       v4l2_subdev *sd, v4l2_std_id *norm)=20
> >       >=20
> >       >       /* not 50Hz ? */=20
> >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       > -             dprintk("No 50Hz signal\n");=20
> >       > +             dev_dbg("No 50Hz signal\n");=20
> >       >               *norm =3D V4L2_STD_UNKNOWN;=20
> >       >               goto out;=20
> >       >       }=20
> >       >=20
> >       >       if (status & SAA7191_STATUS_CODE) {=20
> >       >               /* Color detected -> SECAM */=20
> >       > -             dprintk("SECAM\n");=20
> >       > +             dev_dbg("SECAM\n");=20
> >       >               *norm &=3D V4L2_STD_SECAM;=20
> >       >               return saa7191_s_std(sd, old_norm);=20
> >       >       }=20
> >       >=20
> >       > -     dprintk("No color detected with SECAM - Going back to=20
> >       PAL.\n");=20
> >       > +     dev_dbg("No color detected with SECAM - Going back to=20
> >       PAL.\n");=20
> >       >       *norm =3D V4L2_STD_UNKNOWN;=20
> >       >=20
> >       >  out:=20
> >       > @@ -372,30 +366,30 @@ static int=20
> >       saa7191_autodetect_norm(struct v4l2_subdev *sd)=20
> >       >  {=20
> >       >       u8 status;=20
> >       >=20
> >       > -     dprintk("SAA7191 signal auto-detection...\n");=20
> >       > +     dev_dbg("SAA7191 signal auto-detection...\n");=20
> >       >=20
> >       > -     dprintk("Reading status...\n");=20
> >       > +     dev_dbg("Reading status...\n");=20
> >       >=20
> >       >       if (saa7191_read_status(sd, &status))=20
> >       >               return -EIO;=20
> >       >=20
> >       > -     dprintk("Checking for signal...\n");=20
> >       > +     dev_dbg("Checking for signal...\n");=20
> >       >=20
> >       >       /* no signal ? */=20
> >       >       if (status & SAA7191_STATUS_HLCK) {=20
> >       > -             dprintk("No signal\n");=20
> >       > +             dev_dbg("No signal\n");=20
> >       >               return -EBUSY;=20
> >       >       }=20
> >       >=20
> >       > -     dprintk("Signal found\n");=20
> >       > +     dev_dbg("Signal found\n");=20
> >       >=20
> >       >       if (status & SAA7191_STATUS_FIDT) {=20
> >       >               /* 60hz signal -> NTSC */=20
> >       > -             dprintk("NTSC\n");=20
> >       > +             dev_dbg("NTSC\n");=20
> >       >               return saa7191_s_std(sd, V4L2_STD_NTSC);=20
> >       >       } else {=20
> >       >               /* 50hz signal -> PAL */=20
> >       > -             dprintk("PAL\n");=20
> >       > +             dev_dbg("PAL\n");=20
> >       >               return saa7191_s_std(sd, V4L2_STD_PAL);=20
> >       >       }=20
> >       >  }=20
> >       > @@ -606,18 +600,18 @@ static int saa7191_probe(struct=20
> >       i2c_client *client,=20
> >       >=20
> >       >       err =3D saa7191_write_block(sd, sizeof(initseq),=20
> >       initseq);=20
> >       >       if (err) {=20
> >       > -             printk(KERN_ERR "SAA7191 initialization=20
> >       failed\n");=20
> >       > +             dev_dbg("SAA7191 initialization failed\n");=20
> >       >               return err;=20
> >       >       }=20
> >       >=20
> >       > -     printk(KERN_INFO "SAA7191 initialized\n");=20
> >       > +     dev_dbg("SAA7191 initialized\n");=20
> >       >=20
> >       >       decoder->input =3D SAA7191_INPUT_COMPOSITE;=20
> >       >       decoder->norm =3D V4L2_STD_PAL;=20
> >       >=20
> >       >       err =3D saa7191_autodetect_norm(sd);=20
> >       >       if (err && (err !=3D -EBUSY))=20
> >       > -             printk(KERN_ERR "SAA7191: Signal auto-detection=
=20
> >       failed\n");=20
> >       > +             dev_dbg("SAA7191: Signal auto-detection=20
> >       failed\n");=20
> >       >=20
> >       >       return 0;=20
> >       >  }=20
> >       > --=20
> >       > 1.9.1=20
> >       >=20
> > > --=20
> > > You received this message because you are subscribed to the Google=20
> > Groups "outreachy-kernel" group.=20
> > > To unsubscribe from this group and stop receiving emails from it,=20
> > send an email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > > To post to this group, send email to=20
> > outreach...@googlegroups.com <javascript:>.=20
> > > To view this discussion on the web visithttps://
> groups.google.com/d/msgid/outreachy-kernel/1424204282-31960-1-git-=20
> > send-email-ksenija.stanojevic%40gmail.com.=20
> > > For more options, visit https://groups.google.com/d/optout.=20
> > >=20
> >=20
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
> groups.google.com/d/msgid/outreachy-kernel/CAL7P5jKiTvGSxTrJE7uApK=20
> > y7Z%2BEnVZH2x-VRRcPqWYDquqViwg%40mail.gmail.com.=20
> > For more options, visit https://groups.google.com/d/optout.=20
> >=20
> >=20


------=_Part_605_800616121.1424278916069
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I missunderstood how dev_dbg works.<br>i did compile my co=
de and it haven't shown any errors, but I don't have corresponding .ko file=
<br><br>On Tuesday, February 17, 2015 at 11:04:31 PM UTC+1, Julia Lawall wr=
ote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex=
;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, 17 Feb 2015, Kseni=
ja Stanojevi=C4=87 wrote:
<br>
<br>&gt; I removed variables KERN_ERR and KERN_INFO
<br>&gt; &nbsp;and added device argument to dev_dbg in line 230,
<br>
<br>When you send a v2 patch, you could describe the change that you have m=
ade=20
<br>as compared to the previous patch under the ---
<br>
<br>&gt; I don't know where else to put that argument.
<br>
<br>Every call to dev_dbg needs a pointer to a device structure as the firs=
t=20
<br>argument.
<br>
<br>Did you compile your code? &nbsp;If so, perhaps this file was not selec=
ted in=20
<br>your configuration and thus it was not compiled. &nbsp;You can see if i=
t was=20
<br>compiled by looking to see if it has a corresponding .o file. &nbsp;If =
not, you=20
<br>can try selecting the driver in your configuration.
<br>
<br>julia
<br>
<br>&gt; On Tue, Feb 17, 2015 at 10:27 PM, Julia Lawall &lt;<a href=3D"java=
script:" target=3D"_blank" gdf-obfuscated-mailto=3D"36yn4vVvyzcJ" rel=3D"no=
follow">julia....@lip6.fr</a>&gt;
<br>&gt; wrote:
<br>&gt; &nbsp; &nbsp; &nbsp; On Tue, 17 Feb 2015, Ksenija Stanojevic wrote=
:
<br>&gt;=20
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; Making variants of existing macros is ag=
ainst kernel coding
<br>&gt; &nbsp; &nbsp; &nbsp; style. This
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; patch removes all definitions made by ma=
cro dprinkt() and
<br>&gt; &nbsp; &nbsp; &nbsp; replaces them
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; with dev_dbg().
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; Signed-off-by: Ksenija Stanojevic
<br>&gt; &nbsp; &nbsp; &nbsp; &lt;<a href=3D"javascript:" target=3D"_blank"=
 gdf-obfuscated-mailto=3D"36yn4vVvyzcJ" rel=3D"nofollow">ksenija.s...@gmail=
.com</a>&gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; ---
<br>&gt;=20
<br>&gt; &nbsp; &nbsp; &nbsp; What change is made for v2?
<br>&gt;=20
<br>&gt; &nbsp; &nbsp; &nbsp; julia
<br>&gt;=20
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; drivers/staging/media/vino/<wbr>sa=
a7191.c | 58
<br>&gt; &nbsp; &nbsp; &nbsp; ++++++++++++++++--------------<wbr>------
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; 1 file changed, 26 insertions(+), =
32 deletions(-)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; diff --git a/drivers/staging/media/vino/=
<wbr>saa7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; b/drivers/staging/media/vino/<wbr>saa7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; index 087acab..2aa68c6 100644
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; --- a/drivers/staging/media/vino/<wbr>sa=
a7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +++ b/drivers/staging/media/vino/<wbr>sa=
a7191.c
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael=
 Nousiainen
<br>&gt; &nbsp; &nbsp; &nbsp; &lt;<a href=3D"javascript:" target=3D"_blank"=
 gdf-obfuscated-mailto=3D"36yn4vVvyzcJ" rel=3D"nofollow">tmno...@cc.hut.fi<=
/a>&gt;");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; MODULE_LICENSE("GPL");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -/* #define SAA7191_DEBUG */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -#ifdef SAA7191_DEBUG
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -#define dprintk(x...) printk("SAA7191: =
" x);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -#else
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -#define dprintk(x...)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -#endif
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; #define SAA7191_SYNC_COUNT&nbsp; &=
nbsp;30
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; #define SAA7191_SYNC_DELAY&nbsp; &=
nbsp;100&nbsp; &nbsp; &nbsp;/* milliseconds */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -116,7 +110,7 @@ static int saa7191_r=
ead_status(struct
<br>&gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, u8 *value)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;ret =3D i2c_ma=
ster_recv(client, value, 1);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (ret &lt; 0=
) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;printk(KERN_ERR "SAA7191:
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_read_status(): read failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("saa7191_read_status(<wbr>): read
<br>&gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return ret;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -147,7 +141,7 @@ static int saa7191_w=
rite_block(struct
<br>&gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;ret =3D i2c_ma=
ster_send(client, data, length);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (ret &lt; 0=
) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;printk(KERN_ERR "SAA7191:
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_write_block(): "
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("saa7191_write_block(<wbr>): "
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "write failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return ret;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -230,9 +224,9 @@ static int saa7191_s=
_std(struct
<br>&gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4l2_std_id norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;decoder-&gt;no=
rm =3D norm;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("ctl3: %02x=
 stdc: %02x chcv: %02x\n", ctl3,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg(&amp;sd-&gt=
;dev, "ctl3: %02x stdc: %02x chcv: %02x\n",
<br>&gt; &nbsp; &nbsp; &nbsp; ctl3,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;stdc, chcv);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("norm: %llx=
\n", norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("norm: %llx=
\n", norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -241,21 +235,21 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_wait_for_signal(struct v4l2_subdev *s=
d, u8 *status)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;int i =3D 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("Checking f=
or signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("Checking f=
or signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;for (i =3D 0; =
i &lt; SAA7191_SYNC_COUNT; i++) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;if (saa7191_read_status(sd, status))
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return -EIO;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;if (((*status) &amp; SAA7191_STATUS_HLCK) =3D=3D 0) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dprintk("Signal found\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dev_dbg("Signal found\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;msleep(SAA7191_SYNC_DELAY);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("No signal\=
n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("No signal\=
n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;return -EBUSY;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -269,7 +263,7 @@ static int saa7191_q=
uerystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;v4l2_std_id ol=
d_norm =3D decoder-&gt;norm;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;int err =3D 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("SAA7191 ex=
tended signal auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("SAA7191 ex=
tended signal auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;*norm &amp;=3D=
 V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;stdc &amp;=3D =
~SAA7191_STDC_SECS;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -301,13 +295,13 @@ static int saa7191=
_querystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (status &am=
p; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;/* 60Hz signal -&gt; NTSC */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("60Hz signal: NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("60Hz signal: NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;*norm &amp;=3D V4L2_STD_NTSC;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;/* 50Hz signal=
 */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("50Hz signa=
l: Trying PAL...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("50Hz signa=
l: Trying PAL...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;/* try PAL fir=
st */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;err =3D saa719=
1_s_std(sd, V4L2_STD_PAL);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -322,19 +316,19 @@ static int saa7191=
_querystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;/* not 50Hz ? =
*/
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (status &am=
p; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;*norm =3D V4L2_STD_UNKNOWN;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (status &am=
p; SAA7191_STATUS_CODE) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;*norm &amp;=3D V4L2_STD_PAL;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("No color d=
etected with PAL - Trying
<br>&gt; &nbsp; &nbsp; &nbsp; SECAM...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("No color d=
etected with PAL - Trying
<br>&gt; &nbsp; &nbsp; &nbsp; SECAM...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;/* no color de=
tected ? -&gt; try SECAM */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;err =3D saa719=
1_s_std(sd, V4L2_STD_SECAM);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -349,19 +343,19 @@ static int saa7191=
_querystd(struct
<br>&gt; &nbsp; &nbsp; &nbsp; v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;/* not 50Hz ? =
*/
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (status &am=
p; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;*norm =3D V4L2_STD_UNKNOWN;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;goto out;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (status &am=
p; SAA7191_STATUS_CODE) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;/* Color detected -&gt; SECAM */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("SECAM\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("SECAM\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;*norm &amp;=3D V4L2_STD_SECAM;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("No color d=
etected with SECAM - Going back to
<br>&gt; &nbsp; &nbsp; &nbsp; PAL.\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("No color d=
etected with SECAM - Going back to
<br>&gt; &nbsp; &nbsp; &nbsp; PAL.\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;*norm =3D V4L2=
_STD_UNKNOWN;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; out:
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -372,30 +366,30 @@ static int
<br>&gt; &nbsp; &nbsp; &nbsp; saa7191_autodetect_norm(struct v4l2_subdev *s=
d)
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;u8 status;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("SAA7191 si=
gnal auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("SAA7191 si=
gnal auto-detection...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("Reading st=
atus...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("Reading st=
atus...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (saa7191_re=
ad_status(sd, &amp;status))
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return -EIO;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("Checking f=
or signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("Checking f=
or signal...\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;/* no signal ?=
 */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (status &am=
p; SAA7191_STATUS_HLCK) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("No signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("No signal\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return -EBUSY;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;dprintk("Signal fou=
nd\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("Signal fou=
nd\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (status &am=
p; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;/* 60hz signal -&gt; NTSC */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("NTSC\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return saa7191_s_std(sd, V4L2_STD_NTSC);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;} else {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;/* 50hz signal -&gt; PAL */
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dprintk("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("PAL\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return saa7191_s_std(sd, V4L2_STD_PAL);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; @@ -606,18 +600,18 @@ static int saa7191=
_probe(struct
<br>&gt; &nbsp; &nbsp; &nbsp; i2c_client *client,
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;err =3D saa719=
1_write_block(sd, sizeof(initseq),
<br>&gt; &nbsp; &nbsp; &nbsp; initseq);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (err) {
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;printk(KERN_ERR "SAA7191 initialization
<br>&gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("SAA7191 initialization failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;return err;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;}
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp;printk(KERN_INFO "S=
AA7191 initialized\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp;dev_dbg("SAA7191 in=
itialized\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;decoder-&gt;in=
put =3D SAA7191_INPUT_COMPOSITE;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;decoder-&gt;no=
rm =3D V4L2_STD_PAL;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;err =3D saa719=
1_autodetect_norm(sd);
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;if (err &amp;&=
amp; (err !=3D -EBUSY))
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; -&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;printk(KERN_ERR "SAA7191: Signal auto-detection
<br>&gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;dev_dbg("SAA7191: Signal auto-detection
<br>&gt; &nbsp; &nbsp; &nbsp; failed\n");
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; &nbsp; &nbsp; &nbsp;return 0;
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;&nbsp; }
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; --
<br>&gt; &nbsp; &nbsp; &nbsp; &gt; 1.9.1
<br>&gt; &nbsp; &nbsp; &nbsp; &gt;
<br>&gt; &gt; --
<br>&gt; &gt; You received this message because you are subscribed to the G=
oogle
<br>&gt; Groups "outreachy-kernel" group.
<br>&gt; &gt; To unsubscribe from this group and stop receiving emails from=
 it,
<br>&gt; send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obf=
uscated-mailto=3D"36yn4vVvyzcJ" rel=3D"nofollow">outreachy-kern...@<wbr>goo=
glegroups.com</a>.
<br>&gt; &gt; To post to this group, send email to
<br>&gt; <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-mailto=3D=
"36yn4vVvyzcJ" rel=3D"nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; &gt; To view this discussion on the web visithttps://<a href=3D"ht=
tp://groups.google.com/d/msgid/outreachy-kernel/1424204282-31960-1-git-" ta=
rget=3D"_blank" rel=3D"nofollow">groups.google.<wbr>com/d/msgid/outreachy-k=
ernel/<wbr>1424204282-31960-1-git-</a>
<br>&gt; send-email-ksenija.stanojevic%<a href=3D"http://40gmail.com" targe=
t=3D"_blank" rel=3D"nofollow"><wbr>40gmail.com</a>.
<br>&gt; &gt; For more options, visit <a href=3D"https://groups.google.com/=
d/optout" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<w=
br>optout</a>.
<br>&gt; &gt;
<br>&gt;=20
<br>&gt;=20
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups
<br>&gt; "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an
<br>&gt; email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-=
mailto=3D"36yn4vVvyzcJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroup=
s.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"36yn4vVvyzcJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visithttps://<a href=3D"http://=
groups.google.com/d/msgid/outreachy-kernel/CAL7P5jKiTvGSxTrJE7uApK" target=
=3D"_blank" rel=3D"nofollow">groups.google.<wbr>com/d/msgid/outreachy-kerne=
l/<wbr>CAL7P5jKiTvGSxTrJE7uApK</a>
<br>&gt; y7Z%2BEnVZH2x-<wbr>VRRcPqWYDquqViwg%<a href=3D"http://40mail.gmail=
.com" target=3D"_blank" rel=3D"nofollow">40mail.gmail.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;=20
<br>&gt; </blockquote></div>
------=_Part_605_800616121.1424278916069--

------=_Part_604_275015495.1424278916069--


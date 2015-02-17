X-GM-THRID: 205981220864
X-Received: by 10.112.167.98 with SMTP id zn2mr1225157lbb.6.1424210671745;
        Tue, 17 Feb 2015 14:04:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.242.164 with SMTP id wr4ls796679lac.79.gmail; Tue, 17 Feb
 2015 14:04:31 -0800 (PST)
X-Received: by 10.112.119.141 with SMTP id ku13mr3921476lbb.7.1424210671260;
        Tue, 17 Feb 2015 14:04:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si950824wib.1.2015.02.17.14.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 14:04:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="100406926"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2015 23:04:30 +0100
Date: Tue, 17 Feb 2015 23:04:29 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-2?Q?Ksenija_Stanojevi=E6?= <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg().
In-Reply-To: <CAL7P5jKiTvGSxTrJE7uApKy7Z+EnVZH2x-VRRcPqWYDquqViwg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1502172301520.2306@localhost6.localdomain6>
References: <1424204282-31960-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.02.1502172227300.2306@localhost6.localdomain6> <CAL7P5jKiTvGSxTrJE7uApKy7Z+EnVZH2x-VRRcPqWYDquqViwg@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1992465425-1424210670=:2306"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1992465425-1424210670=:2306
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 17 Feb 2015, Ksenija Stanojević wrote:

> I removed variables KERN_ERR and KERN_INFO
>  and added device argument to dev_dbg in line 230,

When you send a v2 patch, you could describe the change that you have made 
as compared to the previous patch under the ---

> I don't know where else to put that argument.

Every call to dev_dbg needs a pointer to a device structure as the first 
argument.

Did you compile your code?  If so, perhaps this file was not selected in 
your configuration and thus it was not compiled.  You can see if it was 
compiled by looking to see if it has a corresponding .o file.  If not, you 
can try selecting the driver in your configuration.

julia

> On Tue, Feb 17, 2015 at 10:27 PM, Julia Lawall <julia.lawall@lip6.fr>
> wrote:
>       On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:
> 
>       > Making variants of existing macros is against kernel coding
>       style. This
>       > patch removes all definitions made by macro dprinkt() and
>       replaces them
>       > with dev_dbg().
>       >
>       > Signed-off-by: Ksenija Stanojevic
>       <ksenija.stanojevic@gmail.com>
>       > ---
> 
>       What change is made for v2?
> 
>       julia
> 
>       >  drivers/staging/media/vino/saa7191.c | 58
>       ++++++++++++++++--------------------
>       >  1 file changed, 26 insertions(+), 32 deletions(-)
>       >
>       > diff --git a/drivers/staging/media/vino/saa7191.c
>       b/drivers/staging/media/vino/saa7191.c
>       > index 087acab..2aa68c6 100644
>       > --- a/drivers/staging/media/vino/saa7191.c
>       > +++ b/drivers/staging/media/vino/saa7191.c
>       > @@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen
>       <tmnousia@cc.hut.fi>");
>       >  MODULE_LICENSE("GPL");
>       >
>       >
>       > -/* #define SAA7191_DEBUG */
>       >
>       > -#ifdef SAA7191_DEBUG
>       > -#define dprintk(x...) printk("SAA7191: " x);
>       > -#else
>       > -#define dprintk(x...)
>       > -#endif
>       >
>       >  #define SAA7191_SYNC_COUNT   30
>       >  #define SAA7191_SYNC_DELAY   100     /* milliseconds */
>       > @@ -116,7 +110,7 @@ static int saa7191_read_status(struct
>       v4l2_subdev *sd, u8 *value)
>       >
>       >       ret = i2c_master_recv(client, value, 1);
>       >       if (ret < 0) {
>       > -             printk(KERN_ERR "SAA7191:
>       saa7191_read_status(): read failed\n");
>       > +             dev_dbg("saa7191_read_status(): read
>       failed\n");
>       >               return ret;
>       >       }
>       >
>       > @@ -147,7 +141,7 @@ static int saa7191_write_block(struct
>       v4l2_subdev *sd,
>       >
>       >       ret = i2c_master_send(client, data, length);
>       >       if (ret < 0) {
>       > -             printk(KERN_ERR "SAA7191:
>       saa7191_write_block(): "
>       > +             dev_dbg("saa7191_write_block(): "
>       >                      "write failed\n");
>       >               return ret;
>       >       }
>       > @@ -230,9 +224,9 @@ static int saa7191_s_std(struct
>       v4l2_subdev *sd, v4l2_std_id norm)
>       >
>       >       decoder->norm = norm;
>       >
>       > -     dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
>       > +     dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n",
>       ctl3,
>       >               stdc, chcv);
>       > -     dprintk("norm: %llx\n", norm);
>       > +     dev_dbg("norm: %llx\n", norm);
>       >
>       >       return 0;
>       >  }
>       > @@ -241,21 +235,21 @@ static int
>       saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
>       >  {
>       >       int i = 0;
>       >
>       > -     dprintk("Checking for signal...\n");
>       > +     dev_dbg("Checking for signal...\n");
>       >
>       >       for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
>       >               if (saa7191_read_status(sd, status))
>       >                       return -EIO;
>       >
>       >               if (((*status) & SAA7191_STATUS_HLCK) == 0) {
>       > -                     dprintk("Signal found\n");
>       > +                     dev_dbg("Signal found\n");
>       >                       return 0;
>       >               }
>       >
>       >               msleep(SAA7191_SYNC_DELAY);
>       >       }
>       >
>       > -     dprintk("No signal\n");
>       > +     dev_dbg("No signal\n");
>       >
>       >       return -EBUSY;
>       >  }
>       > @@ -269,7 +263,7 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >       v4l2_std_id old_norm = decoder->norm;
>       >       int err = 0;
>       >
>       > -     dprintk("SAA7191 extended signal auto-detection...\n");
>       > +     dev_dbg("SAA7191 extended signal auto-detection...\n");
>       >
>       >       *norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
>       >       stdc &= ~SAA7191_STDC_SECS;
>       > @@ -301,13 +295,13 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >       if (status & SAA7191_STATUS_FIDT) {
>       >               /* 60Hz signal -> NTSC */
>       > -             dprintk("60Hz signal: NTSC\n");
>       > +             dev_dbg("60Hz signal: NTSC\n");
>       >               *norm &= V4L2_STD_NTSC;
>       >               return 0;
>       >       }
>       >
>       >       /* 50Hz signal */
>       > -     dprintk("50Hz signal: Trying PAL...\n");
>       > +     dev_dbg("50Hz signal: Trying PAL...\n");
>       >
>       >       /* try PAL first */
>       >       err = saa7191_s_std(sd, V4L2_STD_PAL);
>       > @@ -322,19 +316,19 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >       /* not 50Hz ? */
>       >       if (status & SAA7191_STATUS_FIDT) {
>       > -             dprintk("No 50Hz signal\n");
>       > +             dev_dbg("No 50Hz signal\n");
>       >               saa7191_s_std(sd, old_norm);
>       >               *norm = V4L2_STD_UNKNOWN;
>       >               return 0;
>       >       }
>       >
>       >       if (status & SAA7191_STATUS_CODE) {
>       > -             dprintk("PAL\n");
>       > +             dev_dbg("PAL\n");
>       >               *norm &= V4L2_STD_PAL;
>       >               return saa7191_s_std(sd, old_norm);
>       >       }
>       >
>       > -     dprintk("No color detected with PAL - Trying
>       SECAM...\n");
>       > +     dev_dbg("No color detected with PAL - Trying
>       SECAM...\n");
>       >
>       >       /* no color detected ? -> try SECAM */
>       >       err = saa7191_s_std(sd, V4L2_STD_SECAM);
>       > @@ -349,19 +343,19 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >       /* not 50Hz ? */
>       >       if (status & SAA7191_STATUS_FIDT) {
>       > -             dprintk("No 50Hz signal\n");
>       > +             dev_dbg("No 50Hz signal\n");
>       >               *norm = V4L2_STD_UNKNOWN;
>       >               goto out;
>       >       }
>       >
>       >       if (status & SAA7191_STATUS_CODE) {
>       >               /* Color detected -> SECAM */
>       > -             dprintk("SECAM\n");
>       > +             dev_dbg("SECAM\n");
>       >               *norm &= V4L2_STD_SECAM;
>       >               return saa7191_s_std(sd, old_norm);
>       >       }
>       >
>       > -     dprintk("No color detected with SECAM - Going back to
>       PAL.\n");
>       > +     dev_dbg("No color detected with SECAM - Going back to
>       PAL.\n");
>       >       *norm = V4L2_STD_UNKNOWN;
>       >
>       >  out:
>       > @@ -372,30 +366,30 @@ static int
>       saa7191_autodetect_norm(struct v4l2_subdev *sd)
>       >  {
>       >       u8 status;
>       >
>       > -     dprintk("SAA7191 signal auto-detection...\n");
>       > +     dev_dbg("SAA7191 signal auto-detection...\n");
>       >
>       > -     dprintk("Reading status...\n");
>       > +     dev_dbg("Reading status...\n");
>       >
>       >       if (saa7191_read_status(sd, &status))
>       >               return -EIO;
>       >
>       > -     dprintk("Checking for signal...\n");
>       > +     dev_dbg("Checking for signal...\n");
>       >
>       >       /* no signal ? */
>       >       if (status & SAA7191_STATUS_HLCK) {
>       > -             dprintk("No signal\n");
>       > +             dev_dbg("No signal\n");
>       >               return -EBUSY;
>       >       }
>       >
>       > -     dprintk("Signal found\n");
>       > +     dev_dbg("Signal found\n");
>       >
>       >       if (status & SAA7191_STATUS_FIDT) {
>       >               /* 60hz signal -> NTSC */
>       > -             dprintk("NTSC\n");
>       > +             dev_dbg("NTSC\n");
>       >               return saa7191_s_std(sd, V4L2_STD_NTSC);
>       >       } else {
>       >               /* 50hz signal -> PAL */
>       > -             dprintk("PAL\n");
>       > +             dev_dbg("PAL\n");
>       >               return saa7191_s_std(sd, V4L2_STD_PAL);
>       >       }
>       >  }
>       > @@ -606,18 +600,18 @@ static int saa7191_probe(struct
>       i2c_client *client,
>       >
>       >       err = saa7191_write_block(sd, sizeof(initseq),
>       initseq);
>       >       if (err) {
>       > -             printk(KERN_ERR "SAA7191 initialization
>       failed\n");
>       > +             dev_dbg("SAA7191 initialization failed\n");
>       >               return err;
>       >       }
>       >
>       > -     printk(KERN_INFO "SAA7191 initialized\n");
>       > +     dev_dbg("SAA7191 initialized\n");
>       >
>       >       decoder->input = SAA7191_INPUT_COMPOSITE;
>       >       decoder->norm = V4L2_STD_PAL;
>       >
>       >       err = saa7191_autodetect_norm(sd);
>       >       if (err && (err != -EBUSY))
>       > -             printk(KERN_ERR "SAA7191: Signal auto-detection
>       failed\n");
>       > +             dev_dbg("SAA7191: Signal auto-detection
>       failed\n");
>       >
>       >       return 0;
>       >  }
>       > --
>       > 1.9.1
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1424204282-31960-1-git-
> send-email-ksenija.stanojevic%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAL7P5jKiTvGSxTrJE7uApK
> y7Z%2BEnVZH2x-VRRcPqWYDquqViwg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1992465425-1424210670=:2306--


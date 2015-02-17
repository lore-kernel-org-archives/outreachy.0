X-GM-THRID: 150692954112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,a2bbf98b8cdb5612
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.81.34 with SMTP id w2mr3757009wix.2.1424205311966;
        Tue, 17 Feb 2015 12:35:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls325960lal.74.gmail; Tue, 17 Feb
 2015 12:35:11 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr3789443lbb.10.1424205311496;
        Tue, 17 Feb 2015 12:35:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l8si6020572wia.0.2015.02.17.12.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 17 Feb 2015 12:35:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,595,1418079600"; 
   d="scan'208";a="122185903"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Feb 2015 21:35:10 +0100
Date: Tue, 17 Feb 2015 21:35:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: vino: Replace printk
 and dprintk with dev_dbg()
In-Reply-To: <a1cfd7f1-f2a1-4d95-ab1e-41e45e1912e4@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1502172134560.2306@localhost6.localdomain6>
References: <1424191221-25574-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.10.1502171907020.2416@hadrien> <a1cfd7f1-f2a1-4d95-ab1e-41e45e1912e4@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1753349808-1424205310=:2306"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1753349808-1424205310=:2306
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:

> Thank you for the reply. Do i need to merge all these changes into one
> patch and send v2 of the previous patch

Yes, that would be good.

julia


> On Tuesday, February 17, 2015 at 7:09:15 PM UTC+1, Julia Lawall wrote:
>       On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:
> 
>       > Making variants of existing macros is against kernel coding
>       style. This
>       > patch removes all definitions made by macro dprintk() and
>       replaces them
>       > with dev_dbg()
> 
>       dev_dbg needs a device as the first argument.  Here is a
>       completely
>       random example:
> 
>       http://lxr.free-electrons.com/source/sound/usb/mixer.c?v=3.15#L2277
> 
>        dev_dbg(&urb->dev->dev, "status interrupt: %02x %02x\n",
>                                status->bStatusType,
>                                status->bOriginator);
> 
>       You can usually find a useful data structure among the function
>       parameters.  It should have type struct device *.
> 
>       julia
> 
>       > ---
>       >  drivers/staging/media/vino/saa7191.c | 60
>       ++++++++++++++++--------------------
>       >  1 file changed, 26 insertions(+), 34 deletions(-)
>       >
>       > diff --git a/drivers/staging/media/vino/saa7191.c
>       b/drivers/staging/media/vino/saa7191.c
>       > index 087acab..01eea48 100644
>       > --- a/drivers/staging/media/vino/saa7191.c
>       > +++ b/drivers/staging/media/vino/saa7191.c
>       > @@ -33,14 +33,6 @@ MODULE_AUTHOR("Mikael Nousiainen
>       <tmno...@cc.hut.fi>");
>       >  MODULE_LICENSE("GPL");
>       >
>       >
>       > -/* #define SAA7191_DEBUG */
>       > -
>       > -#ifdef SAA7191_DEBUG
>       > -#define dprintk(x...) printk("SAA7191: " x);
>       > -#else
>       > -#define dprintk(x...)
>       > -#endif
>       > -
>       >  #define SAA7191_SYNC_COUNT        30
>       >  #define SAA7191_SYNC_DELAY        100        /* milliseconds
>       */
>       >
>       > @@ -116,7 +108,7 @@ static int saa7191_read_status(struct
>       v4l2_subdev *sd, u8 *value)
>       >
>       >          ret = i2c_master_recv(client, value, 1);
>       >          if (ret < 0) {
>       > -                printk(KERN_ERR "SAA7191:
>       saa7191_read_status(): read failed\n");
>       > +                dev_dbg(KERN_ERR "SAA7191:
>       saa7191_read_status(): read failed\n");
>       >                  return ret;
>       >          }
>       >
>       > @@ -147,7 +139,7 @@ static int saa7191_write_block(struct
>       v4l2_subdev *sd,
>       >
>       >          ret = i2c_master_send(client, data, length);
>       >          if (ret < 0) {
>       > -                printk(KERN_ERR "SAA7191:
>       saa7191_write_block(): "
>       > +                dev_dbg(KERN_ERR "SAA7191:
>       saa7191_write_block(): "
>       >                         "write failed\n");
>       >                  return ret;
>       >          }
>       > @@ -230,9 +222,9 @@ static int saa7191_s_std(struct
>       v4l2_subdev *sd, v4l2_std_id norm)
>       >
>       >          decoder->norm = norm;
>       >
>       > -        dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
>       > +        dev_dbg("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
>       >                  stdc, chcv);
>       > -        dprintk("norm: %llx\n", norm);
>       > +        dev_dbg("norm: %llx\n", norm);
>       >
>       >          return 0;
>       >  }
>       > @@ -241,21 +233,21 @@ static int
>       saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
>       >  {
>       >          int i = 0;
>       >
>       > -        dprintk("Checking for signal...\n");
>       > +        dev_dbg("Checking for signal...\n");
>       >
>       >          for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
>       >                  if (saa7191_read_status(sd, status))
>       >                          return -EIO;
>       >
>       >                  if (((*status) & SAA7191_STATUS_HLCK) == 0)
>       {
>       > -                        dprintk("Signal found\n");
>       > +                        dev_dbg("Signal found\n");
>       >                          return 0;
>       >                  }
>       >
>       >                  msleep(SAA7191_SYNC_DELAY);
>       >          }
>       >
>       > -        dprintk("No signal\n");
>       > +        dev_dbg("No signal\n");
>       >
>       >          return -EBUSY;
>       >  }
>       > @@ -269,7 +261,7 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >          v4l2_std_id old_norm = decoder->norm;
>       >          int err = 0;
>       >
>       > -        dprintk("SAA7191 extended signal
>       auto-detection...\n");
>       > +        dev_dbg("SAA7191 extended signal
>       auto-detection...\n");
>       >
>       >          *norm &= V4L2_STD_NTSC | V4L2_STD_PAL |
>       V4L2_STD_SECAM;
>       >          stdc &= ~SAA7191_STDC_SECS;
>       > @@ -301,13 +293,13 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >          if (status & SAA7191_STATUS_FIDT) {
>       >                  /* 60Hz signal -> NTSC */
>       > -                dprintk("60Hz signal: NTSC\n");
>       > +                dev_dbg("60Hz signal: NTSC\n");
>       >                  *norm &= V4L2_STD_NTSC;
>       >                  return 0;
>       >          }
>       >
>       >          /* 50Hz signal */
>       > -        dprintk("50Hz signal: Trying PAL...\n");
>       > +        dev_dbg("50Hz signal: Trying PAL...\n");
>       >
>       >          /* try PAL first */
>       >          err = saa7191_s_std(sd, V4L2_STD_PAL);
>       > @@ -322,19 +314,19 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >          /* not 50Hz ? */
>       >          if (status & SAA7191_STATUS_FIDT) {
>       > -                dprintk("No 50Hz signal\n");
>       > +                dev_dbg("No 50Hz signal\n");
>       >                  saa7191_s_std(sd, old_norm);
>       >                  *norm = V4L2_STD_UNKNOWN;
>       >                  return 0;
>       >          }
>       >
>       >          if (status & SAA7191_STATUS_CODE) {
>       > -                dprintk("PAL\n");
>       > +                dev_dbg("PAL\n");
>       >                  *norm &= V4L2_STD_PAL;
>       >                  return saa7191_s_std(sd, old_norm);
>       >          }
>       >
>       > -        dprintk("No color detected with PAL - Trying
>       SECAM...\n");
>       > +        dev_dbg("No color detected with PAL - Trying
>       SECAM...\n");
>       >
>       >          /* no color detected ? -> try SECAM */
>       >          err = saa7191_s_std(sd, V4L2_STD_SECAM);
>       > @@ -349,19 +341,19 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >          /* not 50Hz ? */
>       >          if (status & SAA7191_STATUS_FIDT) {
>       > -                dprintk("No 50Hz signal\n");
>       > +                dev_dbg("No 50Hz signal\n");
>       >                  *norm = V4L2_STD_UNKNOWN;
>       >                  goto out;
>       >          }
>       >
>       >          if (status & SAA7191_STATUS_CODE) {
>       >                  /* Color detected -> SECAM */
>       > -                dprintk("SECAM\n");
>       > +                dev_dbg("SECAM\n");
>       >                  *norm &= V4L2_STD_SECAM;
>       >                  return saa7191_s_std(sd, old_norm);
>       >          }
>       >
>       > -        dprintk("No color detected with SECAM - Going back
>       to PAL.\n");
>       > +        dev_dbg("No color detected with SECAM - Going back
>       to PAL.\n");
>       >          *norm = V4L2_STD_UNKNOWN;
>       >
>       >  out:
>       > @@ -372,30 +364,30 @@ static int
>       saa7191_autodetect_norm(struct v4l2_subdev *sd)
>       >  {
>       >          u8 status;
>       >
>       > -        dprintk("SAA7191 signal auto-detection...\n");
>       > +        dev_dbg("SAA7191 signal auto-detection...\n");
>       >
>       > -        dprintk("Reading status...\n");
>       > +        dev_dbg("Reading status...\n");
>       >
>       >          if (saa7191_read_status(sd, &status))
>       >                  return -EIO;
>       >
>       > -        dprintk("Checking for signal...\n");
>       > +        dev_dbg("Checking for signal...\n");
>       >
>       >          /* no signal ? */
>       >          if (status & SAA7191_STATUS_HLCK) {
>       > -                dprintk("No signal\n");
>       > +                dev_dbg("No signal\n");
>       >                  return -EBUSY;
>       >          }
>       >
>       > -        dprintk("Signal found\n");
>       > +        dev_dbg("Signal found\n");
>       >
>       >          if (status & SAA7191_STATUS_FIDT) {
>       >                  /* 60hz signal -> NTSC */
>       > -                dprintk("NTSC\n");
>       > +                dev_dbg("NTSC\n");
>       >                  return saa7191_s_std(sd, V4L2_STD_NTSC);
>       >          } else {
>       >                  /* 50hz signal -> PAL */
>       > -                dprintk("PAL\n");
>       > +                dev_dbg("PAL\n");
>       >                  return saa7191_s_std(sd, V4L2_STD_PAL);
>       >          }
>       >  }
>       > @@ -606,18 +598,18 @@ static int saa7191_probe(struct
>       i2c_client *client,
>       >
>       >          err = saa7191_write_block(sd, sizeof(initseq),
>       initseq);
>       >          if (err) {
>       > -                printk(KERN_ERR "SAA7191 initialization
>       failed\n");
>       > +                dev_dbg(KERN_ERR "SAA7191 initialization
>       failed\n");
>       >                  return err;
>       >          }
>       >
>       > -        printk(KERN_INFO "SAA7191 initialized\n");
>       > +        dev_dbg(KERN_INFO "SAA7191 initialized\n");
>       >
>       >          decoder->input = SAA7191_INPUT_COMPOSITE;
>       >          decoder->norm = V4L2_STD_PAL;
>       >
>       >          err = saa7191_autodetect_norm(sd);
>       >          if (err && (err != -EBUSY))
>       > -                printk(KERN_ERR "SAA7191: Signal
>       auto-detection failed\n");
>       > +                dev_dbg(KERN_ERR "SAA7191: Signal
>       auto-detection failed\n");
>       >
>       >          return 0;
>       >  }
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1424191221-25574-1-git-
>       send-email-ksenija.stanojevic%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/a1cfd7f1-f2a1-4d95-ab1e
> -41e45e1912e4%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1753349808-1424205310=:2306--


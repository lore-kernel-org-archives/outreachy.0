X-GM-THRID: 612983898112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d24031e2a704191
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.171.37 with SMTP id ar5mr448650lbc.16.1424339326565;
        Thu, 19 Feb 2015 01:48:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.37.227 with SMTP id b3ls115338lak.58.gmail; Thu, 19 Feb
 2015 01:48:46 -0800 (PST)
X-Received: by 10.112.162.135 with SMTP id ya7mr449768lbb.14.1424339326109;
        Thu, 19 Feb 2015 01:48:46 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si4471843wix.0.2015.02.19.01.48.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 01:48:46 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,512,1418079600"; 
   d="scan'208";a="100584016"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Feb 2015 10:48:45 +0100
Date: Thu, 19 Feb 2015 10:48:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg()
In-Reply-To: <609089f3-4401-4caf-b4ab-9f56b1ac12e5@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1502191048340.2589@hadrien>
References: <1424319465-2828-1-git-send-email-ksenija.stanojevic@gmail.com> <alpine.DEB.2.10.1502191027111.2589@hadrien> <609089f3-4401-4caf-b4ab-9f56b1ac12e5@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-191237137-1424339321=:2589"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-191237137-1424339321=:2589
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 19 Feb 2015, Ksenija Stanojevic wrote:

> Ok, I understand, should I post that as v4?

Yes.

julia

>
> On Thursday, February 19, 2015 at 10:28:23 AM UTC+1, Julia Lawall wrote:
>       >          ret = i2c_master_recv(client, value, 1);
>       >          if (ret < 0) {
>       > -                dev_dbg("saa7191_read_status(): read
>       failed\n");
>       > +                dev_dbg(sd->dev, "saa7191_read_status(): read
>       failed\n");
>
>       This is a patch against your previous changes.  Greg is just
>       going to
>       ignore that patch, since you have provided a revised one.  So
>       you need to
>       go back to a state where your previous changes have not been
>       made.  Git
>       checkout may be helpful.
>
>       julia
>
>       >                  return ret;
>       >          }
>       >
>       > @@ -141,7 +141,7 @@ static int saa7191_write_block(struct
>       v4l2_subdev *sd,
>       >
>       >          ret = i2c_master_send(client, data, length);
>       >          if (ret < 0) {
>       > -                dev_dbg("saa7191_write_block(): "
>       > +                dev_dbg(sd->dev, "saa7191_write_block(): "
>       >                         "write failed\n");
>       >                  return ret;
>       >          }
>       > @@ -224,9 +224,9 @@ static int saa7191_s_std(struct
>       v4l2_subdev *sd, v4l2_std_id norm)
>       >
>       >          decoder->norm = norm;
>       >
>       > -        dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv:
>       %02x\n", ctl3,
>       > +        dev_dbg(sd->dev, "ctl3: %02x stdc: %02x chcv:
>       %02x\n", ctl3,
>       >                  stdc, chcv);
>       > -        dev_dbg("norm: %llx\n", norm);
>       > +        dev_dbg(sd->dev, "norm: %llx\n", norm);
>       >
>       >          return 0;
>       >  }
>       > @@ -235,21 +235,21 @@ static int
>       saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
>       >  {
>       >          int i = 0;
>       >
>       > -        dev_dbg("Checking for signal...\n");
>       > +        dev_dbg(sd->dev, "Checking for signal...\n");
>       >
>       >          for (i = 0; i < SAA7191_SYNC_COUNT; i++) {
>       >                  if (saa7191_read_status(sd, status))
>       >                          return -EIO;
>       >
>       >                  if (((*status) & SAA7191_STATUS_HLCK) == 0) {
>       > -                        dev_dbg("Signal found\n");
>       > +                        dev_dbg(sd->dev, "Signal found\n");
>       >                          return 0;
>       >                  }
>       >
>       >                  msleep(SAA7191_SYNC_DELAY);
>       >          }
>       >
>       > -        dev_dbg("No signal\n");
>       > +        dev_dbg(sd->dev, "No signal\n");
>       >
>       >          return -EBUSY;
>       >  }
>       > @@ -263,7 +263,7 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >          v4l2_std_id old_norm = decoder->norm;
>       >          int err = 0;
>       >
>       > -        dev_dbg("SAA7191 extended signal
>       auto-detection...\n");
>       > +        dev_dbg(sd->dev, "SAA7191 extended signal
>       auto-detection...\n");
>       >
>       >          *norm &= V4L2_STD_NTSC | V4L2_STD_PAL |
>       V4L2_STD_SECAM;
>       >          stdc &= ~SAA7191_STDC_SECS;
>       > @@ -295,13 +295,13 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >          if (status & SAA7191_STATUS_FIDT) {
>       >                  /* 60Hz signal -> NTSC */
>       > -                dev_dbg("60Hz signal: NTSC\n");
>       > +                dev_dbg(sd->dev, "60Hz signal: NTSC\n");
>       >                  *norm &= V4L2_STD_NTSC;
>       >                  return 0;
>       >          }
>       >
>       >          /* 50Hz signal */
>       > -        dev_dbg("50Hz signal: Trying PAL...\n");
>       > +        dev_dbg(sd->dev, "50Hz signal: Trying PAL...\n");
>       >
>       >          /* try PAL first */
>       >          err = saa7191_s_std(sd, V4L2_STD_PAL);
>       > @@ -316,19 +316,19 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >          /* not 50Hz ? */
>       >          if (status & SAA7191_STATUS_FIDT) {
>       > -                dev_dbg("No 50Hz signal\n");
>       > +                dev_dbg(sd->dev, "No 50Hz signal\n");
>       >                  saa7191_s_std(sd, old_norm);
>       >                  *norm = V4L2_STD_UNKNOWN;
>       >                  return 0;
>       >          }
>       >
>       >          if (status & SAA7191_STATUS_CODE) {
>       > -                dev_dbg("PAL\n");
>       > +                dev_dbg(sd->dev, "PAL\n");
>       >                  *norm &= V4L2_STD_PAL;
>       >                  return saa7191_s_std(sd, old_norm);
>       >          }
>       >
>       > -        dev_dbg("No color detected with PAL - Trying
>       SECAM...\n");
>       > +        dev_dbg(sd->dev, "No color detected with PAL - Trying
>       SECAM...\n");
>       >
>       >          /* no color detected ? -> try SECAM */
>       >          err = saa7191_s_std(sd, V4L2_STD_SECAM);
>       > @@ -343,19 +343,19 @@ static int saa7191_querystd(struct
>       v4l2_subdev *sd, v4l2_std_id *norm)
>       >
>       >          /* not 50Hz ? */
>       >          if (status & SAA7191_STATUS_FIDT) {
>       > -                dev_dbg("No 50Hz signal\n");
>       > +                dev_dbg(sd->dev, "No 50Hz signal\n");
>       >                  *norm = V4L2_STD_UNKNOWN;
>       >                  goto out;
>       >          }
>       >
>       >          if (status & SAA7191_STATUS_CODE) {
>       >                  /* Color detected -> SECAM */
>       > -                dev_dbg("SECAM\n");
>       > +                dev_dbg(sd->dev, "SECAM\n");
>       >                  *norm &= V4L2_STD_SECAM;
>       >                  return saa7191_s_std(sd, old_norm);
>       >          }
>       >
>       > -        dev_dbg("No color detected with SECAM - Going back to
>       PAL.\n");
>       > +        dev_dbg(sd->dev, "No color detected with SECAM -
>       Going back to PAL.\n");
>       >          *norm = V4L2_STD_UNKNOWN;
>       >
>       >  out:
>       > @@ -366,30 +366,30 @@ static int
>       saa7191_autodetect_norm(struct v4l2_subdev *sd)
>       >  {
>       >          u8 status;
>       >
>       > -        dev_dbg("SAA7191 signal auto-detection...\n");
>       > +        dev_dbg(sd->dev, "SAA7191 signal
>       auto-detection...\n");
>       >
>       > -        dev_dbg("Reading status...\n");
>       > +        dev_dbg(sd->dev, "Reading status...\n");
>       >
>       >          if (saa7191_read_status(sd, &status))
>       >                  return -EIO;
>       >
>       > -        dev_dbg("Checking for signal...\n");
>       > +        dev_dbg(sd->dev, "Checking for signal...\n");
>       >
>       >          /* no signal ? */
>       >          if (status & SAA7191_STATUS_HLCK) {
>       > -                dev_dbg("No signal\n");
>       > +                dev_dbg(sd->dev, "No signal\n");
>       >                  return -EBUSY;
>       >          }
>       >
>       > -        dev_dbg("Signal found\n");
>       > +        dev_dbg(sd->dev, "Signal found\n");
>       >
>       >          if (status & SAA7191_STATUS_FIDT) {
>       >                  /* 60hz signal -> NTSC */
>       > -                dev_dbg("NTSC\n");
>       > +                dev_dbg(sd->dev, "NTSC\n");
>       >                  return saa7191_s_std(sd, V4L2_STD_NTSC);
>       >          } else {
>       >                  /* 50hz signal -> PAL */
>       > -                dev_dbg("PAL\n");
>       > +                dev_dbg(sd->dev, "PAL\n");
>       >                  return saa7191_s_std(sd, V4L2_STD_PAL);
>       >          }
>       >  }
>       > @@ -600,18 +600,18 @@ static int saa7191_probe(struct
>       i2c_client *client,
>       >
>       >          err = saa7191_write_block(sd, sizeof(initseq),
>       initseq);
>       >          if (err) {
>       > -                dev_dbg("SAA7191 initialization failed\n");
>       > +                dev_dbg(sd->dev, "SAA7191 initialization
>       failed\n");
>       >                  return err;
>       >          }
>       >
>       > -        dev_dbg("SAA7191 initialized\n");
>       > +        dev_dbg(sd->dev, "SAA7191 initialized\n");
>       >
>       >          decoder->input = SAA7191_INPUT_COMPOSITE;
>       >          decoder->norm = V4L2_STD_PAL;
>       >
>       >          err = saa7191_autodetect_norm(sd);
>       >          if (err && (err != -EBUSY))
>       > -                dev_dbg("SAA7191: Signal auto-detection
>       failed\n");
>       > +                dev_dbg(sd->dev, "SAA7191: Signal
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
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1424319465-2828-1-git-se
>       nd-email-ksenija.stanojevic%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/609089f3-4401-4caf-b4ab-
> 9f56b1ac12e5%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-191237137-1424339321=:2589--


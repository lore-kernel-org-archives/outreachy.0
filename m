X-GM-THRID: 612983898112
Date: Thu, 19 Feb 2015 01:47:33 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <609089f3-4401-4caf-b4ab-9f56b1ac12e5@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502191027111.2589@hadrien>
References: <1424319465-2828-1-git-send-email-ksenija.stanojevic@gmail.com>
 <alpine.DEB.2.10.1502191027111.2589@hadrien>
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: vino: Replace
 printk() and dprintk() with dev_dbg()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_247_1677122516.1424339253753"
X-Google-Token: ELXilqcFw_Txn_a66_M0
X-Google-IP: 212.200.53.104

------=_Part_247_1677122516.1424339253753
Content-Type: multipart/alternative; 
	boundary="----=_Part_248_1675259537.1424339253753"

------=_Part_248_1675259537.1424339253753
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Ok, I understand, should I post that as v4?

On Thursday, February 19, 2015 at 10:28:23 AM UTC+1, Julia Lawall wrote:
>
> >          ret = i2c_master_recv(client, value, 1); 
> >          if (ret < 0) { 
> > -                dev_dbg("saa7191_read_status(): read failed\n"); 
> > +                dev_dbg(sd->dev, "saa7191_read_status(): read 
> failed\n"); 
>
> This is a patch against your previous changes.  Greg is just going to 
> ignore that patch, since you have provided a revised one.  So you need to 
> go back to a state where your previous changes have not been made.  Git 
> checkout may be helpful. 
>
> julia 
>
> >                  return ret; 
> >          } 
> > 
> > @@ -141,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev 
> *sd, 
> > 
> >          ret = i2c_master_send(client, data, length); 
> >          if (ret < 0) { 
> > -                dev_dbg("saa7191_write_block(): " 
> > +                dev_dbg(sd->dev, "saa7191_write_block(): " 
> >                         "write failed\n"); 
> >                  return ret; 
> >          } 
> > @@ -224,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, 
> v4l2_std_id norm) 
> > 
> >          decoder->norm = norm; 
> > 
> > -        dev_dbg(&sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3, 
> > +        dev_dbg(sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3, 
> >                  stdc, chcv); 
> > -        dev_dbg("norm: %llx\n", norm); 
> > +        dev_dbg(sd->dev, "norm: %llx\n", norm); 
> > 
> >          return 0; 
> >  } 
> > @@ -235,21 +235,21 @@ static int saa7191_wait_for_signal(struct 
> v4l2_subdev *sd, u8 *status) 
> >  { 
> >          int i = 0; 
> > 
> > -        dev_dbg("Checking for signal...\n"); 
> > +        dev_dbg(sd->dev, "Checking for signal...\n"); 
> > 
> >          for (i = 0; i < SAA7191_SYNC_COUNT; i++) { 
> >                  if (saa7191_read_status(sd, status)) 
> >                          return -EIO; 
> > 
> >                  if (((*status) & SAA7191_STATUS_HLCK) == 0) { 
> > -                        dev_dbg("Signal found\n"); 
> > +                        dev_dbg(sd->dev, "Signal found\n"); 
> >                          return 0; 
> >                  } 
> > 
> >                  msleep(SAA7191_SYNC_DELAY); 
> >          } 
> > 
> > -        dev_dbg("No signal\n"); 
> > +        dev_dbg(sd->dev, "No signal\n"); 
> > 
> >          return -EBUSY; 
> >  } 
> > @@ -263,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, 
> v4l2_std_id *norm) 
> >          v4l2_std_id old_norm = decoder->norm; 
> >          int err = 0; 
> > 
> > -        dev_dbg("SAA7191 extended signal auto-detection...\n"); 
> > +        dev_dbg(sd->dev, "SAA7191 extended signal 
> auto-detection...\n"); 
> > 
> >          *norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM; 
> >          stdc &= ~SAA7191_STDC_SECS; 
> > @@ -295,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev 
> *sd, v4l2_std_id *norm) 
> > 
> >          if (status & SAA7191_STATUS_FIDT) { 
> >                  /* 60Hz signal -> NTSC */ 
> > -                dev_dbg("60Hz signal: NTSC\n"); 
> > +                dev_dbg(sd->dev, "60Hz signal: NTSC\n"); 
> >                  *norm &= V4L2_STD_NTSC; 
> >                  return 0; 
> >          } 
> > 
> >          /* 50Hz signal */ 
> > -        dev_dbg("50Hz signal: Trying PAL...\n"); 
> > +        dev_dbg(sd->dev, "50Hz signal: Trying PAL...\n"); 
> > 
> >          /* try PAL first */ 
> >          err = saa7191_s_std(sd, V4L2_STD_PAL); 
> > @@ -316,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev 
> *sd, v4l2_std_id *norm) 
> > 
> >          /* not 50Hz ? */ 
> >          if (status & SAA7191_STATUS_FIDT) { 
> > -                dev_dbg("No 50Hz signal\n"); 
> > +                dev_dbg(sd->dev, "No 50Hz signal\n"); 
> >                  saa7191_s_std(sd, old_norm); 
> >                  *norm = V4L2_STD_UNKNOWN; 
> >                  return 0; 
> >          } 
> > 
> >          if (status & SAA7191_STATUS_CODE) { 
> > -                dev_dbg("PAL\n"); 
> > +                dev_dbg(sd->dev, "PAL\n"); 
> >                  *norm &= V4L2_STD_PAL; 
> >                  return saa7191_s_std(sd, old_norm); 
> >          } 
> > 
> > -        dev_dbg("No color detected with PAL - Trying SECAM...\n"); 
> > +        dev_dbg(sd->dev, "No color detected with PAL - Trying 
> SECAM...\n"); 
> > 
> >          /* no color detected ? -> try SECAM */ 
> >          err = saa7191_s_std(sd, V4L2_STD_SECAM); 
> > @@ -343,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev 
> *sd, v4l2_std_id *norm) 
> > 
> >          /* not 50Hz ? */ 
> >          if (status & SAA7191_STATUS_FIDT) { 
> > -                dev_dbg("No 50Hz signal\n"); 
> > +                dev_dbg(sd->dev, "No 50Hz signal\n"); 
> >                  *norm = V4L2_STD_UNKNOWN; 
> >                  goto out; 
> >          } 
> > 
> >          if (status & SAA7191_STATUS_CODE) { 
> >                  /* Color detected -> SECAM */ 
> > -                dev_dbg("SECAM\n"); 
> > +                dev_dbg(sd->dev, "SECAM\n"); 
> >                  *norm &= V4L2_STD_SECAM; 
> >                  return saa7191_s_std(sd, old_norm); 
> >          } 
> > 
> > -        dev_dbg("No color detected with SECAM - Going back to PAL.\n"); 
> > +        dev_dbg(sd->dev, "No color detected with SECAM - Going back to 
> PAL.\n"); 
> >          *norm = V4L2_STD_UNKNOWN; 
> > 
> >  out: 
> > @@ -366,30 +366,30 @@ static int saa7191_autodetect_norm(struct 
> v4l2_subdev *sd) 
> >  { 
> >          u8 status; 
> > 
> > -        dev_dbg("SAA7191 signal auto-detection...\n"); 
> > +        dev_dbg(sd->dev, "SAA7191 signal auto-detection...\n"); 
> > 
> > -        dev_dbg("Reading status...\n"); 
> > +        dev_dbg(sd->dev, "Reading status...\n"); 
> > 
> >          if (saa7191_read_status(sd, &status)) 
> >                  return -EIO; 
> > 
> > -        dev_dbg("Checking for signal...\n"); 
> > +        dev_dbg(sd->dev, "Checking for signal...\n"); 
> > 
> >          /* no signal ? */ 
> >          if (status & SAA7191_STATUS_HLCK) { 
> > -                dev_dbg("No signal\n"); 
> > +                dev_dbg(sd->dev, "No signal\n"); 
> >                  return -EBUSY; 
> >          } 
> > 
> > -        dev_dbg("Signal found\n"); 
> > +        dev_dbg(sd->dev, "Signal found\n"); 
> > 
> >          if (status & SAA7191_STATUS_FIDT) { 
> >                  /* 60hz signal -> NTSC */ 
> > -                dev_dbg("NTSC\n"); 
> > +                dev_dbg(sd->dev, "NTSC\n"); 
> >                  return saa7191_s_std(sd, V4L2_STD_NTSC); 
> >          } else { 
> >                  /* 50hz signal -> PAL */ 
> > -                dev_dbg("PAL\n"); 
> > +                dev_dbg(sd->dev, "PAL\n"); 
> >                  return saa7191_s_std(sd, V4L2_STD_PAL); 
> >          } 
> >  } 
> > @@ -600,18 +600,18 @@ static int saa7191_probe(struct i2c_client 
> *client, 
> > 
> >          err = saa7191_write_block(sd, sizeof(initseq), initseq); 
> >          if (err) { 
> > -                dev_dbg("SAA7191 initialization failed\n"); 
> > +                dev_dbg(sd->dev, "SAA7191 initialization failed\n"); 
> >                  return err; 
> >          } 
> > 
> > -        dev_dbg("SAA7191 initialized\n"); 
> > +        dev_dbg(sd->dev, "SAA7191 initialized\n"); 
> > 
> >          decoder->input = SAA7191_INPUT_COMPOSITE; 
> >          decoder->norm = V4L2_STD_PAL; 
> > 
> >          err = saa7191_autodetect_norm(sd); 
> >          if (err && (err != -EBUSY)) 
> > -                dev_dbg("SAA7191: Signal auto-detection failed\n"); 
> > +                dev_dbg(sd->dev, "SAA7191: Signal auto-detection 
> failed\n"); 
> > 
> >          return 0; 
> >  } 
> > -- 
> > 1.9.1 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com <javascript:>. 
> > To post to this group, send email to outreach...@googlegroups.com 
> <javascript:>. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/1424319465-2828-1-git-send-email-ksenija.stanojevic%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_248_1675259537.1424339253753
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Ok, I understand, should I post that as v4?<br><br>On Thursday, February 19, 2015 at 10:28:23 AM UTC+1, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret = i2c_master_recv(client, value, 1);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ret &lt; 0) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>saa7191_read_status(): read failed\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "saa7191_read_status(): read failed\n");
<br>
<br>This is a patch against your previous changes. &nbsp;Greg is just going to
<br>ignore that patch, since you have provided a revised one. &nbsp;So you need to
<br>go back to a state where your previous changes have not been made. &nbsp;Git
<br>checkout may be helpful.
<br>
<br>julia
<br>
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ret;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -141,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev *sd,
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret = i2c_master_send(client, data, length);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ret &lt; 0) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>saa7191_write_block(): "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "saa7191_write_block(): "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "write failed\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ret;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -224,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;norm = norm;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(&amp;sd-&gt;dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stdc, chcv);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("norm: %llx\n", norm);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "norm: %llx\n", norm);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;}
<br>&gt; @@ -235,21 +235,21 @@ static int saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i = 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Checking for signal...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Checking for signal...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i = 0; i &lt; SAA7191_SYNC_COUNT; i++) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (saa7191_read_status(sd, status))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>return -EIO;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (((*status) &amp; SAA7191_STATUS_HLCK) == 0) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_<wbr>dbg("Signal found\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_<wbr>dbg(sd-&gt;dev, "Signal found\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>return 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;msleep(<wbr>SAA7191_SYNC_DELAY);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "No signal\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EBUSY;
<br>&gt; &nbsp;}
<br>&gt; @@ -263,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v4l2_std_id old_norm = decoder-&gt;norm;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int err = 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("SAA7191 extended signal auto-detection...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "SAA7191 extended signal auto-detection...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stdc &amp;= ~SAA7191_STDC_SECS;
<br>&gt; @@ -295,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 60Hz signal -&gt; NTSC */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("60Hz signal: NTSC\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "60Hz signal: NTSC\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_NTSC;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 50Hz signal */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("50Hz signal: Trying PAL...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "50Hz signal: Trying PAL...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* try PAL first */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_s_std(sd, V4L2_STD_PAL);
<br>&gt; @@ -316,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* not 50Hz ? */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "No 50Hz signal\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;saa7191_s_<wbr>std(sd, old_norm);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("PAL\<wbr>n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "PAL\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_PAL;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No color detected with PAL - Trying SECAM...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "No color detected with PAL - Trying SECAM...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* no color detected ? -&gt; try SECAM */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_s_std(sd, V4L2_STD_SECAM);
<br>&gt; @@ -343,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* not 50Hz ? */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "No 50Hz signal\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Color detected -&gt; SECAM */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>SECAM\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "SECAM\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_SECAM;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No color detected with SECAM - Going back to PAL.\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "No color detected with SECAM - Going back to PAL.\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&gt;
<br>&gt; &nbsp;out:
<br>&gt; @@ -366,30 +366,30 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 status;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("SAA7191 signal auto-detection...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "SAA7191 signal auto-detection...\n");
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Reading status...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Reading status...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (saa7191_read_status(sd, &amp;status))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EIO;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Checking for signal...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Checking for signal...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* no signal ? */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_HLCK) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "No signal\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EBUSY;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Signal found\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Signal found\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 60hz signal -&gt; NTSC */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>NTSC\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "NTSC\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, V4L2_STD_NTSC);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 50hz signal -&gt; PAL */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("PAL\<wbr>n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "PAL\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, V4L2_STD_PAL);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;}
<br>&gt; @@ -600,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_write_block(sd, sizeof(initseq), initseq);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (err) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>SAA7191 initialization failed\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "SAA7191 initialization failed\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return err;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("SAA7191 initialized\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "SAA7191 initialized\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;input = SAA7191_INPUT_COMPOSITE;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;norm = V4L2_STD_PAL;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_autodetect_norm(sd);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (err &amp;&amp; (err != -EBUSY))
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>SAA7191: Signal auto-detection failed\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "SAA7191: Signal auto-detection failed\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;}
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="1PK8vCTaCEsJ" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="1PK8vCTaCEsJ" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/1424319465-2828-1-git-send-email-ksenija.stanojevic%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1424319465-2828-1-git-send-<wbr>email-ksenija.stanojevic%<wbr>40gmail.com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_248_1675259537.1424339253753--

------=_Part_247_1677122516.1424339253753--


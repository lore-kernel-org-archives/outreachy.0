X-GM-THRID: 150692954112
Date: Tue, 17 Feb 2015 10:43:52 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <a1cfd7f1-f2a1-4d95-ab1e-41e45e1912e4@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1502171907020.2416@hadrien>
References: <1424191221-25574-1-git-send-email-ksenija.stanojevic@gmail.com>
 <alpine.DEB.2.10.1502171907020.2416@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: vino: Replace printk
 and dprintk with dev_dbg()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_715_561718480.1424198632414"
X-Google-Token: EOiXjqcFwiKa2M98hKc0
X-Google-IP: 77.46.215.254

------=_Part_715_561718480.1424198632414
Content-Type: multipart/alternative; 
	boundary="----=_Part_716_464381148.1424198632414"

------=_Part_716_464381148.1424198632414
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Thank you for the reply. Do i need to merge all these changes into one 
patch and send v2 of the previous patch

On Tuesday, February 17, 2015 at 7:09:15 PM UTC+1, Julia Lawall wrote:
>
> On Tue, 17 Feb 2015, Ksenija Stanojevic wrote: 
>
> > Making variants of existing macros is against kernel coding style. This 
> > patch removes all definitions made by macro dprintk() and replaces them 
> > with dev_dbg() 
>
> dev_dbg needs a device as the first argument.  Here is a completely 
> random example: 
>
> http://lxr.free-electrons.com/source/sound/usb/mixer.c?v=3.15#L2277 
>
>  dev_dbg(&urb->dev->dev, "status interrupt: %02x %02x\n", 
>                          status->bStatusType, 
>                          status->bOriginator); 
>
> You can usually find a useful data structure among the function 
> parameters.  It should have type struct device *. 
>
> julia 
>
> > --- 
> >  drivers/staging/media/vino/saa7191.c | 60 
> ++++++++++++++++-------------------- 
> >  1 file changed, 26 insertions(+), 34 deletions(-) 
> > 
> > diff --git a/drivers/staging/media/vino/saa7191.c 
> b/drivers/staging/media/vino/saa7191.c 
> > index 087acab..01eea48 100644 
> > --- a/drivers/staging/media/vino/saa7191.c 
> > +++ b/drivers/staging/media/vino/saa7191.c 
> > @@ -33,14 +33,6 @@ MODULE_AUTHOR("Mikael Nousiainen <tmno...@cc.hut.fi 
> <javascript:>>"); 
> >  MODULE_LICENSE("GPL"); 
> > 
> > 
> > -/* #define SAA7191_DEBUG */ 
> > - 
> > -#ifdef SAA7191_DEBUG 
> > -#define dprintk(x...) printk("SAA7191: " x); 
> > -#else 
> > -#define dprintk(x...) 
> > -#endif 
> > - 
> >  #define SAA7191_SYNC_COUNT        30 
> >  #define SAA7191_SYNC_DELAY        100        /* milliseconds */ 
> > 
> > @@ -116,7 +108,7 @@ static int saa7191_read_status(struct v4l2_subdev 
> *sd, u8 *value) 
> > 
> >          ret = i2c_master_recv(client, value, 1); 
> >          if (ret < 0) { 
> > -                printk(KERN_ERR "SAA7191: saa7191_read_status(): read 
> failed\n"); 
> > +                dev_dbg(KERN_ERR "SAA7191: saa7191_read_status(): read 
> failed\n"); 
> >                  return ret; 
> >          } 
> > 
> > @@ -147,7 +139,7 @@ static int saa7191_write_block(struct v4l2_subdev 
> *sd, 
> > 
> >          ret = i2c_master_send(client, data, length); 
> >          if (ret < 0) { 
> > -                printk(KERN_ERR "SAA7191: saa7191_write_block(): " 
> > +                dev_dbg(KERN_ERR "SAA7191: saa7191_write_block(): " 
> >                         "write failed\n"); 
> >                  return ret; 
> >          } 
> > @@ -230,9 +222,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, 
> v4l2_std_id norm) 
> > 
> >          decoder->norm = norm; 
> > 
> > -        dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3, 
> > +        dev_dbg("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3, 
> >                  stdc, chcv); 
> > -        dprintk("norm: %llx\n", norm); 
> > +        dev_dbg("norm: %llx\n", norm); 
> > 
> >          return 0; 
> >  } 
> > @@ -241,21 +233,21 @@ static int saa7191_wait_for_signal(struct 
> v4l2_subdev *sd, u8 *status) 
> >  { 
> >          int i = 0; 
> > 
> > -        dprintk("Checking for signal...\n"); 
> > +        dev_dbg("Checking for signal...\n"); 
> > 
> >          for (i = 0; i < SAA7191_SYNC_COUNT; i++) { 
> >                  if (saa7191_read_status(sd, status)) 
> >                          return -EIO; 
> > 
> >                  if (((*status) & SAA7191_STATUS_HLCK) == 0) { 
> > -                        dprintk("Signal found\n"); 
> > +                        dev_dbg("Signal found\n"); 
> >                          return 0; 
> >                  } 
> > 
> >                  msleep(SAA7191_SYNC_DELAY); 
> >          } 
> > 
> > -        dprintk("No signal\n"); 
> > +        dev_dbg("No signal\n"); 
> > 
> >          return -EBUSY; 
> >  } 
> > @@ -269,7 +261,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, 
> v4l2_std_id *norm) 
> >          v4l2_std_id old_norm = decoder->norm; 
> >          int err = 0; 
> > 
> > -        dprintk("SAA7191 extended signal auto-detection...\n"); 
> > +        dev_dbg("SAA7191 extended signal auto-detection...\n"); 
> > 
> >          *norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM; 
> >          stdc &= ~SAA7191_STDC_SECS; 
> > @@ -301,13 +293,13 @@ static int saa7191_querystd(struct v4l2_subdev 
> *sd, v4l2_std_id *norm) 
> > 
> >          if (status & SAA7191_STATUS_FIDT) { 
> >                  /* 60Hz signal -> NTSC */ 
> > -                dprintk("60Hz signal: NTSC\n"); 
> > +                dev_dbg("60Hz signal: NTSC\n"); 
> >                  *norm &= V4L2_STD_NTSC; 
> >                  return 0; 
> >          } 
> > 
> >          /* 50Hz signal */ 
> > -        dprintk("50Hz signal: Trying PAL...\n"); 
> > +        dev_dbg("50Hz signal: Trying PAL...\n"); 
> > 
> >          /* try PAL first */ 
> >          err = saa7191_s_std(sd, V4L2_STD_PAL); 
> > @@ -322,19 +314,19 @@ static int saa7191_querystd(struct v4l2_subdev 
> *sd, v4l2_std_id *norm) 
> > 
> >          /* not 50Hz ? */ 
> >          if (status & SAA7191_STATUS_FIDT) { 
> > -                dprintk("No 50Hz signal\n"); 
> > +                dev_dbg("No 50Hz signal\n"); 
> >                  saa7191_s_std(sd, old_norm); 
> >                  *norm = V4L2_STD_UNKNOWN; 
> >                  return 0; 
> >          } 
> > 
> >          if (status & SAA7191_STATUS_CODE) { 
> > -                dprintk("PAL\n"); 
> > +                dev_dbg("PAL\n"); 
> >                  *norm &= V4L2_STD_PAL; 
> >                  return saa7191_s_std(sd, old_norm); 
> >          } 
> > 
> > -        dprintk("No color detected with PAL - Trying SECAM...\n"); 
> > +        dev_dbg("No color detected with PAL - Trying SECAM...\n"); 
> > 
> >          /* no color detected ? -> try SECAM */ 
> >          err = saa7191_s_std(sd, V4L2_STD_SECAM); 
> > @@ -349,19 +341,19 @@ static int saa7191_querystd(struct v4l2_subdev 
> *sd, v4l2_std_id *norm) 
> > 
> >          /* not 50Hz ? */ 
> >          if (status & SAA7191_STATUS_FIDT) { 
> > -                dprintk("No 50Hz signal\n"); 
> > +                dev_dbg("No 50Hz signal\n"); 
> >                  *norm = V4L2_STD_UNKNOWN; 
> >                  goto out; 
> >          } 
> > 
> >          if (status & SAA7191_STATUS_CODE) { 
> >                  /* Color detected -> SECAM */ 
> > -                dprintk("SECAM\n"); 
> > +                dev_dbg("SECAM\n"); 
> >                  *norm &= V4L2_STD_SECAM; 
> >                  return saa7191_s_std(sd, old_norm); 
> >          } 
> > 
> > -        dprintk("No color detected with SECAM - Going back to PAL.\n"); 
> > +        dev_dbg("No color detected with SECAM - Going back to PAL.\n"); 
> >          *norm = V4L2_STD_UNKNOWN; 
> > 
> >  out: 
> > @@ -372,30 +364,30 @@ static int saa7191_autodetect_norm(struct 
> v4l2_subdev *sd) 
> >  { 
> >          u8 status; 
> > 
> > -        dprintk("SAA7191 signal auto-detection...\n"); 
> > +        dev_dbg("SAA7191 signal auto-detection...\n"); 
> > 
> > -        dprintk("Reading status...\n"); 
> > +        dev_dbg("Reading status...\n"); 
> > 
> >          if (saa7191_read_status(sd, &status)) 
> >                  return -EIO; 
> > 
> > -        dprintk("Checking for signal...\n"); 
> > +        dev_dbg("Checking for signal...\n"); 
> > 
> >          /* no signal ? */ 
> >          if (status & SAA7191_STATUS_HLCK) { 
> > -                dprintk("No signal\n"); 
> > +                dev_dbg("No signal\n"); 
> >                  return -EBUSY; 
> >          } 
> > 
> > -        dprintk("Signal found\n"); 
> > +        dev_dbg("Signal found\n"); 
> > 
> >          if (status & SAA7191_STATUS_FIDT) { 
> >                  /* 60hz signal -> NTSC */ 
> > -                dprintk("NTSC\n"); 
> > +                dev_dbg("NTSC\n"); 
> >                  return saa7191_s_std(sd, V4L2_STD_NTSC); 
> >          } else { 
> >                  /* 50hz signal -> PAL */ 
> > -                dprintk("PAL\n"); 
> > +                dev_dbg("PAL\n"); 
> >                  return saa7191_s_std(sd, V4L2_STD_PAL); 
> >          } 
> >  } 
> > @@ -606,18 +598,18 @@ static int saa7191_probe(struct i2c_client 
> *client, 
> > 
> >          err = saa7191_write_block(sd, sizeof(initseq), initseq); 
> >          if (err) { 
> > -                printk(KERN_ERR "SAA7191 initialization failed\n"); 
> > +                dev_dbg(KERN_ERR "SAA7191 initialization failed\n"); 
> >                  return err; 
> >          } 
> > 
> > -        printk(KERN_INFO "SAA7191 initialized\n"); 
> > +        dev_dbg(KERN_INFO "SAA7191 initialized\n"); 
> > 
> >          decoder->input = SAA7191_INPUT_COMPOSITE; 
> >          decoder->norm = V4L2_STD_PAL; 
> > 
> >          err = saa7191_autodetect_norm(sd); 
> >          if (err && (err != -EBUSY)) 
> > -                printk(KERN_ERR "SAA7191: Signal auto-detection 
> failed\n"); 
> > +                dev_dbg(KERN_ERR "SAA7191: Signal auto-detection 
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
> https://groups.google.com/d/msgid/outreachy-kernel/1424191221-25574-1-git-send-email-ksenija.stanojevic%40gmail.com. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_716_464381148.1424198632414
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">Thank you for the reply. Do i need to merge all these changes into one patch and send v2 of the previous patch<br><br>On Tuesday, February 17, 2015 at 7:09:15 PM UTC+1, Julia Lawall wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">On Tue, 17 Feb 2015, Ksenija Stanojevic wrote:
<br>
<br>&gt; Making variants of existing macros is against kernel coding style. This
<br>&gt; patch removes all definitions made by macro dprintk() and replaces them
<br>&gt; with dev_dbg()
<br>
<br>dev_dbg needs a device as the first argument. &nbsp;Here is a completely
<br>random example:
<br>
<br><a href="http://lxr.free-electrons.com/source/sound/usb/mixer.c?v=3.15#L2277" target="_blank" rel="nofollow">http://lxr.free-electrons.com/<wbr>source/sound/usb/mixer.c?v=3.<wbr>15#L2277</a>
<br>
<br>&nbsp;dev_dbg(&amp;urb-&gt;dev-&gt;dev, "status interrupt: %02x %02x\n",
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;status-&gt;bStatusType,
<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;status-&gt;bOriginator);
<br>
<br>You can usually find a useful data structure among the function
<br>parameters. &nbsp;It should have type struct device *.
<br>
<br>julia
<br>
<br>&gt; ---
<br>&gt; &nbsp;drivers/staging/media/vino/<wbr>saa7191.c | 60 ++++++++++++++++--------------<wbr>------
<br>&gt; &nbsp;1 file changed, 26 insertions(+), 34 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/media/vino/<wbr>saa7191.c b/drivers/staging/media/vino/<wbr>saa7191.c
<br>&gt; index 087acab..01eea48 100644
<br>&gt; --- a/drivers/staging/media/vino/<wbr>saa7191.c
<br>&gt; +++ b/drivers/staging/media/vino/<wbr>saa7191.c
<br>&gt; @@ -33,14 +33,6 @@ MODULE_AUTHOR("Mikael Nousiainen &lt;<a href="javascript:" target="_blank" gdf-obfuscated-mailto="MR1KowENPo4J" rel="nofollow">tmno...@cc.hut.fi</a>&gt;");
<br>&gt; &nbsp;MODULE_LICENSE("GPL");
<br>&gt;
<br>&gt;
<br>&gt; -/* #define SAA7191_DEBUG */
<br>&gt; -
<br>&gt; -#ifdef SAA7191_DEBUG
<br>&gt; -#define dprintk(x...) printk("SAA7191: " x);
<br>&gt; -#else
<br>&gt; -#define dprintk(x...)
<br>&gt; -#endif
<br>&gt; -
<br>&gt; &nbsp;#define SAA7191_SYNC_COUNT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30
<br>&gt; &nbsp;#define SAA7191_SYNC_DELAY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* milliseconds */
<br>&gt;
<br>&gt; @@ -116,7 +108,7 @@ static int saa7191_read_status(struct v4l2_subdev *sd, u8 *value)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret = i2c_master_recv(client, value, 1);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ret &lt; 0) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191: saa7191_read_status(): read failed\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(KERN_<wbr>ERR "SAA7191: saa7191_read_status(): read failed\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ret;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -147,7 +139,7 @@ static int saa7191_write_block(struct v4l2_subdev *sd,
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret = i2c_master_send(client, data, length);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ret &lt; 0) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191: saa7191_write_block(): "
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(KERN_<wbr>ERR "SAA7191: saa7191_write_block(): "
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "write failed\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ret;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -230,9 +222,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;norm = norm;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stdc, chcv);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("norm: %llx\n", norm);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("norm: %llx\n", norm);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;}
<br>&gt; @@ -241,21 +233,21 @@ static int saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i = 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Checking for signal...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Checking for signal...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i = 0; i &lt; SAA7191_SYNC_COUNT; i++) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (saa7191_read_status(sd, status))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>return -EIO;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (((*status) &amp; SAA7191_STATUS_HLCK) == 0) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>dprintk("Signal found\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_<wbr>dbg("Signal found\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>return 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;msleep(<wbr>SAA7191_SYNC_DELAY);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No signal\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EBUSY;
<br>&gt; &nbsp;}
<br>&gt; @@ -269,7 +261,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v4l2_std_id old_norm = decoder-&gt;norm;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int err = 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("SAA7191 extended signal auto-detection...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("SAA7191 extended signal auto-detection...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stdc &amp;= ~SAA7191_STDC_SECS;
<br>&gt; @@ -301,13 +293,13 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 60Hz signal -&gt; NTSC */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("60Hz signal: NTSC\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("60Hz signal: NTSC\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_NTSC;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 50Hz signal */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("50Hz signal: Trying PAL...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("50Hz signal: Trying PAL...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* try PAL first */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_s_std(sd, V4L2_STD_PAL);
<br>&gt; @@ -322,19 +314,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* not 50Hz ? */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No 50Hz signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;saa7191_s_<wbr>std(sd, old_norm);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("PAL\<wbr>n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("PAL\<wbr>n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_PAL;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No color detected with PAL - Trying SECAM...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No color detected with PAL - Trying SECAM...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* no color detected ? -&gt; try SECAM */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_s_std(sd, V4L2_STD_SECAM);
<br>&gt; @@ -349,19 +341,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* not 50Hz ? */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No 50Hz signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No 50Hz signal\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Color detected -&gt; SECAM */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("<wbr>SECAM\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>SECAM\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_SECAM;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, old_norm);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No color detected with SECAM - Going back to PAL.\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No color detected with SECAM - Going back to PAL.\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&gt;
<br>&gt; &nbsp;out:
<br>&gt; @@ -372,30 +364,30 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 status;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("SAA7191 signal auto-detection...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("SAA7191 signal auto-detection...\n");
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Reading status...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Reading status...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (saa7191_read_status(sd, &amp;status))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EIO;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Checking for signal...\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Checking for signal...\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* no signal ? */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_HLCK) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No signal\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("No signal\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EBUSY;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Signal found\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("Signal found\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 60hz signal -&gt; NTSC */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("<wbr>NTSC\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("<wbr>NTSC\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, V4L2_STD_NTSC);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 50hz signal -&gt; PAL */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("PAL\<wbr>n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg("PAL\<wbr>n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, V4L2_STD_PAL);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;}
<br>&gt; @@ -606,18 +598,18 @@ static int saa7191_probe(struct i2c_client *client,
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_write_block(sd, sizeof(initseq), initseq);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (err) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191 initialization failed\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(KERN_<wbr>ERR "SAA7191 initialization failed\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return err;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_INFO "SAA7191 initialized\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(KERN_INFO "SAA7191 initialized\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;input = SAA7191_INPUT_COMPOSITE;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;norm = V4L2_STD_PAL;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_autodetect_norm(sd);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (err &amp;&amp; (err != -EBUSY))
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191: Signal auto-detection failed\n");
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(KERN_<wbr>ERR "SAA7191: Signal auto-detection failed\n");
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;}
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, send an email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="MR1KowENPo4J" rel="nofollow">outreachy-kern...@<wbr>googlegroups.com</a>.
<br>&gt; To post to this group, send email to <a href="javascript:" target="_blank" gdf-obfuscated-mailto="MR1KowENPo4J" rel="nofollow">outreach...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href="https://groups.google.com/d/msgid/outreachy-kernel/1424191221-25574-1-git-send-email-ksenija.stanojevic%40gmail.com" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>msgid/outreachy-kernel/<wbr>1424191221-25574-1-git-send-<wbr>email-ksenija.stanojevic%<wbr>40gmail.com</a>.
<br>&gt; For more options, visit <a href="https://groups.google.com/d/optout" target="_blank" rel="nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_716_464381148.1424198632414--

------=_Part_715_561718480.1424198632414--


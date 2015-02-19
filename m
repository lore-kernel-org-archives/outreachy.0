X-GM-THRID: 612983898112
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d24031e2a704191
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
Date: Thu, 19 Feb 2015 10:11:32 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: ksenija.stanojevic@gmail.com
Message-Id: <190e3bd2-3257-4a12-8a4b-7a7cd1b8a3f1@googlegroups.com>
In-Reply-To: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com>
References: <1424369068-6070-1-git-send-email-ksenija.stanojevic@gmail.com>
Subject: Re: [PATCH v4] Staging: media: vino: Replace printk() and dprintk()
 with dev_dbg()
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2005_59474486.1424369492983"
X-Google-Token: ENTOmKcF3aRBOBfFvzM0
X-Google-IP: 77.46.215.254

------=_Part_2005_59474486.1424369492983
Content-Type: multipart/alternative; 
	boundary="----=_Part_2006_1007790347.1424369492983"

------=_Part_2006_1007790347.1424369492983
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

i just fixed my mail but I don't know how did I post it here instead into 
separate topic.

On Thursday, February 19, 2015 at 7:04:41 PM UTC+1, Ksenija Stanojevic 
wrote:
>
> Making variants of existing macros is against kernel coding style. 
> This patch removes all definitions made by macro dprintk() and replaces 
> them with dev dbg(). 
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com> 
> --- 
> v4: Merged all commits into one. 
> v3: Added a pointer to a device structure in dev_dbg() as the 
>     first argument. 
> v2: Removed KERN_ERR and KERN_INFO from dev_dbg() argument list. 
>
>  drivers/staging/media/vino/saa7191.c | 58 
> ++++++++++++++++-------------------- 
>  1 file changed, 26 insertions(+), 32 deletions(-) 
>
> diff --git a/drivers/staging/media/vino/saa7191.c 
> b/drivers/staging/media/vino/saa7191.c 
> index 8e96992..29e3296 100644 
> --- a/drivers/staging/media/vino/saa7191.c 
> +++ b/drivers/staging/media/vino/saa7191.c 
> @@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen <tmnousia@cc.hut.fi>"); 
>
>  MODULE_LICENSE("GPL"); 
>   
>   
> -// #define SAA7191_DEBUG 
>   
> -#ifdef SAA7191_DEBUG 
> -#define dprintk(x...) printk("SAA7191: " x); 
> -#else 
> -#define dprintk(x...) 
> -#endif 
>   
>  #define SAA7191_SYNC_COUNT        30 
>  #define SAA7191_SYNC_DELAY        100        /* milliseconds */ 
> @@ -116,7 +110,7 @@ static int saa7191_read_status(struct v4l2_subdev *sd, 
> u8 *value) 
>   
>          ret = i2c_master_recv(client, value, 1); 
>          if (ret < 0) { 
> -                printk(KERN_ERR "SAA7191: saa7191_read_status(): read 
> failed\n"); 
> +                dev_dbg(sd->dev, "saa7191_read_status(): read failed\n"); 
>                  return ret; 
>          } 
>   
> @@ -147,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev *sd, 
>   
>          ret = i2c_master_send(client, data, length); 
>          if (ret < 0) { 
> -                printk(KERN_ERR "SAA7191: saa7191_write_block(): " 
> +                dev_dbg(sd->dev, "saa7191_write_block(): " 
>                         "write failed\n"); 
>                  return ret; 
>          } 
> @@ -230,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, 
> v4l2_std_id norm) 
>   
>          decoder->norm = norm; 
>   
> -        dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3, 
> +        dev_dbg(sd->dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3, 
>                  stdc, chcv); 
> -        dprintk("norm: %llx\n", norm); 
> +        dev_dbg(sd->dev, "norm: %llx\n", norm); 
>   
>          return 0; 
>  } 
> @@ -241,21 +235,21 @@ static int saa7191_wait_for_signal(struct 
> v4l2_subdev *sd, u8 *status) 
>  { 
>          int i = 0; 
>   
> -        dprintk("Checking for signal...\n"); 
> +        dev_dbg(sd->dev, "Checking for signal...\n"); 
>   
>          for (i = 0; i < SAA7191_SYNC_COUNT; i++) { 
>                  if (saa7191_read_status(sd, status)) 
>                          return -EIO; 
>   
>                  if (((*status) & SAA7191_STATUS_HLCK) == 0) { 
> -                        dprintk("Signal found\n"); 
> +                        dev_dbg(sd->dev, "Signal found\n"); 
>                          return 0; 
>                  } 
>   
>                  msleep(SAA7191_SYNC_DELAY); 
>          } 
>   
> -        dprintk("No signal\n"); 
> +        dev_dbg(sd->dev, "No signal\n"); 
>   
>          return -EBUSY; 
>  } 
> @@ -269,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, 
> v4l2_std_id *norm) 
>          v4l2_std_id old_norm = decoder->norm; 
>          int err = 0; 
>   
> -        dprintk("SAA7191 extended signal auto-detection...\n"); 
> +        dev_dbg(sd->dev, "SAA7191 extended signal auto-detection...\n"); 
>   
>          *norm &= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM; 
>          stdc &= ~SAA7191_STDC_SECS; 
> @@ -301,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev *sd, 
> v4l2_std_id *norm) 
>   
>          if (status & SAA7191_STATUS_FIDT) { 
>                  /* 60Hz signal -> NTSC */ 
> -                dprintk("60Hz signal: NTSC\n"); 
> +                dev_dbg(sd->dev, "60Hz signal: NTSC\n"); 
>                  *norm &= V4L2_STD_NTSC; 
>                  return 0; 
>          } 
>   
>          /* 50Hz signal */ 
> -        dprintk("50Hz signal: Trying PAL...\n"); 
> +        dev_dbg(sd->dev, "50Hz signal: Trying PAL...\n"); 
>   
>          /* try PAL first */ 
>          err = saa7191_s_std(sd, V4L2_STD_PAL); 
> @@ -322,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, 
> v4l2_std_id *norm) 
>   
>          /* not 50Hz ? */ 
>          if (status & SAA7191_STATUS_FIDT) { 
> -                dprintk("No 50Hz signal\n"); 
> +                dev_dbg(sd->dev, "No 50Hz signal\n"); 
>                  saa7191_s_std(sd, old_norm); 
>                  *norm = V4L2_STD_UNKNOWN; 
>                  return 0; 
>          } 
>   
>          if (status & SAA7191_STATUS_CODE) { 
> -                dprintk("PAL\n"); 
> +                dev_dbg(sd->dev, "PAL\n"); 
>                  *norm &= V4L2_STD_PAL; 
>                  return saa7191_s_std(sd, old_norm); 
>          } 
>   
> -        dprintk("No color detected with PAL - Trying SECAM...\n"); 
> +        dev_dbg(sd->dev, "No color detected with PAL - Trying 
> SECAM...\n"); 
>   
>          /* no color detected ? -> try SECAM */ 
>          err = saa7191_s_std(sd, V4L2_STD_SECAM); 
> @@ -349,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, 
> v4l2_std_id *norm) 
>   
>          /* not 50Hz ? */ 
>          if (status & SAA7191_STATUS_FIDT) { 
> -                dprintk("No 50Hz signal\n"); 
> +                dev_dbg(sd->dev, "No 50Hz signal\n"); 
>                  *norm = V4L2_STD_UNKNOWN; 
>                  goto out; 
>          } 
>   
>          if (status & SAA7191_STATUS_CODE) { 
>                  /* Color detected -> SECAM */ 
> -                dprintk("SECAM\n"); 
> +                dev_dbg(sd->dev, "SECAM\n"); 
>                  *norm &= V4L2_STD_SECAM; 
>                  return saa7191_s_std(sd, old_norm); 
>          } 
>   
> -        dprintk("No color detected with SECAM - Going back to PAL.\n"); 
> +        dev_dbg(sd->dev, "No color detected with SECAM - Going back to 
> PAL.\n"); 
>          *norm = V4L2_STD_UNKNOWN; 
>   
>  out: 
> @@ -372,30 +366,30 @@ static int saa7191_autodetect_norm(struct 
> v4l2_subdev *sd) 
>  { 
>          u8 status; 
>   
> -        dprintk("SAA7191 signal auto-detection...\n"); 
> +        dev_dbg(sd->dev, "SAA7191 signal auto-detection...\n"); 
>   
> -        dprintk("Reading status...\n"); 
> +        dev_dbg(sd->dev, "Reading status...\n"); 
>   
>          if (saa7191_read_status(sd, &status)) 
>                  return -EIO; 
>   
> -        dprintk("Checking for signal...\n"); 
> +        dev_dbg(sd->dev, "Checking for signal...\n"); 
>   
>          /* no signal ? */ 
>          if (status & SAA7191_STATUS_HLCK) { 
> -                dprintk("No signal\n"); 
> +                dev_dbg(sd->dev, "No signal\n"); 
>                  return -EBUSY; 
>          } 
>   
> -        dprintk("Signal found\n"); 
> +        dev_dbg(sd->dev, "Signal found\n"); 
>   
>          if (status & SAA7191_STATUS_FIDT) { 
>                  /* 60hz signal -> NTSC */ 
> -                dprintk("NTSC\n"); 
> +                dev_dbg(sd->dev, "NTSC\n"); 
>                  return saa7191_s_std(sd, V4L2_STD_NTSC); 
>          } else { 
>                  /* 50hz signal -> PAL */ 
> -                dprintk("PAL\n"); 
> +                dev_dbg(sd->dev, "PAL\n"); 
>                  return saa7191_s_std(sd, V4L2_STD_PAL); 
>          } 
>  } 
> @@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client, 
>   
>          err = saa7191_write_block(sd, sizeof(initseq), initseq); 
>          if (err) { 
> -                printk(KERN_ERR "SAA7191 initialization failed\n"); 
> +                dev_dbg(sd->dev, "SAA7191 initialization failed\n"); 
>                  return err; 
>          } 
>   
> -        printk(KERN_INFO "SAA7191 initialized\n"); 
> +        dev_dbg(sd->dev, "SAA7191 initialized\n"); 
>   
>          decoder->input = SAA7191_INPUT_COMPOSITE; 
>          decoder->norm = V4L2_STD_PAL; 
>   
>          err = saa7191_autodetect_norm(sd); 
>          if (err && (err != -EBUSY)) 
> -                printk(KERN_ERR "SAA7191: Signal auto-detection 
> failed\n"); 
> +                dev_dbg(sd->dev, "SAA7191: Signal auto-detection 
> failed\n"); 
>   
>          return 0; 
>  } 
> -- 
> 1.9.1 
>
>
------=_Part_2006_1007790347.1424369492983
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<div dir="ltr">i just fixed my mail but I don't know how did I post it here instead into separate topic.<br><br>On Thursday, February 19, 2015 at 7:04:41 PM UTC+1, Ksenija Stanojevic wrote:<blockquote class="gmail_quote" style="margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">Making variants of existing macros is against kernel coding style.
<br>This patch removes all definitions made by macro dprintk() and replaces
<br>them with dev dbg().
<br>
<br>Signed-off-by: Ksenija Stanojevic &lt;<a href="mailto:ksenija.stanojevic@gmail.com" target="_blank">ksenija.stanojevic@gmail.com</a>&gt;
<br>---
<br>v4: Merged all commits into one.
<br>v3: Added a pointer to a device structure in dev_dbg() as the
<br>&nbsp; &nbsp; first argument.
<br>v2: Removed KERN_ERR and KERN_INFO from dev_dbg() argument list.
<br>
<br>&nbsp;drivers/staging/media/vino/<wbr>saa7191.c | 58 ++++++++++++++++--------------<wbr>------
<br>&nbsp;1 file changed, 26 insertions(+), 32 deletions(-)
<br>
<br>diff --git a/drivers/staging/media/vino/<wbr>saa7191.c b/drivers/staging/media/vino/<wbr>saa7191.c
<br>index 8e96992..29e3296 100644
<br>--- a/drivers/staging/media/vino/<wbr>saa7191.c
<br>+++ b/drivers/staging/media/vino/<wbr>saa7191.c
<br>@@ -33,13 +33,7 @@ MODULE_AUTHOR("Mikael Nousiainen &lt;<a href="mailto:tmnousia@cc.hut.fi" target="_blank">tmnousia@cc.hut.fi</a>&gt;");
<br>&nbsp;MODULE_LICENSE("GPL");
<br>&nbsp;
<br>&nbsp;
<br>-// #define SAA7191_DEBUG
<br>&nbsp;
<br>-#ifdef SAA7191_DEBUG
<br>-#define dprintk(x...) printk("SAA7191: " x);
<br>-#else
<br>-#define dprintk(x...)
<br>-#endif
<br>&nbsp;
<br>&nbsp;#define SAA7191_SYNC_COUNT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;30
<br>&nbsp;#define SAA7191_SYNC_DELAY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;100&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* milliseconds */
<br>@@ -116,7 +110,7 @@ static int saa7191_read_status(struct v4l2_subdev *sd, u8 *value)
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret = i2c_master_recv(client, value, 1);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ret &lt; 0) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191: saa7191_read_status(): read failed\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "saa7191_read_status(): read failed\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ret;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>@@ -147,7 +141,7 @@ static int saa7191_write_block(struct v4l2_subdev *sd,
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret = i2c_master_send(client, data, length);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ret &lt; 0) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191: saa7191_write_block(): "
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "saa7191_write_block(): "
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; "write failed\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return ret;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>@@ -230,9 +224,9 @@ static int saa7191_s_std(struct v4l2_subdev *sd, v4l2_std_id norm)
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;norm = norm;
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "ctl3: %02x stdc: %02x chcv: %02x\n", ctl3,
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stdc, chcv);
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("norm: %llx\n", norm);
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "norm: %llx\n", norm);
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&nbsp;}
<br>@@ -241,21 +235,21 @@ static int saa7191_wait_for_signal(struct v4l2_subdev *sd, u8 *status)
<br>&nbsp;{
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i = 0;
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Checking for signal...\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Checking for signal...\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i = 0; i &lt; SAA7191_SYNC_COUNT; i++) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (saa7191_read_status(sd, status))
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>return -EIO;
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (((*status) &amp; SAA7191_STATUS_HLCK) == 0) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>dprintk("Signal found\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_<wbr>dbg(sd-&gt;dev, "Signal found\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>return 0;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;msleep(<wbr>SAA7191_SYNC_DELAY);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No signal\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "No signal\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EBUSY;
<br>&nbsp;}
<br>@@ -269,7 +263,7 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v4l2_std_id old_norm = decoder-&gt;norm;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int err = 0;
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("SAA7191 extended signal auto-detection...\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "SAA7191 extended signal auto-detection...\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_NTSC | V4L2_STD_PAL | V4L2_STD_SECAM;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;stdc &amp;= ~SAA7191_STDC_SECS;
<br>@@ -301,13 +295,13 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 60Hz signal -&gt; NTSC */
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("60Hz signal: NTSC\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "60Hz signal: NTSC\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_NTSC;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 50Hz signal */
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("50Hz signal: Trying PAL...\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "50Hz signal: Trying PAL...\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* try PAL first */
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_s_std(sd, V4L2_STD_PAL);
<br>@@ -322,19 +316,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* not 50Hz ? */
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No 50Hz signal\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "No 50Hz signal\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;saa7191_s_<wbr>std(sd, old_norm);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("PAL\<wbr>n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "PAL\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_PAL;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, old_norm);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No color detected with PAL - Trying SECAM...\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "No color detected with PAL - Trying SECAM...\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* no color detected ? -&gt; try SECAM */
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_s_std(sd, V4L2_STD_SECAM);
<br>@@ -349,19 +343,19 @@ static int saa7191_querystd(struct v4l2_subdev *sd, v4l2_std_id *norm)
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* not 50Hz ? */
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No 50Hz signal\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "No 50Hz signal\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_CODE) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Color detected -&gt; SECAM */
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("<wbr>SECAM\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "SECAM\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm &amp;= V4L2_STD_SECAM;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, old_norm);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No color detected with SECAM - Going back to PAL.\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "No color detected with SECAM - Going back to PAL.\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*norm = V4L2_STD_UNKNOWN;
<br>&nbsp;
<br>&nbsp;out:
<br>@@ -372,30 +366,30 @@ static int saa7191_autodetect_norm(struct v4l2_subdev *sd)
<br>&nbsp;{
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 status;
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("SAA7191 signal auto-detection...\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "SAA7191 signal auto-detection...\n");
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Reading status...\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Reading status...\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (saa7191_read_status(sd, &amp;status))
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EIO;
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Checking for signal...\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Checking for signal...\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* no signal ? */
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_HLCK) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("No signal\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "No signal\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -EBUSY;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("Signal found\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "Signal found\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (status &amp; SAA7191_STATUS_FIDT) {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 60hz signal -&gt; NTSC */
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("<wbr>NTSC\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "NTSC\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, V4L2_STD_NTSC);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 50hz signal -&gt; PAL */
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dprintk("PAL\<wbr>n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "PAL\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return saa7191_s_std(sd, V4L2_STD_PAL);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;}
<br>@@ -606,18 +600,18 @@ static int saa7191_probe(struct i2c_client *client,
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_write_block(sd, sizeof(initseq), initseq);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (err) {
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191 initialization failed\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "SAA7191 initialization failed\n");
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return err;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&nbsp;
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_INFO "SAA7191 initialized\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;dev, "SAA7191 initialized\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;input = SAA7191_INPUT_COMPOSITE;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;decoder-&gt;norm = V4L2_STD_PAL;
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;err = saa7191_autodetect_norm(sd);
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (err &amp;&amp; (err != -EBUSY))
<br>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>ERR "SAA7191: Signal auto-detection failed\n");
<br>+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dev_dbg(sd-&gt;<wbr>dev, "SAA7191: Signal auto-detection failed\n");
<br>&nbsp;
<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&nbsp;}
<br>-- 
<br>1.9.1
<br>
<br></blockquote></div>
------=_Part_2006_1007790347.1424369492983--

------=_Part_2005_59474486.1424369492983--


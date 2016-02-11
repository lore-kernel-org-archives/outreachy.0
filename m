X-GM-THRID: 6250093059879469056
X-Received: by 10.107.15.143 with SMTP id 15mr26510026iop.15.1455213190708;
        Thu, 11 Feb 2016 09:53:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.102 with SMTP id y93ls1313127qgd.35.gmail; Thu, 11 Feb
 2016 09:53:10 -0800 (PST)
X-Received: by 10.129.155.201 with SMTP id s192mr45148858ywg.4.1455213190032;
        Thu, 11 Feb 2016 09:53:10 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id l85si564969ywb.2.2016.02.11.09.53.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:53:10 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x235.google.com with SMTP id o6so21946935qkc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 09:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=maeOvPYa0WzVnSjb9CWJRFryLUzglGRJjTTq554+EzI=;
        b=itHbpxyAAQ1PT4A0MpcDXl6NN/Q4xaBAhr/ccQtacWghdK9KvXBeFZhSJlAhHnA0rA
         ep7V45Xm+DcQdvXDEYsG50KpDl00TCXJCURR9hTjhoLnjgQ2HygwQNcwYXucFPwGdJ1r
         HCPzAZo/O93zb1ya23mS+JYP559BJy4dEwaMF7OWrh+tydAVetz4ugluyA63xsk7vvAe
         GlHXZzk1W9VAoI5tfNPA0qjxdff9/b79Drd9yBmdqFa4B6SJtVpvtsvuerzkYCAQRjZb
         7Lj9qe9smRIjP2/cXvD9dnKKDA/S6C3DO+kcshvFLIQ8wCFBa4285eEaO0ouZN+Hf7EW
         A5vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=maeOvPYa0WzVnSjb9CWJRFryLUzglGRJjTTq554+EzI=;
        b=S8DJ2De7DdKA1M78skDUqwbqcHuCdKNSbX65Ym88LjjAs6yFqzxwMF6J3K/sanArtt
         V7nni53rBycC1+67IJapwQAu6g0Es4DndeIPNmmEEY2P1jnabMUbva7GyUXoTYlLTjh4
         rrSKGfnwPlIoictgOZBPC9b4q02+0B3XSvoPKJes/O1IsFIs+Fr4Ib5Z/MYSHnrChqcP
         qkQb+9MilBKXZiqt5JcXVX+DNOXMvVrUHgLV8ynZLl1dyHLFToWC3C0auFl2dMuOWrZ2
         DVB7RAT0LlnxwtrGBEBYSAKtGun6An5s6/3dCUFfHBlSE/AqVnH5VzI2Q3uY/UewpMH6
         4y/Q==
X-Gm-Message-State: AG10YORJhtF2sS7Hl1wOKMiGdQCbvYalY7zVr6FhYe6+iFemDQeCSslm1dkVpNOHDUR01w==
X-Received: by 10.55.74.86 with SMTP id x83mr57171286qka.89.1455213189850;
        Thu, 11 Feb 2016 09:53:09 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id i67sm3725640qhi.45.2016.02.11.09.53.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 09:53:08 -0800 (PST)
Date: Thu, 11 Feb 2016 17:52:30 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: Remove unneeded parentheses
Message-ID: <20160211225230.GA4861@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unneeded parentheses in assignment statements.
Semantic patch:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a = 
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_isif.c    | 2 +-
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 8 ++++----
 drivers/staging/media/mn88472/mn88472.c            | 6 +++---
 drivers/staging/media/mn88473/mn88473.c            | 6 +++---
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 9905789..65f6ce3 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1570,7 +1570,7 @@ isif_pad_set_selection(struct v4l2_subdev *sd,
 		sel->r.height = format->height;
 	}
 	/* adjust the width to 16 pixel boundary */
-	sel->r.width = ((sel->r.width + 15) & ~0xf);
+	sel->r.width = (sel->r.width + 15) & ~0xf;
 	vpfe_isif->crop = sel->r;
 	if (sel->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
 		isif_set_image_window(vpfe_isif);
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index a91395c..42de95e 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -404,7 +404,7 @@ resizer_calculate_down_scale_f_div_param(struct device *dev,
 	param->f_div.pass[0].src_hsz = upper_h1 + o;
 	param->f_div.pass[1].o_hsz = h2 - 1;
 	param->f_div.pass[1].i_hps = 10 + (val1 * two_power);
-	param->f_div.pass[1].h_phs = (val - (val1 << 8));
+	param->f_div.pass[1].h_phs = val - (val1 << 8);
 	param->f_div.pass[1].src_hps = upper_h1 - o;
 	param->f_div.pass[1].src_hsz = upper_h2 + o;
 
@@ -425,8 +425,8 @@ resizer_configure_common_in_params(struct vpfe_resizer_device *resizer)
 	param->rsz_common.hps = param->user_config.hst;
 
 	if (vpfe_ipipeif_decimation_enabled(vpfe_dev))
-		param->rsz_common.hsz = (((informat->width - 1) *
-			IPIPEIF_RSZ_CONST) / vpfe_ipipeif_get_rsz(vpfe_dev));
+		param->rsz_common.hsz = ((informat->width - 1) *
+			IPIPEIF_RSZ_CONST) / vpfe_ipipeif_get_rsz(vpfe_dev);
 	else
 		param->rsz_common.hsz = informat->width - 1;
 
@@ -650,7 +650,7 @@ resizer_calculate_normal_f_div_param(struct device *dev, int input_width,
 	param->f_div.pass[0].src_hsz = (input_width >> 2) + o;
 	param->f_div.pass[1].o_hsz = h2 - 1;
 	param->f_div.pass[1].i_hps = val1;
-	param->f_div.pass[1].h_phs = (val - (val1 << 8));
+	param->f_div.pass[1].h_phs = val - (val1 << 8);
 	param->f_div.pass[1].src_hps = (input_width >> 2) - o;
 	param->f_div.pass[1].src_hsz = (input_width >> 2) + o;
 
diff --git a/drivers/staging/media/mn88472/mn88472.c b/drivers/staging/media/mn88472/mn88472.c
index cf2e96b..c2f2a63 100644
--- a/drivers/staging/media/mn88472/mn88472.c
+++ b/drivers/staging/media/mn88472/mn88472.c
@@ -96,9 +96,9 @@ static int mn88472_set_frontend(struct dvb_frontend *fe)
 	/* Calculate IF registers ( (1<<24)*IF / Xtal ) */
 	tmp =  div_u64(if_frequency * (u64)(1<<24) + (dev->xtal / 2),
 				   dev->xtal);
-	if_val[0] = ((tmp >> 16) & 0xff);
-	if_val[1] = ((tmp >>  8) & 0xff);
-	if_val[2] = ((tmp >>  0) & 0xff);
+	if_val[0] = (tmp >> 16) & 0xff;
+	if_val[1] = (tmp >>  8) & 0xff;
+	if_val[2] = (tmp >>  0) & 0xff;
 
 	ret = regmap_write(dev->regmap[2], 0xfb, 0x13);
 	ret = regmap_write(dev->regmap[2], 0xef, 0x13);
diff --git a/drivers/staging/media/mn88473/mn88473.c b/drivers/staging/media/mn88473/mn88473.c
index a222e99..68a614b 100644
--- a/drivers/staging/media/mn88473/mn88473.c
+++ b/drivers/staging/media/mn88473/mn88473.c
@@ -94,9 +94,9 @@ static int mn88473_set_frontend(struct dvb_frontend *fe)
 	/* Calculate IF registers ( (1<<24)*IF / Xtal ) */
 	tmp =  div_u64(if_frequency * (u64)(1<<24) + (dev->xtal / 2),
 				   dev->xtal);
-	if_val[0] = ((tmp >> 16) & 0xff);
-	if_val[1] = ((tmp >>  8) & 0xff);
-	if_val[2] = ((tmp >>  0) & 0xff);
+	if_val[0] = (tmp >> 16) & 0xff;
+	if_val[1] = (tmp >>  8) & 0xff;
+	if_val[2] = (tmp >>  0) & 0xff;
 
 	ret = regmap_write(dev->regmap[2], 0x05, 0x00);
 	ret = regmap_write(dev->regmap[2], 0xfb, 0x13);
-- 
2.5.0



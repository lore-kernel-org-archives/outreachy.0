X-GM-THRID: 6393356170344529920
X-Received: by 10.99.152.9 with SMTP id q9mr3219055pgd.84.1488638508991;
        Sat, 04 Mar 2017 06:41:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls12251489otg.39.gmail; Sat, 04
 Mar 2017 06:41:48 -0800 (PST)
X-Received: by 10.176.7.194 with SMTP id d2mr1634250uaf.17.1488638508627;
        Sat, 04 Mar 2017 06:41:48 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 207si523999pfu.8.2017.03.04.06.41.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:41:48 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so15466307pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ix7XA4MKvAwU/ytj/i4k0G6qx0s1jS9el/V7hBP6XcU=;
        b=nPYoG+ZekcJar3lsoBqRX3jHL9JXDns2NcWaUEWuOB7Q7mQEY7HPVI0K9mOVLXSad0
         dbMX/SJaYlNfxDetV329GliYnDICkSaU12Wk7QuW3IrcsgrWY3xwncNim0H4W0I8hBft
         rGwNYSqvdfvuvTmHGC7m4mhBHEM1NqCjc202MtdlMlQe3CoFYjRE9nrFTyIn82JqoL2d
         8+Puo3mlOOwdBgRlB7AEGKv02OTWtQRTDGcuOKdGrlYhidhIFXvEDbb6Aq6uGOGatx0U
         IHiW/sFxDVenmnVskP6moAWU35YeLaTO8jMIYGr23aDOtzm953JsB1QIiZZiEiz4kSuM
         11FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ix7XA4MKvAwU/ytj/i4k0G6qx0s1jS9el/V7hBP6XcU=;
        b=SByUb34xUIutpD0GzkB7lt3agttE2O/h91YHggBYkZcJZDbLHv3Xm3ueDrIXHAxyF9
         Zywl4NhPz0FMhLXtmoflsx+N/kTUbR/N2N9pqwBitAvS5JdatgVb0dH88RIDs5A14Ir7
         gkA9NIxlzM73ITUZNgv/ePVJELl7lfYhyrGwvK3jxxKCDK1ehI7kQxPXbAfj8oLKzWOk
         +Lxyoe0PYsERJOvafHaWQEx2r4Ib13WksE3aKTJtlqhRPujpEWwwhY8zya+hIbv0xLvS
         ZkNHMq2Ts9FBcQnxXF1paGV1Zz3SR7NdMUW+DwamdFCu/YQh6mydZ6s84T2hQwsfw3be
         24xQ==
X-Gm-Message-State: AMke39lI3UA/C28Hqh85iLP1hzMjjGPcj1WmKGtxLLQLyhkOFLJxvHZd58YSHLRrWhIE4g==
X-Received: by 10.98.79.150 with SMTP id f22mr9972938pfj.55.1488638508148;
        Sat, 04 Mar 2017 06:41:48 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.6])
        by smtp.gmail.com with ESMTPSA id w14sm16982422pgo.37.2017.03.04.06.41.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:41:47 -0800 (PST)
Message-ID: <58bad22b.4ea7630a.6e3a5.0643@mx.google.com>
X-Google-Original-Message-ID: <20170304144144.GA4473@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:11:44 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 5/9] staging : media: atomisp: Fix block comments warning.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Used kernel preferred block commenting style, to fix the following
checkpatch issue:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

 drivers/staging/media/atomisp/i2c/gc0310.c                         | 3 ++-
 drivers/staging/media/atomisp/i2c/gc2235.c                         | 3 ++-
 drivers/staging/media/atomisp/i2c/ov2680.c                         | 7 ++++---
 drivers/staging/media/atomisp/i2c/ov2722.c                         | 6 ++++--
 .../pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c       | 6 +++---
 5 files changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc0310.c b/drivers/staging/media/atomisp/i2c/gc0310.c
index bae55d3..e122cde 100644
--- a/drivers/staging/media/atomisp/i2c/gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/gc0310.c
@@ -538,7 +538,8 @@ static long gc0310_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
 }
 
 /* This returns the exposure time being used. This should only be used
-   for filling in EXIF data, not for actual image processing. */
+ * for filling in EXIF data, not for actual image processing.
+ */
 static int gc0310_q_exposure(struct v4l2_subdev *sd, s32 *value)
 {
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index c04dcfb..0f23ba9 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -427,7 +427,8 @@ static long gc2235_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
 	return 0;
 }
 /* This returns the exposure time being used. This should only be used
-   for filling in EXIF data, not for actual image processing. */
+ * for filling in EXIF data, not for actual image processing.
+ */
 static int gc2235_q_exposure(struct v4l2_subdev *sd, s32 *value)
 {
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
diff --git a/drivers/staging/media/atomisp/i2c/ov2680.c b/drivers/staging/media/atomisp/i2c/ov2680.c
index 5730fe5..df1e336 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/ov2680.c
@@ -554,7 +554,8 @@ static long ov2680_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
 }
 
 /* This returns the exposure time being used. This should only be used
-   for filling in EXIF data, not for actual image processing. */
+ * for filling in EXIF data, not for actual image processing.
+ */
 static int ov2680_q_exposure(struct v4l2_subdev *sd, s32 *value)
 {
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
@@ -1135,8 +1136,8 @@ static int ov2680_set_fmt(struct v4l2_subdev *sd,
 	v4l2_info(client, "\n%s idx %d \n", __func__, dev->fmt_idx);
 
 	/*ret = startup(sd);
-	   if (ret)
-	   dev_err(&client->dev, "ov2680 startup err\n");
+	 * if (ret)
+	 * dev_err(&client->dev, "ov2680 startup err\n");
 	 */
 err:
 	mutex_unlock(&dev->input_lock);
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index cfcf14b..4a7dd20 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -505,7 +505,8 @@ static long ov2722_ioctl(struct v4l2_subdev *sd, unsigned int cmd, void *arg)
 }
 
 /* This returns the exposure time being used. This should only be used
-   for filling in EXIF data, not for actual image processing. */
+ * for filling in EXIF data, not for actual image processing.
+ */
 static int ov2722_q_exposure(struct v4l2_subdev *sd, s32 *value)
 {
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
@@ -687,7 +688,8 @@ static int gpio_ctrl(struct v4l2_subdev *sd, bool flag)
 		return dev->platform_data->gpio_ctrl(sd, flag);
 
 	/* Note: the GPIO order is asymmetric: always RESET#
-	 * before PWDN# when turning it on or off. */
+	 * before PWDN# when turning it on or off.
+	 */
 	ret = dev->platform_data->gpio0_ctrl(sd, flag);
 	/*
 	 *ov2722 PWDN# active high when pull down,opposite to the convention
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
index 46b702e..6184019 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -39,7 +39,7 @@ static const int32_t div_lut_intercepts[BNLM_DIV_LUT_SIZE] = {
  *	lut_thr	:	array containing threshold values for lut
  *	lut_val	:	array containing output values related to lut_thr
  *	lut_size:	Size of lut_val array
- *	*/
+ */
 static inline void
 bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut_val, const uint32_t lut_size)
 {
@@ -56,7 +56,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 	 * Then these elements are copied into other groups inside the same
 	 * vector. If the LUT size is less than 16, then remaining elements are
 	 * set to 0.
-	 * */
+	 */
 	assert((lut_size >= 2) && (lut_size <= block_size));
 	/* array lut_thr has (lut_size-1) entries */
 	for (i = 0; i < lut_size-2; i++) {
@@ -90,7 +90,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 /*
  * - Encodes BNLM public parameters into VMEM parameters
  * - Generates VMEM parameters which will needed internally ISP
- * */
+ */
 void
 ia_css_bnlm_vmem_encode(
 			struct bnlm_vmem_params *to,
-- 
2.9.3



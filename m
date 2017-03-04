X-GM-THRID: 6393356170344529920
X-Received: by 10.99.53.12 with SMTP id c12mr3254000pga.11.1488647746252;
        Sat, 04 Mar 2017 09:15:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.3.1 with SMTP id e1ls1470125ite.16.gmail; Sat, 04 Mar 2017
 09:15:45 -0800 (PST)
X-Received: by 10.107.202.69 with SMTP id a66mr3256745iog.80.1488647745637;
        Sat, 04 Mar 2017 09:15:45 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h79si606057pfh.2.2017.03.04.09.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:15:45 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so15692555pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pe4YhPI9NWbOeLUm3ch4I9pAhiFbzFxDW7QEmM21df0=;
        b=SI4BC5qsaIScqC2LDazIhSlZD8QND+uc81zmUW8587U3WirmJfgaVPjH+WY1REDWe4
         2z48fNeK9r2JoADxNyDjsRlxDDcHLNADT9uC/UHkEuzGf8J7Yk6DFJafgJzj4hwpos39
         j9lXL6d0rD8pEBC6acCZB3IO4TY8dGJ/lFRwcx396f1Urk/P161VSILmPmjTkk6Cy+W4
         nzKUzUFQQ/yDAzjQzKTflFh696qGlJWV88j1PruNRjeUCf5vzHufKWwMyejRtFSmCb/p
         vp4krGxKuZJt+GH2zAxXWUywbGpGdukiLR2hGHZzVbu7E06hSVE/EA1W7eK1rLRlUX+S
         CWpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pe4YhPI9NWbOeLUm3ch4I9pAhiFbzFxDW7QEmM21df0=;
        b=lKb5lJG/DwJySqm9XYUD/09BAIM/lIdNyf+D0K2lK5qaPoK2YjovbriDU5AXCx1OVg
         VpuwJlzC3aRZvDyFCVMhnZUsMyzymhTsvaeEtozT0LXnVxseXI1YNgF3KOWCc2nOP6pu
         7Ss+uKkFB0nPoMQNgSeHr7qaAPGPdjlgZFxuOhiR6tvduAbaF0e1A1UcNXDUDh3lNfyH
         yTPsAoqjixHL+ue43jlJI2X57JbEJXLsH+rjms0DtbFT2BN9tgivRxfptCnXpPxbRvdW
         4u6WjJabaHt36z3lO9DH1bn1G1Yfhnc2eRih+jhhP9QxJsEZLuiQKtoewgAZ5Cl++P7n
         hxDg==
X-Gm-Message-State: AMke39kAcJz9oKIBtDjIPhBqouKAjOUA5NgmB3oWK9UcA5Uue9n+jBMPtSwxoBhco/9NYQ==
X-Received: by 10.84.131.33 with SMTP id 30mr13121184pld.45.1488647745211;
        Sat, 04 Mar 2017 09:15:45 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.75])
        by smtp.gmail.com with ESMTPSA id x16sm30235406pfk.79.2017.03.04.09.15.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:15:44 -0800 (PST)
Message-ID: <58baf640.90c6620a.83643.cd33@mx.google.com>
X-Google-Original-Message-ID: <20170304171535.GA5591@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:45:35 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 5/9] staging: media: atomisp: Fix block comments warning.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Used kernel preferred block commenting style, to fix the following
checkpatch issue:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

Changes in v3:
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



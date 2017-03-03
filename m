X-GM-THRID: 6393356170344529920
X-Received: by 10.200.45.138 with SMTP id p10mr1329356qta.17.1488569232662;
        Fri, 03 Mar 2017 11:27:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.3 with SMTP id a3ls7644572ota.23.gmail; Fri, 03 Mar
 2017 11:27:12 -0800 (PST)
X-Received: by 10.13.238.134 with SMTP id x128mr1832561ywe.59.1488569232336;
        Fri, 03 Mar 2017 11:27:12 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si217465pfa.6.2017.03.03.11.27.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:27:12 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so13493672pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6O4KRVHuWIlTqg/aAqmRAFhzQXFTronqFA9k3VjyRZA=;
        b=Bl+bGWJCxyWOln6CyxKgfshDToVi5ul2I9iLHjm8VzdOBh2gClAmQywFEaD2aNFAAn
         MHU1bvZpwUjbEouusmYCAXl9q3T4VKbv90AdkZMMBiYZXas4pOwbHbb4B3Q+nl0d/vfm
         PMbBgJ1T+nfMJNrZN6HbGFrz+jmFtVYSBDIKeRLvHWn9I7jyWwEpxb0jmmIcme21lOV7
         SXJYevDykxypBTxbTRg7Yn9O0xU//q7xVQK85k+UN7/2kmo/bOEpFmZFuuS9klo9yAQg
         v4VxdHIL82ha8RfpcXJQZaOJNLYqLZXIvIqt8AkHghZGNEDMMtUQ/T+h1TmIiZ9cnFr+
         jZrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6O4KRVHuWIlTqg/aAqmRAFhzQXFTronqFA9k3VjyRZA=;
        b=pQyxoFdOvvPfLpPcUIdTZp9+KO5GXterQMsr1bUlumGi/dticyBzRzUfNdYezndVVn
         N5yXwqQBCW4gqQ2+TyCE/G3HfdZji8OGqd2BWNB0LrIe/LtGkxj2UWEv7tF2xFojuy9R
         an2JyhgKCyatyKvClxzZSBdyfv0JHK4wzDsCaJ7qK06Gv/ZrL0KKOo30fGEL3cDIl37Z
         AmKR1S8K/3YZNk0ce2uhAfny7hcgFwkLjcfrUd0agVtGBRI/ixjC8RnHLhQd47nhThzD
         loIhn3Lwgi3rREo0qSOKr6x5TXeP5Cs6kVmCtK/k/X1+UmHMO8pUHB4eOrmVkuDi7CxF
         MZbA==
X-Gm-Message-State: AMke39ldKyjadMHyFET/UK8Rm8jQTFUWd1XOpe/7n65brpvvc5quONMpyHkChsLV5KY4OQ==
X-Received: by 10.84.224.74 with SMTP id a10mr6715394plt.28.1488569232008;
        Fri, 03 Mar 2017 11:27:12 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id x16sm24864061pfk.79.2017.03.03.11.27.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:27:11 -0800 (PST)
Message-ID: <58b9c38f.90c6620a.83643.277c@mx.google.com>
X-Google-Original-Message-ID: <20170303192708.GA19979@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 00:57:08 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/9] staging: media: atomisp: Fix block comments warning.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Used kernel preferred block commenting style, to fix the following
checkpatch issue:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
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



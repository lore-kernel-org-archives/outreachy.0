X-GM-THRID: 6476782191370043392
X-Received: by 10.159.41.36 with SMTP id t33mr7128391uat.103.1508246095299;
        Tue, 17 Oct 2017 06:14:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.188.207 with SMTP id m198ls285403vkf.21.gmail; Tue, 17 Oct
 2017 06:14:54 -0700 (PDT)
X-Received: by 10.31.0.134 with SMTP id 128mr396817vka.79.1508246094318;
        Tue, 17 Oct 2017 06:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508246094; cv=none;
        d=google.com; s=arc-20160816;
        b=hArsy4njPac+p8gJhxIbSiWgJ9TYhYPd49Jg9la2Mgs+71iAer50sZy2iFq7jN5THo
         hCaoPPrHN606iYCzV143RLeClavByw0PTO353Ck1oRJ49GiyGZQ0HPvbMmvhS3TkgAun
         px31KEBlHwvnHHbjtY+WRnVJq3l0UoLXoJsJBU6dGq5HLeURkytWNAtl/VM0uIHhu83R
         hXCqp7FaUZ+9coX0Cg0LcHxIDWnTAYpTaJ+6nfNDjf9TVo/3Nvfzh84Jk5ZAzehH3s/G
         LsX2dt5sTDB+OjTKKUCwKT77rrXCacT7s+UZ1Zdg194mVCZNbzS4VsFzw+zPxNYfo1tn
         LNsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=lIDI8On0QtXJ/qqB9ItHkNhIyBAH/A9OszdsvEJXfs0=;
        b=rxaj+cB8jPTxXkF3R91XGg2OtCXTrQCcusgekyXgJc9xauUX2/4jDQcdw6fKD1vLIK
         9hcJ6seaMOgiYfnkTDItxZY9ukaklkwuPbuFqXloM4Yqxa3JpgzLoxgjzT63Lv2BbgU7
         aLfisynuElfoJJVp14l1dzu5tczscg+7nyb9N8mi0qPbG8ZaBdlXfSNNIwsHw9Y7Cgl4
         qCTUT2KZxIEa/Tt3ZppUj1svtWIywpNh7+7bgq67rnAiW21P8sJx6O3cXHvXypdcXkgq
         9NlJuNqUoC4GUvGTmhjm6UO/s+57pQSHw9GtS5raV7U2s8d8oTQiEnjcP47lyRtnhOH+
         P4wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NWCISCOE;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id w196si286024vkd.2.2017.10.17.06.14.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 06:14:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NWCISCOE;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id i5so1325820pfe.6
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 06:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lIDI8On0QtXJ/qqB9ItHkNhIyBAH/A9OszdsvEJXfs0=;
        b=NWCISCOEpnM+ak6nJXr+fJjpTc+0VyhP8/Fcvyqcf+EaBRciJ/GQsz6tiXoClZh+fq
         03mqcuuoMwvw06lR970ea2CBcNCIKCKz4f/qFLnXsnPj+JczgZQR3Y/s5iVc+Ah3AdIJ
         gFJnbXxpS7YBuaQGk0ek+0RLdJtXMkYCPxpBHr27bc4a1frSFPgWvZGFc2uAnnlBJPM8
         r5BDeBNyTzNZ0GMFqASVbt8FwHI+cT2LZlGzwUHh9PU7Uc+lg6SHhoSkatvXH3QK1QI5
         DUtMIvKItUJJlSTTxF4buLdhkOGjfBF+PdLVbY3lUNIGcSdpBEFD9r2dNeQN0RLpZ+2J
         i1WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lIDI8On0QtXJ/qqB9ItHkNhIyBAH/A9OszdsvEJXfs0=;
        b=jfO0YgkkQ+/KL/VluPRrhUgqVhNS5YtVaRAJKNLAT45JVtSAZKb83mUlkKYETRFerE
         vzwmW44QZIVPAjoQeTe4pFejvoTBIV5khIXpNXaQ0JCFDcGj7376EPRv99hJK7SoLYDZ
         A3Rv27vg4ATrVv2x/lD1byVxyU/x6VYH4pvPPwGMyx2C+Yw+sY4UY9HZ3TqGMBAISPkp
         +pHVsjh42aTvYbqrCR2KBSDTNx9ulmO5gegsHX0AFNmxVzp3x0TY/bHueFfNT00+1UGe
         ofraTZeAMPC17ySL8zn9QP+Lj6GEJBDavpM8fkO3HhVf4Nz5gULoFnNaKI3HcZme1rxK
         L8Iw==
X-Gm-Message-State: AMCzsaVTIEHFLl9kICnqv5ug87V/bx278B9qbE5d37FuRq3z6/3ShzIk
	fLNvJZIsnsByCNU2KUh2emW0xg==
X-Google-Smtp-Source: AOwi7QBIjMFdw+CmV18QPg9fsNnNOL7H03RHWC9zV2xPItF/ZigDoviQmmN0PCQ1pvYTG+QGhf/rkw==
X-Received: by 10.98.24.20 with SMTP id 20mr11913011pfy.71.1508246093185;
        Tue, 17 Oct 2017 06:14:53 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id l189sm19267762pga.24.2017.10.17.06.14.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Oct 2017 06:14:52 -0700 (PDT)
Date: Tue, 17 Oct 2017 18:44:47 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Alan Cox <alan@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: atomisp: cleanup out of memory messages
Message-ID: <84b8f55c1aaeca8c570cf6ae260c86476fcb87c9.1508245883.git.aishpant@gmail.com>
References: <cover.1508245883.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1508245883.git.aishpant@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

Logging of explicit out of memory messages is redundant since memory allocation
failures produce a backtrace.

Done with the help of the following cocci script:

@@
expression ex, ret;
statement s;
constant char[] c;
constant err;
identifier f, l;
@@

ex =
\(kmalloc\|kmalloc_array\|kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\|devm_kzalloc\)(...)
... when != ex

if (
(
!ex
|
unlikely(!ex)
)
)
- {
- f(..., c, ...);
(
return ex;
|
return;
|
return err;
|
goto l;
)
- }
else s

Another case where if branch has multiple statements was handled with the
following condition:

{
...
- f(..., c, ...);
...
}

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
Changes in v3:
  Rebase changes over atomisp-next branch of the media tree

 drivers/staging/media/atomisp/i2c/atomisp-ap1302.c             |  4 +---
 drivers/staging/media/atomisp/i2c/atomisp-gc0310.c             |  4 +---
 drivers/staging/media/atomisp/i2c/atomisp-gc2235.c             |  4 +---
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c             |  4 +---
 drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c            |  4 +---
 drivers/staging/media/atomisp/i2c/atomisp-ov2680.c             |  4 +---
 drivers/staging/media/atomisp/i2c/atomisp-ov2722.c             |  4 +---
 drivers/staging/media/atomisp/i2c/imx/imx.c                    |  4 +---
 drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c      |  4 +---
 drivers/staging/media/atomisp/i2c/ov8858.c                     |  6 +-----
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c      |  4 +---
 drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c     |  9 ++-------
 .../media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c  |  4 +---
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c        | 10 ++--------
 .../staging/media/atomisp/pci/atomisp2/hmm/hmm_dynamic_pool.c  |  6 +-----
 .../staging/media/atomisp/pci/atomisp2/hmm/hmm_reserved_pool.c |  5 +----
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_vm.c        |  4 +---
 .../media/atomisp/platform/intel-mid/atomisp_gmin_platform.c   |  4 +---
 18 files changed, 20 insertions(+), 68 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ap1302.c b/drivers/staging/media/atomisp/i2c/atomisp-ap1302.c
index 2f772a020c8b..bfbf85122c3b 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ap1302.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ap1302.c
@@ -1153,10 +1153,8 @@ static int ap1302_probe(struct i2c_client *client,
 
 	/* allocate device & init sub device */
 	dev = devm_kzalloc(&client->dev, sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "%s: out of memory\n", __func__);
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
index 35ed51ffe944..291565451bfe 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc0310.c
@@ -1385,10 +1385,8 @@ static int gc0310_probe(struct i2c_client *client,
 
 	pr_info("%s S\n", __func__);
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
index e43d31ea9676..f51535eee091 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-gc2235.c
@@ -1123,10 +1123,8 @@ static int gc2235_probe(struct i2c_client *client,
 	unsigned int i;
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index 679176f7c542..37876d245a02 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -871,10 +871,8 @@ static int lm3554_probe(struct i2c_client *client,
 	int ret;
 
 	flash = kzalloc(sizeof(*flash), GFP_KERNEL);
-	if (!flash) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!flash)
 		return -ENOMEM;
-	}
 
 	flash->pdata = client->dev.platform_data;
 
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
index 3c837cb8859c..e204238ae06b 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-mt9m114.c
@@ -1863,10 +1863,8 @@ static int mt9m114_probe(struct i2c_client *client,
 
 	/* Setup sensor configuration structure */
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	v4l2_i2c_subdev_init(&dev->sd, client, &mt9m114_ops);
 	pdata = client->dev.platform_data;
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
index 51b7d61df0f5..c81e80e7bdea 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c
@@ -1447,10 +1447,8 @@ static int ov2680_probe(struct i2c_client *client,
 	unsigned int i;
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
index 10094ac56561..5f2e8a2798ef 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
@@ -1285,10 +1285,8 @@ static int ov2722_probe(struct i2c_client *client,
 	struct acpi_device *adev;
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/imx/imx.c b/drivers/staging/media/atomisp/i2c/imx/imx.c
index 71b688970822..885a26cc158e 100644
--- a/drivers/staging/media/atomisp/i2c/imx/imx.c
+++ b/drivers/staging/media/atomisp/i2c/imx/imx.c
@@ -2364,10 +2364,8 @@ static int imx_probe(struct i2c_client *client,
 
 	/* allocate sensor device & init sub device */
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		v4l2_err(client, "%s: out of memory\n", __func__);
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c b/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
index 219501167584..cfdb03fbb9e6 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
+++ b/drivers/staging/media/atomisp/i2c/ov5693/atomisp-ov5693.c
@@ -1958,10 +1958,8 @@ static int ov5693_probe(struct i2c_client *client,
 	}
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/ov8858.c b/drivers/staging/media/atomisp/i2c/ov8858.c
index 43e1638fd674..918139d3d3c0 100644
--- a/drivers/staging/media/atomisp/i2c/ov8858.c
+++ b/drivers/staging/media/atomisp/i2c/ov8858.c
@@ -480,8 +480,6 @@ static int ov8858_priv_int_data_init(struct v4l2_subdev *sd)
 	if (!dev->otp_data) {
 		dev->otp_data = devm_kzalloc(&client->dev, size, GFP_KERNEL);
 		if (!dev->otp_data) {
-			dev_err(&client->dev, "%s: can't allocate memory",
-				__func__);
 			r = -ENOMEM;
 			goto error3;
 		}
@@ -2094,10 +2092,8 @@ static int ov8858_probe(struct i2c_client *client,
 
 	/* allocate sensor device & init sub device */
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "%s: out of memory\n", __func__);
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c
index d8cfed358d55..d64c98944d49 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_fops.c
@@ -1137,10 +1137,8 @@ static int remove_pad_from_frame(struct atomisp_device *isp,
 	ia_css_ptr store = load;
 
 	buffer = kmalloc(width*sizeof(load), GFP_KERNEL);
-	if (!buffer) {
-		dev_err(isp->dev, "out of memory.\n");
+	if (!buffer)
 		return -ENOMEM;
-	}
 
 	load += ISP_LEFT_PAD;
 	for (i = 0; i < height; i++) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
index dd59167237c1..ccb78f0bc7a2 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
@@ -942,10 +942,8 @@ int atomisp_alloc_css_stat_bufs(struct atomisp_sub_device *asd,
 		dev_dbg(isp->dev, "allocating %d 3a buffers\n", count);
 		while (count--) {
 			s3a_buf = kzalloc(sizeof(struct atomisp_s3a_buf), GFP_KERNEL);
-			if (!s3a_buf) {
-				dev_err(isp->dev, "s3a stat buf alloc failed\n");
+			if (!s3a_buf)
 				goto error;
-			}
 
 			if (atomisp_css_allocate_stat_buffers(
 					asd, stream_id, s3a_buf, NULL, NULL)) {
@@ -964,7 +962,6 @@ int atomisp_alloc_css_stat_bufs(struct atomisp_sub_device *asd,
 		while (count--) {
 			dis_buf = kzalloc(sizeof(struct atomisp_dis_buf), GFP_KERNEL);
 			if (!dis_buf) {
-				dev_err(isp->dev, "dis stat buf alloc failed\n");
 				kfree(s3a_buf);
 				goto error;
 			}
@@ -989,10 +986,8 @@ int atomisp_alloc_css_stat_bufs(struct atomisp_sub_device *asd,
 			while (count--) {
 				md_buf = kzalloc(sizeof(struct atomisp_metadata_buf),
 						 GFP_KERNEL);
-				if (!md_buf) {
-					dev_err(isp->dev, "metadata buf alloc failed\n");
+				if (!md_buf)
 					goto error;
-				}
 
 				if (atomisp_css_allocate_stat_buffers(
 						asd, stream_id, NULL, NULL, md_buf)) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
index 48e2e63c2336..e6ebd1b08f0d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_param_shading.c
@@ -365,10 +365,8 @@ ia_css_shading_table_alloc(
 	IA_CSS_ENTER("");
 
 	me = kmalloc(sizeof(*me), GFP_KERNEL);
-	if (!me) {
-		IA_CSS_ERROR("out of memory");
+	if (!me)
 		return me;
-	}
 
 	me->width         = width;
 	me->height        = height;
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 8007b6f50179..12c96c4f284d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -727,10 +727,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * pgnr,
 				GFP_KERNEL);
-	if (unlikely(!bo->page_obj)) {
-		dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
+	if (unlikely(!bo->page_obj))
 		return -ENOMEM;
-	}
 
 	i = 0;
 	alloc_pgnr = 0;
@@ -991,15 +989,12 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	struct page **pages;
 
 	pages = kmalloc(sizeof(struct page *) * bo->pgnr, GFP_KERNEL);
-	if (unlikely(!pages)) {
-		dev_err(atomisp_dev, "out of memory for pages...\n");
+	if (unlikely(!pages))
 		return -ENOMEM;
-	}
 
 	bo->page_obj = kmalloc(sizeof(struct hmm_page_object) * bo->pgnr,
 		GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
-		dev_err(atomisp_dev, "out of memory for bo->page_obj...\n");
 		kfree(pages);
 		return -ENOMEM;
 	}
@@ -1362,7 +1357,6 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 	pages = kmalloc(sizeof(*pages) * bo->pgnr, GFP_KERNEL);
 	if (unlikely(!pages)) {
 		mutex_unlock(&bo->mutex);
-		dev_err(atomisp_dev, "out of memory for pages...\n");
 		return NULL;
 	}
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_dynamic_pool.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_dynamic_pool.c
index 19e0e9ee37de..eb82c3e4c776 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_dynamic_pool.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_dynamic_pool.c
@@ -116,8 +116,6 @@ static void free_pages_to_dynamic_pool(void *pool,
 	hmm_page = kmem_cache_zalloc(dypool_info->pgptr_cache,
 						GFP_KERNEL);
 	if (!hmm_page) {
-		dev_err(atomisp_dev, "out of memory for hmm_page.\n");
-
 		/* free page directly */
 		ret = set_pages_wb(page_obj->page, 1);
 		if (ret)
@@ -151,10 +149,8 @@ static int hmm_dynamic_pool_init(void **pool, unsigned int pool_size)
 
 	dypool_info = kmalloc(sizeof(struct hmm_dynamic_pool_info),
 		GFP_KERNEL);
-	if (unlikely(!dypool_info)) {
-		dev_err(atomisp_dev, "out of memory for repool_info.\n");
+	if (unlikely(!dypool_info))
 		return -ENOMEM;
-	}
 
 	dypool_info->pgptr_cache = kmem_cache_create("pgptr_cache",
 						sizeof(struct hmm_page), 0,
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_reserved_pool.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_reserved_pool.c
index bf6586805f7f..177bc354f1d7 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_reserved_pool.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_reserved_pool.c
@@ -92,15 +92,12 @@ static int hmm_reserved_pool_setup(struct hmm_reserved_pool_info **repool_info,
 
 	pool_info = kmalloc(sizeof(struct hmm_reserved_pool_info),
 				GFP_KERNEL);
-	if (unlikely(!pool_info)) {
-		dev_err(atomisp_dev, "out of memory for repool_info.\n");
+	if (unlikely(!pool_info))
 		return -ENOMEM;
-	}
 
 	pool_info->pages = kmalloc(sizeof(struct page *) * pool_size,
 			GFP_KERNEL);
 	if (unlikely(!pool_info->pages)) {
-		dev_err(atomisp_dev, "out of memory for repool_info->pages.\n");
 		kfree(pool_info);
 		return -ENOMEM;
 	}
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_vm.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_vm.c
index 0722a68a49e7..402ffd9cb480 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_vm.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_vm.c
@@ -89,10 +89,8 @@ static struct hmm_vm_node *alloc_hmm_vm_node(unsigned int pgnr,
 	struct hmm_vm_node *node;
 
 	node = kmem_cache_alloc(vm->cache, GFP_KERNEL);
-	if (!node) {
-		dev_err(atomisp_dev, "out of memory.\n");
+	if (!node)
 		return NULL;
-	}
 
 	INIT_LIST_HEAD(&node->list);
 	node->pgnr = pgnr;
diff --git a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
index 8a20a28d37f1..8c6a26eea095 100644
--- a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
@@ -785,10 +785,8 @@ int camera_sensor_csi(struct v4l2_subdev *sd, u32 port,
 
 	if (flag) {
 		csi = kzalloc(sizeof(*csi), GFP_KERNEL);
-		if (!csi) {
-			dev_err(&client->dev, "out of memory\n");
+		if (!csi)
 			return -ENOMEM;
-		}
 		csi->port = port;
 		csi->num_lanes = lanes;
 		csi->input_format = format;
-- 
2.11.0



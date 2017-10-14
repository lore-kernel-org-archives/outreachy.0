X-GM-THRID: 6476782191370043392
X-Received: by 10.55.19.209 with SMTP id 78mr3645860qkt.55.1507993464498;
        Sat, 14 Oct 2017 08:04:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.34.181 with SMTP id f50ls4431327qta.6.gmail; Sat, 14 Oct
 2017 08:04:23 -0700 (PDT)
X-Received: by 10.237.48.66 with SMTP id 60mr3562957qte.45.1507993463928;
        Sat, 14 Oct 2017 08:04:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507993463; cv=none;
        d=google.com; s=arc-20160816;
        b=OtfIcM3ry67A2rQDmOADcPLSmzLwDQqJc/ugjzl5+qS6OT/RXXjtsjqLJCShNvrUaN
         ZDZq9QOes9mYTCWB+go8kZthQ5UdxGYxSiRxj7Cmnx8bKHCjIrj/LTs3MZjlVRJQbYpM
         F8Dhg/K1kdAY/0P8/o9N6q7thFfMNg+IHqqYVr9FhWP8haEt+0nfjyoAAa2S3xaWRg8M
         DtAVmAtd2C8/cSMz5umR0nCAOTxJmemxA6/F3iuoEj7yF3ljZB70EiFQhrpprH7LQhtZ
         tJ3+SsN2I6Q1odp6n+THYktUUNgxAQmTaW0jhQAZU42HvRiphFrAijHZkIe/j9k2wRqY
         LQuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=WHNX36l9fpcK8mXg30TDwwDOg3FLqVb8SvD3AG3J9vM=;
        b=aGbs2Df+ivAqMIcuEkHhoxAc3xKLR/70L/QsVW920akte6AOZk4f16Q/cZNqTAdlTa
         Pa6p1YBO9/kpzvOsRGln91At0ekqum1sFGbsAoS4DEG9Zi0ZCN03Dif/PFTrTylFyzIo
         7lzq00ORCYbjAMR+d6y38o+D9i8Pdew2s0INOA8nxkVId/EEtXbo7NkWL/caiVfHtTvF
         l1S3ZdnI3eXNezuHLCqzqLds2GQK1Ey7vq0R5boncT0dsXx2MQjkOeneGdOlhfuQ4rBG
         9qrgkoLgRu4JhAx5z2V8O3sTlgLw/aotsRPBkJ6NW4xi5zlV5LnyR5DM7WGVhlZUMqkC
         JeeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sw1L2G2G;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id i8si204896qta.1.2017.10.14.08.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 08:04:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sw1L2G2G;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id n89so4935298pfk.11
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 08:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=WHNX36l9fpcK8mXg30TDwwDOg3FLqVb8SvD3AG3J9vM=;
        b=sw1L2G2GMkQv8tm3As1fORLf5YzWSlFZX239CCAgfdaYCxP5JugxA9zbqBRpcg+6Mm
         NeBWzKBeuGvq8mbn7BY2fzIShXPetUxuILWT7r4UN6gj1tYGPDmwqxRmIWyVyv9AGVLa
         SCa1VKiPzkef1OBe7g6d1wf4YdayP5doyX8GruP8vjfptWLqq8XDs2/FCCEazSssmcT5
         t38FShJFyHyGUMo/z50d5BIkNirpRz24HMuQeumA153rSKZafymF675f5tH5fWV51Nmw
         8DS/m/ShJ9IegKgkYnFWg3pK+n+9f1eqj3vDCEUyB+kUT5nDF2XESCTttdM0xT0URSSZ
         f9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=WHNX36l9fpcK8mXg30TDwwDOg3FLqVb8SvD3AG3J9vM=;
        b=Krsk0dmjQtiA9mfE8mokQQJAKURcT88bJGag7m7ryYZ64N5i+lWwWXgi62eNTZjO7A
         UGNeZER9hBxJ8ZOTwpZz2PBGTtSp0YlMB9W72KeEiOkTpIt/QTNrKo4M4O4ByW0uTvIQ
         j0ObDR817LHcIqjDp53bmUz3p3NqalSTyWHeYvOREbprLJB31iWT7hCK5XGQLSuACdHv
         363ABixZ+DMUMNm6ylBdVXGWQTZM+CaE+Wcx3sjCxVpUscC6XAdj8SAiSG89HOiAUYlq
         mrNbr48CNvApjvVDWiRafeW/n6OpuOsoL7IuSgerd10PgTG3NPpyMq3BJjXNCwv3hDAV
         YbJQ==
X-Gm-Message-State: AMCzsaXQzM7X2jPDgu06pj1nbs1Z+GNQHezuRrzEXa/FUYD3m6HreqiG
	8yGazz1P3y8s6u1hxDKq1K8=
X-Google-Smtp-Source: AOwi7QBk7SjkRjSuzgc2k3hiWOPOGmsR/xpVVkDrGMUD/zGXS9woqG6M+/52ge0Sfv0Co47VJgA7qw==
X-Received: by 10.159.204.132 with SMTP id t4mr4270279plo.344.1507993463374;
        Sat, 14 Oct 2017 08:04:23 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.102.186])
        by smtp.gmail.com with ESMTPSA id w27sm7890303pfi.18.2017.10.14.08.04.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Oct 2017 08:04:22 -0700 (PDT)
Date: Sat, 14 Oct 2017 19:25:40 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: atomisp: cleanup out of memory messages
Message-ID: <8ec1344bd00674449202099775f8835896a77695.1507989088.git.aishpant@gmail.com>
References: <cover.1507989087.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1507989087.git.aishpant@gmail.com>
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
v2 changes:
None, just rebase and re-send

drivers/staging/media/atomisp/i2c/ap1302.c                     |  4 +---
 drivers/staging/media/atomisp/i2c/gc0310.c                     |  4 +---
 drivers/staging/media/atomisp/i2c/gc2235.c                     |  4 +---
 drivers/staging/media/atomisp/i2c/imx/imx.c                    |  4 +---
 drivers/staging/media/atomisp/i2c/lm3554.c                     |  4 +---
 drivers/staging/media/atomisp/i2c/mt9m114.c                    |  4 +---
 drivers/staging/media/atomisp/i2c/ov2680.c                     |  4 +---
 drivers/staging/media/atomisp/i2c/ov2722.c                     |  4 +---
 drivers/staging/media/atomisp/i2c/ov5693/ov5693.c              |  4 +---
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

diff --git a/drivers/staging/media/atomisp/i2c/ap1302.c b/drivers/staging/media/atomisp/i2c/ap1302.c
index 2f772a020c8b..bfbf85122c3b 100644
--- a/drivers/staging/media/atomisp/i2c/ap1302.c
+++ b/drivers/staging/media/atomisp/i2c/ap1302.c
@@ -1153,10 +1153,8 @@ static int ap1302_probe(struct i2c_client *client,
 
 	/* allocate device & init sub device */
 	dev = devm_kzalloc(&client->dev, sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "%s: out of memory\n", __func__);
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/gc0310.c b/drivers/staging/media/atomisp/i2c/gc0310.c
index 35ed51ffe944..291565451bfe 100644
--- a/drivers/staging/media/atomisp/i2c/gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/gc0310.c
@@ -1385,10 +1385,8 @@ static int gc0310_probe(struct i2c_client *client,
 
 	pr_info("%s S\n", __func__);
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index e43d31ea9676..f51535eee091 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -1123,10 +1123,8 @@ static int gc2235_probe(struct i2c_client *client,
 	unsigned int i;
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/imx/imx.c b/drivers/staging/media/atomisp/i2c/imx/imx.c
index 49ab0af87096..957fb1863b40 100644
--- a/drivers/staging/media/atomisp/i2c/imx/imx.c
+++ b/drivers/staging/media/atomisp/i2c/imx/imx.c
@@ -2365,10 +2365,8 @@ static int imx_probe(struct i2c_client *client,
 
 	/* allocate sensor device & init sub device */
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		v4l2_err(client, "%s: out of memory\n", __func__);
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/lm3554.c b/drivers/staging/media/atomisp/i2c/lm3554.c
index 679176f7c542..37876d245a02 100644
--- a/drivers/staging/media/atomisp/i2c/lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/lm3554.c
@@ -871,10 +871,8 @@ static int lm3554_probe(struct i2c_client *client,
 	int ret;
 
 	flash = kzalloc(sizeof(*flash), GFP_KERNEL);
-	if (!flash) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!flash)
 		return -ENOMEM;
-	}
 
 	flash->pdata = client->dev.platform_data;
 
diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
index 3c837cb8859c..e204238ae06b 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
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
diff --git a/drivers/staging/media/atomisp/i2c/ov2680.c b/drivers/staging/media/atomisp/i2c/ov2680.c
index 51b7d61df0f5..c81e80e7bdea 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/ov2680.c
@@ -1447,10 +1447,8 @@ static int ov2680_probe(struct i2c_client *client,
 	unsigned int i;
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index 10094ac56561..5f2e8a2798ef 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -1285,10 +1285,8 @@ static int ov2722_probe(struct i2c_client *client,
 	struct acpi_device *adev;
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-	if (!dev) {
-		dev_err(&client->dev, "out of memory\n");
+	if (!dev)
 		return -ENOMEM;
-	}
 
 	mutex_init(&dev->input_lock);
 
diff --git a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
index 123642557aa8..3560f3cd25e8 100644
--- a/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
+++ b/drivers/staging/media/atomisp/i2c/ov5693/ov5693.c
@@ -1965,10 +1965,8 @@ static int ov5693_probe(struct i2c_client *client,
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
index 717647951fb6..889cc73be800 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_ioctl.c
@@ -943,10 +943,8 @@ int atomisp_alloc_css_stat_bufs(struct atomisp_sub_device *asd,
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
@@ -965,7 +963,6 @@ int atomisp_alloc_css_stat_bufs(struct atomisp_sub_device *asd,
 		while (count--) {
 			dis_buf = kzalloc(sizeof(struct atomisp_dis_buf), GFP_KERNEL);
 			if (!dis_buf) {
-				dev_err(isp->dev, "dis stat buf alloc failed\n");
 				kfree(s3a_buf);
 				goto error;
 			}
@@ -990,10 +987,8 @@ int atomisp_alloc_css_stat_bufs(struct atomisp_sub_device *asd,
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
index 5232327f5d9c..ca90b22020cc 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -727,10 +727,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
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
 
 	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
-	if (unlikely(!pages)) {
-		dev_err(atomisp_dev, "out of memory for pages...\n");
+	if (unlikely(!pages))
 		return -ENOMEM;
-	}
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
 		GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
-		dev_err(atomisp_dev, "out of memory for bo->page_obj...\n");
 		kfree(pages);
 		return -ENOMEM;
 	}
@@ -1366,7 +1361,6 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 	pages = kmalloc_array(bo->pgnr, sizeof(*pages), GFP_KERNEL);
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
index edaae93af8f9..0304801fcbe5 100644
--- a/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/platform/intel-mid/atomisp_gmin_platform.c
@@ -739,10 +739,8 @@ int camera_sensor_csi(struct v4l2_subdev *sd, u32 port,
 
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



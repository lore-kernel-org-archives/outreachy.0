X-GM-THRID: 6611174722012971008
X-Received: by 2002:a19:1709:: with SMTP id n9-v6mr94232lfi.35.1539284065192;
        Thu, 11 Oct 2018 11:54:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:3804:: with SMTP id f4-v6ls84092lfa.7.gmail; Thu, 11 Oct
 2018 11:54:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63aZkXx8gDLZzL0U/JCwOrJuVSwIYxEufcayLuqXHY8FW1UG7T8fLtRG3cYmW9yPEdJ9abW
X-Received: by 2002:a19:12d4:: with SMTP id 81-v6mr97149lfs.34.1539284064099;
        Thu, 11 Oct 2018 11:54:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539284064; cv=none;
        d=google.com; s=arc-20160816;
        b=cPezsVa3JZIBdeGz4cq2WHVU7YSoDF8DyeUhuHx2p+bPj9E31ckg+4GgFBAAKkyegC
         f7dPxHlqWdt3b+v4Kq5LQJaBoJa4fWi/SlzmVNXm+EPnBa8CjsAnZ0d/sRnDwFx1zxWj
         KrxmdJXEbnFLvvgJ7bpVN+7Xaph59N1ghOBD2e47KjcQH97xYixOSMogrmaUvSiLFIoo
         8XjPjrU6pGbpao5vWL7BxR5PrT5TJQ6ljgXgALwyYdNuDFGde5m+8NiqYIOn5AigVCLu
         THFxKjhejnXB3iGYMZQbRJE7GbMFqAtWacgJL58BnPQueAxiZhcOORALotwTBlhCqdFF
         tAdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=X3+bPGqL4pooPKJWq9cEkKwHKOqddW72GluYYB4xsa4=;
        b=TJn9THcO3Vixc9S905ipudxOrS101Zh9IhfHCw8BppMhrjUQe2I4FTmoipVcOcQf7h
         cviJt+zlPWXC1eGcIZLm5hI75EHQPESHbuOEX5CprNfqCzZdImRW4vpa+D8VC24U9tIz
         tto6fbYWph/Mh5BReSaw0+r8ahMA5C71MVfAqfcZWyIvgZRoS72xWalTxpL1fbIvPPLq
         w0dLLsndjY44qD6blo6/l2hiq2Ipn3sPYxFFkFxTtM3NN8Qk+FU0LYGX/2mx7J+2bX9L
         tE3P7EnUtoSH0qMiKkt5grZIlRp8M446srzKoizMeVG6hQuAMPzDeqaWkwHH8Y/4Fwob
         UP/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UtET7kIj;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id h20-v6si384035ljj.5.2018.10.11.11.54.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 11:54:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UtET7kIj;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id y20-v6so9233878eds.10
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Oct 2018 11:54:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=X3+bPGqL4pooPKJWq9cEkKwHKOqddW72GluYYB4xsa4=;
        b=UtET7kIjkbGdX5k0yGMwwUv7sfoCRTHdpAnQv3bFPtH6l3oAxTbYRMCYxONj5h/6CS
         3TAoFrf6Gp+fM8mIxmXcqrGWEhIdyjdmCZXgSm/8UbO2Xvy2Jq5/rMfXTQ0X/NIIe1+f
         BqQoo9qUGPSca/P8GVN+2eS0a74U5756nHG+m244J6dx75kX/LUrEll12QU4fAImCJZB
         Tu75IVW/ELEFVPPxdItW4T2toAnoB0fMdvAeWs66F96ESm6WgMb7l6x66TwyYGgz9hAB
         51ZFgqMb7I5yxBZjJTR+bj13Y5sAFiDUp7qzQKNw+SnFNKYeFhx2ANT+QhAkCgANz4gi
         SMbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=X3+bPGqL4pooPKJWq9cEkKwHKOqddW72GluYYB4xsa4=;
        b=q0GPPbfshlUoPeyCnp10bIqbCLF+6ac/o50OtTe8ryO32LwyQ3PSspjBo7lqPZTxik
         OwLjKoFfvC27twwXSGpdVYtRH15Vn0AY9HIbhwrAopwWhrAZX5Xu3imyALLWED4K6dJw
         AOaLX4kEee99/dqrjEQxghhRv3nc5D4DnNY9fHiVQKL/3gGb82E+jMMBhngk/nlO+a98
         28g4KMTq1cDUvYVKAFURbCQjyzXZveDlC2XrzSAddBZp1fHdtWBsAOGs0XiAFFq/kFu4
         mtcG4cyO4UlLf8SI3bshyBoeL5N4U30mCuqhN3lj3PM8rMXkXWHQtgLsGLb1D+ZpQF+9
         v7sA==
X-Gm-Message-State: ABuFfogo7DXLVOGXDrtLBz5+HcVjyKAf2Ww+KuNuM/Q3FyXu4hgqa/lp
	bXWQhUqMxz+9bvYFks2Y5yw=
X-Received: by 2002:a17:906:32d9:: with SMTP id k25-v6mr3734555ejk.211.1539284063541;
        Thu, 11 Oct 2018 11:54:23 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from localhost.localdomain ([77.139.209.224])
        by smtp.gmail.com with ESMTPSA id w56-v6sm9948350edd.78.2018.10.11.11.54.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 11:54:22 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	helen.koike@collabora.com,
	hverkuil@xs4all.nl
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com,
	linux-media@vger.kernel.org
Subject: [PATCH vicodec] media: davinci_vpfe: Replace function names with __func__
Date: Thu, 11 Oct 2018 21:54:10 +0300
Message-Id: <20181011185410.26268-1-dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace hardcoded function names with `__func__`
in debug prints.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 .../staging/media/davinci_vpfe/dm365_ipipe.c  |  6 +-
 .../media/davinci_vpfe/dm365_resizer.c        |  2 +-
 .../media/davinci_vpfe/vpfe_mc_capture.c      |  8 +--
 .../staging/media/davinci_vpfe/vpfe_video.c   | 56 +++++++++----------
 4 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 95942768..4d09e814 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -695,21 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	if (!gamma->bypass_r) {
 		dev_err(dev,
-			"ipipe_get_gamma_params: table ptr empty for R\n");
+			"%s: table ptr empty for R\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_r, gamma->table_r,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_g) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
+		dev_err(dev, "%s: table ptr empty for G\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_g, gamma->table_g,
 	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
 
 	if (!gamma->bypass_b) {
-		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
+		dev_err(dev, "%s: table ptr empty for B\n", __func__);
 		return -EINVAL;
 	}
 	memcpy(gamma_param->table_b, gamma->table_b,
diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 2b797474..cdf7ea4f 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -946,7 +946,7 @@ resizer_get_configuration(struct vpfe_resizer_device *resizer,
 	if (copy_to_user((void __user *)chan_config->config,
 			 (void *)&resizer->config.user_config,
 			 sizeof(struct vpfe_rsz_config_params))) {
-		dev_err(dev, "resizer_get_configuration: Error in copy to user\n");
+		dev_err(dev, "%s: Error in copy to user\n", __func__);
 		return -EFAULT;
 	}
 
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index e55c815b..8cb587d0 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -161,7 +161,7 @@ static irqreturn_t vpfe_isr(int irq, void *dev_id)
 {
 	struct vpfe_device *vpfe_dev = dev_id;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_isr\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	vpfe_isif_buffer_isr(&vpfe_dev->vpfe_isif);
 	vpfe_resizer_buffer_isr(&vpfe_dev->vpfe_resizer);
 	return IRQ_HANDLED;
@@ -172,7 +172,7 @@ static irqreturn_t vpfe_vdint1_isr(int irq, void *dev_id)
 {
 	struct vpfe_device *vpfe_dev = dev_id;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_vdint1_isr\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	vpfe_isif_vidint1_isr(&vpfe_dev->vpfe_isif);
 	return IRQ_HANDLED;
 }
@@ -182,7 +182,7 @@ static irqreturn_t vpfe_imp_dma_isr(int irq, void *dev_id)
 {
 	struct vpfe_device *vpfe_dev = dev_id;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_imp_dma_isr\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	vpfe_ipipeif_ss_buffer_isr(&vpfe_dev->vpfe_ipipeif);
 	vpfe_resizer_dma_isr(&vpfe_dev->vpfe_resizer);
 	return IRQ_HANDLED;
@@ -693,7 +693,7 @@ static int vpfe_remove(struct platform_device *pdev)
 {
 	struct vpfe_device *vpfe_dev = platform_get_drvdata(pdev);
 
-	v4l2_info(pdev->dev.driver, "vpfe_remove\n");
+	v4l2_info(pdev->dev.driver, "%s\n", __func__);
 
 	kzfree(vpfe_dev->sd);
 	vpfe_detach_irq(vpfe_dev);
diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 1269a983..b9bb6dac 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -521,7 +521,7 @@ static int vpfe_release(struct file *file)
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	struct vpfe_fh *fh = container_of(vfh, struct vpfe_fh, vfh);
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_release\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	/* Get the device lock */
 	mutex_lock(&video->lock);
@@ -566,7 +566,7 @@ static int vpfe_mmap(struct file *file, struct vm_area_struct *vma)
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_mmap\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	return vb2_mmap(&video->buffer_queue, vma);
 }
 
@@ -578,7 +578,7 @@ static __poll_t vpfe_poll(struct file *file, poll_table *wait)
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_poll\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	if (video->started)
 		return vb2_poll(&video->buffer_queue, file, wait);
 	return 0;
@@ -610,7 +610,7 @@ static int vpfe_querycap(struct file *file, void  *priv,
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querycap\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
 		cap->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;
@@ -641,7 +641,7 @@ static int vpfe_g_fmt(struct file *file, void *priv,
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_fmt\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	/* Fill in the information about format */
 	*fmt = video->fmt;
 	return 0;
@@ -670,7 +670,7 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
 	struct media_pad *remote;
 	int ret;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_fmt\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	/*
 	 * since already subdev pad format is set,
@@ -730,7 +730,7 @@ static int vpfe_s_fmt(struct file *file, void *priv,
 	struct v4l2_format format;
 	int ret;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_fmt\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	/* If streaming is started, return error */
 	if (video->started) {
 		v4l2_err(&vpfe_dev->v4l2_dev, "Streaming is started\n");
@@ -764,7 +764,7 @@ static int vpfe_try_fmt(struct file *file, void *priv,
 	struct v4l2_format format;
 	int ret;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_try_fmt\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	/* get adjacent subdev's output pad format */
 	ret = __vpfe_video_get_format(video, &format);
 	if (ret)
@@ -792,7 +792,7 @@ static int vpfe_enum_input(struct file *file, void *priv,
 	struct vpfe_ext_subdev_info *sdinfo = video->current_ext_subdev;
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_input\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	/* enumerate from the subdev user has chosen through mc */
 	if (inp->index < sdinfo->num_inputs) {
 		memcpy(inp, &sdinfo->inputs[inp->index],
@@ -815,7 +815,7 @@ static int vpfe_g_input(struct file *file, void *priv, unsigned int *index)
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_input\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	*index = video->current_input;
 	return 0;
@@ -843,7 +843,7 @@ static int vpfe_s_input(struct file *file, void *priv, unsigned int index)
 	int ret;
 	int i;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_input\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	ret = mutex_lock_interruptible(&video->lock);
 	if (ret)
@@ -880,7 +880,7 @@ static int vpfe_s_input(struct file *file, void *priv, unsigned int index)
 						 s_routing, input, output, 0);
 		if (ret) {
 			v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev,
-				"s_input:error in setting input in decoder\n");
+				"%s: error in setting input in decoder\n", __func__);
 			ret = -EINVAL;
 			goto unlock_out;
 		}
@@ -914,7 +914,7 @@ static int vpfe_querystd(struct file *file, void *priv, v4l2_std_id *std_id)
 	struct vpfe_ext_subdev_info *sdinfo;
 	int ret;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querystd\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	ret = mutex_lock_interruptible(&video->lock);
 	sdinfo = video->current_ext_subdev;
@@ -945,7 +945,7 @@ static int vpfe_s_std(struct file *file, void *priv, v4l2_std_id std_id)
 	struct vpfe_ext_subdev_info *sdinfo;
 	int ret;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_std\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	/* Call decoder driver function to set the standard */
 	ret = mutex_lock_interruptible(&video->lock);
@@ -976,7 +976,7 @@ static int vpfe_g_std(struct file *file, void *priv, v4l2_std_id *tvnorm)
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_std\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	*tvnorm = video->stdid;
 	return 0;
 }
@@ -1003,7 +1003,7 @@ vpfe_enum_dv_timings(struct file *file, void *fh,
 
 	timings->pad = 0;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_enum_dv_timings\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	return v4l2_subdev_call(subdev, pad, enum_dv_timings, timings);
 }
 
@@ -1027,7 +1027,7 @@ vpfe_query_dv_timings(struct file *file, void *fh,
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	struct v4l2_subdev *subdev = video->current_ext_subdev->subdev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_query_dv_timings\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	return v4l2_subdev_call(subdev, video, query_dv_timings, timings);
 }
 
@@ -1049,7 +1049,7 @@ vpfe_s_dv_timings(struct file *file, void *fh,
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_s_dv_timings\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	video->stdid = V4L2_STD_UNKNOWN;
 	return v4l2_device_call_until_err(&vpfe_dev->v4l2_dev,
@@ -1076,7 +1076,7 @@ vpfe_g_dv_timings(struct file *file, void *fh,
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	struct v4l2_subdev *subdev = video->current_ext_subdev->subdev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_g_dv_timings\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	return v4l2_subdev_call(subdev, video, g_dv_timings, timings);
 }
 
@@ -1105,7 +1105,7 @@ vpfe_buffer_queue_setup(struct vb2_queue *vq,
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	unsigned long size;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_buffer_queue_setup\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	size = video->fmt.fmt.pix.sizeimage;
 
 	if (vq->num_buffers + *nbuffers < 3)
@@ -1133,7 +1133,7 @@ static int vpfe_buffer_prepare(struct vb2_buffer *vb)
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	unsigned long addr;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_buffer_prepare\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (vb->state != VB2_BUF_STATE_ACTIVE &&
 	    vb->state != VB2_BUF_STATE_PREPARED)
@@ -1299,7 +1299,7 @@ static void vpfe_buf_cleanup(struct vb2_buffer *vb)
 	struct vpfe_cap_buffer *buf = container_of(vbuf,
 					struct vpfe_cap_buffer, vb);
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_buf_cleanup\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 	if (vb->state == VB2_BUF_STATE_ACTIVE)
 		list_del_init(&buf->list);
 }
@@ -1329,7 +1329,7 @@ static int vpfe_reqbufs(struct file *file, void *priv,
 	struct vb2_queue *q;
 	int ret;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_reqbufs\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (req_buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
 	    req_buf->type != V4L2_BUF_TYPE_VIDEO_OUTPUT){
@@ -1386,7 +1386,7 @@ static int vpfe_querybuf(struct file *file, void *priv,
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querybuf\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
 	    buf->type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
@@ -1413,7 +1413,7 @@ static int vpfe_qbuf(struct file *file, void *priv,
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 	struct vpfe_fh *fh = file->private_data;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_qbuf\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (p->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
 	    p->type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
@@ -1441,7 +1441,7 @@ static int vpfe_dqbuf(struct file *file, void *priv,
 	struct vpfe_video_device *video = video_drvdata(file);
 	struct vpfe_device *vpfe_dev = video->vpfe_dev;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_dqbuf\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (buf->type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
 	    buf->type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
@@ -1473,7 +1473,7 @@ static int vpfe_streamon(struct file *file, void *priv,
 	struct vpfe_fh *fh = file->private_data;
 	int ret = -EINVAL;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_streamon\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (buf_type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
 	    buf_type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
@@ -1518,7 +1518,7 @@ static int vpfe_streamoff(struct file *file, void *priv,
 	struct vpfe_fh *fh = file->private_data;
 	int ret = 0;
 
-	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_streamoff\n");
+	v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "%s\n", __func__);
 
 	if (buf_type != V4L2_BUF_TYPE_VIDEO_CAPTURE &&
 	    buf_type != V4L2_BUF_TYPE_VIDEO_OUTPUT) {
-- 
2.17.1



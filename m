X-GM-THRID: 6330964939301191680
X-Received: by 10.200.36.206 with SMTP id t14mr291338qtt.88.1474042641069;
        Fri, 16 Sep 2016 09:17:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.88 with SMTP id r85ls1359955itc.0.canary; Fri, 16 Sep
 2016 09:17:17 -0700 (PDT)
X-Received: by 10.107.137.42 with SMTP id l42mr309723iod.80.1474042637884;
        Fri, 16 Sep 2016 09:17:17 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si2838425pab.2.2016.09.16.09.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 09:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so3634869pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 09:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AkPNBtSyVMj//MhwiNvVC+H58rhVOmSeiEOyD6tVVU4=;
        b=pGlq6Ibuncj5nh2tyvugg/v9pJCLep+MInVU6sYpWzHD00dusMa8L9rYVxccgY/5BV
         WLsLIV7CmTTw5cC2eu2Xzt2SpfKvYeLqXfQ7YrRpmEwa4Yv8Wxyr/PINWFHQfierJxW3
         Anz8yFhJ7PWrN5ap+np8THr8IVp1u2umtf2hjMEhCooK7FZSTnGDge+yj+7ASxKgS/eu
         FKPNbrYJKjaLBpuULe5KqVp9FbA+ozdyJpAXqW+0kj0uMBLycbqlD6D4lEiMq3EOOYbL
         spq8fh1J0n0m2gUs+LjSH3RfB9s4cJnt9jlXejhUsx5bAAf57WI0kmqESoEBTtk8wcQ3
         SVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AkPNBtSyVMj//MhwiNvVC+H58rhVOmSeiEOyD6tVVU4=;
        b=ZbglO+fpnxEt3OJQ8y532+GzE28YHEtaWAro3s45KYLm+RuoEzxFsFy5TU9KrTSqKX
         PHIFiOM/sknGPc9SS78EEAAM1U22czw/IYSo1vMWvmrJjx1Mdoe+nSVciERiNw2a3IkF
         v6CNtmaJ/DhU9kIReHWVO0WJ9OAp1oeoMgabrXQtsxtvibeykBLsRLfTAWaht3gusB+v
         pojABqDhZtpQIiwSmIy021GnAQeyyUl208Gg4KD+r3Z3TbdgOGNxTFOKAx7Dr3Y5ASF1
         aeZc9B+sA2CnLv2uOrtiPWYtqleevfShyuEn6MPl+nOrFUFJgRDmkMUwDbwZxEDs+HWC
         byWw==
X-Gm-Message-State: AE9vXwOlzFgVVU9jlrmnXm5ho+ub/hpg3WonmeWr91Nw4iVwlJ4VaOIKGzjgLvu14A2e/g==
X-Received: by 10.66.148.167 with SMTP id tt7mr24289904pab.21.1474042637501;
        Fri, 16 Sep 2016 09:17:17 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id u1sm53376050pfu.12.2016.09.16.09.17.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 09:17:16 -0700 (PDT)
Date: Fri, 16 Sep 2016 21:47:02 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: media: davinci_vpfe: Replace explicit NULL
 comparison with ! operator
Message-ID: <20160916161701.GA25197@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces the explicit NULL comparisons with ! operator.
It was found using Coccinelle:

@@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/media/davinci_vpfe/vpfe_video.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 3319fb8..7483de0 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_video.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_video.c
@@ -37,7 +37,7 @@ static struct media_entity *vpfe_get_input_entity
 	struct media_pad *remote;
 
 	remote = media_entity_remote_pad(&vpfe_dev->vpfe_isif.pads[0]);
-	if (remote == NULL) {
+	if (!remote) {
 		pr_err("Invalid media connection to isif/ccdc\n");
 		return NULL;
 	}
@@ -54,7 +54,7 @@ static int vpfe_update_current_ext_subdev(struct vpfe_video_device *video)
 	int i;
 
 	remote = media_entity_remote_pad(&vpfe_dev->vpfe_isif.pads[0]);
-	if (remote == NULL) {
+	if (!remote) {
 		pr_err("Invalid media connection to isif/ccdc\n");
 		return -EINVAL;
 	}
@@ -75,8 +75,7 @@ static int vpfe_update_current_ext_subdev(struct vpfe_video_device *video)
 	}
 	/* find the v4l2 subdev pointer */
 	for (i = 0; i < vpfe_dev->num_ext_subdevs; i++) {
-		if (!strcmp(video->current_ext_subdev->module_name,
-			vpfe_dev->sd[i]->name))
+		if (!strcmp(video->current_ext_subdev->module_name, vpfe_dev->sd[i]->name))
 			video->current_ext_subdev->subdev = vpfe_dev->sd[i];
 	}
 	return 0;
@@ -107,7 +106,7 @@ __vpfe_video_get_format(struct vpfe_video_device *video,
 	int ret;
 
 	subdev = vpfe_video_remote_subdev(video, &pad);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EINVAL;
 
 	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
@@ -236,7 +235,7 @@ static int vpfe_video_validate_pipeline(struct vpfe_pipeline *pipe)
 	 * format of the connected pad.
 	 */
 	subdev = vpfe_video_remote_subdev(pipe->outputs[0], NULL);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EPIPE;
 
 	while (1) {
@@ -413,7 +412,7 @@ static int vpfe_open(struct file *file)
 	/* Allocate memory for the file handle object */
 	handle = kzalloc(sizeof(struct vpfe_fh), GFP_KERNEL);
 
-	if (handle == NULL)
+	if (!handle)
 		return -ENOMEM;
 
 	v4l2_fh_init(&handle->vfh, &video->video_dev);
@@ -683,14 +682,14 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
 	}
 	/* get the remote pad */
 	remote = media_entity_remote_pad(&video->pad);
-	if (remote == NULL) {
+	if (!remote) {
 		v4l2_err(&vpfe_dev->v4l2_dev,
 			 "invalid remote pad for video node\n");
 		return -EINVAL;
 	}
 	/* get the remote subdev */
 	subdev = vpfe_video_remote_subdev(video, NULL);
-	if (subdev == NULL) {
+	if (!subdev) {
 		v4l2_err(&vpfe_dev->v4l2_dev,
 			 "invalid remote subdev for video node\n");
 		return -EINVAL;
-- 
2.7.4



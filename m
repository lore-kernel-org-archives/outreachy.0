X-GM-THRID: 6330964939301191680
X-Received: by 10.36.149.9 with SMTP id m9mr6611389itd.10.1474048790764;
        Fri, 16 Sep 2016 10:59:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.6 with SMTP id a6ls6215449ote.22.gmail; Fri, 16 Sep
 2016 10:59:50 -0700 (PDT)
X-Received: by 10.157.7.7 with SMTP id 7mr10366765ote.50.1474048790349;
        Fri, 16 Sep 2016 10:59:50 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 142si4620431pfx.2.2016.09.16.10.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 10:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so939862pfl.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 10:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k/UfAOPGY0qEZclhtqFmHMZ7xg8JFoKfJBpszUcqqpA=;
        b=FC/YW/myvSNcydKHirsFBjMz2HYYK8o65RYbuDD18adGn+/c09xsiSXHzBJx5hxyRl
         vbNniaV6fayyGgKJzvKI5OQPIINzQozREjzmsZvN3bKSFtxOwCFKzX4X59UUXzgVY4xj
         AKuYir8oPIpX41O9v5KT/K7fkaJmrgHzo70uvPgYGDgQA2ESoKmLCP3y1Et2pTprCBJ+
         Q1BIKN7to6AtopXvfmxh+NaYJH0loMpD7kt65hGIt+jl92JV++pMTMLg+TicaXNdFFly
         dZ7093c7nbGlxs3YCxkz7WFJsWvD2JHFrytQMc2WNzwax8vLDn2DexZMtIwUDlshFcAz
         faog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k/UfAOPGY0qEZclhtqFmHMZ7xg8JFoKfJBpszUcqqpA=;
        b=N0tzLr7u03nPk6PwxomTgvwwodJnDCtYXja4BJFXlNLtCWTyoX3j36gLUIucDrAzuQ
         NeScjMGuPju/+UlBXbJsNTu+j6tN2+cVvnX4MSK/8Fx86wIjKVFGR7ut/cREo+ukUM8r
         LQU33EuPD/pvGNvVEdqod6MKfkCpT1O4p6giQ06f+uM8CsO0dDqGaolJVHYIV3Ni+w2B
         AUh/iBbRBGp5Kegwjh4f8X3cWpmbVBos601KYXtxYsd+5oSmeQ8fA7WZtUW7qSd9euts
         65kWFyWhiuNUjIl53dqfE1VXHTMHQzRqeBuMpH/O+3HHa9cRv8IkEzBblXPkTLlkprmO
         TNnQ==
X-Gm-Message-State: AE9vXwOTWtdwaaPyfjferYiirpi9tc0dERS9lUw5pUU4voHYRiSIRkXRmqY2aVBK7IiqMw==
X-Received: by 10.98.13.149 with SMTP id 21mr13201681pfn.19.1474048790128;
        Fri, 16 Sep 2016 10:59:50 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id mz4sm13685842pab.21.2016.09.16.10.59.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 10:59:49 -0700 (PDT)
Date: Fri, 16 Sep 2016 23:29:30 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: media: davinci_vpfe: Replace explicit NULL
 comparison with ! operator
Message-ID: <20160916175930.GA25922@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces the explicit NULL comparisons with ! operator.
It was found using Coccinelle:

@disable is_null@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Disabled is_null in the coccinelle script

 drivers/staging/media/davinci_vpfe/vpfe_video.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_video.c b/drivers/staging/media/davinci_vpfe/vpfe_video.c
index 3319fb8..8be9f85 100644
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
@@ -107,7 +107,7 @@ __vpfe_video_get_format(struct vpfe_video_device *video,
 	int ret;
 
 	subdev = vpfe_video_remote_subdev(video, &pad);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EINVAL;
 
 	fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
@@ -236,7 +236,7 @@ static int vpfe_video_validate_pipeline(struct vpfe_pipeline *pipe)
 	 * format of the connected pad.
 	 */
 	subdev = vpfe_video_remote_subdev(pipe->outputs[0], NULL);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EPIPE;
 
 	while (1) {
@@ -413,7 +413,7 @@ static int vpfe_open(struct file *file)
 	/* Allocate memory for the file handle object */
 	handle = kzalloc(sizeof(struct vpfe_fh), GFP_KERNEL);
 
-	if (handle == NULL)
+	if (!handle)
 		return -ENOMEM;
 
 	v4l2_fh_init(&handle->vfh, &video->video_dev);
@@ -683,14 +683,14 @@ static int vpfe_enum_fmt(struct file *file, void  *priv,
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



X-GM-THRID: 6393359357061365760
X-Received: by 10.107.191.68 with SMTP id p65mr1724625iof.102.1488569974135;
        Fri, 03 Mar 2017 11:39:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.166.19 with SMTP id p19ls2981461ioe.47.gmail; Fri, 03 Mar
 2017 11:39:33 -0800 (PST)
X-Received: by 10.107.197.194 with SMTP id v185mr1628974iof.48.1488569973325;
        Fri, 03 Mar 2017 11:39:33 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h79si231276pfh.2.2017.03.03.11.39.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id s67so13523195pgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AsQVPzj855J4IbadmInG6WVfwDRi/4/FOTQN80gcyU0=;
        b=GCMdd8D2pnLrKmp1iwXDtFVSpuu/c1S8MJuGsRCyPnzjaUQI0pwwra/ZL70hWPuvC6
         pMz6i2h58ghFy0vTCnxLJ/QCNFBR8f9KR1gmnNNAZ1WvjsGZzws+O3I5EmaKKua4dYvC
         MYi2larvDjotlCHcUqVNmxWOa0H7nwgA+PeZyG9EKe7QHjmSrRfnBpv1TJOyP8DK5shN
         FCE959AyOZw9f1wYYFI2j3C1iLeTcr46QxO1UA61Wi3kyjc3vXocUYmyCNi0y6Ep5rz1
         gE7XxffnYNwt7bDaRFuAxbuKKphW7Ya2seU3YCfvQ/WL4Xf8LC+ejX7GLi4u/pXFAqLg
         5T5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AsQVPzj855J4IbadmInG6WVfwDRi/4/FOTQN80gcyU0=;
        b=n/sc7ty7Evdf7jFwOnj78G0MKWTJKpnuW70truoTMFlEcUWHaqVtwme6Ws5RBOdAvh
         OGvjhmMYWPZyu4box2eOt0qBrWldDR/QQdkXxFjVynK/Rv+hYtaaWflX6Wvxf/hzJqiz
         LRVyO/0OYMtLwhSvLm87p7BdpY7zVtCYkk/bOLr7IWGzEUz/8x5A3r2YuPeN4vr4wgdi
         DbDZDPJLuYfzJ1X2HHUaA4n8eA3gCx9rjtcPXqackkIM3grdmYiytym0dFEEkOGeIAfT
         gWgM46U9AdA8thOWtW42rhIZpEuZ3vzMqGxUuu9vrXwYOmDsPVDWHqNSjiYTQSsZmcvL
         U9yw==
X-Gm-Message-State: AMke39kjjHLkecIXTPowUN/Zc996XLYh+h/NS+PUF6umgbqVtxQQgg4SbAYe7oIzmH/byw==
X-Received: by 10.99.102.135 with SMTP id a129mr5445473pgc.220.1488569972927;
        Fri, 03 Mar 2017 11:39:32 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id b8sm25102836pgn.6.2017.03.03.11.39.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:39:32 -0800 (PST)
Message-ID: <58b9c674.4871630a.40830.349c@mx.google.com>
X-Google-Original-Message-ID: <20170303193928.GA20122@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 01:09:28 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 9/9] staging: media: atomisp: Replace NULL comparison.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replaced x == NULL with !x, by using the following coccinelle script:

@disable is_null@
expression e;
@@

-e==NULL
+!e

This patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc0310.c | 10 +++++-----
 drivers/staging/media/atomisp/i2c/gc2235.c | 10 +++++-----
 drivers/staging/media/atomisp/i2c/ov2680.c | 10 +++++-----
 drivers/staging/media/atomisp/i2c/ov2722.c | 12 ++++++------
 4 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc0310.c b/drivers/staging/media/atomisp/i2c/gc0310.c
index 376aa34..c019d16 100644
--- a/drivers/staging/media/atomisp/i2c/gc0310.c
+++ b/drivers/staging/media/atomisp/i2c/gc0310.c
@@ -294,7 +294,7 @@ static int gc0310_get_intg_factor(struct i2c_client *client,
 	unsigned int vert_blanking;
 	unsigned int sh_delay;
 
-	if (info == NULL)
+	if (!info)
 		return -EINVAL;
 
 	/* pixel clock calculattion */
@@ -803,7 +803,7 @@ static int power_up(struct v4l2_subdev *sd)
 	int ret;
 
 	pr_info("%s S\n", __func__);
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -848,7 +848,7 @@ static int power_down(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -996,7 +996,7 @@ static int gc0310_set_fmt(struct v4l2_subdev *sd,
 		return -EINVAL;
 
 	gc0310_info = v4l2_get_subdev_hostdata(sd);
-	if (gc0310_info == NULL)
+	if (!gc0310_info)
 		return -EINVAL;
 
 	mutex_lock(&dev->input_lock);
@@ -1159,7 +1159,7 @@ static int gc0310_s_config(struct v4l2_subdev *sd,
 	int ret = 0;
 
 	pr_info("%s S\n", __func__);
-	if (platform_data == NULL)
+	if (!platform_data)
 		return -ENODEV;
 
 	dev->platform_data =
diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index f71a5bd..a989654 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -250,7 +250,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 	u16 reg_val, reg_val_h, dummy;
 	int ret;
 
-	if (info == NULL)
+	if (!info)
 		return -EINVAL;
 
 	/* pixel clock calculattion */
@@ -596,7 +596,7 @@ static int power_up(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -640,7 +640,7 @@ static int power_down(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -789,7 +789,7 @@ static int gc2235_set_fmt(struct v4l2_subdev *sd,
 	int idx;
 
 	gc2235_info = v4l2_get_subdev_hostdata(sd);
-	if (gc2235_info == NULL)
+	if (!gc2235_info)
 		return -EINVAL;
 	if (format->pad)
 		return -EINVAL;
@@ -908,7 +908,7 @@ static int gc2235_s_config(struct v4l2_subdev *sd,
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (platform_data == NULL)
+	if (!platform_data)
 		return -ENODEV;
 
 	dev->platform_data =
diff --git a/drivers/staging/media/atomisp/i2c/ov2680.c b/drivers/staging/media/atomisp/i2c/ov2680.c
index e9a159f..99ae746 100644
--- a/drivers/staging/media/atomisp/i2c/ov2680.c
+++ b/drivers/staging/media/atomisp/i2c/ov2680.c
@@ -323,7 +323,7 @@ static int ov2680_get_intg_factor(struct i2c_client *client,
 	u16 reg_val;
 	int ret;
 	ov2680_debug(dev,  "++++ov2680_get_intg_factor\n");
-	if (info == NULL)
+	if (!info)
 		return -EINVAL;
 
 	/* pixel clock */
@@ -899,7 +899,7 @@ static int power_up(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -948,7 +948,7 @@ static int power_down(struct v4l2_subdev *sd)
 
 	h_flag = 0;
 	v_flag = 0;
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -1077,7 +1077,7 @@ static int ov2680_set_fmt(struct v4l2_subdev *sd,
 		return -EINVAL;
 
 	ov2680_info = v4l2_get_subdev_hostdata(sd);
-	if (ov2680_info == NULL)
+	if (!ov2680_info)
 		return -EINVAL;
 
 	mutex_lock(&dev->input_lock);
@@ -1233,7 +1233,7 @@ static int ov2680_s_config(struct v4l2_subdev *sd,
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (platform_data == NULL)
+	if (!platform_data)
 		return -ENODEV;
 
 	dev->platform_data =
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index 208e4d7e..68dbafb 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -295,7 +295,7 @@ static int ov2722_get_intg_factor(struct i2c_client *client,
 	u16 reg_val;
 	int ret;
 
-	if (info == NULL)
+	if (!info)
 		return -EINVAL;
 
 	dev = to_ov2722_sensor(sd);
@@ -699,7 +699,7 @@ static int power_up(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -746,7 +746,7 @@ static int power_down(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -893,7 +893,7 @@ static int ov2722_set_fmt(struct v4l2_subdev *sd,
 	if (!fmt)
 		return -EINVAL;
 	ov2722_info = v4l2_get_subdev_hostdata(sd);
-	if (ov2722_info == NULL)
+	if (!ov2722_info)
 		return -EINVAL;
 
 	mutex_lock(&dev->input_lock);
@@ -1037,7 +1037,7 @@ static int ov2722_s_config(struct v4l2_subdev *sd,
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (platform_data == NULL)
+	if (!platform_data)
 		return -ENODEV;
 
 	dev->platform_data =
@@ -1268,7 +1268,7 @@ static int __ov2722_init_ctrl_handler(struct ov2722_device *dev)
 
 	dev->link_freq = v4l2_ctrl_find(&dev->ctrl_handler, V4L2_CID_LINK_FREQ);
 
-	if (dev->ctrl_handler.error || dev->link_freq == NULL)
+	if (dev->ctrl_handler.error || !dev->link_freq)
 		return dev->ctrl_handler.error;
 
 	dev->sd.ctrl_handler = hdl;
-- 
2.9.3



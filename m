X-GM-THRID: 6393359357061365760
X-Received: by 10.107.171.196 with SMTP id u187mr2991948ioe.30.1488639027619;
        Sat, 04 Mar 2017 06:50:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.170.68 with SMTP id y4ls1412642iti.0.canary-gmail; Sat, 04
 Mar 2017 06:50:27 -0800 (PST)
X-Received: by 10.99.97.83 with SMTP id v80mr3402698pgb.137.1488639027106;
        Sat, 04 Mar 2017 06:50:27 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id h79si552272pfh.2.2017.03.04.06.50.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 06:50:27 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 67so8330539pfg.2
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 06:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XcvXz8aC5lE/f7exzMo+jXk1aUgP7Frte0RkoEz9/Sk=;
        b=L4YAs+3Nq4FCRaB47l9gRuVoqLBX3skpq2efhmcXgeiHOfZBAPmB7RbEoQiyVqk2lB
         yZ3Eq9K51rUMYtDux9R8qg93QzZX76eje4Z8WH0Dj9cHQn0jSpXyxfAVY233RagTVFl+
         caQRSRZxHaFT8i8QIxG/f7ppbeBNCgxd+45NpFsxtcY73T+n/9DQ7za1jZ+6scbFagw+
         zclHoOlQ/QsgYOFLNiOcjPI+J3Kr9DLKhb6zW1EK6AMjPTQFD2s+xmmZnxkP1g415Wwr
         m9NIrpfsPJdGRLwir47nR36ZR4BLnuqlLwl1jQTq0okc7+QQnZKJCVCkx8SCvw1awGB8
         4+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XcvXz8aC5lE/f7exzMo+jXk1aUgP7Frte0RkoEz9/Sk=;
        b=o2akN/Xqj4mmiYehBoTDgMyL0smIqmu3aTkQsTLN85lH0GsZOZZq/UJ4yRLTJLy5Xa
         OhEAGbcfg3Ff+SNe3p7Z1dRMIZG65Fkxlb/6FZLqr5H+ujNWtCM7X6ovWfuwY3+7Ycvv
         ZPkAOGMqhBGZoGOhVGkD0RhGUpG7+jV6aFBq93ipLBjrn8LNmPLRhoPegpmvCugk+mmI
         0ZjzxpYsLtTuTDSmpG2PEAvmff6k52npJkwSlnKT/IBe7BEu3EXYZRUl6zrWD4+U1NiJ
         NBeT2BiwDv//Ufe8ePeQCJxCjrlwY5wPPYWuwXuTvVAG6jpTlt41R6G0qiyfwnpCLqnq
         Wg/g==
X-Gm-Message-State: AMke39kb0VwiCVR5MzHhcfrfEsx5I/WKiy52OdAq4B1skHQdv7nd9CNrI/uoSY2TX6ONrQ==
X-Received: by 10.84.233.193 with SMTP id m1mr12292690pln.118.1488639026874;
        Sat, 04 Mar 2017 06:50:26 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([118.151.209.30])
        by smtp.gmail.com with ESMTPSA id b190sm29744641pfa.110.2017.03.04.06.50.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 06:50:26 -0800 (PST)
Message-ID: <58bad432.c734620a.a2365.c22c@mx.google.com>
X-Google-Original-Message-ID: <20170304145023.GA4592@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 20:20:23 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 9/9] staging: media: atomisp: Replace NULL comparison.
References: <cover.1488636852.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488636852.git.varshar186@gmail.com>
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
Changes in v2:
- No changes.

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



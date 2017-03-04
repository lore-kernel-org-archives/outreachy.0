X-GM-THRID: 6393359357061365760
X-Received: by 10.98.96.6 with SMTP id u6mr1681637pfb.0.1488648263651;
        Sat, 04 Mar 2017 09:24:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls13391411otd.12.gmail; Sat, 04 Mar
 2017 09:24:23 -0800 (PST)
X-Received: by 10.237.53.100 with SMTP id b33mr2822135qte.41.1488648263267;
        Sat, 04 Mar 2017 09:24:23 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y90si597578pfa.6.2017.03.04.09.24.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 09:24:23 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x66so12950772pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 09:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5t/s71t/vIXNUalXSwKm4oHHi5ILUbyKm9LYHNzcB3Y=;
        b=fOsfSnI1YtxJEHo6Cy2h7LxABMyu0YrcxwFBfnJqKsxBbyTLNvikZrL+jVJDl/bKbE
         hwE33e8wYnq4O+nvD66sBAJDr0/hfxlXZgRs8XQRpU7Meh6+Gc1rch5qbyZQegQlTGRm
         OvDQzUtzgf/R/hNodC7Q170AnMjfIxr1q2v2MDF2k/z55O9MFhA95OGqBkfsIoLVqDI4
         fvkHvGwcdULUaInn1DRiXatc3w755+WpSqsJxCo+laYBv7uJpnoYwpMcMP6wylqRW7BE
         O542KzonzsSLKXcxRlFVeB0hgewZwnzo6KZFQQCs87OCMeClE9QwcWke9Kcgl54Brhip
         BvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5t/s71t/vIXNUalXSwKm4oHHi5ILUbyKm9LYHNzcB3Y=;
        b=WXy7//agleT7vHa1rcjO1jzowwpr2y+DlKuoN9VWekElSycNAEzwza1c7/UMs2nAeJ
         mnJWtSwsYBx7rR9wu93wStLG9p73xf70wg3KGEGAbk6e8bimisfZVD8UNygxUQq0Wosw
         mNhyu7Ae+/RmB4Ph+PlykMXJjq2zL3d4P4S5cBGRpI2ZnWylExG37zAuIusI6NWicROI
         /IAHrxVlEkG/ovIzXyCk8rYwpnuijYShGhMaLZHVUnyr7/msPQRpysrL5OOW/Nf/QbRW
         PgDt6G/E8V+vLOCf/gvf2Qj0Hp+RyVyXf+qwLZd2Deg84+uyzAXRAgciJXPAwGNzKW/a
         +z8w==
X-Gm-Message-State: AMke39lNutvsY3kHfpQNX2Zo4kchxhYUafGDvNpvMWgbOvDnFZgPAhhWCqd3/qR/9sl3XQ==
X-Received: by 10.98.138.132 with SMTP id o4mr10606878pfk.70.1488648262973;
        Sat, 04 Mar 2017 09:24:22 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.75])
        by smtp.gmail.com with ESMTPSA id k184sm30500146pgc.23.2017.03.04.09.24.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 09:24:22 -0800 (PST)
Message-ID: <58baf846.c16f630a.d5380.d7e1@mx.google.com>
X-Google-Original-Message-ID: <20170304172409.GA5713@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 22:54:09 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 9/9] staging: media: atomisp: Replace NULL comparison.
References: <cover.1488642821.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488642821.git.varshar186@gmail.com>
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

Changes in v3:
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



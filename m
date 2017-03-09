X-GM-THRID: 6395635092352401408
X-Received: by 10.129.112.73 with SMTP id l70mr5700642ywc.45.1489099842336;
        Thu, 09 Mar 2017 14:50:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.50.71 with SMTP id j68ls75535ita.12.canary-gmail; Thu, 09
 Mar 2017 14:50:41 -0800 (PST)
X-Received: by 10.99.149.81 with SMTP id t17mr7603602pgn.62.1489099841804;
        Thu, 09 Mar 2017 14:50:41 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si1493826pfb.2.2017.03.09.14.50.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:50:41 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 77so8172886pgc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8uaMIW9r/sn2NstsmyJ7fwHTvP7JYjmGFvPuOoGiHZ4=;
        b=KLqxkVJDBmdo9xmGzb8DgfAZ8XiQlOmsFkvsmUOjLD6drp/3eM6Um78gGh0rDBwinb
         wa3zCaDJNXyPW3vAfxNvjtWgfScG46QZNVsQXyY/zV4RXu+xxd8vcodOH+0eSd0QHpEA
         bB5jiCcAQsZOX6bM60NKdzwed/AN4hhT/++gCdebSl3WFXPj+MBcivpO3drdGURrZbUb
         D9+Sz6bpTcMnfj/lEsi5JyxyxOh1iVYR2BDkmu4QVH2lUA5gJSjn2WZ7VshuiTPq8L4/
         Z32Lp5Ov84/LD3YQgQwsnVuXQSEp08msA+pXQPcKMrAUhLn36VGDIoaN8qsYjMbeor/s
         lejQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8uaMIW9r/sn2NstsmyJ7fwHTvP7JYjmGFvPuOoGiHZ4=;
        b=WjQnBauCKTjA78L9fHlU+AGFPj+YMsUTZSmsuAMdHkLo/k3TssZELXWD5w9/uRAgzC
         1+aJsvRoYqPcW1TpIV18T+mfLXjNDP5d8Ikrm30tvl9xvKAasS2UDcD6xSN3rdpg4sMA
         C25DLkRjq63MLDJwPgzUn99tvHeQ8l+V4F1ne+yWpTc3xDjX68dsvnDipACqdUHNgC5p
         CQWMW9XYbi/WGrrC3yhsbST5NKhn0FmbT8Ok4671ssl0V85j4yVHtfzDaXLwdr4bGu1j
         ERS+BF9yfjTP8TzXVglh6ZSYuYdo4oyria5skmL4/kTB7geGB9tl4AXgb58o6d6MdXqx
         R6eg==
X-Gm-Message-State: AMke39kJyVFA4Ay0EQ478TrtVtfyzuxkHTGEf0qKFuoZjR57EWq6q9eC90JglRQBczzscg==
X-Received: by 10.98.160.193 with SMTP id p62mr16971239pfl.67.1489099841577;
        Thu, 09 Mar 2017 14:50:41 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a1sm14495363pgn.51.2017.03.09.14.50.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:40 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 2/7] staging: gc2235: Add blank line after a declaration
Date: Fri, 10 Mar 2017 04:20:24 +0530
Message-Id: <1489099829-1264-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>

Add blank line after a declaration. Problem found
using checkpatch.

This patch fixes these warning messages found by checkpatch.pl:
WARNING : Missing a blank line after declarations.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 3f2b11ec..7de7e24 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -359,6 +359,7 @@ static long __gc2235_set_exposure(struct v4l2_subdev *sd, int coarse_itg,
 	u16 coarse_integration = (u16)coarse_itg;
 	int ret = 0;
 	u16 expo_coarse_h, expo_coarse_l, gain_val = 0xF0, gain_val2 = 0xF0;
+
 	expo_coarse_h = coarse_integration>>8;
 	expo_coarse_l = coarse_integration & 0xff;
 
@@ -410,6 +411,7 @@ static long gc2235_s_exposure(struct v4l2_subdev *sd,
 	/* we should not accept the invalid value below. */
 	if (gain == 0) {
 		struct i2c_client *client = v4l2_get_subdevdata(sd);
+
 		v4l2_err(client, "%s: invalid value\n", __func__);
 		return -EINVAL;
 	}
@@ -546,6 +548,7 @@ static int is_init;
 static int gc2235_init(struct v4l2_subdev *sd)
 {
 	int ret = 0;
+
 	ret = __gc2235_init(sd);
 
 	return ret;
@@ -759,6 +762,7 @@ static int startup(struct v4l2_subdev *sd)
 	struct gc2235_device *dev = to_gc2235_sensor(sd);
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
+
 	if (is_init == 0) {
 		/* force gc2235 to do a reset in res change, otherwise it
 		* can not output normal after switching res. and it is not
@@ -893,6 +897,7 @@ static int gc2235_s_stream(struct v4l2_subdev *sd, int enable)
 	struct gc2235_device *dev = to_gc2235_sensor(sd);
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret;
+
 	mutex_lock(&dev->input_lock);
 
 	if (enable)
@@ -1007,6 +1012,7 @@ static int gc2235_s_parm(struct v4l2_subdev *sd,
 			struct v4l2_streamparm *param)
 {
 	struct gc2235_device *dev = to_gc2235_sensor(sd);
+
 	dev->run_mode = param->parm.capture.capturemode;
 
 	mutex_lock(&dev->input_lock);
@@ -1112,6 +1118,7 @@ static int gc2235_remove(struct i2c_client *client)
 {
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct gc2235_device *dev = to_gc2235_sensor(sd);
+
 	dev_dbg(&client->dev, "gc2235_remove...\n");
 
 	if (dev->platform_data->platform_deinit)
-- 
2.7.4



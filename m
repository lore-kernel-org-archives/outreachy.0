X-GM-THRID: 6392991510876389376
X-Received: by 10.107.156.195 with SMTP id f186mr5175501ioe.86.1488484333096;
        Thu, 02 Mar 2017 11:52:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.146 with SMTP id 18ls2279074iom.11.gmail; Thu, 02 Mar
 2017 11:52:12 -0800 (PST)
X-Received: by 10.99.45.194 with SMTP id t185mr5776252pgt.114.1488484332277;
        Thu, 02 Mar 2017 11:52:12 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si977022pfz.1.2017.03.02.11.52.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:52:12 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id s67so10264878pgb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 11:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8uaMIW9r/sn2NstsmyJ7fwHTvP7JYjmGFvPuOoGiHZ4=;
        b=lEVXL92GPoskhZFx5f2LTGqz7z+kfqSiIHlI+r0TI3m1MbLvCSUm0glvzWbQ92HRcN
         jVcltO/Si6YK+sHILnEOyradw4A82435JJVx74uBr0WE4SH5XGNzKmmvc7DEJOpTbuzD
         juG8BsaCG/QDxcNzYCI8fgXr2aQUXpfLNEW8xSXpO7b8Ms6Ltvooluh6ZPChwNRw1O1x
         5TXC+zkwRYYFVh4Oni1yqmreKHICbhgtcr7bndX+2Cran/ibaB0IQKw0sMvXRHTKgns0
         G8CUSnrcrXW7vtdoEs80ZZiRPp3ydgvFGb4eGISyH1GYNnK7NrfM5QmlMuzOeP1Ryj5+
         RtOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8uaMIW9r/sn2NstsmyJ7fwHTvP7JYjmGFvPuOoGiHZ4=;
        b=b5vxgJbnbTMJfhYVw2FGx7LdqevrlsxY9zKq0tac+aaRr5uL0du8t5qRDK+WtapoTz
         tDTljZuD2ySefGHPopWxt0L9QCGrWTIulFvwdAPYrWMW1V7FTpC3j/IlCof+EQu7gPZ6
         xL3pCRWmO7qvntEJcK395MlyK6dkDQ3qE5ZRHu8vWyP+haCM/3ks2sgb2faNsPEc+H5k
         JyJGrSuo+pWeoXAESis3+uCrdbNVcryQ/HmgtfhwDxbTdoDfMvzax5XkGs78UP4vMoGi
         zj7FrRHfI1TbSJiG9HLV1qeTLD5PLouL8RfDyRjo4rdMmU5+4LEXRLHTddb96WgGyxV0
         cIMw==
X-Gm-Message-State: AMke39m8dDhvqAxZldU0XX0s8kLy+0eK5JgIQd3XwpBB8jR6WoW5+BLnum54WHlGpDNDKA==
X-Received: by 10.99.117.3 with SMTP id q3mr17786063pgc.222.1488484331989;
        Thu, 02 Mar 2017 11:52:11 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d1sm18667075pfk.20.2017.03.02.11.52.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 11:52:11 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: media: Add blank line after a declaration
Date: Fri,  3 Mar 2017 01:21:57 +0530
Message-Id: <1488484322-5928-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>

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



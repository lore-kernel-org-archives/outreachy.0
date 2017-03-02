X-GM-THRID: 6392991510876389376
X-Received: by 10.98.97.7 with SMTP id v7mr3152223pfb.11.1488484341137;
        Thu, 02 Mar 2017 11:52:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.64.142 with SMTP id n136ls104504ita.2.gmail; Thu, 02 Mar
 2017 11:52:19 -0800 (PST)
X-Received: by 10.99.105.5 with SMTP id e5mr5562716pgc.0.1488484339867;
        Thu, 02 Mar 2017 11:52:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si977076pfz.1.2017.03.02.11.52.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:52:19 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so10272097pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 11:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=freqJyf2Fm0KKGvTK6TYp66cz6O2Hspma7tZE/Xa2nY=;
        b=qqu9TnpSCCj/qdJ0+t3eUKQI5BqdAyuoDgrbZxjoAC0sBflqtqjRjM0W1lgI2iUSuq
         5hRlohqH3tJ6kOPbaqgiISfvskypkx43Qvq/7gP7ZzAZogdNYfP81/X6Xr919A4p8Jhy
         CkLDTQRjdA6w7nZMKCQou+M3bJp9YyHhuQvUKjlzBDTLrdsnp8zxprP9epM6U03ZALgH
         mgywvwaywO+wk+pBmKrD3wRc5cpw+gG3CJS3v5TJ5EX4JsNYlZl/HCbm5mclFNg74qN4
         kPE7BBJMEpt+0tfzq9rGuyhxGb3p0CcDdA102j4T+N4dyB9XLpKwcRh8P8WkXJtN5bsI
         OKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=freqJyf2Fm0KKGvTK6TYp66cz6O2Hspma7tZE/Xa2nY=;
        b=oP96Zgl6uRrl6WHW+SUlWE+x5WKA93+4NsDUfiWN/2b4fm7pugD4FPCbLTjC63h/wX
         DV6H0nRxpUsiaVRGS7u8ECG69gZJi8IW/f+IHnKOf0mqSbzDuQg6KeUVF7prCUmVVgzh
         OJakpFgi8r+qVoQxfwDJGsanW0gFeoh7d4unSMyQebsYukPGN+ZkR3VaU09ioH5cVOuv
         fEAvEaqF59dL6MnU7ldFpr+blhufZxczMrjc3X6Q59itOMiBeQDoIvgGjrNfe96WLPPs
         ceTor8cW3qLbswfasOhCf7dYWNyJmMLbSyBpiO1jzuAi40F1baa8sPQbQZvBUXw3CaWK
         qUIA==
X-Gm-Message-State: AMke39nvkbozoe9WNU1IvRbs3t4r+A0uzwkv//7eMHMlLq1IG2W5cwG5WWUq1e6xW9qFSw==
X-Received: by 10.84.168.131 with SMTP id f3mr21215277plb.163.1488484339655;
        Thu, 02 Mar 2017 11:52:19 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y201sm7034470pfb.16.2017.03.02.11.52.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 11:52:18 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/7] staging: media: Remove blank line before '}' and after '{' braces
Date: Fri,  3 Mar 2017 01:21:59 +0530
Message-Id: <1488484322-5928-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>

Remove unneeded blank lines preceding/following '}' and '{' braces, as
pointed out by checkpatch.

This patch addresses the following checkpatch checks:

CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 2ef876a..198df22 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -788,7 +788,6 @@ static int gc2235_set_fmt(struct v4l2_subdev *sd,
 			  struct v4l2_subdev_pad_config *cfg,
 			  struct v4l2_subdev_format *format)
 {
-
 	struct v4l2_mbus_framefmt *fmt = &format->format;
 	struct gc2235_device *dev = to_gc2235_sensor(sd);
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
@@ -1070,7 +1069,6 @@ static int gc2235_enum_frame_size(struct v4l2_subdev *sd,
 	fse->max_height = gc2235_res[index].height;
 
 	return 0;
-
 }
 
 static int gc2235_g_skip_frames(struct v4l2_subdev *sd, u32 *frames)
@@ -1228,7 +1226,6 @@ static int init_gc2235(void)
 
 static void exit_gc2235(void)
 {
-
 	i2c_del_driver(&gc2235_driver);
 }
 
-- 
2.7.4



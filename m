X-GM-THRID: 6395635092352401408
X-Received: by 10.99.149.81 with SMTP id t17mr7604078pgn.62.1489099849804;
        Thu, 09 Mar 2017 14:50:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls4210009otw.5.gmail; Thu, 09 Mar 2017
 14:50:49 -0800 (PST)
X-Received: by 10.13.255.6 with SMTP id p6mr7064010ywf.80.1489099849440;
        Thu, 09 Mar 2017 14:50:49 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1488625pfd.3.2017.03.09.14.50.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:50:49 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so3711252pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=freqJyf2Fm0KKGvTK6TYp66cz6O2Hspma7tZE/Xa2nY=;
        b=Irhz6hWaf7AHSm5xKsZ+z5kPl99F/MxgJ/ZbwykECnJZejUvRsXnDzAwyMO23lINXi
         8qHD5BTtSAyXRaWNCL0o3CWcrSTRdh54CX8YgZ+S0V2s1PlP9oW/nZPR6d2BkzHnAPUa
         9AFN6Pze4QssmOKUEEroME+8KXK3M/U5V2xCVPWsnd9yn8VuFlcjImhCNlxn89mzU+RI
         vax6O7uzE3wuSiSQVsccV125t9utwlkBCIXsDOEaQbDDvaO3nyQc8b32EQ2WbtOL3elL
         /p7F0gvTJRoNbJBy5Si5tbf29kbOaZV9iDRAuGMsHkoZVmhCp2ybSRfo+F7Vk9lLhZjB
         KbXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=freqJyf2Fm0KKGvTK6TYp66cz6O2Hspma7tZE/Xa2nY=;
        b=Lye4aL/rZZdvNloWB0Enqg5WRex40xFaTc0vt+8Y1bYX2GJk14dwQzhcRY2wF+IRhX
         pQOKChyMvXbJgMThjgxhXT695hx37/KsoomTE4sUPM7lIacxLTH6rvT5Cg9ApIrMyKYG
         9SOQx4rM/PteSsfMNP92RVhe1rSVLFlfyuOvi0hdiWYR8Wu2/ec5+bR0ucac2s7eaH36
         mkZuOtbUL/eEYUCJNJVnAS6jwl0b1+mtfJb0fThsdLX7UIPIeC+wHLsnTIOxcy5lMN7Y
         HesVdlSDW/eyTHavTEumIXMcnKeL5v9m6ekg42OMTdHpJ3ayRrbrqyY4T2RhDOjVQuHC
         DuvQ==
X-Gm-Message-State: AMke39kq8ZSg2SIhEC4+jOxr794s/IjDuAXCVqAuOQuxa/vfLAMS6gAGf9WDSdk0DYXEbw==
X-Received: by 10.99.163.110 with SMTP id v46mr16144540pgn.171.1489099849161;
        Thu, 09 Mar 2017 14:50:49 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 132sm14484709pgf.27.2017.03.09.14.50.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:48 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 4/7] staging: gc2235: Remove blank line before '}' and after '{' braces
Date: Fri, 10 Mar 2017 04:20:26 +0530
Message-Id: <1489099829-1264-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>

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



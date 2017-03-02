X-GM-THRID: 6392991510876389376
X-Received: by 10.157.12.214 with SMTP id o22mr5836801otd.150.1488484336355;
        Thu, 02 Mar 2017 11:52:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.46.193 with SMTP id i184ls103788ita.10.canary-gmail; Thu,
 02 Mar 2017 11:52:15 -0800 (PST)
X-Received: by 10.99.109.12 with SMTP id i12mr5329576pgc.104.1488484335817;
        Thu, 02 Mar 2017 11:52:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id r66si60231pfb.7.2017.03.02.11.52.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:52:15 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 1so10270695pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 11:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T5Rqoo/0iYcZK1NtoBCBq0PiXqIEnCmumVWA/g8jPXM=;
        b=lSZKolv0zCAVaNEN/tFpnAxgSGulzPVFrWv1+lx+Jv6kXqY7h/IXQhom+JQAwVYG32
         Ab9fb3TkJ6LOnczWC4imRQWgVZVug6bzl2Ae+LszvLFkWFNKga6gy2YNzRG0XbkjGZZv
         /TrvDhYXTnTANHtXnBiX8OBP/8rgdWyquoSxkk3ijB22qnH7mAn3/IffqMCffmPepFw4
         WCs5c3Celv4cSmxl5RSgPYhpjxALr9MZ7QrXPcn5IL1lDYp8P0ctpxhkTFZniXoARS8R
         LYbInqZYx3iyGvdoSRN8Q54BjVzDowR8MyDUL12E9MR7xKLTzGhvE+9XLGTnXT/dAN0b
         uwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=T5Rqoo/0iYcZK1NtoBCBq0PiXqIEnCmumVWA/g8jPXM=;
        b=NGcv0tIAh4yMnl+YTrpnxmf5vxtQLyXo6HdBm2ZmnAbJROyjI0FejfKc0Zto9C6ufe
         fzwOWcpcgMIoD5SLJVIxmq/2rI07pO7JzJdJ9AtqELNaaJzIuE0FpCKFSt2ljzg+pS8h
         q2TDKul7gEsq5Ls3c4Gf1CdEais5mzG3tN4E68WkGCYL59SdxLJjVRirNvgEdCCkry7E
         u4TYwdCZ1GngEDKV/9lkjFvWsBv9iYh6PJKdN+2ehIaLTFkIxfnKcFvnhbKvofOcteMP
         Xa4O0IYVGziuSxI3sRDkjCGaDH25xNPbQZZ0WvpoPNv9LbXN9gf3dJY0fftRpc/jB+kF
         Bdbg==
X-Gm-Message-State: AMke39l78rpAPjws4GUOI2BcnTWdvO/KD2t8ETAWPyHGaQs0Ofwlcrg35M5hgcuOFimpTQ==
X-Received: by 10.98.95.70 with SMTP id t67mr17487494pfb.37.1488484335575;
        Thu, 02 Mar 2017 11:52:15 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p77sm14582528pfj.99.2017.03.02.11.52.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 11:52:14 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/7] staging: media: Replace NULL with "!"
Date: Fri,  3 Mar 2017 01:21:58 +0530
Message-Id: <1488484322-5928-3-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>

Use ! in comparison tests using "==NULL" rather than moving the
"==NULL" to the right side of the test.

Addesses multiple instances of the checkpatch.pl warning:
WARNING: Comparisons should place the constant on the right side of the
test

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 7de7e24..2ef876a 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -603,7 +603,7 @@ static int power_up(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
@@ -647,7 +647,7 @@ static int power_down(struct v4l2_subdev *sd)
 	struct i2c_client *client = v4l2_get_subdevdata(sd);
 	int ret = 0;
 
-	if (NULL == dev->platform_data) {
+	if (!dev->platform_data) {
 		dev_err(&client->dev,
 			"no camera_sensor_platform_data");
 		return -ENODEV;
-- 
2.7.4



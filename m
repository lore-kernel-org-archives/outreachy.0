X-GM-THRID: 6395635092352401408
X-Received: by 10.157.35.183 with SMTP id t52mr5988631otb.109.1489099846130;
        Thu, 09 Mar 2017 14:50:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls7822884otb.2.gmail; Thu, 09 Mar
 2017 14:50:45 -0800 (PST)
X-Received: by 10.129.124.138 with SMTP id x132mr7073547ywc.138.1489099845734;
        Thu, 09 Mar 2017 14:50:45 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si1471746pfa.6.2017.03.09.14.50.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:50:45 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so8664036pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T5Rqoo/0iYcZK1NtoBCBq0PiXqIEnCmumVWA/g8jPXM=;
        b=fP4Fd/hJU/IzN5tZReezhFYdVwMLMEzMLnjWHE24Hhojh1jPe7te5CXxlJqkbp71w/
         Vhtm9Hsw1C2Ne9a4K8VEmh92jFvWGakmxEJs8QpZL8TOCpSVd6p9Qk0bVVZtsgHxNpms
         quadBKuCAVCmZxqW+rVgOEmU0UXcGomGcYYD7KMGorMvRS/xysc2bElDBHpa8DY8F0QM
         C+Ctm52wP9e1gRZYBY96ESMa5mFu9A1J1zmgg3hwcFygSWLlMnNXcjn32rrzl/abN2Pw
         z4mkBFXThKWgRfq7WAXbIyu+NJuTOZ+pOXpn+YhBVtS7P2Tg3+CcqIbpT21WNZLELAvn
         kB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=T5Rqoo/0iYcZK1NtoBCBq0PiXqIEnCmumVWA/g8jPXM=;
        b=g/pNyRwtscKv3rc0m8wPVnL7Ua0t9w1M20P3v1zlqtwkzCh7W/VVPZ4LCIrwN8zlI9
         fXuMXZK5bUBFnHvxQYpEkdq23YOgwbYDvgHdt0J+zm6b9aOkbpZMujoSe9R7mmaq7qmX
         2aNzBlwrDv42SbJ5BpjcpwJ5R+cr0XVzV1mb4VJsWNQsxc6kVkmMIx6c+fkB0ATQxIme
         iLZ/evkNBeD9INDHn07jjreodq7yTA/qJCf7NlQPIR/Wsa72qy6/4+gMiKBvemX3VCRq
         YOuepgGVfI4h9lEWscgcxePrqgq6+OYCjS0A/2chDPu4rGOTLdUk5IkYFzdISXSMWx1T
         et4g==
X-Gm-Message-State: AMke39lZsHByzOXeMOiC3qwNTEWvzjKIsnUQJ08he7ZatbuVEZclIXYfsJKT0GNXH84JOw==
X-Received: by 10.99.137.66 with SMTP id v63mr16007000pgd.207.1489099845517;
        Thu, 09 Mar 2017 14:50:45 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w14sm14493964pgo.37.2017.03.09.14.50.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:44 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 3/7] staging: gc2235: Replace NULL with "!"
Date: Fri, 10 Mar 2017 04:20:25 +0530
Message-Id: <1489099829-1264-4-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>

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



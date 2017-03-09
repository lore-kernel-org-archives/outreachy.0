X-GM-THRID: 6395635092352401408
X-Received: by 10.107.182.195 with SMTP id g186mr4672978iof.62.1489099860844;
        Thu, 09 Mar 2017 14:51:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.52.248 with SMTP id t53ls7662174otd.42.gmail; Thu, 09 Mar
 2017 14:51:00 -0800 (PST)
X-Received: by 10.157.16.114 with SMTP id o47mr6299864oto.50.1489099860523;
        Thu, 09 Mar 2017 14:51:00 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si1493833pfb.2.2017.03.09.14.51.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:51:00 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so8644824pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Eney41u3fkMQhejFlmKkB6CB1A2/nQ3gT5UrNoyrcHA=;
        b=AGeNjTWO4NIRqAn6d1BbO6p+unvU8+WecjEd6zAOfzhPhrDyHgSu0fbSrUXv9BRE9c
         Ymy784IEVnp2nz8ShFxW3uB9M161Cn3Hn/ctqOzzY2Wb1sGBQ7xOyi1YGwPbU48wAd4I
         ERG/o5F7RMYErgOoOQCeI3wnAzw/CH+AHrvg/bzgopo6XWMYUDeBF8xoecf/Uy0+q9WO
         HRWgTPa6y4l0XGklDbQcPiPdUnSuVQavH9yZBgrA53MP2IVP+bCpmRg3TJSgdliaBDDP
         Rqsrqij13BFBgC2wcpHmQhv/uXqnyM07izCxUi59tawsoYGjo3RQRD6qSQWbEyDan3hg
         2c1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Eney41u3fkMQhejFlmKkB6CB1A2/nQ3gT5UrNoyrcHA=;
        b=MbS+NhppWq4u086zMcBPRoQDm+IIWnQbHT/0RjNwxru9jZldJbSb5Q/W+30hJFxmCu
         1cn6fBOcgoR5qLWY1TKWBokMqk7M3XlbjGdvoQhZWEGb+L3wn1IQjO4VbIIG0SUNXoPw
         ppYjUloqwJolDxCed59wM8AK/aNTiy3/BdjIgBP1T90M6LQz03VU26usbvluBmP4dUwb
         zB+RfBsr2XRG2JKovHF1vZU9XdkbOe/zdzJsB8008aOVG8iVBR/CSKkfsFbC6vSuTBK/
         UX/CQ+whOUdE778oD5Qw7S6w40da4JulcoF1D9i9B7aVD+XGtg0TenoR44D9w75iQKFB
         4ltQ==
X-Gm-Message-State: AMke39mUEJnoEp3m/UEbV7q8wIh1k68YruEHpO9geIB0ZIxx3oUEUw1n++dqf7ewna2wvg==
X-Received: by 10.98.144.151 with SMTP id q23mr17146438pfk.51.1489099860025;
        Thu, 09 Mar 2017 14:51:00 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u80sm14487141pgb.32.2017.03.09.14.50.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:50:59 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v1 7/7] staging: gc2235: Do not use multiple blank lines
Date: Fri, 10 Mar 2017 04:20:29 +0530
Message-Id: <1489099829-1264-8-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>
References: <1489099829-1264-1-git-send-email-singhalsimran0@gmail.com>

Remove multiple blank lines. Problem found using checkpatch.pl
"CHECK: Please don't use multiple blank lines".

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/media/atomisp/i2c/gc2235.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 40a5a2f..b97a74b 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -244,7 +244,6 @@ static int gc2235_g_fnumber_range(struct v4l2_subdev *sd, s32 *val)
 	return 0;
 }
 
-
 static int gc2235_get_intg_factor(struct i2c_client *client,
 				struct camera_mipi_info *info,
 				const struct gc2235_resolution *res)
@@ -388,7 +387,6 @@ static long __gc2235_set_exposure(struct v4l2_subdev *sd, int coarse_itg,
 	return ret;
 }
 
-
 static int gc2235_set_exposure(struct v4l2_subdev *sd, int exposure,
 	int gain, int digitgain)
 {
@@ -909,7 +907,6 @@ static int gc2235_s_stream(struct v4l2_subdev *sd, int enable)
 	return ret;
 }
 
-
 static int gc2235_s_config(struct v4l2_subdev *sd,
 			   int irq, void *platform_data)
 {
-- 
2.7.4



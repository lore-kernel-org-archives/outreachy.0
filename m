X-GM-THRID: 6392991510876389376
X-Received: by 10.129.159.11 with SMTP id w11mr5521732ywg.130.1488484352187;
        Thu, 02 Mar 2017 11:52:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.22.129 with SMTP id c1ls8841197ote.14.gmail; Thu, 02 Mar
 2017 11:52:31 -0800 (PST)
X-Received: by 10.157.9.238 with SMTP id 43mr5267002otz.140.1488484351773;
        Thu, 02 Mar 2017 11:52:31 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f7si1699120pfk.5.2017.03.02.11.52.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:52:31 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e66so1971571pfe.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 11:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Eney41u3fkMQhejFlmKkB6CB1A2/nQ3gT5UrNoyrcHA=;
        b=JPcYEnZXbOOz/X+bz5JXeJ2oEN5FFv5+d0n2pUKN/hPPovugw1nLkiGgAjg0MbgZQ5
         FcmyKw044hNS/gOitzjR8SV5YitVsdrWLfWsq30SDI49UESTdnv8kQFNZAVpyCMEOnU/
         X4AQGZ3mvOaLXnUi3cXL47OOE7wSaMlh5OGZGLoSs5EfCwVzNzqFLoertBWy2awLKZog
         WBVMzfkG+44RP6s39qFDDa4JqxDO4guqHrrfzG8hEfRCkLHopIxWITCh5ntgGH6qvWxd
         TPmfD05fFs5w+oyLj9UofYRW8cPMmEeJ9Mnv3ZN6GH1tTGcg+m7Cguku9UU4O+qUiPS+
         +leg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Eney41u3fkMQhejFlmKkB6CB1A2/nQ3gT5UrNoyrcHA=;
        b=OdWwlX/GaSJacXryMURM4vmpVqeu6S+n6uC3YAIpGINZOUsCZyidVAJySVk2U3wJ4c
         0NtbBN5zqNoojB3Uyzf/xKAB1o1gxW9DOHYnVZQsTLpPXuNe6Eof7BHdE1uL+ww/sG7c
         6RXtI6IK5gbXs95GsOCa9mm/hbo+OK6XFgJ0B4l5tQ+w8upvAl0+LQme2P9iR8OuV/kJ
         WbBawRJthBIE156d7Cih0/djvuNyYHIA1xe1RGDFcykpi8mqc5Aez93XS0XwyyVnMpUw
         JAmaFiDw1tNpoLhTJVuK5RVlWMQHKFBoyYd7DJyNi3mFlAnXXTrU5XB9MK739v2zZj+v
         6muQ==
X-Gm-Message-State: AMke39mU9wjzTYGYbzj9JT0y3QOGjABR8WNI2S3eU91Yc8WfA803RTNYfGpzasbn04xc/A==
X-Received: by 10.84.173.4 with SMTP id o4mr21501576plb.106.1488484351275;
        Thu, 02 Mar 2017 11:52:31 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d3sm18671840pfc.51.2017.03.02.11.52.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 11:52:30 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] staging: media: Do not use multiple blank lines
Date: Fri,  3 Mar 2017 01:22:02 +0530
Message-Id: <1488484322-5928-7-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>
References: <1488484322-5928-1-git-send-email-singhalsimran0@gmail.com>

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



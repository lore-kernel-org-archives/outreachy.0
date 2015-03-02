X-GM-THRID: 5931983175680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bd66ad1392ef0d48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.117.72 with SMTP id fl8mr27629295icc.23.1425310740680;
        Mon, 02 Mar 2015 07:39:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.183 with SMTP id 52ls651870qgz.49.gmail; Mon, 02 Mar
 2015 07:39:00 -0800 (PST)
X-Received: by 10.236.96.234 with SMTP id r70mr26254742yhf.39.1425310740536;
        Mon, 02 Mar 2015 07:39:00 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id gb13si280995pac.2.2015.03.02.07.39.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 07:39:00 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjg10 with SMTP id g10so40476747pdj.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 07:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=N+KlGYrbABtkDFcMZ1k2yd09ArXsng/Z7u5t3ybTF9k=;
        b=Tc3yFpbFCRCA7MiTjLIsOX66yLc0pDdMpaC3W4oIjQt7X30CUPhXukHDRT+5SKleii
         AXedfx9p7sTX4XrDBN3uQo+mIwqlZVQrRsIjSAIvYa5EBUSwet5Aerfg9ZRALMqGvCzM
         S4wb9A4E8LHS8DS2Kv9mK8Z682spS09VfqKJRqwSsCA+bSj+17leGBJl7n7xpj0uGjGZ
         IM/gLCDmnUoCCYy1feCiG1MAW3wA2SOEjphEawZCTJH9lKRFdZa9/dfBie3g9rfsVm2w
         cdDuAx+GmByNpSqGlccx+QcTlhk9eT3AaprRzD5aD7yrXhtx94+kTdswKargkGqElJeb
         Pddw==
X-Received: by 10.69.12.234 with SMTP id et10mr47856834pbd.65.1425310740291;
        Mon, 02 Mar 2015 07:39:00 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.33.155])
        by mx.google.com with ESMTPSA id xh3sm12440077pab.25.2015.03.02.07.38.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 07:38:59 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 2/2] Staging: media: omap24xx: Merge quoted string across lines
Date: Mon,  2 Mar 2015 21:08:32 +0530
Message-Id: <1425310712-16755-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425310712-16755-1-git-send-email-somyaanand214@gmail.com>
References: <1425310712-16755-1-git-send-email-somyaanand214@gmail.com>

This patch fixes a coding style issue by merging a splitted
quoted string across lines for better readability.

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/media/omap24xx/omap24xxcam.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/omap24xx/omap24xxcam.c b/drivers/staging/media/omap24xx/omap24xxcam.c
index d590b3e..ef920dc 100644
--- a/drivers/staging/media/omap24xx/omap24xxcam.c
+++ b/drivers/staging/media/omap24xx/omap24xxcam.c
@@ -889,8 +889,8 @@ static int omap24xxcam_sensor_init(struct omap24xxcam_device *cam)
 	omap24xxcam_clock_on(cam);
 	err = omap24xxcam_sensor_if_enable(cam);
 	if (err) {
-		dev_err(cam->dev, "sensor interface could not be enabled at "
-			"initialisation, %d\n", err);
+		dev_err(cam->dev, "sensor interface could not be enabled at initialisation, %d\n",
+			err);
 		cam->sdev = NULL;
 		goto out;
 	}
@@ -1878,5 +1878,5 @@ module_param(video_nr, int, 0);
 MODULE_PARM_DESC(video_nr,
 		 "Minor number for video device (-1 ==> auto assign)");
 module_param(capture_mem, int, 0);
-MODULE_PARM_DESC(capture_mem, "Maximum amount of memory for capture "
-		 "buffers (default 4800kiB)");
+MODULE_PARM_DESC(capture_mem,
+	"Maximum amount of memory for capture buffers (default 4800kiB)");
-- 
1.9.1



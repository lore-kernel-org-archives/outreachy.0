X-GM-THRID: 5931983175680
X-Received: by 10.67.8.40 with SMTP id dh8mr5643423pad.1.1425321092613;
        Mon, 02 Mar 2015 10:31:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.85 with SMTP id e79ls1855157qgd.4.gmail; Mon, 02 Mar
 2015 10:31:32 -0800 (PST)
X-Received: by 10.236.62.193 with SMTP id y41mr27535556yhc.38.1425321092359;
        Mon, 02 Mar 2015 10:31:32 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pd0-x233.google.com (mail-pd0-x233.google.com. [2607:f8b0:400e:c02::233])
        by gmr-mx.google.com with ESMTPS id hs7si1651493pad.1.2015.03.02.10.31.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) client-ip=2607:f8b0:400e:c02::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c02::233 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdno5 with SMTP id o5so41509552pdn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=N+KlGYrbABtkDFcMZ1k2yd09ArXsng/Z7u5t3ybTF9k=;
        b=XcUsCpBPPODdCvBXmmBpAoeLmLJBC0UUfqbL7rR2fAExq+HaTVCccZwMtx/cQs+3lv
         ZyvyGebZ/kZBIY8TU9UGMbY7Jfm/ZqBc7RvZ7vDrwVbXPB87kjf1qrmrKKcfGrqMaOnX
         uJXSHnMeZtAVAsaxjK/Mayanw+Rm3eTg8GceTFCTnh4EGYV/1EnmLDrcAwIOZVzFRwGf
         x9/RaueE3krupqMTEUXvsbo3cJI07dL8ITQlKwq+hebRlwZOxUCdAozjbzHUCTOLMHqm
         X9xsBEykLgzQEtj6yxnoiYcJm2A3HvcpHtiE4Wf+1ty8KJCeLUsm+vg7SB6kdylW7CNo
         /7jg==
X-Received: by 10.70.21.195 with SMTP id x3mr48793054pde.73.1425321092223;
        Mon, 02 Mar 2015 10:31:32 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([223.176.33.155])
        by mx.google.com with ESMTPSA id r9sm12713113pdl.20.2015.03.02.10.30.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 10:31:31 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH V2 2/2] Staging: media: omap24xx: Merge quoted string across lines
Date: Tue,  3 Mar 2015 00:00:27 +0530
Message-Id: <1425321027-20698-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425321027-20698-1-git-send-email-somyaanand214@gmail.com>
References: <1425321027-20698-1-git-send-email-somyaanand214@gmail.com>

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



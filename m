X-GM-THRID: 6094436958208
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fdf6518022b39f27
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.138.202 with SMTP id qs10mr4020604lbb.24.1425331702280;
        Mon, 02 Mar 2015 13:28:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.70 with SMTP id li6ls151262lab.44.gmail; Mon, 02 Mar
 2015 13:28:20 -0800 (PST)
X-Received: by 10.112.130.70 with SMTP id oc6mr4181567lbb.13.1425331700759;
        Mon, 02 Mar 2015 13:28:20 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si762666wia.0.2015.03.02.13.28.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 13:28:20 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw62 with SMTP id w62so36021226wes.9
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 13:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=CiXuJIIA7/Enz43M4L4Xi7NkFpl0PS0tz4PgcqMNWw4=;
        b=Xcb2B+m2LwAUv7Zu+UlqdXetW5YoK0tuseopnjFd68GAsjBbUww8V2ZapKQ41/IRjv
         cswcvMf3rjPgcgsFO3plQw9bC9K9TTGduiqxE1G3W9OtO/lCcohsECfK9Y8vOVoxeaks
         k1LB45VvGsPhe2hntfRL8SJZlA2z6IE0Rakyu+MOQGPtmEFaHe/aEVQeW0CAVFrgCsju
         kYrn8nkoOI0hs250UYavamH9qkJhDKplYJ3niNFzSCTO3JVg84G5M8MPgoFSoSMeo7Tg
         q3WpkouI3FME0yn39g4zX2fuIO4g7yX15YtMsG7UOx7slJ5Gb1/oMXEZOnCR2Ev9dmXa
         IMPA==
X-Received: by 10.194.158.234 with SMTP id wx10mr63739077wjb.23.1425331700649;
        Mon, 02 Mar 2015 13:28:20 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id u6sm17743507wix.12.2015.03.02.13.28.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 13:28:19 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: fbtft: Remove unnecessary 'out of memory' message.
Date: Mon,  2 Mar 2015 23:28:14 +0200
Message-Id: <1425331694-4760-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in file fb_ssd1351.c
WARNING: Possible unnecessary 'out of memory' message

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index b59120c..fd492b4 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -218,12 +218,8 @@ static void register_onboard_backlight(struct fbtft_par *par)
 
 	bl_ops = devm_kzalloc(par->info->device, sizeof(struct backlight_ops),
 				GFP_KERNEL);
-	if (!bl_ops) {
-		dev_err(par->info->device,
-			"%s: could not allocate memory for backlight operations.\n",
-			__func__);
+	if (!bl_ops)
 		return;
-	}
 
 	bl_ops->update_status = update_onboard_backlight;
 	bl_props.type = BACKLIGHT_RAW;
-- 
1.9.1



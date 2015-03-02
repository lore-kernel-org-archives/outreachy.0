X-GM-THRID: 6094436958208
X-Received: by 10.112.219.102 with SMTP id pn6mr4035259lbc.12.1425329820216;
        Mon, 02 Mar 2015 12:57:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.167 with SMTP id c7ls660461wix.33.canary; Mon, 02 Mar
 2015 12:56:59 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr2486958wia.7.1425329819940;
        Mon, 02 Mar 2015 12:56:59 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id o3si740033wib.2.2015.03.02.12.56.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 12:56:59 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x232.google.com with SMTP id k11so35836843wes.11
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 12:56:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oMpk8INev7ftk3n+foYJDsLCMH2blADprhdvoVCPBfI=;
        b=Hm9vV3pa/PILtLmVGkWNCfBMMahqPUqN6CETI7DglgIGbzYgHDYRqi4hIPwa0D2qIj
         ouU/wjJNeKcWgsW1PHrLDYjUqWak6rvUTKMMuzovAAsPAQc8rDlA9TWuLA1TlJ+ohUba
         gmK6mApnBQXmck0ZJjYiFUGJfWXAFHOSOcr1oXl11DaydlIGMlVzIWbgPPj3D8mjv0mM
         rIQBoEhSj3SbF+IER4ywWoVXejUJSkVIB2O7K7yESrRAORAQ7KE+j+TJToGRc5iXijyz
         3NVSyTZA7y+eEEAhy9N5reQoPwKZMXUHnLOJNl9QNu4hYfVnUmlh8yfHOMJiOeYgoBSm
         +jcg==
X-Received: by 10.181.8.75 with SMTP id di11mr39580027wid.26.1425329819877;
        Mon, 02 Mar 2015 12:56:59 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id ax10sm20823552wjc.26.2015.03.02.12.56.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Mar 2015 12:56:59 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: fbtft: Remove unnecessary 'out of memory' message.
Date: Mon,  2 Mar 2015 22:56:53 +0200
Message-Id: <1425329813-4124-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl warning in file fbtft-core.c
WARNING: Possible unnecessary 'out of memory' message

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index ac4287f..7ac1753 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -302,12 +302,8 @@ void fbtft_register_backlight(struct fbtft_par *par)
 
 	bl_ops = devm_kzalloc(par->info->device, sizeof(struct backlight_ops),
 				GFP_KERNEL);
-	if (!bl_ops) {
-		dev_err(par->info->device,
-			"%s: could not allocate memeory for backlight operations.\n",
-			__func__);
+	if (!bl_ops)
 		return;
-	}
 
 	bl_ops->get_brightness = fbtft_backlight_get_brightness;
 	bl_ops->update_status = fbtft_backlight_update_status;
-- 
1.9.1



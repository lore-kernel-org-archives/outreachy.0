X-GM-THRID: 2053825888256
X-Received: by 10.152.43.166 with SMTP id x6mr422644lal.3.1424548497410;
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.93.70 with SMTP id cs6ls272953wib.24.gmail; Sat, 21 Feb
 2015 11:54:57 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr390518wib.4.1424548497107;
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id l8si540278wia.0.2015.02.21.11.54.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x244.google.com with SMTP id em10so3834202wid.3
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=t/4IIz+LG4TEzaesvJkXnsIwX2KLv3GGERKZaQR2F10=;
        b=LYtHjhK8dt3PUSbFTpt5qW82uR7odye2HoXlUO+o0jxFIeNJhmvc5NHqQ13XW0MTmx
         ya0MXb2XKV9VCkxd2Axn+uGijpZ/KUTn8+qZ7fzKNus1+3mqEIcwv6R73c+IaCCxbGgW
         9zL2NIxP9FxR/JRoMn/CAoIazLydkO8XA6WAuTl6VVmNQXPlgDlFOb0q00LWDyPMMGf5
         jCnoxyvMwI3uIm67tBSaPKnQWcUJ8E2j3KnHjKt7OI5Bm+C1QS4x1sJjFXSYAN7i4K4A
         gZeKSCtb8AnTHY4DaVKRq7DV6BQHY53c3XZSjfvs2Q4AZQ1HHB9jFprRObG0QMY31pqD
         feVA==
X-Received: by 10.180.89.131 with SMTP id bo3mr6306975wib.89.1424548497035;
        Sat, 21 Feb 2015 11:54:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id ka1sm47948715wjc.2.2015.02.21.11.54.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:54:56 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: hal: Deleted space
Date: Sat, 21 Feb 2015 21:54:49 +0200
Message-Id: <1424548489-21304-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited by the kernel coding
style.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index 14650e9..0078468 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -1796,7 +1796,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
 		}
 		break;
 	case HW_VAR_H2C_MEDIA_STATUS_RPT:
-		rtl8188e_set_FwMediaStatus_cmd(Adapter , (*(__le16 *)val));
+		rtl8188e_set_FwMediaStatus_cmd(Adapter, (*(__le16 *)val));
 		break;
 	case HW_VAR_BCN_VALID:
 		/* BCN_VALID, BIT16 of REG_TDECTRL = BIT0 of REG_TDECTRL+2, write 1 to clear, Clear by sw */
-- 
1.9.1



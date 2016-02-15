X-GM-THRID: 6251470557563322368
X-Received: by 10.182.109.233 with SMTP id hv9mr15793629obb.18.1455533913667;
        Mon, 15 Feb 2016 02:58:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls2813742qge.15.gmail; Mon, 15 Feb
 2016 02:58:33 -0800 (PST)
X-Received: by 10.129.71.85 with SMTP id u82mr16463557ywa.9.1455533913052;
        Mon, 15 Feb 2016 02:58:33 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id ui7si3271434pab.0.2016.02.15.02.58.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 02:58:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id q63so85873790pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 02:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=y1Z0DoYCgUISuvnQSbvNQf55JeSWNbNmPH7t3Dl/CzI=;
        b=aopmWbSRIH+dzvPaLu8wzXzOOlv1YjDSZhJ6YQYJST6zhLUMMqZTc3VSFQ1HugWA6v
         VV43mia3hfBja/TDND8A6ixyOoi5P2J/LW2/A5ArGjgDKZsRr2qwIDa6RoFP+D5bJ661
         Z2ImBvpoTufi1SnjA4oNEKAGmFH8OGwPy+HbHSrxoqB1a+dbQul/rfiaxk2WUTAIamiJ
         7RllsiwUttFxlsfRcR8CacAmY9matbVtvgY1l9P+pmTSpW9R5D+nRVPLDrvp38/kVWDI
         CPIRcQCvj1j6cSObEBDX/hshv0WERRm/uaIbpp7zUHM4l0OZbcyNAMFYicBx23K5d//C
         jj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=y1Z0DoYCgUISuvnQSbvNQf55JeSWNbNmPH7t3Dl/CzI=;
        b=Px+1INK4SUc1MdYTBbAYMpTR+JgS1UTeashBNhXPxv0cFrFF1+CyNFmHAGbYUDJIsR
         bXfypCB35l2Fv9Aw2p9T++aYLe7caKt4l015No5M4NjJFBZ7nF8Syj3rIynKLYeZO45E
         v/dODWVKYn8hwqXi2U1mrfixWeFYlmP7QF5XYnSoo/zmV9jYtorhnHbne7+fc5FyLw9N
         qhhu63TwtvhZ/XJETs/oVugK+V39v68r9lXPlUOQRwBXYQ/wp/JDonl0y/WUt4lLwFSf
         AZn3ky6g+9nB7vahrVzbqL6VK2kbU1crxDUQjEkbbBxIKlORFjZb4ycBrdsw7L1bPf7L
         B3Sw==
X-Gm-Message-State: AG10YOST5xSQReI9IRrz8yYm0DdYzeGOhbEZg24RPJXi7QG8qa2fTYiLU9RmVvS4zalyZA==
X-Received: by 10.98.32.218 with SMTP id m87mr22839346pfj.48.1455533912902;
        Mon, 15 Feb 2016 02:58:32 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.190.1])
        by smtp.gmail.com with ESMTPSA id wh9sm37748955pab.8.2016.02.15.02.58.28
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 02:58:32 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 15 Feb 2016 16:28:20 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lmv: Remove unneeded do-while(0)
Date: Mon, 15 Feb 2016 16:28:19 +0530
Message-Id: <1455533899-17270-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

do {} while (0) wrapper in a single statement macro is unneeded.
Also its ok to keep empty #define here to avoid "statement with
no effect" warning.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/lmv/lmv_obd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
index 733222c..7a31bd6 100644
--- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
+++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
@@ -2147,7 +2147,7 @@ static void lmv_adjust_dirpages(struct page **pages, int ncfspgs, int nlupgs)
 	LASSERTF(nlupgs == 0, "left = %d", nlupgs);
 }
 #else
-#define lmv_adjust_dirpages(pages, ncfspgs, nlupgs) do {} while (0)
+#define lmv_adjust_dirpages(pages, ncfspgs, nlupgs)
 #endif	/* PAGE_CACHE_SIZE > LU_PAGE_SIZE */
 
 static int lmv_readpage(struct obd_export *exp, struct md_op_data *op_data,
-- 
1.9.1



X-GM-THRID: 7714883239936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,31430fd6994c5b1e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.150.115 with SMTP id uh19mr3564706wib.7.1426190351873;
        Thu, 12 Mar 2015 12:59:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.90.40 with SMTP id bt8ls14591wib.53.gmail; Thu, 12 Mar
 2015 12:59:11 -0700 (PDT)
X-Received: by 10.180.81.134 with SMTP id a6mr796599wiy.1.1426190351570;
        Thu, 12 Mar 2015 12:59:11 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id l8si1594452wia.0.2015.03.12.12.59.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 12:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id h11so657406wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 12:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=853qbFpOs/8HtR97EYsorgomZK0w5r9mH1LH4cgeCQI=;
        b=DlBKdt/xGNBDfpX4Jbxk9n8duh/fuF1ZI42MolXOiPvm1pCADLJbrNgv+58ZZHdVpU
         Mv1zKhvV78lOj+OTY5Lw5xdSUPwUW67EuQuBEaFXarYJOtWuJ4ORZUMoUNvJ+x/s4rb8
         9Za+et9LCrEpWTG5iSrDuwRJLGQm7Wvv0NSp8n/KuoAVsSWu7rJlfGm3nyIrPDx8mmKV
         VhcxaqaAQ2bkGwiOpATo0CdO1l1JWjkNZr5gUVhDGcZd6OhLBGhIqDmexl/j4Ya2wKg2
         NfvXTBxNyIWrK0rhcyXefVWocGlLVU2/BtNs/QOtyqOeLnuMa5vGCgL2ApkqrC8zd2+J
         DTEw==
X-Received: by 10.180.91.112 with SMTP id cd16mr90846659wib.14.1426190351501;
        Thu, 12 Mar 2015 12:59:11 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id y14sm11461303wjr.39.2015.03.12.12.59.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 12:59:10 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH v2 3/9] staging: sm750: Place space before and after curly brackets
Date: Thu, 12 Mar 2015 21:58:47 +0200
Message-Id: <73d66c8733d8304659700c653b81ee954ef59bc3.1426188525.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426188525.git.ciorneiioana@gmail.com>
References: <cover.1426188525.git.ciorneiioana@gmail.com>

Add space before and after curly brackets when is needed in order to
follow Linux coding style.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 67c3751..2eab4de 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -793,7 +793,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 			crtc->channel = sm750_primary;
 			crtc->oScreen = 0;
 			crtc->vScreen = share->pvMem;
-		}else{
+		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_secondary;
 			/* not consider of padding stuffs for oScreen, need fix*/
@@ -807,7 +807,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 			crtc->channel = sm750_secondary;
 			crtc->oScreen = 0;
 			crtc->vScreen = share->pvMem;
-		}else{
+		} else {
 			output->paths = sm750_crt;
 			crtc->channel = sm750_primary;
 			/* not consider of padding stuffs for oScreen, need fix*/
@@ -932,17 +932,17 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 					g_fbmode[index],
 					mdb_desc[i]);
 			break;
-		}else if (ret == 2) {
+		} else if (ret == 2) {
 			pr_warn("use specified mode:%s in %s, with an ignored refresh rate\n",
 					g_fbmode[index],
 					mdb_desc[i]);
 			break;
-		}else if (ret == 3) {
+		} else if (ret == 3) {
 			pr_warn("wanna use default mode\n");
 //			break;
-		}else if (ret == 4) {
+		} else if (ret == 4) {
 			pr_warn("fall back to any valid mode\n");
-		}else{
+		} else {
 			pr_warn("ret = %d, fb_find_mode failed, with %s\n", ret, mdb_desc[i]);
 		}
 	}
@@ -1097,10 +1097,10 @@ static void sm750fb_setup(struct lynx_share *share, char *src)
 			if (!g_fbmode[0]) {
 				g_fbmode[0] = opt;
 				pr_info("find fbmode0 : %s\n", g_fbmode[0]);
-			}else if (!g_fbmode[1]) {
+			} else if (!g_fbmode[1]) {
 				g_fbmode[1] = opt;
 				pr_info("find fbmode1 : %s\n", g_fbmode[1]);
-			}else{
+			} else {
 				pr_warn("How many view you wann set?\n");
 			}
 		}
@@ -1187,7 +1187,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 		share->accel.de_copyarea = hw_copyarea;
 		share->accel.de_imageblit = hw_imageblit;
 		pr_info("enable 2d acceleration\n");
-	}else{
+	} else {
 		pr_info("disable 2d acceleration\n");
 	}
 
@@ -1210,7 +1210,7 @@ static int lynxfb_pci_probe(struct pci_dev *pdev,
 		if (share->mtrr.vram < 0) {
 			/* don't block driver with the failure of MTRR */
 			pr_err("Unable to setup MTRR.\n");
-		}else{
+		} else {
 			share->mtrr.vram_added = 1;
 			pr_info("MTRR added succesfully\n");
 		}
-- 
1.9.1



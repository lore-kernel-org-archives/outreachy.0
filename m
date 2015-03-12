X-GM-THRID: 7714883239936
X-Received: by 10.112.198.34 with SMTP id iz2mr5738249lbc.22.1426123413737;
        Wed, 11 Mar 2015 18:23:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.8.193 with SMTP id t1ls1049771wia.30.canary; Wed, 11 Mar
 2015 18:23:33 -0700 (PDT)
X-Received: by 10.180.80.132 with SMTP id r4mr2560983wix.4.1426123413435;
        Wed, 11 Mar 2015 18:23:33 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id gj20si1423328wic.1.2015.03.11.18.23.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 18:23:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggx13 with SMTP id x13so12998342wgg.12
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 18:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=853qbFpOs/8HtR97EYsorgomZK0w5r9mH1LH4cgeCQI=;
        b=CTOQTAxxgyyOeuFPxbqWbq2ubAW+RBKkSx+QKsTN3LdgFMIHCnb9Gbw0AAvIOKN+/W
         T7iVU4WILDNAFhwo0lsvjAbstBY2VIpCtGMtZrmgQT7nWmquncZSca8L1CqNqNIhqCQ0
         YM1Dbm2knZC/6Lh+vW8nlstRWffBfmszYifgYEvRQS57gzaw8eAyIM7EJTqBdmtOFVLC
         gG96J8IJNQdIbw5aNzki0Ks9BUGsl4lH/hA93sj0jfPQODTuKIG0mGJ3t4pOiKV811Jp
         MLtN3RZVuOQTbajEEeJV+dXUbd9lgZJKJ08Urw7gAOhRwkMrID4TRozOFDNdNTbyZFOO
         ReDQ==
X-Received: by 10.194.85.233 with SMTP id k9mr17662088wjz.31.1426123413325;
        Wed, 11 Mar 2015 18:23:33 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id a13sm7732911wjx.30.2015.03.11.18.23.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 18:23:32 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH 3/9] staging: sm750: Place space before and after curly brackets
Date: Thu, 12 Mar 2015 03:23:08 +0200
Message-Id: <73d66c8733d8304659700c653b81ee954ef59bc3.1426121972.git.ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>
In-Reply-To: <cover.1426121972.git.ciorneiioana@gmail.com>
References: <cover.1426121972.git.ciorneiioana@gmail.com>

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



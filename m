X-GM-THRID: 6261470851471769600
X-Received: by 10.140.250.69 with SMTP id v66mr13966255qhc.22.1457862288107;
        Sun, 13 Mar 2016 01:44:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.22.116 with SMTP id c20ls1397657obf.62.gmail; Sun, 13 Mar
 2016 01:44:47 -0800 (PST)
X-Received: by 10.182.87.2 with SMTP id t2mr13945873obz.20.1457862287457;
        Sun, 13 Mar 2016 01:44:47 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id y20si2367783pfa.2.2016.03.13.01.44.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 01:44:47 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id u190so84945744pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 01:44:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UIhRhZf7AbHClGhnmWD19QSkHccBv8DoJ2LPa6hkEwo=;
        b=dGvOLGku4CXD5cRNofoTshnGEPJiaMZf+AOv6j2edhCTOIj2aUhBw2jb1u3PnGMWN2
         ZWU5dZAIidNUkrVF0jZBEfvjks9NmXLR0d74TZVEq7tT8k2ma+DRq33Xd+wvhILr2SiV
         pDqqdE0jsiTGZFwWehgM5KUMF9/AtWvYBxxi8M0J2dZoKhMvK2b2uHl7FvJzG56/G//U
         uPENHmFMLQE3IKXId1kzdLPL5rdbW9P6uzpbVfEwTd+0lDoMcOJqICImkmE870pZeGcQ
         hmhJUGlx1b0huOYJpFJ4EDH49C1wnBHqfSphX0m66fmMRSDMrMG6IJ1TTvas1C/EYcFu
         dcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UIhRhZf7AbHClGhnmWD19QSkHccBv8DoJ2LPa6hkEwo=;
        b=cdzUkf2eIvLT89AqEiuuOCFG3sTm9y30u8pFTV1i2++BJM2r+1iEl+w7xLfVm5768/
         mI2J3kKnDF0W0FXx1xiqbQFFPIHMcd8VcMZcQDmdri/9jWVLXhTAfrGGLKSLD2Jb0qbX
         5ibFJ3KaW37Aom2aMFBBCAREz2lczbV8Em95ZsngHL885r+rqyNO1UaVnSSXzBo+cUVB
         olAJ/mZRInVGfV28P+hZ0xzwh0VScU5qajHhHSwAnnfI2+8izVFzFJZl/aJOjBnNfsyC
         wLBcomh5pcCs9C60m1M7OgIFeLNw/DU0lBr6UuFgFbaiI9QJjimKR0cWccUTu4vy56wK
         6e4g==
X-Gm-Message-State: AD7BkJKNss9KUGUKATVkxtrrMw8UYCW/KPLOcPMxIZat96bcVaGbLyiGvjYJ6DzrSerIPQ==
X-Received: by 10.98.12.153 with SMTP id 25mr21064264pfm.27.1457862287309;
        Sun, 13 Mar 2016 01:44:47 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id h19sm24334555pfh.43.2016.03.13.01.44.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 01:44:46 -0800 (PST)
Date: Sun, 13 Mar 2016 15:14:38 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: else is not generally useful after a
 break or return
Message-ID: <20160313094430.GA4700@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove else after a break. Because else is
generally not useful after a break or return.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index fd938fb..a2ca621 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -626,13 +626,12 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 			if ((reg & 0x1) == 0) {
 				break;
-			} else {
-				counter++;
-				if (counter > 200) {
-					counter = 0;
-					ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
-					break;
-				}
+			}
+			counter++;
+			if (counter > 200) {
+				counter = 0;
+				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_TX_CTRL, 0);
+				break;
 			}
 		} while (!wilc->quit);
 
@@ -658,9 +657,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if ((reg >> 2) & 0x1) {
 					entries = ((reg >> 3) & 0x3f);
 					break;
-				} else {
-					release_bus(wilc, RELEASE_ALLOW_SLEEP);
 				}
+				release_bus(wilc, RELEASE_ALLOW_SLEEP);
 			} while (--timeout);
 			if (timeout <= 0) {
 				ret = wilc->hif_func->hif_write_reg(wilc, WILC_HOST_VMM_CTL, 0x0);
@@ -679,9 +677,8 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if (!ret)
 					break;
 				break;
-			} else {
-				break;
 			}
+			break;
 		} while (1);
 
 		if (!ret)
-- 
1.9.1



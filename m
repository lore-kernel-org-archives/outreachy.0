X-GM-THRID: 6251514840674729984
X-Received: by 10.129.88.135 with SMTP id m129mr15671490ywb.47.1455544224098;
        Mon, 15 Feb 2016 05:50:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.80 with SMTP id y77ls1506167ioi.81.gmail; Mon, 15 Feb
 2016 05:50:23 -0800 (PST)
X-Received: by 10.66.145.232 with SMTP id sx8mr15407877pab.13.1455544223727;
        Mon, 15 Feb 2016 05:50:23 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id yd9si179683pab.1.2016.02.15.05.50.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 05:50:23 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id fl4so74456241pad.0
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 05:50:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ArqZtyyQy/0LcnE4DYOXw/P2ndix+KSNzNvas03QTic=;
        b=zqXBRIqNVZ8LdvnMPj7ACVgD2+H14VkQechC1GBWhwZzqwPt+oOuHcWXeNAluNBAUq
         Ca4prm1dbYgMUUZ1AOHTIWOmHBzve8up+xp/Pbupe8MuewcXNXS0xrXIQ2a0nnEgRRya
         YOoeChEIJXgMRdXZ+/awjXlXz0TOucGo2upDCbWPKJQjQ+Qpi1fXx9CxEKwvtYVhTNCK
         kYvOOrJ6nNRi34nisMGLmz5bcIn4OEFOBAq+msdfZ+iv0biZ34WmDmtEhYJBDuCi5K2z
         Jphqlh1H2cqGC2znk7nNnAe9ji6zyuC7euLvAG70OHhm1gKu0XyA9rdOEspwDeUqe+OS
         kNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ArqZtyyQy/0LcnE4DYOXw/P2ndix+KSNzNvas03QTic=;
        b=TZ0EnaSlZooR40iquKvy3xzL6AC2B2NZi121wY4mxeOq6lQD+nXiCPHSzyNVSKZyxd
         FHhn6fN+LGu+6wWZLJK/6NRZhYj6GRwtyKnAj9MUx4A8d68aCcHIgY61+hYmrd3zWDsv
         DHbJrkar20s5KUajzLbEFLm6+mje0NhRhRd/i1XOM30g/wecS4F9MsNf/NTausmlyHQ2
         bUDA/QzhAimiXe56bsfG4dfOpOt44lpj2d8ylNajGbAsUlkWDydr2dgA7uJsSeuNsVJK
         khNqziCnURzePoSapq+tPgeM+YZe4lAqdxVR44/ScZXjAOAzSD68wPGuOK4ooZpy/x2b
         7TdQ==
X-Gm-Message-State: AG10YOSReJS5H1AKvYv0ZkpiP9HQLDtnLHgOHWvxfSjTDIb0G1op5bgvds6A8FELALzunQ==
X-Received: by 10.67.6.226 with SMTP id cx2mr23277935pad.93.1455544223591;
        Mon, 15 Feb 2016 05:50:23 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id wh9sm38923850pab.8.2016.02.15.05.50.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 05:50:23 -0800 (PST)
Date: Mon, 15 Feb 2016 19:20:47 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Remove an unnecessary else after break
Message-ID: <20160215135039.GA25157@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove else after a break. Because else is generally not useful after a break or return.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/wilc_wlan.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index 21e79dc..397ad45 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -660,8 +660,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 		if (i == 0)
 			break;
-		else
-			vmm_table[i] = 0x0;
+		vmm_table[i] = 0x0;
 
 		acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
 		counter = 0;
@@ -674,7 +673,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 
 			if ((reg & 0x1) == 0) {
 				break;
-			} else {
+			}
 				counter++;
 				if (counter > 200) {
 					counter = 0;
@@ -682,7 +681,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 						wilc, WILC_HOST_TX_CTRL, 0);
 					break;
 				}
-			}
+
 		} while (!wilc->quit);
 
 		if (!ret)
@@ -710,9 +709,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if ((reg >> 2) & 0x1) {
 					entries = ((reg >> 3) & 0x3f);
 					break;
-				} else {
-					release_bus(wilc, RELEASE_ALLOW_SLEEP);
 				}
+					release_bus(wilc, RELEASE_ALLOW_SLEEP);
+
 			} while (--timeout);
 			if (timeout <= 0) {
 				ret = wilc->hif_func->hif_write_reg(
@@ -734,9 +733,9 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
 				if (!ret)
 					break;
 				break;
-			} else {
-				break;
 			}
+				break;
+
 		} while (1);
 
 		if (!ret)
-- 
1.9.1



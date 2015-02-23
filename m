X-GM-THRID: 2721650311168
X-Received: by 10.52.236.196 with SMTP id uw4mr11059351vdc.2.1424682686909;
        Mon, 23 Feb 2015 01:11:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.195 with SMTP id e64ls1587923ioi.70.gmail; Mon, 23 Feb
 2015 01:11:26 -0800 (PST)
X-Received: by 10.50.26.40 with SMTP id i8mr10649138igg.8.1424682686661;
        Mon, 23 Feb 2015 01:11:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pc4si4131085pac.0.2015.02.23.01.11.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:11:26 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id et14so25957815pad.11
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:11:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=D4S0XWvzZz+tD5NRd96efmqo8q7M1ALLGfEnVZVfLNE=;
        b=CJ2EyTTm2r5eZoB1AhVBe/cUt53NDbM/y1ERsABpULn32c9YYxE6NyGhOS5bqR6s9/
         vu9ls/t6PVryiOCD3MZolSn1lE3X3SE3+HEx+CUiZhLXT5rgX9y9a/SD3AHLZ8jpcAiO
         QlvFbZ4LnLcYSUtla6CAK8YyX8Fe0WSOCyInROQx09C2bNxfC7t749yV3IuJ5MU/mj2G
         cl7Uw+CpZIU6j+deSDOeKwddES1MyPUlb7JVGv3rkvqXuMKdZV4XN942cqC6G3iTAT/z
         i1wCV+NuQUDOFiTW6vWVD72ZJzGh2njT26RiDcthKTOAt6/yuw9kBmAKlIj3lKyXHtGY
         J0zg==
X-Received: by 10.66.144.100 with SMTP id sl4mr17253122pab.128.1424682686549;
        Mon, 23 Feb 2015 01:11:26 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id t14sm10780300pbs.67.2015.02.23.01.11.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:11:25 -0800 (PST)
Date: Mon, 23 Feb 2015 14:41:07 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Replace unneeded switch-case block
Message-ID: <20150223091107.GA1748@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace switch-case block with single if statement to 
increase code readability.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 3950cb3..623fb4f 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -302,21 +302,8 @@ static void phy_set_bw_mode_callback(struct adapter *adapt)
 	}
 
 	/* Set RF related register */
-	switch (hal_data->rf_chip) {
-	case RF_8225:
-		break;
-	case RF_8256:
-		break;
-	case RF_8258:
-		break;
-	case RF_PSEUDO_11N:
-		break;
-	case RF_6052:
+	if (hal_data->rf_chip == RF_6052)
 		rtl88eu_phy_rf6052_set_bandwidth(adapt, hal_data->CurrentChannelBW);
-		break;
-	default:
-		break;
-	}
 }
 
 void phy_set_bw_mode(struct adapter *adapt, enum ht_channel_width bandwidth,
-- 
1.9.1



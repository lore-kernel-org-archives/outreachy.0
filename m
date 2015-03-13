X-GM-THRID: 8039524466688
X-Received: by 10.182.246.37 with SMTP id xt5mr47331770obc.25.1426233563792;
        Fri, 13 Mar 2015 00:59:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.18 with SMTP id f18ls1217529iod.39.gmail; Fri, 13 Mar
 2015 00:59:23 -0700 (PDT)
X-Received: by 10.50.254.161 with SMTP id aj1mr1393585igd.6.1426233563617;
        Fri, 13 Mar 2015 00:59:23 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id ni4si217635pdb.2.2015.03.13.00.59.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 00:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so27495135pad.11
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 00:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=jTf+QszM/SRLEb4Fv81CZYcSsdv3n3C/6jFT85l3L/M=;
        b=G3Q7BiRlMw2zFiXZ28jFl3GqaBPuvWWC4KFWIlHUtyNNO8wACpy6r0moNdQRUbXBaE
         fw8zbr3fHfkLwf8hyvcFlE9qR0hlMJ6lcG0VPDn6eF0mqtpFVlZ2ff1RuSBcRwp0Fb5h
         pPWdl+gzTNMeiAvYyvs1bapLyAH/1UCYgP0eG/L8avG90V3ZtPsT+Xz45yCc/UIxS1FK
         kwIvF1iqN6f5M5dCyiCD5M4Z9F3X2ZWK62AEOypvVZR5mPhiSgYRVAc0br7jMkfp8NuP
         t97V9JSOdx1grXxPHO6nwgRH20qPfPUU0IpCBTGLY8KQHoaE9/86VY42w7Mnj6AJCNR9
         M7Bg==
X-Received: by 10.66.101.35 with SMTP id fd3mr101167195pab.50.1426233563516;
        Fri, 13 Mar 2015 00:59:23 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id z4sm2017947pdi.90.2015.03.13.00.59.21
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 00:59:22 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8192e: remove break after return
Date: Fri, 13 Mar 2015 16:58:41 +0900
Message-Id: <d7187c448117f47a0feac566a4933e60ed604590.1426233142.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1426233142.git.iskaranth@gmail.com>
References: <cover.1426233142.git.iskaranth@gmail.com>
In-Reply-To: <cover.1426233142.git.iskaranth@gmail.com>
References: <cover.1426233142.git.iskaranth@gmail.com>

Remove "break" statement after a "return" statement as
it does not get executed.

Found by checkpatch.pl - break is not useful after a goto
or return

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 1 -
 drivers/staging/rtl8192e/rtllib_softmac.c      | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index cd3c662..a369a1f 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -920,7 +920,6 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
 			RT_TRACE(COMP_ERR, "Unknown RFChipID: %d\n",
 				 priv->rf_chip);
 			return false;
-			break;
 		}
 
 
diff --git a/drivers/staging/rtl8192e/rtllib_softmac.c b/drivers/staging/rtl8192e/rtllib_softmac.c
index 16aef7c..2e730b5 100644
--- a/drivers/staging/rtl8192e/rtllib_softmac.c
+++ b/drivers/staging/rtl8192e/rtllib_softmac.c
@@ -2450,7 +2450,6 @@ inline int rtllib_rx_frame_softmac(struct rtllib_device *ieee,
 		break;
 	default:
 		return -1;
-		break;
 	}
 	return 0;
 }
-- 
2.1.0



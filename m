X-GM-THRID: 3247770173440
X-Received: by 10.194.86.1 with SMTP id l1mr2321018wjz.0.1424799102517;
        Tue, 24 Feb 2015 09:31:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls570336lae.98.gmail; Tue, 24 Feb
 2015 09:31:42 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr2349022lbb.11.1424799102001;
        Tue, 24 Feb 2015 09:31:42 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id i7si953583wif.0.2015.02.24.09.31.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 09:31:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id em10so26940398wid.5
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 09:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iwubD2iSByjGM305O+GlrIT5Tql2Ux4vmj7e+LIPXWk=;
        b=IKZD3ztBfpv+WQBAL/yDnsWKMXYnJubRetNhbXJ1KXC/HTktSh2PF4cMVRhr7mZxr9
         TilA+3lqkLyTcYOLubVjPmA1BQeBwoIY60IXu/PqdB/bC003rQd2q/vRFm4i8xe5zw3d
         uCyZ4oBJlCg1gYDaVT8Bum1mETU3IzUZuXNIhaGqFlNZbhJgJkgvZAyazNw+gHJUJYDj
         qzTdkxeO6qdVboVb7hQHhkTtdstq405+MdHDeC3sAy9CvTfSW7pWW+EgBkyuIHKBiGn3
         DtGUKkOCW8f9NRhaKoNm3iYTSaK+smAq3ybjNI5I7G7y6lg83wmge+XdWwGuGqLcta6b
         RUqg==
X-Received: by 10.194.62.198 with SMTP id a6mr35150218wjs.90.1424799101842;
        Tue, 24 Feb 2015 09:31:41 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id lu13sm21450678wic.10.2015.02.24.09.31.40
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 09:31:41 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 2/6] Staging: rtl8192u: Replace TRUE with true
Date: Tue, 24 Feb 2015 18:31:33 +0100
Message-Id: <4ceaa6f20532b3112484ecaa074106d1c130c6c6.1424798953.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424798953.git.ksenija.stanojevic@gmail.com>
References: <cover.1424798953.git.ksenija.stanojevic@gmail.com>

Replace all occurrences of TRUE by true.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index 1868352..5460894 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -225,7 +225,7 @@ void PHY_SetRF8256CCKTxPower(struct net_device *dev, u8 powerlevel)
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	TxAGC = powerlevel;
 
-	if (priv->bDynamicTxLowPower == TRUE) {
+	if (priv->bDynamicTxLowPower == true) {
 		if (priv->CustomerID == RT_CID_819x_Netcore)
 			TxAGC = 0x22;
 		else
@@ -275,7 +275,7 @@ void PHY_SetRF8256OFDMTxPower(struct net_device *dev, u8 powerlevel)
 			priv->Pwr_Track = writeVal_tmp;
 		}
 
-		if (priv->bDynamicTxHighPower == TRUE) {
+		if (priv->bDynamicTxHighPower == true) {
 			/*Add by Jacken 2008/03/06
 			 *Emily, 20080613. Set low tx power for both MCS and legacy OFDM
 			 */
-- 
1.9.1



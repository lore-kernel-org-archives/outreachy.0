X-GM-THRID: 6203334269363814400
X-Received: by 10.180.210.212 with SMTP id mw20mr1007857wic.3.1444326310431;
        Thu, 08 Oct 2015 10:45:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.161.20 with SMTP id k20ls208103lfe.88.gmail; Thu, 08 Oct
 2015 10:45:09 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr1678030lbb.19.1444326309543;
        Thu, 08 Oct 2015 10:45:09 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id bj4si366018wib.1.2015.10.08.10.45.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 10:45:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id lk2so35921668wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 10:45:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TCFOkYv1sWvPNdKxdwwTQgC7KRiaHqPZfVwzem+MQ1s=;
        b=SX4a9Z++JZBpKfpy6bHK1bikUN0aA/fxOkbr89ei66G5CgjCrc4Z60kREVJyrvBjLi
         gZg565uNohJ8hBjUkedPEEuaxvWSKCwlx4wNsGaOvVRDHCgtR92AI+NFY80UiunnfAmn
         4CmmzCBhvTCJfiA7dpyMA+4hkFO9ozgikkQBEfByNr246mnyAFQzsQMc+HvLkVKYLO/+
         2H+0vjK3+X738mQK/OLniRS59UPMFfLez5XEyApz3WmLusgP/nJjLlpHJnOlVaDD4y9m
         mbDvH+NIzr44I+n8/KJ4MICnogXeI76UpwKpXeLqJuQ31USH+dUM5xPRi0Y3vTnCh2Ep
         fCvw==
X-Received: by 10.180.188.33 with SMTP id fx1mr5617885wic.31.1444326309418;
        Thu, 08 Oct 2015 10:45:09 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id wj4sm47498977wjb.10.2015.10.08.10.45.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 10:45:08 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: vt6655: Replace switch by if-else statement
Date: Thu,  8 Oct 2015 19:44:58 +0200
Message-Id: <1444326298-12640-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Use of switch statement is wrong here, better use if-else statement
instead.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
---
 drivers/staging/vt6655/channel.c | 33 +++++++++++++--------------------
 1 file changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
index 7a71782..3d12da6 100644
--- a/drivers/staging/vt6655/channel.c
+++ b/drivers/staging/vt6655/channel.c
@@ -132,26 +132,10 @@ void vnt_init_bands(struct vnt_private *priv)
 	struct ieee80211_channel *ch;
 	int i;
 
-	switch (priv->byRFType) {
-	case RF_AIROHA7230:
-	case RF_UW2452:
-	case RF_NOTHING:
-	default:
-		ch = vnt_channels_5ghz;
+	if (priv->byRFType == RF_RFMD2959 || priv->byRFType == RF_AIROHA ||
+	    priv->byRFType == RF_AL2230S || priv->byRFType == RF_UW2451 ||
+	    priv->byRFType == RF_VT3226) {
 
-		for (i = 0; i < ARRAY_SIZE(vnt_channels_5ghz); i++) {
-			ch[i].max_power = 0x3f;
-			ch[i].flags = IEEE80211_CHAN_NO_HT40;
-		}
-
-		priv->hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
-						&vnt_supported_5ghz_band;
-	/* fallthrough */
-	case RF_RFMD2959:
-	case RF_AIROHA:
-	case RF_AL2230S:
-	case RF_UW2451:
-	case RF_VT3226:
 		ch = vnt_channels_2ghz;
 
 		for (i = 0; i < ARRAY_SIZE(vnt_channels_2ghz); i++) {
@@ -161,7 +145,16 @@ void vnt_init_bands(struct vnt_private *priv)
 
 		priv->hw->wiphy->bands[IEEE80211_BAND_2GHZ] =
 						&vnt_supported_2ghz_band;
-		break;
+	} else {
+		ch = vnt_channels_5ghz;
+
+		for (i = 0; i < ARRAY_SIZE(vnt_channels_5ghz); i++) {
+			ch[i].max_power = 0x3f;
+			ch[i].flags = IEEE80211_CHAN_NO_HT40;
+		}
+
+		priv->hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
+						&vnt_supported_5ghz_band;
 	}
 }
 
-- 
1.9.1



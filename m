X-GM-THRID: 6536210357179908096
X-Received: by 10.107.36.137 with SMTP id k131mr5663469iok.121.1522261604545;
        Wed, 28 Mar 2018 11:26:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7851:: with SMTP id p78-v6ls1120170itc.5.gmail; Wed, 28
 Mar 2018 11:26:43 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+Mrua1y7Tcwmr/+6jCZnvRXPYDVm/H+ooDlB2oj4LJRworFbYXAPEQwOKlB3qKtvl8u4JM
X-Received: by 2002:a24:c506:: with SMTP id f6-v6mr162860itg.38.1522261603385;
        Wed, 28 Mar 2018 11:26:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522261603; cv=none;
        d=google.com; s=arc-20160816;
        b=f+ndeqHgTCC2GzUyJ4VOOFCsvK2AF0qLPkcV6E8PxSxQOs2heSDyq2s8EYWcWJbFTo
         nzI8I7xNX0pok77Ct6eXLIAoWysgY1vV4b+YTdic4gwC9+OaS/SC++14zyeQTn06sD8R
         T1rohl2yR7lQuN6jd0r4Kh9owUA7KyZC5FJsSCrXEBxw9LXK7ohSfBD30LAjkueaNYy9
         BBGo9+E/3st1rNgtqI/YJTI7mrdEEFJVRUK757MlU5n7yaMHGPq5kmli5PMHJnqdKkTp
         vm413RSQL08edvffH3eF7GaMI/WnEXM86wZvSivNlw/9EpZ9JKAfHfBLNjAzRPXTYQGa
         9G4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=CIIbKjadU+D8ojRUt3pHhgWJWzshu+byc7f8qwo9jFM=;
        b=MOrpzbt/VvYyl6xVVAlMz5+KAs0HX7Kc3bIUnpCodBDx2nS3m5ciXAnQREk1KKUbBI
         xR2YK5yXFuQLUhTJ2RWYU1h+sypnF4ZFtXzkRX9uGOuZFCtdqd1m2zGF9dQG0q/9OMk/
         yvCSdHEqwqRN1liQ8um3EnFiOqYRAtLZI7l8nRCAA6b7SXp+OTQRs2c8yQfPtIq4VR7N
         iJLTFyGXIo7t4Fvl69CdykLWy8bdA2IsQ3s6SnU7LddkyllttjlH2Vc04RGSqfs3o8c9
         V+AepSl4jKl5rcZSNonvvFKqNT+Z4SIOXOzHS5HPbq9u6Hyqmdy8g8+YMVbz2DBmdGNL
         A2Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ggoQaHUs;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id k9si324817ioc.1.2018.03.28.11.26.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 11:26:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ggoQaHUs;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x242.google.com with SMTP id u86so1368916pfd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Mar 2018 11:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=CIIbKjadU+D8ojRUt3pHhgWJWzshu+byc7f8qwo9jFM=;
        b=ggoQaHUsjLs/bQ0HPpPEUh8oBmoxczWy+RVAYggX/tT3dmV+XkfgLZSpitvNchw+Ds
         h6a5nPv224egQD3EccDAsgJm+qNr192Xnsa7vtOq60aP+hz4l7LVr+vrDl1dOKd7Y/J5
         LDVit5xCVcc13m+cG+gCYg5gnbqaRYlQmG4sI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CIIbKjadU+D8ojRUt3pHhgWJWzshu+byc7f8qwo9jFM=;
        b=nKAtukkV3kb6H9b+7Ppgj9CKC/qpodgWaim5N66GivUyVH3gthra03o8/8mm5AbRUG
         TQsdRXGhcE99bJvJrqdaRP25dzDWH5o/nZmkzRyyq5rCBXcr13mSjfIhjOHW+wnIYtRx
         ZzycOzl0p0QkmJ1I0m/ZqRZUO93Be5QgpfKBpIl9ZZXcrrYGWbf5vYZItWnN2X0MKVJl
         ByTMsxCeodpQMwE+R2Y5qktqrBJCh/e+IMF03JkWW/w92hGgqY2CKYMWWMAcL2E7dPQx
         MRb6Gl+HqhqjwzvlLmo9vbz3zbR8ou/0eTRvI4sPKcSYIn6kWXZ3wyddxZtLAk1KRdAU
         lv2Q==
X-Gm-Message-State: AElRT7ERVerhA44Up+zctOauwUzi5uCgOO6hqXSToEndQvQHzzWbEaIO
	34FDZ1Y3jG6LVVDEZV2b5k8d+g==
X-Received: by 10.99.131.73 with SMTP id h70mr3224446pge.195.1522261602500;
        Wed, 28 Mar 2018 11:26:42 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id q2sm7421870pgp.70.2018.03.28.11.26.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Mar 2018 11:26:41 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v5] staging: vt6655: Remove else after return
Date: Wed, 28 Mar 2018 18:26:28 +0000
Message-Id: <1522261588-17147-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove else after return. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v5:
 - Add blank line after variable declarations.

 drivers/staging/vt6655/rxtx.c | 39 +++++++++++++++++++--------------------
 1 file changed, 19 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9c4a532..80f3aa3 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -552,6 +552,11 @@ s_uFillDataHead(
 			return buf->duration_a;
 		} /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
+		struct vnt_tx_datahead_ab *buf = pTxDataHead;
+		/* Get SignalField, ServiceField & Length */
+		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+				  byPktType, &buf->ab);
+
 		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
 			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
@@ -568,28 +573,22 @@ s_uFillDataHead(
 										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
 			return buf->duration;
-		} else {
-			struct vnt_tx_datahead_ab *buf = pTxDataHead;
-			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-					  byPktType, &buf->ab);
-
-			if (is_pspoll) {
-				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
-
-				buf->duration = dur;
-			} else {
-				/* Get Duration and TimeStampOff */
-				buf->duration =
-					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									    wCurrentRate, bNeedAck, uFragIdx,
-									    cbLastFragmentSize, uMACfragNum,
-									    byFBOption));
-			}
+		}
+		if (is_pspoll) {
+			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
 
-			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
-			return buf->duration;
+			buf->duration = dur;
+		} else {
+			/* Get Duration and TimeStampOff */
+			buf->duration =
+				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
+								    wCurrentRate, bNeedAck, uFragIdx,
+								    cbLastFragmentSize, uMACfragNum,
+								    byFBOption));
 		}
+
+		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+		return buf->duration;
 	} else {
 		struct vnt_tx_datahead_ab *buf = pTxDataHead;
 		/* Get SignalField, ServiceField & Length */
-- 
2.7.4



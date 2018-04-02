X-GM-THRID: 6536210357179908096
X-Received: by 10.31.95.8 with SMTP id t8mr3456191vkb.94.1522659800635;
        Mon, 02 Apr 2018 02:03:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.16.145 with SMTP id d17ls1411240uab.5.gmail; Mon, 02 Apr
 2018 02:03:19 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+rcora5anIE0pPjdpCHibkpOAKqXjudoCmJVrvSWT/UximxqjdSq4hq0XA0VM+odJVEoAx
X-Received: by 10.176.48.209 with SMTP id c17mr3562589uam.37.1522659799484;
        Mon, 02 Apr 2018 02:03:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522659799; cv=none;
        d=google.com; s=arc-20160816;
        b=p50rjgbY58qqk5p+J4l2tt1I2UozHVYe8tqP+MCj8tVpHkAoBg+lJCyK128whR0mrM
         MeYIWIsYFZWL9egloXpxxn7cTi4aVy4UliUtQxh+cBxJU3I0HfPUkThkhl0CVN+ADGZ5
         nmZqMsMWKyKQ1zgJgTwsRysvMY0oUu99LcuAxqyNYYyk7bRgl04OyJ+kfIyDMUQYdm/T
         o3/omnG6uKxNG18EWQz8XymumF1+VDYjHPLpBY+6BzUEzAJEiWDo/+RwRop/hzN0nRMA
         8oJ/yH6PKuoiGLT6MbPlONR2ZNPqpy/3aF35DZKYTzW1/I2bmx8C8k+hoJOQp75ah/vw
         RCbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=/Q84cYCpPFbQCkEM4KRngGncIBOQRI0Ugao3EUTqZjI=;
        b=MEqiG1+bcGa6PbRRBszE1+4DC1jt+Xry3JMIme01hlaC+dP7K+CTH0iaK31A+U3tPK
         cYshBsJb32DJZUlfgf5AbbVlJHvtvwbVXo27zjJA4owAHvmk1isUysxQIkkYoU4xiqiu
         BP21RPQN3sBzXrNr50xfRwkvZBDtQHz8PvQ1V52ssMYwEXrCl46p/Nn3AH/adHMFy68S
         gnzDNOvo5HBA6C7vT6L0DSeA9IgrUjRYeTcKcH7QQBSEzKYo+EX0aeAG3i3uoC2ZgqnD
         YxoNolawOB48kqIZtUZHOxHbiwbib2Odjk59XF0JkaXOpYU3nd8pmSpWiGJUA8ombnuB
         POTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=X+XSBGpH;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id t23si989240uaj.3.2018.04.02.02.03.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Apr 2018 02:03:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=X+XSBGpH;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x243.google.com with SMTP id 61-v6so1768853plb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Apr 2018 02:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=/Q84cYCpPFbQCkEM4KRngGncIBOQRI0Ugao3EUTqZjI=;
        b=X+XSBGpHOmyLTFIF7gmoLgySNUfrKypzvFcTdE+UI7rQlTvtZm8cdVft17P9d0c3JM
         UsQPViipFMaK8Q46RwZRNhZz2yanHxM3FqPjUsj1OCWPEBg96x/LckLGHo5Mz6GLXBPG
         /Qsi1j0BVSZnCKHZaFNuQDwWy29Bi0g8L1nVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/Q84cYCpPFbQCkEM4KRngGncIBOQRI0Ugao3EUTqZjI=;
        b=CCD1rnIMyU/P3Q0VpaCWsvcGuq9Kx6/LfBx/ff1gWiVj1GsxwnEff05jj8fWXmvc+M
         uEERampAmdPjtXpPp+CsDURSAGd1KmvTqK/6O90a+mw2TL0gF3JfBJ4QTpPGmDcVfP+z
         yKIv+h+uvhKALqqQ/kIhuRCZaIdinKP15N7t8+Xz/MznyNWH4fHSNPgTN7SM0EvyxMSI
         2pIgvdadSrAkdlXqkPYkh9MUV3LnBGBjqNeaXtGTxsofrl5W5hhTF/hJgE98kj4jmMbT
         kFI8pAvdWPuN5IaTQe/D/pa6xMAbUtUI53MBasOFmX59PpKhnjK25Q5lgzGRf9ssmwHC
         Pd2A==
X-Gm-Message-State: AElRT7FYJVVUkOlcikdFjYDyU0OFRbptlLUoJ+chWWAmNa5U1SfkSv04
	nyIoxRJG3umlnqyDpO+sWO77BHeF
X-Received: by 2002:a17:902:8ec8:: with SMTP id x8-v6mr9282614plo.179.1522659798093;
        Mon, 02 Apr 2018 02:03:18 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id l80sm11443422pfb.38.2018.04.02.02.03.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 02 Apr 2018 02:03:17 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	forest@alittletooquiet.net,
	gregkh@linuxfoundation.org
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v6] staging: vt6655: Remove else after return
Date: Mon,  2 Apr 2018 09:02:51 +0000
Message-Id: <1522659771-799-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove else after return and match alignment with open parenthesis.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v6:
 - Remove else after return
 - Move variable declarations to top of code block
 - Adjust alignments within the if-block

 drivers/staging/vt6655/rxtx.c | 41 ++++++++++++++++++++---------------------
 1 file changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9c4a532..78b814e 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -552,6 +552,11 @@ s_uFillDataHead(
 			return buf->duration_a;
 		} /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
+		struct vnt_tx_datahead_ab *buf = pTxDataHead;
+		/*Get SignalField, ServiceField & Length */
+		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+				  byPktType, &buf->ab);
+
 		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
 			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
@@ -565,31 +570,25 @@ s_uFillDataHead(
 			buf->duration_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
 									       wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->duration_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
-										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
+									       wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
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



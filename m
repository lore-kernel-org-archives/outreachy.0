X-GM-THRID: 6670961947938127872
X-Received: by 2002:a63:94:: with SMTP id 142mr10776593pga.277.1553286602961;
        Fri, 22 Mar 2019 13:30:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:4554:: with SMTP id s81ls4245462pfa.3.gmail; Fri, 22 Mar
 2019 13:30:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxX5kvpw38gpD3wpxmEQoN1kDcNyT78iNPI2k3gSwPsXFYtfcH/aEvgsSDTK447T3AO5b6e
X-Received: by 2002:a63:9752:: with SMTP id d18mr11050722pgo.0.1553286602224;
        Fri, 22 Mar 2019 13:30:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553286602; cv=none;
        d=google.com; s=arc-20160816;
        b=Rf/1UufDeumgRSbO74H7gXugk0ApcJcTjK/qVnDlw3IwYxpTr8r/nXtAIaSev5SBPo
         7agkbu/SdydUC1PUoSDBDheADvvqaucANpKBhFs6Nn1N7eQrUrBMUMwBHE/bkobADfWc
         QZYCu75IKa7s2OJ622qpomU3fGuKyqaizbeJIlTtiF/eqCz+XyeUYeu+dG4tPOIWTYYj
         tCBMwqC4VLJvoNwTm/0ojnw4tvVqa2ssDxoywUfLNJTrtpg2vMaiiGyaPrERKZYQlBBR
         20uH6NHwlMVUQezU6WyVltzV9PbYjz79BXs+qOmDq8U1FbOY3apQtDmLZt5misPCbtOD
         5Y9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=uxJM70EzSlXtJ2zt5Zt737E54OhrhE9YCt7Y6zb88IM=;
        b=WUGCfhotNPXuwr/L46NC+NXJ+8Cf/zVbtePmyX+EsBWwfVj4hNmM+o/waBD9evpPb9
         w0dpamdOcRsI+55szXFwkIKz8hPgW8vQxW1HcNkMXoc1YuY6XghfCwhuBHG32Xk8qq1F
         GBHsRDysJcQom4IUTxPFa/kOCVoj1q9JPSOOdHRMWORJ68sMM0pDyCESMdlAds/ZDtEH
         yQXMnjqyZJwKFNHoCnQ+VbEEQSSvY9NS2KdUo5mKhjHaQTrVpvBpuTAVpA5z1EmGRwP2
         Gdw/i329zoulnlTas1sLvh9xObLrZfGKWV91KoW4ZgdGI3gMUCrhw3zxQ4kVNnkGvPua
         Vl/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bfxy2nrc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id b38si403321plb.1.2019.03.22.13.30.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 13:30:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bfxy2nrc;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id k11so2255509pgb.8
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 13:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=uxJM70EzSlXtJ2zt5Zt737E54OhrhE9YCt7Y6zb88IM=;
        b=Bfxy2nrc/0KJCFUCZaTgLybjGNRahOI1AzKjA8mNLyAExo0ohKXcDsepTmDM35ELZt
         mXI/WV8QHT32CADQpqIRgrlL4CN2h4reMc1NaH6XKvO/Rs1alCqKJVxNyxYUk2H4boek
         mdQbeFXdiU0byEhRXch/TElykOFzHgh8o+YADwGLYm+3bCtm87pJ9W6bKc54itC2bT0W
         V+9mkUmV72RpCyiOCQk4ZbW2WKsYFN2iewozFkbmnAzQCO4PzLrPJW3EYHyIXLPcB3Cv
         NFzLokrZ6oVaKHyBN7XWE3CqcCgnL55dw+7PJ/9311C1RdrfVNZPqK37LBLc5wou2urw
         3v5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=uxJM70EzSlXtJ2zt5Zt737E54OhrhE9YCt7Y6zb88IM=;
        b=Pf8CG7RyaKQ7K4Gq0ARYElgabJCUPIK/6a9gsPU4b5VeC9Z99I4tC2H7iTGPlNLKCh
         KXMOrJSUu6LzVDpPWrjBbrQfH+tR1BaGkPIAbWz1g8mcpBI720hDUpXJ0RvM+wc85NDe
         AZXKeHDffLE3Ty2xzP5ZthCfw9Y9qtklmZhu6YFzP/AyNYal8QfbQwEAJzkUoNjKBtE7
         RYGp3ZHha7QirMqpXbBjhOE6Jo5EzO7vsBDVut4d8wVXY9aFU4KFC+4V+bJxxoJbSNPN
         quWyqwDJcOZKlTDiF3k8IxwHdosH25P1CBRTTU2uyJIU2VXZGQ6bxSZjLHOFAqKlvsF8
         WbBQ==
X-Gm-Message-State: APjAAAX0Hnd8iK0i8EAufgHj6VfD0Jxeza7qTIuw7Ox13ZyTwjM/zjy7
	op+hnIV64TleeHDOEoFQ1P8eToEGYDU=
X-Received: by 2002:a17:902:9f83:: with SMTP id g3mr11778683plq.296.1553286601699;
        Fri, 22 Mar 2019 13:30:01 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.101])
        by smtp.gmail.com with ESMTPSA id n75sm13270941pfb.39.2019.03.22.13.29.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 13:30:01 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v4 1/3] staging: vt6655: line over 80 characters
Date: Sat, 23 Mar 2019 01:59:45 +0530
Message-Id: <20190322202945.24884-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function to prevent it from going over 80 character a line to get
rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v4:
 -corrected the alignment

changes in v3:
 -to cut line at commas

changes in v2:
 -corrected identation issue
 -aligned the lines from patch 3/3 that are over 80 character

 drivers/staging/vt6655/rf.c | 29 +++++++++++++++++++++--------
 1 file changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index fd09b9771cf5..d0581b2ff72c 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -702,9 +702,13 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
 			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL2230ChannelTable0[uChannel-1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL2230ChannelTable1[uChannel-1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -723,11 +727,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable0[uChannel-1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable1[uChannel-1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable2[uChannel-1]);
 		break;
 
 	case RF_NOTHING:
@@ -737,7 +747,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		return false;
 	}
 
-	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
+	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX,
+			(unsigned long)MAKEWORD(bySleepCount, byInitCount));
 
 	return true;
 }
@@ -933,7 +944,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 	 * register
 	 * Channel Index 1~14
 	 */
-	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
+	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
+	    (byNewChannel > CB_MAX_CHANNEL_24G)) {
 		/* Change from 2.4G to 5G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
@@ -942,7 +954,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
-	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
+	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) &&
+		   (byNewChannel <= CB_MAX_CHANNEL_24G)) {
 		/* Change from 5G to 2.4G [Reg] */
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[2]);
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[3]);
-- 
2.17.1



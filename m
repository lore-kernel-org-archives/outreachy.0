X-GM-THRID: 6670961947938127872
X-Received: by 2002:ac8:1085:: with SMTP id a5mr2610615qtj.360.1553513185896;
        Mon, 25 Mar 2019 04:26:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4ad6:: with SMTP id x205ls2680716qka.5.gmail; Mon, 25
 Mar 2019 04:26:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzKU0I4NPMA4N36azR67z7aU8tEbQ+8J2cjPwjnJ6t6ZjjZJK8CvB2WOMoukkZchR1yhkUW
X-Received: by 2002:ae9:c314:: with SMTP id n20mr19278462qkg.191.1553513185130;
        Mon, 25 Mar 2019 04:26:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553513185; cv=none;
        d=google.com; s=arc-20160816;
        b=IkjhRNnHxvRpW0va5K2bwU41P4OJYrhD3Ie5s8+bCy8BGm1PBOKp9d1MXFy2TsdfLz
         6fujgowTKYh3oNRGjidMBZ0VQNnGjdXPurIIPSOOgrap6COjFcQb8YF97KXKJNKyZTB0
         t+ejWiFy8DF5z5pNgtGdk5CjQFCz8Lmdjs0YroSr6RBfjCXm6LL7E2DHGcbGIwZvx3s9
         S/ce2WEIug+Pa44TSErqy1/SPjLv3PMZoylFF+V0gFECPNKsJDH8QSxbCb6tCP3w/jQy
         ZZmrExD4FAp+dPXYfBvV653TL8Fu7vpYXB1D4vRCXPg2XZCPhNCyYqZajzzd+JROf85y
         sPAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=lrI12YTJZPv8F8Iz43MpMGic0slHKEy40alUleCsC2A=;
        b=uD//WLG0YhxbgZqnHpRnEHDlU8X8JOwmET9E4pPVL58NFCzEkoeFCUuTA84Dj0rQ3D
         s9O4+FNuv1yG6/0nPp9XbOfMFEzkUZ42bqI+Qy6Q7LVsxdlXjOLVK0XYV0WzqhMGbeja
         FeAvSHO2yvlW40UuLc3YUPW7GQsrsZcBmkKhv921mNnCJLhk0jGsMgbh+S589qlSirtv
         KGFI5HZr7tnQ7LVKkG8SYPGDtqpnzXvC3NLATfeLwTk+4DysphzvwRn5Cw84UVUE7NFW
         lTTq6B4gfdOthHlE/QHrIjbzTFE/9RgNiRHo8+ZFww5oOd8Kfa/4/iRnKqHr6oHByq7/
         3r/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OdTA5aXv;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id w12si160221qka.3.2019.03.25.04.26.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 04:26:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OdTA5aXv;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id u9so6341568pgo.7
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 04:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=lrI12YTJZPv8F8Iz43MpMGic0slHKEy40alUleCsC2A=;
        b=OdTA5aXv9mfWC+csHkHk8uSaic5fVy5fZqtKcmD7igDQ5L7kBrzosDxhKv1q59ljLo
         WmUlun7FIm9aoowonWtYn/Y0iIfSgSqH5wlbokt1wlRXm5g8AbZQxFKholoczBnEa7F6
         Gu7vEls/ZaML16ANhwC6Mj3xe/yhgyG++PZjuW4TKuvU0tOxw3sPBxYfmJS4vACCcMxe
         +n7GCtJfknaM/61wn77PoyHMG+jfTypR2ELz0S0KyxuZg8pgs6mrz+GFyLmrSBE7OUbA
         jbIP0Ey2LQ/l8SXu+D90u58GLgE0G25iUrBF4m9PmLQ/8xVBvQXYOTFgLGaVAA2ZY5Nw
         Ubbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=lrI12YTJZPv8F8Iz43MpMGic0slHKEy40alUleCsC2A=;
        b=W2/Yyl/FD1pIEFi4km/LVhxmL9sWftxdzBPNXZo/lEOLTNmfBxU++EYXIXKe7nGG3B
         r4DpXvsCwj32l3Zm4ggYMObs7X8MC4KHTTcYnrV5l5J1142voU24UUB7zLr0IBmQy+H8
         SmDdAX9kEyFxUczEm5teR3STs5F+KtOt/6gPRpNY7w5JvQkBoSx1sEJwYlsCdEshzaCy
         q4VMH6NFhmxUZ/CdLCo25gqGhY16m4bjCDscCYMPdSzlGvHWis5Tgt2F0PkjcwLQB8Wp
         SzAjaww7XuUoybm9IhSLf+RB5y70F+mgOK3Nf/M36XLnZrolTVuO/8iuBPfIpQHPo86q
         TKcw==
X-Gm-Message-State: APjAAAXvEbkqPZqpgA1qM4k5cLJ/oYihM789UqyqT3Y/aE+VAtnP3xT7
	8/5HrYRyke6rbz5eKw6SbdinWG3TFJM=
X-Received: by 2002:a63:e915:: with SMTP id i21mr23017845pgh.297.1553513184096;
        Mon, 25 Mar 2019 04:26:24 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.56.3])
        by smtp.gmail.com with ESMTPSA id 4sm7066435pgx.68.2019.03.25.04.26.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 04:26:23 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v5 1/3] staging: vt6655: line over 80 characters
Date: Mon, 25 Mar 2019 16:56:07 +0530
Message-Id: <20190325112607.20095-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function to prevent it from going over 80 character a line to get
rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changesin v5:
 -assembled all patches together

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



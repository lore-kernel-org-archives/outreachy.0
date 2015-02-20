X-GM-THRID: 1543619215360
X-Received: by 10.112.131.106 with SMTP id ol10mr8567lbb.20.1424472017193;
        Fri, 20 Feb 2015 14:40:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.3.200 with SMTP id e8ls324253lae.65.gmail; Fri, 20 Feb
 2015 14:40:16 -0800 (PST)
X-Received: by 10.112.124.142 with SMTP id mi14mr7748lbb.1.1424472016775;
        Fri, 20 Feb 2015 14:40:16 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x243.google.com (mail-wi0-x243.google.com. [2a00:1450:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id by11si412715wib.1.2015.02.20.14.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 14:40:16 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) client-ip=2a00:1450:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x243.google.com with SMTP id bs8so2261801wib.2
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 14:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=XyzkJwHuwPP5VUM9yz3q85rupywIP9lXhWMiIgqT8E4=;
        b=tRwvmIs1LKtRRcQWFVHpnu9zidErJa7D38HoMaOmljIMx57Q0+5S6ufotFXKbOkMeG
         6rKCpRrStiYleidPg9AA9AdldYTYoziuOf+UIgY2FOiQMasFgZydPpaiUXHbEMYlCIj1
         bl2n2n44iVIFUHaRfKcWRlJy94N5/bgnyYubfaIRVXBuvrZRVTjhI9DMV6d7iUJwbKr1
         l0NH77u3KpVz4D2ZLPzq8sW+4XU7tTftYfAWyNJckIpY6xlEWek1zLcYxLoGyLxxkweJ
         KT3qdWFo+0ScfEeDe/zofK48NIf3RLvEB95F/bX5ewg9Ydz0oTlorUESM4mKeFlPwgSK
         J7uA==
X-Received: by 10.194.77.99 with SMTP id r3mr23146575wjw.149.1424472016698;
        Fri, 20 Feb 2015 14:40:16 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id ga8sm4343775wib.6.2015.02.20.14.40.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 14:40:16 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH v2] Staging: vt6655: changed C99 // comments
Date: Sat, 21 Feb 2015 00:40:08 +0200
Message-Id: <1424472008-9544-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

// erased and replace it with /**/ used.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
v2:
*Some /**/ deleted.A row in a single comment line was made.Added a space between the ; and the /*.
---
 drivers/staging/vt6655/rf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 0b58927..d5fae3e 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -438,13 +438,13 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	/* Calibration */
-	MACvTimer0MicroSDelay(dwIoBase, 150);/* 150us */
+	MACvTimer0MicroSDelay(dwIoBase, 150); /* 150us */
 	/* TXDCOC:active, RCK:disable */
 	bResult &= IFRFbWriteEmbedded(priv, (0x9ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
-	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
+	MACvTimer0MicroSDelay(dwIoBase, 30); /* 30us */
 	/* TXDCOC:disable, RCK:active */
 	bResult &= IFRFbWriteEmbedded(priv, (0x3ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
-	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
+	MACvTimer0MicroSDelay(dwIoBase, 30); /* 30us */
 	/* TXDCOC:disable, RCK:disable */
 	bResult &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
 
-- 
1.9.1



X-GM-THRID: 7165229137920
X-Received: by 10.42.32.137 with SMTP id e9mr17002484icd.21.1425838604051;
        Sun, 08 Mar 2015 11:16:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.36 with SMTP id c4ls669810igl.8.gmail; Sun, 08 Mar 2015
 11:16:43 -0700 (PDT)
X-Received: by 10.70.124.135 with SMTP id mi7mr3918078pdb.8.1425838603733;
        Sun, 08 Mar 2015 11:16:43 -0700 (PDT)
Return-Path: <himani93@gmail.com>
Received: from mail-pd0-x22b.google.com (mail-pd0-x22b.google.com. [2607:f8b0:400e:c02::22b])
        by gmr-mx.google.com with ESMTPS id ni4si1317632pdb.2.2015.03.08.11.16.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 11:16:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of himani93@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) client-ip=2607:f8b0:400e:c02::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of himani93@gmail.com designates 2607:f8b0:400e:c02::22b as permitted sender) smtp.mail=himani93@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbft15 with SMTP id ft15so28951637pdb.6
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 11:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wyuVhPLFG6tBgV42xMNGL3WFd2r9N6L4bBynqeHuFSM=;
        b=YMChKIUhniLsz7leu0lAoTK8TMGBzTJmoz71ILGhGrodrxUaS86ujCp7bReTYuqFC9
         itrkhQYlnxelaOxn/F4I11Vs3eiP9mx7XUxqdqubT+WI1a6AbsZXBrG1hjfkf1ryVmoh
         gQTiJ+vDZoNmlRWoEJ0P3AwwUzfgYqJ41Htkiqgz7gTRDBoUvO8hC79x1IOWIevNww13
         TZk/JCfuw5CJ3y/FX3ta7gqXCXZQ6qD6FUFEdUQ5CiW4s03qXjmabGwJEOLePVmjwxkb
         RLJ1t2MM977TRNnIzdCs0kPEOOj5L+1qiAKi1W2UYgmdR9HOoBZ/JQadovXQkx5ilx2M
         j6MQ==
X-Received: by 10.70.140.130 with SMTP id rg2mr44801611pdb.49.1425838603263;
        Sun, 08 Mar 2015 11:16:43 -0700 (PDT)
Return-Path: <himani93@gmail.com>
Received: from black-dell ([122.177.147.226])
        by mx.google.com with ESMTPSA id dq4sm15248977pdb.96.2015.03.08.11.16.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 11:16:42 -0700 (PDT)
Date: Sun, 8 Mar 2015 23:46:38 +0530
From: Himani Agrawal <himani93@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Breaking function calls
Message-ID: <20150308181638.GA4606@black-dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl warning:

WARNING: line over 80 characters

Signed-off-by: Himani Agrawal <himani93@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 48 ++++++++++++++++++++++++++++-----------
 1 file changed, 35 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 565ba18..b0ea38f 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -2021,14 +2021,20 @@ bool BBbVT3253Init(struct vnt_private *priv)
 	if (byRFType == RF_RFMD2959) {
 		if (byLocalID <= REV_ID_VT3253_A1) {
 			for (ii = 0; ii < CB_VT3253_INIT_FOR_RFMD; ii++)
-				bResult &= BBbWriteEmbedded(priv, byVT3253InitTab_RFMD[ii][0], byVT3253InitTab_RFMD[ii][1]);
+				bResult &= BBbWriteEmbedded(priv,
+					byVT3253InitTab_RFMD[ii][0],
+					byVT3253InitTab_RFMD[ii][1]);
 
 		} else {
 			for (ii = 0; ii < CB_VT3253B0_INIT_FOR_RFMD; ii++)
-				bResult &= BBbWriteEmbedded(priv, byVT3253B0_RFMD[ii][0], byVT3253B0_RFMD[ii][1]);
+				bResult &= BBbWriteEmbedded(priv,
+					byVT3253B0_RFMD[ii][0],
+					byVT3253B0_RFMD[ii][1]);
 
 			for (ii = 0; ii < CB_VT3253B0_AGC_FOR_RFMD2959; ii++)
-				bResult &= BBbWriteEmbedded(priv, byVT3253B0_AGC4_RFMD2959[ii][0], byVT3253B0_AGC4_RFMD2959[ii][1]);
+				bResult &= BBbWriteEmbedded(priv,
+					byVT3253B0_AGC4_RFMD2959[ii][0],
+					byVT3253B0_AGC4_RFMD2959[ii][1]);
 
 			VNSvOutPortD(dwIoBase + MAC_REG_ITRTMSET, 0x23);
 			MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
@@ -2043,10 +2049,13 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[3] = 0;
 	} else if ((byRFType == RF_AIROHA) || (byRFType == RF_AL2230S)) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AIROHA2230[ii][0], byVT3253B0_AIROHA2230[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AIROHA2230[ii][0],
+				byVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
 		priv->abyBBVGA[1] = 0x10;
@@ -2058,10 +2067,14 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[3] = 0;
 	} else if (byRFType == RF_UW2451) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_UW2451[ii][0], byVT3253B0_UW2451[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_UW2451[ii][0],
+				byVT3253B0_UW2451[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AGC[ii][0],
+				byVT3253B0_AGC[ii][1]);
 
 		VNSvOutPortB(dwIoBase + MAC_REG_ITRTMSET, 0x23);
 		MACvRegBitsOn(dwIoBase, MAC_REG_PAPEDELAY, BIT(0));
@@ -2076,7 +2089,9 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		priv->ldBmThreshold[3] = 0;
 	} else if (byRFType == RF_UW2452) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_UW2451; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_UW2451[ii][0], byVT3253B0_UW2451[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_UW2451[ii][0],
+				byVT3253B0_UW2451[ii][1]);
 
 		/* Init ANT B select,TX Config CR09 = 0x61->0x45, 0x45->0x41(VC1/VC2 define, make the ANT_A, ANT_B inverted) */
 		/*bResult &= BBbWriteEmbedded(dwIoBase,0x09,0x41);*/
@@ -2097,7 +2112,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		bResult &= BBbWriteEmbedded(priv, 0xb0, 0x58);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x14;
 		priv->abyBBVGA[1] = 0x0A;
@@ -2111,10 +2127,13 @@ bool BBbVT3253Init(struct vnt_private *priv)
 
 	} else if (byRFType == RF_VT3226) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AIROHA2230[ii][0], byVT3253B0_AIROHA2230[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AIROHA2230[ii][0],
+				byVT3253B0_AIROHA2230[ii][1]);
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
 		priv->abyBBVGA[1] = 0x10;
@@ -2129,7 +2148,9 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		/* {{ RobertYu: 20050104 */
 	} else if (byRFType == RF_AIROHA7230) {
 		for (ii = 0; ii < CB_VT3253B0_INIT_FOR_AIROHA2230; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AIROHA2230[ii][0], byVT3253B0_AIROHA2230[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AIROHA2230[ii][0],
+				byVT3253B0_AIROHA2230[ii][1]);
 
 
 		/* {{ RobertYu:20050223, request by JerryChung */
@@ -2142,7 +2163,8 @@ bool BBbVT3253Init(struct vnt_private *priv)
 		/* }} */
 
 		for (ii = 0; ii < CB_VT3253B0_AGC; ii++)
-			bResult &= BBbWriteEmbedded(priv, byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
+			bResult &= BBbWriteEmbedded(priv,
+				byVT3253B0_AGC[ii][0], byVT3253B0_AGC[ii][1]);
 
 		priv->abyBBVGA[0] = 0x1C;
 		priv->abyBBVGA[1] = 0x10;
-- 
1.9.1



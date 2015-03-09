X-GM-THRID: 7294596153344
X-Received: by 10.236.223.166 with SMTP id v36mr26495969yhp.45.1425910194932;
        Mon, 09 Mar 2015 07:09:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.233 with SMTP id h96ls1459823qgd.32.gmail; Mon, 09 Mar
 2015 07:09:54 -0700 (PDT)
X-Received: by 10.236.41.73 with SMTP id g49mr30304697yhb.57.1425910194753;
        Mon, 09 Mar 2015 07:09:54 -0700 (PDT)
Return-Path: <himani93@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id gb13si2652568pac.2.2015.03.09.07.09.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 07:09:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of himani93@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of himani93@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=himani93@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id et14so49014622pad.11
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 07:09:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=opNVkjGdGeYTEyYrnIGVeJ+ZjF2aRIhLP/D0yYWJ8EA=;
        b=t19LL2EzJMUxt2FpkFQybUUZUc4ZY/MDJG210O7cLtsId4YToQji5Rko1ZJ2md1JW4
         EaWoG65+uQ7xbodao2hQUWcXRAuIKgt4hBbEfQVTEZ41Eu/d5J/FnMZ8FfiVEYw/xjPl
         jIPT+CxA/lZwPHuqqf+YDU/2NkvlXUq1ELRaYFY7AjN5OLDsb2ArVV7cwUMykAUzC9P9
         EQGoAkQLq0pN2KMNiRStAtHjkUMvRUPyALKZlnhJPmldV9/hdYgExd14iVeCVV12gup8
         reIq8vVQZUsOMog4vxoJTXLTJDTGnjRqkbY/M1fpKjGElzeYOX4joCKTNhVLkXEcpoKx
         +8Vg==
X-Received: by 10.70.40.167 with SMTP id y7mr54122517pdk.164.1425910194579;
        Mon, 09 Mar 2015 07:09:54 -0700 (PDT)
Return-Path: <himani93@gmail.com>
Received: from black-dell ([122.177.234.167])
        by mx.google.com with ESMTPSA id ji6sm19596850pac.30.2015.03.09.07.09.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 07:09:54 -0700 (PDT)
Date: Mon, 9 Mar 2015 19:39:50 +0530
From: Himani Agrawal <himani93@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vt6655: Fixes the checkpatch.pl warning
Message-ID: <20150309140950.GA3393@black-dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

warning fixed:

WARNING: line over 80 characters

The function call containing several variables is broken to make it fit
in 80 characters.

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



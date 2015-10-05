X-GM-THRID: 6202217104778723328
X-Received: by 10.194.59.166 with SMTP id a6mr5520333wjr.6.1444066200577;
        Mon, 05 Oct 2015 10:30:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.140 with SMTP id a134ls502548lfa.30.gmail; Mon, 05 Oct
 2015 10:29:59 -0700 (PDT)
X-Received: by 10.112.164.1 with SMTP id ym1mr5433095lbb.15.1444066199911;
        Mon, 05 Oct 2015 10:29:59 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c7si393880wiy.3.2015.10.05.10.29.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 10:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=haticeerturk27@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id lk2so131438503wic.0
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=7n+zFeu8FXoc5yYV5nsfDUGx3OQwaVqxNmmuRarbL1o=;
        b=fxjDfTL6Dnn5nv9TtoTpMue6dgIBm84JQjn23zE1WDwIk6yQKRnmzuDq802oII73zY
         kPvuWe8TmrbCQV8KnUxSJvuY+d5j2/5kHaexInB0KwRqZdnWG7JnyIYfTvre6BIkWDMv
         vTy5xbnQC4VePOqmlPNEzHnRoq7liJS1t0FvmXPRkX9uqYGzsABcP4htgwnIxn5AwGDT
         ORbhC7RCEjOKDUkBcgUvFHI2CfEVYwaS//cKanQ1Alvcpas4HIhUdUyMgMuoXskKPrNT
         828zMYkhgzdO60fg9ImFaSQ0/tP/cdFOoF57cS2ZBEO6dw7n09FK+b4HShqWNc5X05QS
         Mw/g==
X-Received: by 10.180.10.170 with SMTP id j10mr13685228wib.77.1444066199793;
        Mon, 05 Oct 2015 10:29:59 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([88.242.105.163])
        by smtp.googlemail.com with ESMTPSA id jq10sm27945881wjc.40.2015.10.05.10.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 10:29:59 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: rf.c: Fixed comment style warnings
Date: Mon,  5 Oct 2015 20:29:39 +0300
Message-Id: <1444066179-6745-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fixed 'Block comments use a trailing */ on a separate line' and 'Block comments use * on subsequent lines' checkpatch warnings

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/rf.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index c537321..52e6f4e 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -169,7 +169,8 @@ static unsigned long dwAL2230PowerTable[AL2230_PWR_IDX_LEN] = {
 };
 
 /* 40MHz reference frequency
- * Need to Pull PLLON(PE3) low when writing channel registers through 3-wire.*/
+ * Need to Pull PLLON(PE3) low when writing channel registers through 3-wire.
+ */
 static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
 	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1 // Need modify for 11a */
 	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1 // Need modify for 11a */
@@ -237,7 +238,8 @@ static const unsigned long dwAL7230ChannelTable0[CB_MAX_CHANNEL] = {
 	0x0FF53000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
 
 	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
-	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
+	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) 
+	 */
 
 	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
 	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
@@ -303,7 +305,8 @@ static const unsigned long dwAL7230ChannelTable1[CB_MAX_CHANNEL] = {
 	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
 
 	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
-	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
+	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) 
+	 */
 	0x1D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
 	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
 	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
@@ -367,7 +370,8 @@ static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
 	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
 
 	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
-	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
+	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) 
+	 */
 	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
 	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
 	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
@@ -463,7 +467,8 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 }
 
 /* Need to Pull PLLON low when writing channel registers through
- * 3-wire interface */
+ * 3-wire interface 
+ */
 static bool s_bAL7230SelectChannel(struct vnt_private *priv, unsigned char byChannel)
 {
 	void __iomem *dwIoBase = priv->PortOffset;
@@ -875,7 +880,8 @@ bool RFbRawSetPower(
 
 	case RF_AIROHA7230:
 		/* 0x080F1B00 for 3 wire control TxGain(D10)
-		 * and 0x31 as TX Gain value */
+		 * and 0x31 as TX Gain value 
+		 */
 		dwMax7230Pwr = 0x080C0B00 | ((byPwr) << 12) |
 			(BY_AL7230_REG_LEN << 3)  | IFREGCTL_REGW;
 
@@ -929,7 +935,8 @@ RFvRSSITodBm(
 }
 
 /* Post processing for the 11b/g and 11a.
- * for save time on changing Reg2,3,5,7,10,12,15 */
+ * for save time on changing Reg2,3,5,7,10,12,15
+ */
 bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 				       u16 byOldChannel,
 				       u16 byNewChannel)
@@ -940,7 +947,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
 
 	/* if change between 11 b/g and 11a need to update the following
 	 * register
-	 * Channel Index 1~14 */
+	 * Channel Index 1~14
+	 */
 	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
 		/* Change from 2.4G to 5G [Reg] */
 		bResult &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
-- 
1.9.1



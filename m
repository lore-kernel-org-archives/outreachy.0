X-GM-THRID: 1543619215360
X-Received: by 10.112.174.36 with SMTP id bp4mr1544556lbc.15.1424469897866;
        Fri, 20 Feb 2015 14:04:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.42 with SMTP id g10ls330447laa.51.gmail; Fri, 20 Feb
 2015 14:04:57 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr1577177lah.8.1424469897328;
        Fri, 20 Feb 2015 14:04:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id i7si174667wif.0.2015.02.20.14.04.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 14:04:57 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x242.google.com with SMTP id hi2so1954791wib.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 14:04:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5kn0ThgbeJ/mWtqGXXTbuOmcao/aTX59C9hJb8L7E74=;
        b=GQRKXwhiwTNmMgJt0j1K2Wz6agvcmYlo3LwxnzcnhmWBLqc+bOR2zQgw2IatAloWe6
         jfrpVN+BBWmqO+9UB6gC4+WanCBbaehvCTDBeDsfLsNynneSxHxLkluwAAKRyZ1D4ghl
         Q3VSOekdtLv99MdDPGuICF0gYqjF5X+zbdz0DIxko5YjosI9rJ+S6AheBkobCTQWZa2C
         UfN2s/25dSAHxT7K8s/ZU5ra4dzPUU77Bp7RappvcJHniscbOPR82EJUwSkYZLSyzhZi
         +w8/VxGCvkiCd+BZM9+u4T9Rh9zavIIjGdpqNdAbuI70Eye7iDtQuw9e95bR4ovYId8y
         +3UQ==
X-Received: by 10.194.81.161 with SMTP id b1mr23019010wjy.2.1424469897224;
        Fri, 20 Feb 2015 14:04:57 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id u16sm4717831wjr.5.2015.02.20.14.04.53
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Feb 2015 14:04:55 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: changed C99 // comments
Date: Sat, 21 Feb 2015 00:04:47 +0200
Message-Id: <1424469887-8955-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

// erased and replace it with /**/ used.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/rf.c | 94 ++++++++++++++++++++++-----------------------
 1 file changed, 47 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 25048b8..0b58927 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -39,29 +39,29 @@
 #include "rf.h"
 #include "baseband.h"
 
-#define BY_AL2230_REG_LEN     23 /*24bit*/
+#define BY_AL2230_REG_LEN     23 /* 24bit */
 #define CB_AL2230_INIT_SEQ    15
-#define SWITCH_CHANNEL_DELAY_AL2230 200 /*us*/
+#define SWITCH_CHANNEL_DELAY_AL2230 200 /* us */
 #define AL2230_PWR_IDX_LEN    64
 
-#define BY_AL7230_REG_LEN     23 /*24bit*/
+#define BY_AL7230_REG_LEN     23 /* 24bit */
 #define CB_AL7230_INIT_SEQ    16
-#define SWITCH_CHANNEL_DELAY_AL7230 200 /*us*/
+#define SWITCH_CHANNEL_DELAY_AL7230 200 /* us */
 #define AL7230_PWR_IDX_LEN    64
 
 static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
-	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x01A00200+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x00FFF300+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x0005A400+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x0F4DC500+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x0805B600+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x0146C700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x00068800+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x0403B900+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x00DBBA00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
-	0x00099B00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW, /**/
+	0x03F79000+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x03333100+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x01A00200+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x00FFF300+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x0005A400+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x0F4DC500+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x0805B600+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x0146C700+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x00068800+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x0403B900+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x00DBBA00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
+	0x00099B00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
 	0x0BDFFC00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
 	0x00000D00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW,
 	0x00580F00+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW
@@ -168,23 +168,23 @@ static unsigned long dwAL2230PowerTable[AL2230_PWR_IDX_LEN] = {
 	0x0407F900+(BY_AL2230_REG_LEN<<3)+IFREGCTL_REGW
 };
 
-/* 40MHz reference frequency */
-/* Need to Pull PLLON(PE3) low when writing channel registers through 3-wire. */
+/* 40MHz reference frequency
+ Need to Pull PLLON(PE3) low when writing channel registers through 3-wire. */
 static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
-	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1*/ /* Need modify for 11a */
-	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1 */ /* Need modify for 11a */
+	0x00379000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1 Need modify for 11a */
+	0x13333100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel1  Need modify for 11a */
 	0x841FF200+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 451FE2 */
 	0x3FDFA300+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 5FDFA3 */
-	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* 11b/g */    /* Need modify for 11a */
-	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
+	0x7FD78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* 11b/g  Need modify for 11a
+	 RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
 	0x802B5500+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 8D1B55 */
 	0x56AF3600+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
 	0xCE020700+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 860207 */
 	0x6EBC0800+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
 	0x221BB900+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
 	0xE0000A00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: E0600A */
-	0x08031B00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
-	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
+	0x08031B00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) 
+	 RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
 	0x000A3C00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11a: 00143C */
 	0xFFFFFD00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
 	0x00000E00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
@@ -192,11 +192,11 @@ static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
 };
 
 static const unsigned long dwAL7230InitTableAMode[CB_AL7230_INIT_SEQ] = {
-	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel184 */ /* Need modify for 11b/g */
-	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel184 */ /* Need modify for 11b/g */
+	0x0FF52000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel184  Need modify for 11b/g */
+	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Channel184  Need modify for 11b/g */
 	0x451FE200+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
 	0x5FDFA300+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
-	0x67F78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* 11a */    /* Need modify for 11b/g */
+	0x67F78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* 11a  Need modify for 11b/g */
 	0x853F5500+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g, RoberYu:20050113 */
 	0x56AF3600+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW,
 	0xCE020700+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* Need modify for 11b/g */
@@ -218,12 +218,12 @@ static const unsigned long dwAL7230ChannelTable0[CB_MAX_CHANNEL] = {
 	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  5, Tf = 2432MHz */
 	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  6, Tf = 2437MHz */
 	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  7, Tf = 2442MHz */
-	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz */ /*RobertYu: 20050218, update for APNode 0.49 */
-	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
-	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
-	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
-	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
-	0x0037C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */ /*RobertYu: 20050218, update for APNode 0.49*/
+	0x0037A000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz RobertYu: 20050218, update for APNode 0.49 */
+	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz RobertYu: 20050218, update for APNode 0.49 */
+	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz RobertYu: 20050218, update for APNode 0.49 */
+	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz RobertYu: 20050218, update for APNode 0.49 */
+	0x0037B000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz RobertYu: 20050218, update for APNode 0.49 */
+	0x0037C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz RobertYu: 20050218, update for APNode 0.49 */
 	0x0037C000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 14, Tf = 2484MHz */
 
 	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22) */
@@ -236,8 +236,8 @@ static const unsigned long dwAL7230ChannelTable0[CB_MAX_CHANNEL] = {
 	0x0FF53000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
 	0x0FF53000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
 
-	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64, */
-	/* 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
+	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
+	 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
 
 	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
 	0x0FF54000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
@@ -247,7 +247,7 @@ static const unsigned long dwAL7230ChannelTable0[CB_MAX_CHANNEL] = {
 	0x0FF55000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  16, Tf = 5080MHz (28) */
 	0x0FF56000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  34, Tf = 5170MHz (29) */
 	0x0FF56000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  36, Tf = 5180MHz (30) */
-	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) */ /*RobertYu: 20050218, update for APNode 0.49*/
+	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) RobertYu: 20050218, update for APNode 0.49*/
 	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  40, Tf = 5200MHz (32) */
 	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  42, Tf = 5210MHz (33) */
 	0x0FF57000+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =  44, Tf = 5220MHz (34) */
@@ -302,8 +302,8 @@ static const unsigned long dwAL7230ChannelTable1[CB_MAX_CHANNEL] = {
 	0x15555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
 	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
 
-	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64, */
-	/* 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
+	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
+	 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
 	0x1D555100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
 	0x00000100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
 	0x02AAA100+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
@@ -366,8 +366,8 @@ static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
 	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
 	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
 
-	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64, */
-	/* 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
+	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
+	 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
 	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
 	0x67D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
 	0x77D78400+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
@@ -438,13 +438,13 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	/* Calibration */
-	MACvTimer0MicroSDelay(dwIoBase, 150);/*150us*/
+	MACvTimer0MicroSDelay(dwIoBase, 150);/* 150us */
 	/* TXDCOC:active, RCK:disable */
 	bResult &= IFRFbWriteEmbedded(priv, (0x9ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
-	MACvTimer0MicroSDelay(dwIoBase, 30);/*30us*/
+	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
 	/* TXDCOC:disable, RCK:active */
 	bResult &= IFRFbWriteEmbedded(priv, (0x3ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
-	MACvTimer0MicroSDelay(dwIoBase, 30);/*30us*/
+	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
 	/* TXDCOC:disable, RCK:disable */
 	bResult &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
 
@@ -457,7 +457,7 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 
 	/* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
 	/* 3-wire control for power saving mode */
-	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /*1100 0000*/
+	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
 
 	return bResult;
 }
@@ -557,7 +557,7 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 
 	for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
 		bResult &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[ii]);
-	MACvTimer0MicroSDelay(dwIoBase, 30); /*delay 30 us*/
+	MACvTimer0MicroSDelay(dwIoBase, 30); /* delay 30 us */
 
 	/* PLL On */
 	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
@@ -660,11 +660,11 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, unsigned
 	case RF_AL2230S:
 		bResult = RFbAL2230SelectChannel(priv, byChannel);
 		break;
-		/*{{ RobertYu: 20050104*/
+		/* {{ RobertYu: 20050104 */
 	case RF_AIROHA7230:
 		bResult = s_bAL7230SelectChannel(priv, byChannel);
 		break;
-		/*}} RobertYu*/
+		/* }} RobertYu */
 	case RF_NOTHING:
 		bResult = true;
 		break;
-- 
1.9.1



X-GM-THRID: 6341070364600172544
X-Received: by 10.157.11.34 with SMTP id a31mr2251116ota.143.1476395494720;
        Thu, 13 Oct 2016 14:51:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.37 with SMTP id m37ls2371340iod.33.gmail; Thu, 13 Oct
 2016 14:51:30 -0700 (PDT)
X-Received: by 10.107.3.24 with SMTP id 24mr2403488iod.23.1476395490765;
        Thu, 13 Oct 2016 14:51:30 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id co10si2096826pad.1.2016.10.13.14.51.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 14:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 128so5829878pfz.1
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 14:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3HxxqVgz6SvOzA2FIog/MkQLsK0kBVvDuzUVEr6tEys=;
        b=0rxJV99ATLIS4a5xR4YJEISdg9uLB9k3mvrtSaWo//QdN/HP02HHcUlimTzlPc4kXz
         cPOTSt+u1hlqZQFZ/L5CtIR80iG1l3k3/vMd3B7IUN8mmPJnODAJiRIJs9rvUE1fVj5I
         HTJIe8WyXNoJpfw6qxbbwlkuMVX4SHSHL8dVBP0Zdk2ryeZTHO2GAFPorBXvrlNgDC+z
         h6CAOTqOsMKkQA4+X9GsRHw5h9QLJ0BEQ+UuyVvAj8HuZ8pQmDne9S3jk/vCSxErtH97
         89nWoUdRRyuIckHZ1qsGoGf9NaWrOSsP44gOcKTr5lGKhQmfMv4CZ+06axFezt72CARx
         NdYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3HxxqVgz6SvOzA2FIog/MkQLsK0kBVvDuzUVEr6tEys=;
        b=HaMRvQ+5bQ5N+b3VO2sva4N6UuK4ErhAat74RFnWTLKIaDYOURws2ZVmrJVAntILv9
         dOunZK4RAzD/+W9wbhqgxivs3BEYK3FRGfASDa4QyYnWE7yffJu85dXIcjDTTHidDZ0O
         7IyfdAo8rsoNIC89z4DBV3hDOAAAvqJu2abBtHbkoWSdULx7HvocKuTdKSNRRz4ZCKw7
         7mOMYhrvbWMVmksV6Gz9AqbBqjJ+85I3EfUvW1ZUxyeNSI1PdtWCv78WERbDoCpR9cky
         7ogjl4Gbgv0alBJEDhy+QgIssSPX40svyg6YrQ69SOaYIU40AKdkNbOa9tHkLUHcwErF
         Uvyg==
X-Gm-Message-State: AA6/9RkjX3wiX8p3063xS7l/qS3DcgAq3gjZNDiE+uMKJkj1LVhRs8tuwxKAZQQIbPCK1w==
X-Received: by 10.98.86.85 with SMTP id k82mr13195399pfb.164.1476395490200;
        Thu, 13 Oct 2016 14:51:30 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.232.129.50])
        by smtp.gmail.com with ESMTPSA id o82sm21899746pfk.24.2016.10.13.14.51.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 13 Oct 2016 14:51:29 -0700 (PDT)
Date: Fri, 14 Oct 2016 03:21:24 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: rvarsha016@gmail.com
Subject: [PATCH] staging: vt6655: Fix line over 80 characters.
Message-ID: <20161013215008.GA21291@euri>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes the checkpatch warning of line over 80 characters.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/vt6655/mac.c |   3 +-
 drivers/staging/vt6655/rf.c  | 737 +++++++++++++++++++++++++++++--------------
 2 files changed, 495 insertions(+), 245 deletions(-)

diff --git a/drivers/staging/vt6655/mac.c b/drivers/staging/vt6655/mac.c
index 4aaa99b..23de67c 100644
--- a/drivers/staging/vt6655/mac.c
+++ b/drivers/staging/vt6655/mac.c
@@ -315,7 +315,8 @@ bool MACbSoftwareReset(struct vnt_private *priv)
  */
 bool MACbSafeSoftwareReset(struct vnt_private *priv)
 {
-	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0 + MAC_MAX_CONTEXT_SIZE_PAGE1];
+	unsigned char abyTmpRegData[MAC_MAX_CONTEXT_SIZE_PAGE0 +
+				    MAC_MAX_CONTEXT_SIZE_PAGE1];
 	bool bRetVal;
 
 	/* PATCH....
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 1762c05..2e0e0c2 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -63,37 +63,65 @@ static const unsigned long dwAL2230InitTable[CB_AL2230_INIT_SEQ] = {
 };
 
 static const unsigned long dwAL2230ChannelTable0[CB_MAX_CHANNEL] = {
-	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 1, Tf = 2412MHz */
-	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 2, Tf = 2417MHz */
-	0x03E79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 3, Tf = 2422MHz */
-	0x03E79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 4, Tf = 2427MHz */
-	0x03F7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 5, Tf = 2432MHz */
-	0x03F7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 6, Tf = 2437MHz */
-	0x03E7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 7, Tf = 2442MHz */
-	0x03E7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 8, Tf = 2447MHz */
-	0x03F7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 9, Tf = 2452MHz */
-	0x03F7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
-	0x03E7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
-	0x03E7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
-	0x03F7C000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
-	0x03E7C000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 14, Tf = 2412M */
+	/* channel = 1, Tf = 2412MHz */
+	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 2, Tf = 2417MHz */
+	0x03F79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 3, Tf = 2422MHz */
+	0x03E79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 4, Tf = 2427MHz */
+	0x03E79000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 5, Tf = 2432MHz */
+	0x03F7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 6, Tf = 2437MHz */
+	0x03F7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 7, Tf = 2442MHz */
+	0x03E7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 8, Tf = 2447MHz */
+	0x03E7A000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 9, Tf = 2452MHz */
+	0x03F7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 10, Tf = 2457MHz */
+	0x03F7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 11, Tf = 2462MHz */
+	0x03E7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 12, Tf = 2467MHz */
+	0x03E7B000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 13, Tf = 2472MHz */
+	0x03F7C000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 14, Tf = 2412M */
+	0x03E7C000 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
 static const unsigned long dwAL2230ChannelTable1[CB_MAX_CHANNEL] = {
-	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 1, Tf = 2412MHz */
-	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 2, Tf = 2417MHz */
-	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 3, Tf = 2422MHz */
-	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 4, Tf = 2427MHz */
-	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 5, Tf = 2432MHz */
-	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 6, Tf = 2437MHz */
-	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 7, Tf = 2442MHz */
-	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 8, Tf = 2447MHz */
-	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 9, Tf = 2452MHz */
-	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
-	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
-	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
-	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
-	0x06666100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 14, Tf = 2412M */
+	/* channel = 1, Tf = 2412MHz */
+	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 2, Tf = 2417MHz */
+	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 3, Tf = 2422MHz */
+	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 4, Tf = 2427MHz */
+	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 5, Tf = 2432MHz */
+	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 6, Tf = 2437MHz */
+	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 7, Tf = 2442MHz */
+	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 8, Tf = 2447MHz */
+	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 9, Tf = 2452MHz */
+	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 10, Tf = 2457MHz */
+	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 11, Tf = 2462MHz */
+	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 12, Tf = 2467MHz */
+	0x0B333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 13, Tf = 2472MHz */
+	0x03333100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 14, Tf = 2412M */
+	0x06666100 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
 static unsigned long dwAL2230PowerTable[AL2230_PWR_IDX_LEN] = {
@@ -167,237 +195,444 @@ static unsigned long dwAL2230PowerTable[AL2230_PWR_IDX_LEN] = {
  * Need to Pull PLLON(PE3) low when writing channel registers through 3-wire.
  */
 static const unsigned long dwAL7230InitTable[CB_AL7230_INIT_SEQ] = {
-	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel1 // Need modify for 11a */
-	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel1 // Need modify for 11a */
-	0x841FF200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 451FE2 */
-	0x3FDFA300 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 5FDFA3 */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* 11b/g    // Need modify for 11a */
+	/* Channel1 // Need modify for 11a */
+	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Channel1 // Need modify for 11a */
+	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Need modify for 11a: 451FE2 */
+	0x841FF200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Need modify for 11a: 5FDFA3 */
+	0x3FDFA300 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* 11b/g    // Need modify for 11a */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
-	0x802B5500 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 8D1B55 */
+	/* Need modify for 11a: 8D1B55 */
+	0x802B5500 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x56AF3600 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
-	0xCE020700 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 860207 */
+	/* Need modify for 11a: 860207 */
+	0xCE020700 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x6EBC0800 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x221BB900 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
-	0xE0000A00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: E0600A */
-	0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
+	/* Need modify for 11a: E0600A */
+	0xE0000A00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
+	0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	/* RoberYu:20050113, Rev0.47 Regsiter Setting Guide */
-	0x000A3C00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11a: 00143C */
+	/* Need modify for 11a: 00143C */
+	0x000A3C00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0xFFFFFD00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x00000E00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
-	0x1ABA8F00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* Need modify for 11a: 12BACF */
+	/* Need modify for 11a: 12BACF */
+	0x1ABA8F00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
 static const unsigned long dwAL7230InitTableAMode[CB_AL7230_INIT_SEQ] = {
-	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel184 // Need modify for 11b/g */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Channel184 // Need modify for 11b/g */
-	0x451FE200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11b/g */
-	0x5FDFA300 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11b/g */
-	0x67F78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* 11a    // Need modify for 11b/g */
-	0x853F5500 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11b/g, RoberYu:20050113 */
+	/* Channel184 // Need modify for 11b/g */
+	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Channel184 // Need modify for 11b/g */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Need modify for 11b/g */
+	0x451FE200 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Need modify for 11b/g */
+	0x5FDFA300 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* 11a    // Need modify for 11b/g */
+	0x67F78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Need modify for 11b/g, RoberYu:20050113 */
+	0x853F5500 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x56AF3600 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
-	0xCE020700 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11b/g */
+	/* Need modify for 11b/g */
+	0xCE020700 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x6EBC0800 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x221BB900 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
-	0xE0600A00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11b/g */
-	0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
-	0x00147C00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* Need modify for 11b/g */
+	/* Need modify for 11b/g */
+	0xE0600A00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* init 0x080B1B00 => 0x080F1B00 for 3 wire control TxGain(D10) */
+	0x08031B00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* Need modify for 11b/g */
+	0x00147C00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0xFFFFFD00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 	0x00000E00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
-	0x12BACF00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* Need modify for 11b/g */
+	/* Need modify for 11b/g */
+	0x12BACF00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
 static const unsigned long dwAL7230ChannelTable0[CB_MAX_CHANNEL] = {
-	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
-	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
-	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
-	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  4, Tf = 2427MHz */
-	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  5, Tf = 2432MHz */
-	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  6, Tf = 2437MHz */
-	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  7, Tf = 2442MHz */
-	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz //RobertYu: 20050218, update for APNode 0.49 */
-	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz //RobertYu: 20050218, update for APNode 0.49 */
-	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz //RobertYu: 20050218, update for APNode 0.49 */
-	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz //RobertYu: 20050218, update for APNode 0.49 */
-	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz //RobertYu: 20050218, update for APNode 0.49 */
-	0x0037C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz //RobertYu: 20050218, update for APNode 0.49 */
-	0x0037C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 14, Tf = 2484MHz */
+	/* channel =  1, Tf = 2412MHz */
+	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  2, Tf = 2417MHz */
+	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  3, Tf = 2422MHz */
+	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  4, Tf = 2427MHz */
+	0x00379000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  5, Tf = 2432MHz */
+	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  6, Tf = 2437MHz */
+	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  7, Tf = 2442MHz */
+	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  8, Tf = 2447MHz */
+	//RobertYu: 20050218, update for APNode 0.49
+	0x0037A000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  9, Tf = 2452MHz */
+	//RobertYu: 20050218, update for APNode 0.49
+	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 10, Tf = 2457MHz */
+	//RobertYu: 20050218, update for APNode 0.49
+	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 11, Tf = 2462MHz */
+	//RobertYu: 20050218, update for APNode 0.49
+	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 12, Tf = 2467MHz */
+	//RobertYu: 20050218, update for APNode 0.49
+	0x0037B000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 13, Tf = 2472MHz */
+	//RobertYu: 20050218, update for APNode 0.49
+	0x0037C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 14, Tf = 2484MHz */
+	0x0037C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+
+	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196 (Value:15 ~ 22) */
+	/* channel = 183, Tf = 4915MHz (15) */
+	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 184, Tf = 4920MHz (16) */
+	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 185, Tf = 4925MHz (17) */
+	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 187, Tf = 4935MHz (18) */
+	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 188, Tf = 4940MHz (19) */
+	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 189, Tf = 4945MHz (20) */
+	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 192, Tf = 4960MHz (21) */
+	0x0FF53000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 196, Tf = 4980MHz (22) */
+	0x0FF53000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+
+	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56,
+	 * 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149,
+	 * 153, 157, 161, 165  (Value 23 ~ 56)
+	 */
 
-	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22) */
-	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 183, Tf = 4915MHz (15) */
-	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 184, Tf = 4920MHz (16) */
-	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 185, Tf = 4925MHz (17) */
-	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 187, Tf = 4935MHz (18) */
-	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 188, Tf = 4940MHz (19) */
-	0x0FF52000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 189, Tf = 4945MHz (20) */
-	0x0FF53000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
-	0x0FF53000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
-
-	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
-	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
-
-	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
-	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
-	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
-	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  11, Tf = 5055MHz (26) */
-	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  12, Tf = 5060MHz (27) */
-	0x0FF55000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  16, Tf = 5080MHz (28) */
-	0x0FF56000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  34, Tf = 5170MHz (29) */
-	0x0FF56000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  36, Tf = 5180MHz (30) */
-	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) //RobertYu: 20050218, update for APNode 0.49 */
-	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  40, Tf = 5200MHz (32) */
-	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  42, Tf = 5210MHz (33) */
-	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  44, Tf = 5220MHz (34) */
-	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  46, Tf = 5230MHz (35) */
-	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  48, Tf = 5240MHz (36) */
-	0x0FF58000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  52, Tf = 5260MHz (37) */
-	0x0FF58000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  56, Tf = 5280MHz (38) */
-	0x0FF58000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  60, Tf = 5300MHz (39) */
-	0x0FF59000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  64, Tf = 5320MHz (40) */
-
-	0x0FF5C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 100, Tf = 5500MHz (41) */
-	0x0FF5C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 104, Tf = 5520MHz (42) */
-	0x0FF5C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 108, Tf = 5540MHz (43) */
-	0x0FF5D000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 112, Tf = 5560MHz (44) */
-	0x0FF5D000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 116, Tf = 5580MHz (45) */
-	0x0FF5D000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 120, Tf = 5600MHz (46) */
-	0x0FF5E000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 124, Tf = 5620MHz (47) */
-	0x0FF5E000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 128, Tf = 5640MHz (48) */
-	0x0FF5E000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 132, Tf = 5660MHz (49) */
-	0x0FF5F000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 136, Tf = 5680MHz (50) */
-	0x0FF5F000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 140, Tf = 5700MHz (51) */
-	0x0FF60000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 149, Tf = 5745MHz (52) */
-	0x0FF60000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 153, Tf = 5765MHz (53) */
-	0x0FF60000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 157, Tf = 5785MHz (54) */
-	0x0FF61000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 161, Tf = 5805MHz (55) */
-	0x0FF61000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
+	/* channel =   7, Tf = 5035MHz (23) */
+	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =   8, Tf = 5040MHz (24) */
+	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =   9, Tf = 5045MHz (25) */
+	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  11, Tf = 5055MHz (26) */
+	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  12, Tf = 5060MHz (27) */
+	0x0FF54000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  16, Tf = 5080MHz (28) */
+	0x0FF55000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  34, Tf = 5170MHz (29) */
+	0x0FF56000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  36, Tf = 5180MHz (30) */
+	0x0FF56000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  38, Tf = 5190MHz (31) */
+	//RobertYu: 20050218, update for APNode 0.49
+	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  40, Tf = 5200MHz (32) */
+	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  42, Tf = 5210MHz (33) */
+	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  44, Tf = 5220MHz (34) */
+	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  46, Tf = 5230MHz (35) */
+	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  48, Tf = 5240MHz (36) */
+	0x0FF57000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  52, Tf = 5260MHz (37) */
+	0x0FF58000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  56, Tf = 5280MHz (38) */
+	0x0FF58000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  60, Tf = 5300MHz (39) */
+	0x0FF58000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  64, Tf = 5320MHz (40) */
+	0x0FF59000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+
+	/* channel = 100, Tf = 5500MHz (41) */
+	0x0FF5C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 104, Tf = 5520MHz (42) */
+	0x0FF5C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 108, Tf = 5540MHz (43) */
+	0x0FF5C000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 112, Tf = 5560MHz (44) */
+	0x0FF5D000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 116, Tf = 5580MHz (45) */
+	0x0FF5D000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 120, Tf = 5600MHz (46) */
+	0x0FF5D000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 124, Tf = 5620MHz (47) */
+	0x0FF5E000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 128, Tf = 5640MHz (48) */
+	0x0FF5E000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 132, Tf = 5660MHz (49) */
+	0x0FF5E000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 136, Tf = 5680MHz (50) */
+	0x0FF5F000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 140, Tf = 5700MHz (51) */
+	0x0FF5F000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 149, Tf = 5745MHz (52) */
+	0x0FF60000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 153, Tf = 5765MHz (53) */
+	0x0FF60000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 157, Tf = 5785MHz (54) */
+	0x0FF60000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 161, Tf = 5805MHz (55) */
+	0x0FF61000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 165, Tf = 5825MHz (56) */
+	0x0FF61000 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
 static const unsigned long dwAL7230ChannelTable1[CB_MAX_CHANNEL] = {
-	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
-	0x1B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
-	0x03333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
-	0x0B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  4, Tf = 2427MHz */
-	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  5, Tf = 2432MHz */
-	0x1B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  6, Tf = 2437MHz */
-	0x03333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  7, Tf = 2442MHz */
-	0x0B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz */
-	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz */
-	0x1B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
-	0x03333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
-	0x0B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
-	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
-	0x06666100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 14, Tf = 2484MHz */
+	/* channel =  1, Tf = 2412MHz */
+	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  2, Tf = 2417MHz */
+	0x1B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  3, Tf = 2422MHz */
+	0x03333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  4, Tf = 2427MHz */
+	0x0B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  5, Tf = 2432MHz */
+	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  6, Tf = 2437MHz */
+	0x1B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  7, Tf = 2442MHz */
+	0x03333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  8, Tf = 2447MHz */
+	0x0B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  9, Tf = 2452MHz */
+	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 10, Tf = 2457MHz */
+	0x1B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 11, Tf = 2462MHz */
+	0x03333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 12, Tf = 2467MHz */
+	0x0B333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 13, Tf = 2472MHz */
+	0x13333100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 14, Tf = 2484MHz */
+	0x06666100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 
 	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22) */
-	0x1D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 183, Tf = 4915MHz (15) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 184, Tf = 4920MHz (16) */
-	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 185, Tf = 4925MHz (17) */
-	0x08000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 187, Tf = 4935MHz (18) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 188, Tf = 4940MHz (19) */
-	0x0D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 189, Tf = 4945MHz (20) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
-
-	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
-	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
-	0x1D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
-	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
-	0x08000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  11, Tf = 5055MHz (26) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  12, Tf = 5060MHz (27) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  16, Tf = 5080MHz (28) */
-	0x05555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  34, Tf = 5170MHz (29) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  36, Tf = 5180MHz (30) */
-	0x10000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  40, Tf = 5200MHz (32) */
-	0x1AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  42, Tf = 5210MHz (33) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  44, Tf = 5220MHz (34) */
-	0x05555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  46, Tf = 5230MHz (35) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  48, Tf = 5240MHz (36) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  52, Tf = 5260MHz (37) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  56, Tf = 5280MHz (38) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  60, Tf = 5300MHz (39) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  64, Tf = 5320MHz (40) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 100, Tf = 5500MHz (41) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 104, Tf = 5520MHz (42) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 108, Tf = 5540MHz (43) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 112, Tf = 5560MHz (44) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 116, Tf = 5580MHz (45) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 120, Tf = 5600MHz (46) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 124, Tf = 5620MHz (47) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 128, Tf = 5640MHz (48) */
-	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 132, Tf = 5660MHz (49) */
-	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 136, Tf = 5680MHz (50) */
-	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 140, Tf = 5700MHz (51) */
-	0x18000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 149, Tf = 5745MHz (52) */
-	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 153, Tf = 5765MHz (53) */
-	0x0D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 157, Tf = 5785MHz (54) */
-	0x18000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 161, Tf = 5805MHz (55) */
-	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
+
+	/* channel = 183, Tf = 4915MHz (15) */
+	0x1D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 184, Tf = 4920MHz (16) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 185, Tf = 4925MHz (17) */
+	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 187, Tf = 4935MHz (18) */
+	0x08000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 188, Tf = 4940MHz (19) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 189, Tf = 4945MHz (20) */
+	0x0D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 192, Tf = 4960MHz (21) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 196, Tf = 4980MHz (22) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+
+	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56,
+	 * 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149,
+	 * 153, 157, 161, 165  (Value 23 ~ 56)
+	 */
+
+	/* channel =   7, Tf = 5035MHz (23) */
+	0x1D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =   8, Tf = 5040MHz (24) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =   9, Tf = 5045MHz (25) */
+	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  11, Tf = 5055MHz (26) */
+	0x08000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  12, Tf = 5060MHz (27) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  16, Tf = 5080MHz (28) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  34, Tf = 5170MHz (29) */
+	0x05555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  36, Tf = 5180MHz (30) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  38, Tf = 5190MHz (31) */
+	0x10000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  40, Tf = 5200MHz (32) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  42, Tf = 5210MHz (33) */
+	0x1AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  44, Tf = 5220MHz (34) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  46, Tf = 5230MHz (35) */
+	0x05555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  48, Tf = 5240MHz (36) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  52, Tf = 5260MHz (37) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  56, Tf = 5280MHz (38) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  60, Tf = 5300MHz (39) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  64, Tf = 5320MHz (40) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 100, Tf = 5500MHz (41) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 104, Tf = 5520MHz (42) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 108, Tf = 5540MHz (43) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 112, Tf = 5560MHz (44) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 116, Tf = 5580MHz (45) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 120, Tf = 5600MHz (46) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 124, Tf = 5620MHz (47) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 128, Tf = 5640MHz (48) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 132, Tf = 5660MHz (49) */
+	0x0AAAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 136, Tf = 5680MHz (50) */
+	0x15555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 140, Tf = 5700MHz (51) */
+	0x00000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 149, Tf = 5745MHz (52) */
+	0x18000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 153, Tf = 5765MHz (53) */
+	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 157, Tf = 5785MHz (54) */
+	0x0D555100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 161, Tf = 5805MHz (55) */
+	0x18000100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 165, Tf = 5825MHz (56) */
+	0x02AAA100 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
 static const unsigned long dwAL7230ChannelTable2[CB_MAX_CHANNEL] = {
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  1, Tf = 2412MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  2, Tf = 2417MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  3, Tf = 2422MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  4, Tf = 2427MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  5, Tf = 2432MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  6, Tf = 2437MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  7, Tf = 2442MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  8, Tf = 2447MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  9, Tf = 2452MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 10, Tf = 2457MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 11, Tf = 2462MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 12, Tf = 2467MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 13, Tf = 2472MHz */
-	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 14, Tf = 2484MHz */
+	/* channel =  1, Tf = 2412MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  2, Tf = 2417MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  3, Tf = 2422MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  4, Tf = 2427MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  5, Tf = 2432MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  6, Tf = 2437MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  7, Tf = 2442MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  8, Tf = 2447MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  9, Tf = 2452MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 10, Tf = 2457MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 11, Tf = 2462MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 12, Tf = 2467MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 13, Tf = 2472MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 14, Tf = 2484MHz */
+	0x7FD78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
 
 	/* 4.9G => Ch 183, 184, 185, 187, 188, 189, 192, 196  (Value:15 ~ 22) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 183, Tf = 4915MHz (15) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 184, Tf = 4920MHz (16) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 185, Tf = 4925MHz (17) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 187, Tf = 4935MHz (18) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 188, Tf = 4940MHz (19) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 189, Tf = 4945MHz (20) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 192, Tf = 4960MHz (21) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 196, Tf = 4980MHz (22) */
-
-	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56, 60, 64,
-	 * 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149, 153, 157, 161, 165  (Value 23 ~ 56) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   7, Tf = 5035MHz (23) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   8, Tf = 5040MHz (24) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =   9, Tf = 5045MHz (25) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  11, Tf = 5055MHz (26) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  12, Tf = 5060MHz (27) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  16, Tf = 5080MHz (28) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  34, Tf = 5170MHz (29) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  36, Tf = 5180MHz (30) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  38, Tf = 5190MHz (31) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  40, Tf = 5200MHz (32) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  42, Tf = 5210MHz (33) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  44, Tf = 5220MHz (34) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  46, Tf = 5230MHz (35) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  48, Tf = 5240MHz (36) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  52, Tf = 5260MHz (37) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  56, Tf = 5280MHz (38) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  60, Tf = 5300MHz (39) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel =  64, Tf = 5320MHz (40) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 100, Tf = 5500MHz (41) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 104, Tf = 5520MHz (42) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 108, Tf = 5540MHz (43) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 112, Tf = 5560MHz (44) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 116, Tf = 5580MHz (45) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 120, Tf = 5600MHz (46) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 124, Tf = 5620MHz (47) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 128, Tf = 5640MHz (48) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 132, Tf = 5660MHz (49) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 136, Tf = 5680MHz (50) */
-	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 140, Tf = 5700MHz (51) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 149, Tf = 5745MHz (52) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 153, Tf = 5765MHz (53) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 157, Tf = 5785MHz (54) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW, /* channel = 161, Tf = 5805MHz (55) */
-	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW  /* channel = 165, Tf = 5825MHz (56) */
+
+	/* channel = 183, Tf = 4915MHz (15) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 184, Tf = 4920MHz (16) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 185, Tf = 4925MHz (17) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 187, Tf = 4935MHz (18) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 188, Tf = 4940MHz (19) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 189, Tf = 4945MHz (20) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 192, Tf = 4960MHz (21) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 196, Tf = 4980MHz (22) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+
+	/* 5G => Ch 7, 8, 9, 11, 12, 16, 34, 36, 38, 40, 42, 44, 46, 48, 52, 56,
+	 * 60, 64, 100, 104, 108, 112, 116, 120, 124, 128, 132, 136, 140, 149,
+	 * 153, 157, 161, 165  (Value 23 ~ 56)
+	 */
+
+	/* channel =   7, Tf = 5035MHz (23) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =   8, Tf = 5040MHz (24) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =   9, Tf = 5045MHz (25) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  11, Tf = 5055MHz (26) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  12, Tf = 5060MHz (27) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  16, Tf = 5080MHz (28) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  34, Tf = 5170MHz (29) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  36, Tf = 5180MHz (30) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  38, Tf = 5190MHz (31) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  40, Tf = 5200MHz (32) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  42, Tf = 5210MHz (33) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  44, Tf = 5220MHz (34) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  46, Tf = 5230MHz (35) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  48, Tf = 5240MHz (36) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  52, Tf = 5260MHz (37) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  56, Tf = 5280MHz (38) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  60, Tf = 5300MHz (39) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel =  64, Tf = 5320MHz (40) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 100, Tf = 5500MHz (41) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 104, Tf = 5520MHz (42) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 108, Tf = 5540MHz (43) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 112, Tf = 5560MHz (44) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 116, Tf = 5580MHz (45) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 120, Tf = 5600MHz (46) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 124, Tf = 5620MHz (47) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 128, Tf = 5640MHz (48) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 132, Tf = 5660MHz (49) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 136, Tf = 5680MHz (50) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 140, Tf = 5700MHz (51) */
+	0x67D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 149, Tf = 5745MHz (52) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 153, Tf = 5765MHz (53) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 157, Tf = 5785MHz (54) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 161, Tf = 5805MHz (55) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW,
+	/* channel = 165, Tf = 5825MHz (56) */
+	0x77D78400 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW
 };
 
 /*
@@ -425,7 +660,8 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 
 	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, (SOFTPWRCTL_SWPECTI  |
 							 SOFTPWRCTL_TXPEINV));
-	BBvPowerSaveModeOFF(priv); /* RobertYu:20050106, have DC value for Calibration */
+	/* RobertYu:20050106, have DC value for Calibration */
+	BBvPowerSaveModeOFF(priv);
 
 	for (ii = 0; ii < CB_AL7230_INIT_SEQ; ii++)
 		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[ii]);
@@ -436,10 +672,12 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 	/* Calibration */
 	MACvTimer0MicroSDelay(priv, 150);/* 150us */
 	/* TXDCOC:active, RCK:disable */
-	ret &= IFRFbWriteEmbedded(priv, (0x9ABA8F00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW));
+	ret &= IFRFbWriteEmbedded(priv, (0x9ABA8F00 + (BY_AL7230_REG_LEN << 3) +
+								IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	/* TXDCOC:disable, RCK:active */
-	ret &= IFRFbWriteEmbedded(priv, (0x3ABA8F00 + (BY_AL7230_REG_LEN << 3) + IFREGCTL_REGW));
+	ret &= IFRFbWriteEmbedded(priv, (0x3ABA8F00 + (BY_AL7230_REG_LEN << 3) +
+								IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	/* TXDCOC:disable, RCK:disable */
 	ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
@@ -453,7 +691,8 @@ static bool s_bAL7230Init(struct vnt_private *priv)
 
 	/* PE1: TX_ON, PE2: RX_ON, PE3: PLLON */
 	/* 3-wire control for power saving mode */
-	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
+	/* 1100 0000 */
+	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2));
 
 	return ret;
 }
@@ -550,7 +789,8 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	MACvWordRegBitsOff(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	/* patch abnormal AL2230 frequency output */
-	IFRFbWriteEmbedded(priv, (0x07168700 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW));
+	IFRFbWriteEmbedded(priv, (0x07168700 + (BY_AL2230_REG_LEN << 3) +
+							IFREGCTL_REGW));
 
 	for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
 		ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[ii]);
@@ -560,9 +800,11 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
 
 	MACvTimer0MicroSDelay(priv, 150);/* 150us */
-	ret &= IFRFbWriteEmbedded(priv, (0x00d80f00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW));
+	ret &= IFRFbWriteEmbedded(priv, (0x00d80f00 + (BY_AL2230_REG_LEN << 3) +
+								IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
-	ret &= IFRFbWriteEmbedded(priv, (0x00780f00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW));
+	ret &= IFRFbWriteEmbedded(priv, (0x00780f00 + (BY_AL2230_REG_LEN << 3) +
+								IFREGCTL_REGW));
 	MACvTimer0MicroSDelay(priv, 30);/* 30us */
 	ret &= IFRFbWriteEmbedded(priv, dwAL2230InitTable[CB_AL2230_INIT_SEQ-1]);
 
@@ -572,7 +814,8 @@ static bool RFbAL2230Init(struct vnt_private *priv)
 							 SOFTPWRCTL_TXPEINV));
 
 	/* 3-wire control for power saving mode */
-	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2)); /* 1100 0000 */
+	/* 1100 0000 */
+	VNSvOutPortB(dwIoBase + MAC_REG_PSPWRSIG, (PSSIG_WPE3 | PSSIG_WPE2));
 
 	return ret;
 }
@@ -850,20 +1093,26 @@ bool RFbRawSetPower(
 	case RF_AIROHA:
 		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
 		if (rate <= RATE_11M)
-			ret &= IFRFbWriteEmbedded(priv, 0x0001B400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x0001B400 +
+			       (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
 		else
-			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 +
+			       (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
 
 		break;
 
 	case RF_AL2230S:
 		ret &= IFRFbWriteEmbedded(priv, dwAL2230PowerTable[byPwr]);
 		if (rate <= RATE_11M) {
-			ret &= IFRFbWriteEmbedded(priv, 0x040C1400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
-			ret &= IFRFbWriteEmbedded(priv, 0x00299B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x040C1400 +
+			       (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x00299B00 +
+			       (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
 		} else {
-			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
-			ret &= IFRFbWriteEmbedded(priv, 0x00099B00 + (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x0005A400 +
+			       (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
+			ret &= IFRFbWriteEmbedded(priv, 0x00099B00 +
+			       (BY_AL2230_REG_LEN << 3) + IFREGCTL_REGW);
 		}
 
 		break;
-- 
2.7.4



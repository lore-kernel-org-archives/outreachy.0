X-GM-THRID: 6747862437229232128
X-Received: by 2002:a05:6638:8d:: with SMTP id v13mr41807594jao.104.1571109163135;
        Mon, 14 Oct 2019 20:12:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:c90f:: with SMTP id t15ls903117ilp.0.gmail; Mon, 14 Oct
 2019 20:12:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwjS7Lnf+MpfE+OQFLn+mS37iIHz/+I8iOxifk5Yd7d3G+g1ZG0W0Jy0aDVevZd8wsBqbxk
X-Received: by 2002:a92:b604:: with SMTP id s4mr3876053ili.28.1571109161883;
        Mon, 14 Oct 2019 20:12:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571109161; cv=none;
        d=google.com; s=arc-20160816;
        b=GqE1SodbRKBo4vaY+vGr2fp4BLMajGr0f17pRdx4u62QKP2I/f6VRVQcJqRi06gDyK
         DWN2MtktH2HQ8Q63n6EKnBDC5BbrleJ11etsAT2oiUyZMbsxYYDvfTgFq3icArwG5j1d
         NlNai42IT8Zypir0zBkf/vFUULg9KoJKAZAWouS0mmKRvuG4OE1qZqJWGiDyxSjKqZpJ
         1medty3UJ4KJ7rS2545eTg8oKTLxC+p8yASst7w/niM9NRNI10/mpiURy2q3L2LR0/9i
         M6Wt+34KlZIGSXdK8+uvIMaU9XW54KRIIdJPyXSUVt3xh73dcuONzUqERtaEoUYPzQLM
         wIzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=eQNPTf5ANP6BD5CqlEWSP8sSzpMczr89Pl0jj1yKVT4=;
        b=c7agA/cB97oK7tgFlrMIYPIkAoOT0CunwaI05Vs+ZndrDTWgFpu6m6kqBZGs4azkcN
         Ppagg3xu38DZpy52MhY6Nxi6io8NIhA5O/Uzpx734hBqeDDitykhKS8mUEZNuZOxJYBf
         9HnfrZKcXWwQ72134BCXXPmLXRMminEJVeqkwPC2e7s959nbN3x5cY9k7HvG4bjOASwb
         wGi12oJ3qj1rigvHToqmk2A7SLM519wt21CR5EeFiVvB7erJ7q4xWqQOohoItNeWZpf4
         iNcr4jD53KSwS643xeLHj8op0LhuHZpN07mThALUMvDPjsK7m76fRcaKiJroh0UgGHvb
         Rgew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q2ORFBQr;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q207si1212558iod.5.2019.10.14.20.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 20:12:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q2ORFBQr;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id e10so7218554pgd.11
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Oct 2019 20:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=eQNPTf5ANP6BD5CqlEWSP8sSzpMczr89Pl0jj1yKVT4=;
        b=q2ORFBQrBJpfnH1JLTO0WDGrS6+UtuVyraQHgKUELE8keFxjVDjLUasoOtTv/nJEOZ
         9/V5tbbj0fqoJhBQXLPO1IlZmMy3AFGXq6SzuE8YL/sMwf5yoKPJ4Efv3OqriMocoM7F
         Rm11Rw9eGS1ZIUXqmXI+EV2yWOvxN779MtYLG72nmr35iUeDNWYTPFz/aHIHTqyCzENh
         atBTzBoS+g33gh/0qPavtFR01441aQ+QVBvIyNK3AfFrKonHHsZ6Mz8L+y+ihLyLSFr0
         RmXjCkJ9qqIxK3aFrDR/wDAPPrZnhyJfwPam2VoeruC3c31vQt0wZtLf/020kHtre73d
         B2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=eQNPTf5ANP6BD5CqlEWSP8sSzpMczr89Pl0jj1yKVT4=;
        b=Wozu7N93qhsr1Heq1Q99+pJqbBYiBsmYrbO9N2/t9C8ar3Y7MoBcX/kedscTSAlBsM
         lvxFqhjx5AbwCpszq2BFnyIn4fedP4NLH7ebSuxAOz8tlEJsI8dtlyncreUz4AoNAL23
         gXvVqdczMB5jSFmAvTp6Mphvhxt80SPsFC6+gRaxT8mIB7aqhRRQcPvd4ZJjD3w++tN2
         UQRxpK+38lOxPhuK+GDjVU/I6XoFVOWAIjjT2ccdZ4e+usR46e1sDSj5nRT1vOGkD7nh
         tOCc7E8FdqDEaiHnvWx+S97fQ66HSDyaenzBw9S5mZ7xzylLaXeTEc2jIr0hxpqu0Ufd
         ZuOg==
X-Gm-Message-State: APjAAAWh0yeQQxBa/HhD72b9ewflcsQQNIJ4HBpIplAm8Eeq8c2jTCge
	zORGHMPxs/Hp/4AKIwyae+I=
X-Received: by 2002:a17:90a:718a:: with SMTP id i10mr38974437pjk.54.1571109161438;
        Mon, 14 Oct 2019 20:12:41 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id n3sm21179915pff.102.2019.10.14.20.12.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 20:12:41 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jamal.k.shareef@gmail.com
Subject: [PATCH 1/2] staging: sm750fb: Fix lines over 80 characters
Date: Mon, 14 Oct 2019 20:12:12 -0700
Message-Id: <1f635b0469f93d8460d513f5fabd877dc5054a33.1571108943.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571108943.git.jamal.k.shareef@gmail.com>
References: <cover.1571108943.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571108943.git.jamal.k.shareef@gmail.com>
References: <cover.1571108943.git.jamal.k.shareef@gmail.com>

Fix lines over 80 character warnings. Issue found
by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c |  4 ++--
 drivers/staging/sm750fb/ddk750_mode.c    |  5 +++--
 drivers/staging/sm750fb/ddk750_sii164.c  | 28 ++++++++++++++++--------
 drivers/staging/sm750fb/ddk750_sii164.h  | 11 ++++++----
 4 files changed, 31 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 887ea8aef43f..172624ff98b0 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -147,8 +147,8 @@ void ddk750_set_logical_disp_out(enum disp_output output)
 
 	if (output & PNL_SEQ_USAGE) {
 		/* set  panel sequence */
-		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
-		4);
+		sw_panel_power_sequence((output & PNL_SEQ_MASK) >>
+					PNL_SEQ_OFFSET, 4);
 	}
 
 	if (output & DAC_USAGE)
diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index e0230f4ffc8b..e00a6cb31947 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -13,8 +13,9 @@
  * HW only supports 7 predefined pixel clocks, and clock select is
  * in bit 29:27 of Display Control register.
  */
-static unsigned long displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
-						  unsigned long dispControl)
+static unsigned long
+displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
+			     unsigned long dispControl)
 {
 	unsigned long x, y;
 
diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index c8e856c13912..bee58edc84e7 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -39,8 +39,10 @@ unsigned short sii164GetVendorID(void)
 {
 	unsigned short vendorID;
 
-	vendorID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_HIGH) << 8) |
-		    (unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_VENDOR_ID_LOW);
+	vendorID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
+					       SII164_VENDOR_ID_HIGH) << 8) |
+		   (unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
+					      SII164_VENDOR_ID_LOW);
 
 	return vendorID;
 }
@@ -56,13 +58,18 @@ unsigned short sii164GetDeviceID(void)
 {
 	unsigned short deviceID;
 
-	deviceID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_HIGH) << 8) |
-		    (unsigned short)i2cReadReg(SII164_I2C_ADDRESS, SII164_DEVICE_ID_LOW);
+	deviceID = ((unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
+					       SII164_DEVICE_ID_HIGH) << 8) |
+		   (unsigned short)i2cReadReg(SII164_I2C_ADDRESS,
+					      SII164_DEVICE_ID_LOW);
 
 	return deviceID;
 }
 
-/* DVI.C will handle all SiI164 chip stuffs and try it best to make code minimal and useful */
+/*
+ *  DVI.C will handle all SiI164 chip stuffs and try its best to make code
+ *  minimal and useful
+ */
 
 /*
  *  sii164InitChip
@@ -133,7 +140,8 @@ long sii164InitChip(unsigned char edge_select,
 #endif
 
 	/* Check if SII164 Chip exists */
-	if ((sii164GetVendorID() == SII164_VENDOR_ID) && (sii164GetDeviceID() == SII164_DEVICE_ID)) {
+	if ((sii164GetVendorID() == SII164_VENDOR_ID) &&
+			(sii164GetDeviceID() == SII164_DEVICE_ID)) {
 		/*
 		 *  Initialize SII164 controller chip.
 		 */
@@ -254,7 +262,9 @@ void sii164ResetChip(void)
 
 /*
  * sii164GetChipString
- *      This function returns a char string name of the current DVI Controller chip.
+ *      This function returns a char string name of the current DVI Controller
+ *      chip.
+ *
  *      It's convenient for application need to display the chip name.
  */
 char *sii164GetChipString(void)
@@ -330,8 +340,8 @@ void sii164EnableHotPlugDetection(unsigned char enableHotPlug)
 
 	detectReg = i2cReadReg(SII164_I2C_ADDRESS, SII164_DETECT);
 
-	/* Depending on each DVI controller, need to enable the hot plug based on each
-	 * individual chip design.
+	/* Depending on each DVI controller, need to enable the hot plug based
+	 * on each individual chip design.
 	 */
 	if (enableHotPlug != 0)
 		sii164SelectHotPlugDetectionMode(SII164_HOTPLUG_USE_MDI);
diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
index 862e7bf27353..d940cb729066 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.h
+++ b/drivers/staging/sm750fb/ddk750_sii164.h
@@ -6,10 +6,13 @@
 
 /* Hot Plug detection mode structure */
 enum sii164_hot_plug_mode {
-	SII164_HOTPLUG_DISABLE = 0,         /* Disable Hot Plug output bit (always high). */
-	SII164_HOTPLUG_USE_MDI,             /* Use Monitor Detect Interrupt bit. */
-	SII164_HOTPLUG_USE_RSEN,            /* Use Receiver Sense detect bit. */
-	SII164_HOTPLUG_USE_HTPLG            /* Use Hot Plug detect bit. */
+	SII164_HOTPLUG_DISABLE = 0,	/* Disable Hot Plug output bit
+					 * (always high).
+					 */
+
+	SII164_HOTPLUG_USE_MDI,         /* Use Monitor Detect Interrupt bit. */
+	SII164_HOTPLUG_USE_RSEN,        /* Use Receiver Sense detect bit. */
+	SII164_HOTPLUG_USE_HTPLG        /* Use Hot Plug detect bit. */
 };
 
 /* Silicon Image SiI164 chip prototype */
-- 
2.17.1



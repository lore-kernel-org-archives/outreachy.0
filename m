X-GM-THRID: 6752952386493349888
X-Received: by 2002:a17:902:bc48:: with SMTP id t8mr21192513plz.167.1572294257451;
        Mon, 28 Oct 2019 13:24:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a589:: with SMTP id az9ls5747705plb.12.gmail; Mon,
 28 Oct 2019 13:24:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRPU/nyL3lWq9ktdfbovro+EHGngAmzkswHIBuCdZcnL9nzEQvP766QTy3z1Z5dn8SBRtt
X-Received: by 2002:a17:902:988d:: with SMTP id s13mr4531634plp.335.1572294256450;
        Mon, 28 Oct 2019 13:24:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572294256; cv=none;
        d=google.com; s=arc-20160816;
        b=s+tSul8lHrAQQ8KXGLM8picA5miax0PRSFKr5sABbEXD5v8J//F822IqzLUh+Dhr3D
         sL/mdPQKs2s6T7OWd2QfxCbjKVI8IkW08m13nCblgLWIoVOdj/0i2Ac/VogHtu/nRjp7
         FfQm5WSvu9Wal5krEKK9USKkT2m5aHnrOYgfR/Nn7TyP0jYV9Oi0nx73uKz1Fd735XiK
         39ekczXi67YGHCeSEW7svhRJ8rLm49mKZnq/yolRhAwwgYjdWqL1YL/xSCEDR2QhK2u6
         WJodaet/8fZSREor8j6W17xZ9ZWcWZT9pGkV+f0J9GuP0QxGV2q/h1x/GqxXY3jGbVho
         3otw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=37IFflHlhgnubCvsd27IR7dfKbP8tdoNiqwLUssMvJw=;
        b=xmLbiZNzg2yH6Ko2zoxLtmLdVR/d5N1Jx7EAFXfBH/b6kYY5UNVXYCOe5ofHqhpWn+
         dKhQfXXY1OHJsoG7wYJNN1BGUZ7X35GqmmR1b5by12Dxm/Btp4mAcffTzJGoPHHNLG7s
         rK7zY35fODnzBGiFw5Z3ZpoyUXao9PSqBljJhR3ZNfoodsJFmJvvWDMNbQYKHKFIv1el
         fHuWxOpcaJasxedEOiHzATyJb0IgS8yHoOp/YAhWX8dPBdff3v86K6AKosg9Si0JIFLq
         89KW+l/HJ1sUg7aUuVlJXgNie9wuPJdCty5eQ1juJHPbZLFar+ITeTbVolsZHLExAbUd
         7a+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nxkh6jfE;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id h4si15341pjt.2.2019.10.28.13.24.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 13:24:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Nxkh6jfE;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id r4so2012226pfl.7
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 13:24:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=37IFflHlhgnubCvsd27IR7dfKbP8tdoNiqwLUssMvJw=;
        b=Nxkh6jfE7f5PvLMG3Ia5qPMUbfatWH448xz4WRtktb4fKZDqLQOW/VVjePxy+rKwIy
         Y8AWL57s/O2VpO07kXAblTFopAC/aRAtgpT1GrLRkkr0lyhARjIx+xoSacrkVfXUylz+
         sr5y5yIFPdGIPogT8VGcDxvPukply+fLcLhWs+19s0v2uiYgMjClKpk5uajcCd0Vp2dp
         EUvzRg3Evi09JXUAkdPsVpQ9LieN7BmvPps48wgPDWODng7A1GN21yJVLfzc/WlXaXSd
         /95wRJcztQuOI0SdXhPpcek9p1Jf9A67ElS98SfHclNhBsV6LuHhLAZTHGtm+tmyiBZ2
         EeJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=37IFflHlhgnubCvsd27IR7dfKbP8tdoNiqwLUssMvJw=;
        b=MdVMoaN1flJeBfyVFvy65g2ag+6I1UQ/fdVYkcXfh8q4encD6JKsHdEfejezhqTlgA
         U6Vph3SDem7nnLkB0ZIqJUli7K1gWiB+V+Iu7ijUesI//XLnrhrtbIoDfaHjN8xS0EY7
         MjRpKENSPFICXBbXA4J7rizSaCOHFW5zmwIbmEWZF4GwLILFHKqxb9iJw1Pa5gGM1oHl
         2CEEPohg66LVJ7/41XRt3WdMO+tWa2xjG2OTwssv1un40z48R/b4sVrj2epa4ji5Z0eV
         zO2m17CEDuhIJlxgHgH7MMZASf/YQo1Z6bob8jlKyHsNNcl3QpT68yEDIEhkLkQwLGQe
         90kw==
X-Gm-Message-State: APjAAAWk5oBsDR2n9KeUiQNxF7Iuyy6dNiafdMWXmwMv5KXauE9Ug5UK
	NqHURPei0TKW6kFq+PiAXFk=
X-Received: by 2002:a17:90a:182:: with SMTP id 2mr1466135pjc.85.1572294255947;
        Mon, 28 Oct 2019 13:24:15 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 16sm11967047pgd.0.2019.10.28.13.24.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 13:24:15 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 1/2] staging: kpc2000: kpc_i2c: Fix lines over 80 chars
Date: Mon, 28 Oct 2019 13:24:03 -0700
Message-Id: <8273ad9efccfb2c37ff1e9a25d5ccb26780567aa.1572293975.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572293975.git.jamal.k.shareef@gmail.com>
References: <cover.1572293975.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572293975.git.jamal.k.shareef@gmail.com>
References: <cover.1572293975.git.jamal.k.shareef@gmail.com>

Fix lines over 80 characters warnings.
issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 201 ++++++++++++++++++--------
 1 file changed, 137 insertions(+), 64 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index bc02534d8dc3..0412dab68670 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -99,7 +99,8 @@ struct i2c_device {
 #define SMBHSTSTS_INTR          0x02
 #define SMBHSTSTS_HOST_BUSY     0x01
 
-#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
+#define STATUS_FLAGS	(SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | \
+			 SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
 
 /* Older devices have their ID defined in <linux/pci_ids.h> */
 #define PCI_DEVICE_ID_INTEL_COUGARPOINT_SMBUS       0x1c22
@@ -136,7 +137,8 @@ static int i801_check_pre(struct i2c_device *priv)
 
 	status = inb_p(SMBHSTSTS(priv));
 	if (status & SMBHSTSTS_HOST_BUSY) {
-		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
+		dev_err(&priv->adapter.dev,
+			"SMBus is busy, can't use it! (status=%x)\n", status);
 		return -EBUSY;
 	}
 
@@ -146,7 +148,8 @@ static int i801_check_pre(struct i2c_device *priv)
 		outb_p(status, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status) {
-			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
+			dev_err(&priv->adapter.dev,
+				"Failed clearing status flags (%02x)\n", status);
 			return -EBUSY;
 		}
 	}
@@ -162,15 +165,20 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 	if (timeout) {
 		dev_err(&priv->adapter.dev, "Transaction timeout\n");
 		/* try to stop the current command */
-		dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
-		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
+		dev_dbg(&priv->adapter.dev,
+			"Terminating the current operation\n");
+		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL,
+		       SMBHSTCNT(priv));
 		usleep_range(1000, 2000);
-		outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
+		outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL),
+		       SMBHSTCNT(priv));
 
 		/* Check if it worked */
 		status = inb_p(SMBHSTSTS(priv));
-		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED))
-			dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
+		if ((status & SMBHSTSTS_HOST_BUSY) ||
+		    !(status & SMBHSTSTS_FAILED))
+			dev_err(&priv->adapter.dev,
+				"Failed terminating the transaction\n");
 		outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
 		return -ETIMEDOUT;
 	}
@@ -244,7 +252,9 @@ static void i801_wait_hwpec(struct i2c_device *priv)
 	outb_p(status, SMBHSTSTS(priv));
 }
 
-static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int hwpec)
+static int i801_block_transaction_by_block(struct i2c_device *priv,
+					   union i2c_smbus_data *data,
+					   char read_write, int hwpec)
 {
 	int i, len;
 	int status;
@@ -259,7 +269,8 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 			outb_p(data->block[i + 1], SMBBLKDAT(priv));
 	}
 
-	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
+	status = i801_transaction(priv,
+			I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
 	if (status)
 		return status;
 
@@ -275,7 +286,10 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 	return 0;
 }
 
-static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
+static int i801_block_transaction_byte_by_byte(struct i2c_device *priv,
+					       union i2c_smbus_data *data,
+					       char read_write, int command,
+					       int hwpec)
 {
 	int i, len;
 	int smbcmd;
@@ -301,7 +315,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 			else
 				smbcmd = I801_BLOCK_LAST;
 		} else {
-			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
+			if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
+			    read_write == I2C_SMBUS_READ)
 				smbcmd = I801_I2C_BLOCK_DATA;
 			else
 				smbcmd = I801_BLOCK_DATA;
@@ -309,25 +324,33 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 		outb_p(smbcmd | ENABLE_INT9, SMBHSTCNT(priv));
 
 		if (i == 1)
-			outb_p(inb(SMBHSTCNT(priv)) | I801_START, SMBHSTCNT(priv));
+			outb_p(inb(SMBHSTCNT(priv)) | I801_START,
+			       SMBHSTCNT(priv));
 		/* We will always wait for a fraction of a second! */
 		timeout = 0;
 		do {
 			usleep_range(250, 500);
 			status = inb_p(SMBHSTSTS(priv));
-		} while ((!(status & SMBHSTSTS_BYTE_DONE)) && (timeout++ < MAX_RETRIES));
+		} while (!(status & SMBHSTSTS_BYTE_DONE) &&
+			 (timeout++ < MAX_RETRIES));
 
 		result = i801_check_post(priv, status, timeout > MAX_RETRIES);
 		if (result < 0)
 			return result;
-		if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
+		if (i == 1 && read_write == I2C_SMBUS_READ &&
+		    command != I2C_SMBUS_I2C_BLOCK_DATA) {
 			len = inb_p(SMBHSTDAT0(priv));
 			if (len < 1 || len > I2C_SMBUS_BLOCK_MAX) {
-				dev_err(&priv->adapter.dev, "Illegal SMBus block read size %d\n", len);
+				dev_err(&priv->adapter.dev,
+					"Illegal SMBus block read size %d\n",
+					len);
 				/* Recover */
-				while (inb_p(SMBHSTSTS(priv)) & SMBHSTSTS_HOST_BUSY)
-					outb_p(SMBHSTSTS_BYTE_DONE, SMBHSTSTS(priv));
-				outb_p(SMBHSTSTS_INTR, SMBHSTSTS(priv));
+				while (inb_p(SMBHSTSTS(priv)) &
+						SMBHSTSTS_HOST_BUSY)
+					outb_p(SMBHSTSTS_BYTE_DONE,
+					       SMBHSTSTS(priv));
+				outb_p(SMBHSTSTS_INTR,
+				       SMBHSTSTS(priv));
 				return -EPROTO;
 			}
 			data->block[0] = len;
@@ -354,7 +377,9 @@ static int i801_set_block_buffer_mode(struct i2c_device *priv)
 }
 
 /* Block transaction function */
-static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
+static int i801_block_transaction(struct i2c_device *priv,
+				  union i2c_smbus_data *data, char read_write,
+				  int command, int hwpec)
 {
 	int result = 0;
 	//unsigned char hostc;
@@ -366,12 +391,14 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 			//pci_read_config_byte(priv->pci_dev, SMBHSTCFG, &hostc);
 			//pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc | SMBHSTCFG_I2C_EN);
 		} else if (!(priv->features & FEATURE_I2C_BLOCK_READ)) {
-			dev_err(&priv->adapter.dev, "I2C block read is unsupported!\n");
+			dev_err(&priv->adapter.dev,
+				"I2C block read is unsupported!\n");
 			return -EOPNOTSUPP;
 		}
 	}
 
-	if (read_write == I2C_SMBUS_WRITE || command == I2C_SMBUS_I2C_BLOCK_DATA) {
+	if (read_write == I2C_SMBUS_WRITE ||
+	    command == I2C_SMBUS_I2C_BLOCK_DATA) {
 		if (data->block[0] < 1)
 			data->block[0] = 1;
 		if (data->block[0] > I2C_SMBUS_BLOCK_MAX)
@@ -384,13 +411,21 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 	 * SMBus (not I2C) block transactions, even though the datasheet
 	 * doesn't mention this limitation.
 	 */
-	if ((priv->features & FEATURE_BLOCK_BUFFER) && command != I2C_SMBUS_I2C_BLOCK_DATA && i801_set_block_buffer_mode(priv) == 0)
-		result = i801_block_transaction_by_block(priv, data, read_write, hwpec);
-	else
-		result = i801_block_transaction_byte_by_byte(priv, data, read_write, command, hwpec);
+	if ((priv->features & FEATURE_BLOCK_BUFFER) &&
+	    command != I2C_SMBUS_I2C_BLOCK_DATA &&
+	    i801_set_block_buffer_mode(priv) == 0) {
+		result = i801_block_transaction_by_block(priv, data,
+							 read_write, hwpec);
+	} else {
+		result = i801_block_transaction_byte_by_byte(priv, data,
+							     read_write,
+							     command, hwpec);
+	}
+
 	if (result == 0 && hwpec)
 		i801_wait_hwpec(priv);
-	if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_WRITE) {
+	if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
+	    read_write == I2C_SMBUS_WRITE) {
 		/* restore saved configuration register value */
 		//TODO: Figure out the right thing to do here...
 		//pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc);
@@ -399,32 +434,41 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
 }
 
 /* Return negative errno on error. */
-static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags, char read_write, u8 command, int size, union i2c_smbus_data *data)
+static s32 i801_access(struct i2c_adapter *adap, u16 addr,
+		       unsigned short flags, char read_write, u8 command,
+		       int size, union i2c_smbus_data *data)
 {
 	int hwpec;
 	int block = 0;
 	int ret, xact = 0;
 	struct i2c_device *priv = i2c_get_adapdata(adap);
 
-	hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC) && size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
+	hwpec = (priv->features & FEATURE_SMBUS_PEC) &&
+		(flags & I2C_CLIENT_PEC) &&
+		size != I2C_SMBUS_QUICK && size != I2C_SMBUS_I2C_BLOCK_DATA;
 
 	switch (size) {
 	case I2C_SMBUS_QUICK:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_QUICK\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
+		       SMBHSTADD(priv));
+
 		xact = I801_QUICK;
 		break;
 	case I2C_SMBUS_BYTE:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE\n");
 
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
+		       SMBHSTADD(priv));
 		if (read_write == I2C_SMBUS_WRITE)
 			outb_p(command, SMBHSTCMD(priv));
 		xact = I801_BYTE;
 		break;
 	case I2C_SMBUS_BYTE_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BYTE_DATA\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
+		       SMBHSTADD(priv));
+
 		outb_p(command, SMBHSTCMD(priv));
 		if (read_write == I2C_SMBUS_WRITE)
 			outb_p(data->byte, SMBHSTDAT0(priv));
@@ -432,7 +476,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		break;
 	case I2C_SMBUS_WORD_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_WORD_DATA\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
+		       SMBHSTADD(priv));
+
 		outb_p(command, SMBHSTCMD(priv));
 		if (read_write == I2C_SMBUS_WRITE) {
 			outb_p(data->word & 0xff, SMBHSTDAT0(priv));
@@ -442,7 +488,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		break;
 	case I2C_SMBUS_BLOCK_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] SMBUS_BLOCK_DATA\n");
-		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01), SMBHSTADD(priv));
+		outb_p(((addr & 0x7f) << 1) | (read_write & 0x01),
+		       SMBHSTADD(priv));
+
 		outb_p(command, SMBHSTCMD(priv));
 		block = 1;
 		break;
@@ -463,7 +511,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		block = 1;
 		break;
 	default:
-		dev_dbg(&priv->adapter.dev, "  [acc] Unsupported transaction %d\n", size);
+		dev_dbg(&priv->adapter.dev,
+			"  [acc] Unsupported transaction %d\n", size);
 		return -EOPNOTSUPP;
 	}
 
@@ -472,13 +521,15 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		outb_p(inb_p(SMBAUXCTL(priv)) | SMBAUXCTL_CRC, SMBAUXCTL(priv));
 	} else {
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec: no\n");
-		outb_p(inb_p(SMBAUXCTL(priv)) & (~SMBAUXCTL_CRC), SMBAUXCTL(priv));
+		outb_p(inb_p(SMBAUXCTL(priv)) &
+				(~SMBAUXCTL_CRC), SMBAUXCTL(priv));
 	}
 
 	if (block) {
 		//ret = 0;
 		dev_dbg(&priv->adapter.dev, "  [acc] block: yes\n");
-		ret = i801_block_transaction(priv, data, read_write, size, hwpec);
+		ret = i801_block_transaction(priv, data, read_write, size,
+					     hwpec);
 	} else {
 		dev_dbg(&priv->adapter.dev, "  [acc] block: no\n");
 		ret = i801_transaction(priv, xact | ENABLE_INT9);
@@ -490,7 +541,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	 */
 	if (hwpec || block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
-		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
+		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC |
+					SMBAUXCTL_E32B), SMBAUXCTL(priv));
 	}
 	if (block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] block\n");
@@ -501,19 +553,22 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		return ret;
 	}
 	if ((read_write == I2C_SMBUS_WRITE) || (xact == I801_QUICK)) {
-		dev_dbg(&priv->adapter.dev, "  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\n");
+		dev_dbg(&priv->adapter.dev,
+			"  [acc] I2C_SMBUS_WRITE || I801_QUICK  -> ret 0\n");
 		return 0;
 	}
 
 	switch (xact & 0x7f) {
 	case I801_BYTE:  /* Result put in SMBHSTDAT0 */
 	case I801_BYTE_DATA:
-		dev_dbg(&priv->adapter.dev, "  [acc] I801_BYTE or I801_BYTE_DATA\n");
+		dev_dbg(&priv->adapter.dev,
+			"  [acc] I801_BYTE or I801_BYTE_DATA\n");
 		data->byte = inb_p(SMBHSTDAT0(priv));
 		break;
 	case I801_WORD_DATA:
 		dev_dbg(&priv->adapter.dev, "  [acc] I801_WORD_DATA\n");
-		data->word = inb_p(SMBHSTDAT0(priv)) + (inb_p(SMBHSTDAT1(priv)) << 8);
+		data->word = inb_p(SMBHSTDAT0(priv)) +
+			     (inb_p(SMBHSTDAT1(priv)) << 8);
 		break;
 	}
 	return 0;
@@ -535,30 +590,47 @@ static u32 i801_func(struct i2c_adapter *adapter)
 	// http://lxr.free-electrons.com/source/include/uapi/linux/i2c.h#L85
 
 	u32 f =
-		I2C_FUNC_I2C                     | /* 0x00000001 (I enabled this one) */
-		!I2C_FUNC_10BIT_ADDR             | /* 0x00000002 */
-		!I2C_FUNC_PROTOCOL_MANGLING      | /* 0x00000004 */
-		((priv->features & FEATURE_SMBUS_PEC) ? I2C_FUNC_SMBUS_PEC : 0) | /* 0x00000008 */
-		!I2C_FUNC_SMBUS_BLOCK_PROC_CALL  | /* 0x00008000 */
-		I2C_FUNC_SMBUS_QUICK             | /* 0x00010000 */
-		!I2C_FUNC_SMBUS_READ_BYTE        | /* 0x00020000 */
-		!I2C_FUNC_SMBUS_WRITE_BYTE       | /* 0x00040000 */
-		!I2C_FUNC_SMBUS_READ_BYTE_DATA   | /* 0x00080000 */
-		!I2C_FUNC_SMBUS_WRITE_BYTE_DATA  | /* 0x00100000 */
-		!I2C_FUNC_SMBUS_READ_WORD_DATA   | /* 0x00200000 */
-		!I2C_FUNC_SMBUS_WRITE_WORD_DATA  | /* 0x00400000 */
-		!I2C_FUNC_SMBUS_PROC_CALL        | /* 0x00800000 */
-		!I2C_FUNC_SMBUS_READ_BLOCK_DATA  | /* 0x01000000 */
-		!I2C_FUNC_SMBUS_WRITE_BLOCK_DATA | /* 0x02000000 */
-		((priv->features & FEATURE_I2C_BLOCK_READ) ? I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) | /* 0x04000000 */
-		I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   | /* 0x08000000 */
+		I2C_FUNC_I2C                     | /* 0x00000001(I enabled this
+						    * one)
+						    */
+		!I2C_FUNC_10BIT_ADDR             |		/* 0x00000002 */
+		!I2C_FUNC_PROTOCOL_MANGLING      |		/* 0x00000004 */
+		((priv->features & FEATURE_SMBUS_PEC) ?
+			I2C_FUNC_SMBUS_PEC : 0)  |		/* 0x00000008 */
+		!I2C_FUNC_SMBUS_BLOCK_PROC_CALL  |		/* 0x00008000 */
+		I2C_FUNC_SMBUS_QUICK             |		/* 0x00010000 */
+		!I2C_FUNC_SMBUS_READ_BYTE	 |		/* 0x00020000 */
+		!I2C_FUNC_SMBUS_WRITE_BYTE       |		/* 0x00040000 */
+		!I2C_FUNC_SMBUS_READ_BYTE_DATA   |		/* 0x00080000 */
+		!I2C_FUNC_SMBUS_WRITE_BYTE_DATA  |		/* 0x00100000 */
+		!I2C_FUNC_SMBUS_READ_WORD_DATA   |		/* 0x00200000 */
+		!I2C_FUNC_SMBUS_WRITE_WORD_DATA  |		/* 0x00400000 */
+		!I2C_FUNC_SMBUS_PROC_CALL        |		/* 0x00800000 */
+		!I2C_FUNC_SMBUS_READ_BLOCK_DATA  |		/* 0x01000000 */
+		!I2C_FUNC_SMBUS_WRITE_BLOCK_DATA |		/* 0x02000000 */
+		((priv->features & FEATURE_I2C_BLOCK_READ) ?
+			I2C_FUNC_SMBUS_READ_I2C_BLOCK : 0) |	/* 0x04000000 */
+		I2C_FUNC_SMBUS_WRITE_I2C_BLOCK   |		/* 0x08000000 */
 
 		I2C_FUNC_SMBUS_BYTE              | /* _READ_BYTE  _WRITE_BYTE */
-		I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA  _WRITE_BYTE_DATA */
-		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA  _WRITE_WORD_DATA */
-		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA  _WRITE_BLOCK_DATA */
-		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK  _WRITE_I2C_BLOCK */
-		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE  _BYTE_DATA  _WORD_DATA  _PROC_CALL  _WRITE_BLOCK_DATA  _I2C_BLOCK _PEC */
+		I2C_FUNC_SMBUS_BYTE_DATA         | /* _READ_BYTE_DATA
+						    * _WRITE_BYTE_DATA
+						    */
+		I2C_FUNC_SMBUS_WORD_DATA         | /* _READ_WORD_DATA
+						    * _WRITE_WORD_DATA
+						    */
+		I2C_FUNC_SMBUS_BLOCK_DATA        | /* _READ_BLOCK_DATA
+						    * _WRITE_BLOCK_DATA
+						    */
+		!I2C_FUNC_SMBUS_I2C_BLOCK        | /* _READ_I2C_BLOCK
+						    * _WRITE_I2C_BLOCK
+						    */
+		!I2C_FUNC_SMBUS_EMUL;              /* _QUICK  _BYTE
+						    * _BYTE_DATA  _WORD_DATA
+						    * _PROC_CALL
+						    * _WRITE_BLOCK_DATA
+						    * _I2C_BLOCK _PEC
+						    */
 	return f;
 }
 
@@ -611,7 +683,8 @@ static int pi2c_probe(struct platform_device *pldev)
 	priv->adapter.retries = 3;
 
 	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
-	snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");
+	snprintf(priv->adapter.name, sizeof(priv->adapter.name),
+		 "Fake SMBus I801 adapter");
 
 	err = i2c_add_adapter(&priv->adapter);
 	if (err) {
-- 
2.17.1



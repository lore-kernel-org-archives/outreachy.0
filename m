X-GM-THRID: 6751257049994100736
X-Received: by 2002:a62:347:: with SMTP id 68mr20486738pfd.254.1571949339128;
        Thu, 24 Oct 2019 13:35:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:454d:: with SMTP id x13ls2110913pgr.12.gmail; Thu, 24
 Oct 2019 13:35:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzDc1bU2MyHOkCeqQxQ40ASO4ZE75jdfWiE03qqeKd4b728uzHMHogMMYN8jHjcsGAgGBlh
X-Received: by 2002:a62:60c6:: with SMTP id u189mr19670220pfb.85.1571949338058;
        Thu, 24 Oct 2019 13:35:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571949338; cv=none;
        d=google.com; s=arc-20160816;
        b=kuvTLez7vFP1Jkljmh0pS0NB0xLA7Q88W38r0G4nW2RKK1RNN1OllAt5V7UicW0Wyk
         3M/ciqXyktuyAVFU3AW53rDC1gkmNK8KKgIet9318NMcOkVQQ2etEVbxCJr/1ZSSHR/+
         F+Fw1SlMndzBSvwnh1f2oVONcHNNR18E7OQScHEpmNpm9yswfRfMk/1lrRg1ag66ZUjh
         7Wrn5LqziCQLAD3og//0KXJcchUjkCB9RlntTIfzQFCQyNPG86YJ5o47ySdOe/j8A6PS
         OsGBIrq1q4h4qt9CJBEkrovUTguyp++JTFyw9EZUmpwEYgvscBYc4IYlwIHIs6FIOmtk
         XLQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=y1Y8dNDZ9g4VpOUq/MB1NrXYDk44FEuR8W1zMrEC6RM=;
        b=bz+lZHgXNnADaNEvJ8yIHpvOQiKbvwIsgj6QZBJtfZAS2tEl3oZ4j2isKe6QG/Uiwj
         wKWnst6Hv27hl/QlBt0Rw209edgXRhJqBf2ZjvB0KpOAPeesV4liCzvoDZb5zMEtsSG2
         o8U+M0ku+sUpamHsz1kuB0cyBCPB+sOo7Px9kTRxLXfOv/4ZEG2DtXn0hdUaqhpEQG1l
         qf5Ob3JjBNUVj9cIZdkCwfm8PevrldYczGjBIAEPe4woQMLXhgu+BUrm/BrxQicmX5cD
         4llFjvVVIgC7xgla9vFsk+JcEH5eAVx/stJzEjkxoHtUltnPogeV3W66orqTx8xBKBrG
         UU1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzzqNBmA;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x22si949774pgx.2.2019.10.24.13.35.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 13:35:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzzqNBmA;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id x127so10198pfb.7
        for <outreachy-kernel@googlegroups.com>; Thu, 24 Oct 2019 13:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=y1Y8dNDZ9g4VpOUq/MB1NrXYDk44FEuR8W1zMrEC6RM=;
        b=DzzqNBmAyQOluiIEl83Ak5UjH6GkZ14ToOQnlUOiL03ecsBITTy1yW2ll3Yplt6roF
         b9pt60gnHPp7XZbSAch2n1U1pAf65Ql9bRN8q/Wy7trtWeQP7GdP2JbDPQ9+jJqx+PdA
         IfcDiQfGdR/Q15BfbTiHo70Tln+OLC1wXl8/BNOo41D6neaslFBge/ySWTMqYNKk2MCt
         o6EV6BMAnMXRmkUXiKLWxLxWDY3j33NYs9QFiUBJFZeU4yzUU7nIoUq43r/CfAuyPYIL
         gat9oUIwuWQGjTiiqsk5tJnWxe6/I7HmZGB9/2HmJyMsKNIk3WrcD/+dSe0bS3bBL41g
         VXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=y1Y8dNDZ9g4VpOUq/MB1NrXYDk44FEuR8W1zMrEC6RM=;
        b=a7z20BZ+NZgeiiKBU2np8/8g/5bLIr4AIjTACWz/XWu2McjbNB5geyATIokCz0g5TC
         QekM6+tSnFLfK2RqgLd7Sa0vCVCy0Mf2fl93HbdEdVe17DKWZ99olJx0MRyqiyUvW1Iz
         21oHW8J176woO4G9xEqvRMJ5XKRHNGFQr2UavXPc+iO3VFSBM4XkEc2BgZgePUdjhgQQ
         uQtuAtGMlrJ9uFP7/CjslsUfmgnCboxAbzgNNGDQxUMOEC4l9EnJ6x6OHlCkIR2Xc83X
         lQLzUAaHy4deiWQmwfxIUw4s5JBvFbRceTXcqBHPAhS265I2CVBfL5GK8WFMkfY8h27w
         2bqw==
X-Gm-Message-State: APjAAAU+D2ljyvfEzo8UbpOl41F3CCjEvcGsmYL2eqG7AcmKdldnnV6L
	NuC1166ssWo7kxXnKJVUdfE=
X-Received: by 2002:aa7:9806:: with SMTP id e6mr13502156pfl.25.1571949337411;
        Thu, 24 Oct 2019 13:35:37 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id y11sm3463489pfq.1.2019.10.24.13.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2019 13:35:36 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 1/2] staging: kpc2000: kpc_i2c: Fix lines over 80 chars
Date: Thu, 24 Oct 2019 13:35:19 -0700
Message-Id: <e9fce17736dbd3219b4ad5c18b3436ae34299dcd.1571948876.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571948876.git.jamal.k.shareef@gmail.com>
References: <cover.1571948876.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571948876.git.jamal.k.shareef@gmail.com>
References: <cover.1571948876.git.jamal.k.shareef@gmail.com>

Fix lines over 80 characters warnings.
issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 203 ++++++++++++++++++--------
 1 file changed, 139 insertions(+), 64 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index bc02534d8dc3..69128fd7fd5e 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -99,7 +99,8 @@ struct i2c_device {
 #define SMBHSTSTS_INTR          0x02
 #define SMBHSTSTS_HOST_BUSY     0x01
 
-#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
+#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | \
+		SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
 
 /* Older devices have their ID defined in <linux/pci_ids.h> */
 #define PCI_DEVICE_ID_INTEL_COUGARPOINT_SMBUS       0x1c22
@@ -136,7 +137,9 @@ static int i801_check_pre(struct i2c_device *priv)
 
 	status = inb_p(SMBHSTSTS(priv));
 	if (status & SMBHSTSTS_HOST_BUSY) {
-		dev_err(&priv->adapter.dev, "SMBus is busy, can't use it! (status=%x)\n", status);
+		dev_err(&priv->adapter.dev,
+			"SMBus is busy, can't use it! (status=%x)\n",
+			status);
 		return -EBUSY;
 	}
 
@@ -146,7 +149,9 @@ static int i801_check_pre(struct i2c_device *priv)
 		outb_p(status, SMBHSTSTS(priv));
 		status = inb_p(SMBHSTSTS(priv)) & STATUS_FLAGS;
 		if (status) {
-			dev_err(&priv->adapter.dev, "Failed clearing status flags (%02x)\n", status);
+			dev_err(&priv->adapter.dev,
+				"Failed clearing status flags (%02x)\n",
+				status);
 			return -EBUSY;
 		}
 	}
@@ -162,15 +167,20 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
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
@@ -244,7 +254,9 @@ static void i801_wait_hwpec(struct i2c_device *priv)
 	outb_p(status, SMBHSTSTS(priv));
 }
 
-static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int hwpec)
+static int i801_block_transaction_by_block(struct i2c_device *priv,
+					   union i2c_smbus_data *data,
+					   char read_write, int hwpec)
 {
 	int i, len;
 	int status;
@@ -259,7 +271,8 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 			outb_p(data->block[i + 1], SMBBLKDAT(priv));
 	}
 
-	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
+	status = i801_transaction(priv,
+			I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
 	if (status)
 		return status;
 
@@ -275,7 +288,10 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
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
@@ -301,7 +317,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 			else
 				smbcmd = I801_BLOCK_LAST;
 		} else {
-			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
+			if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
+			    read_write == I2C_SMBUS_READ)
 				smbcmd = I801_I2C_BLOCK_DATA;
 			else
 				smbcmd = I801_BLOCK_DATA;
@@ -309,25 +326,33 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
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
@@ -354,7 +379,9 @@ static int i801_set_block_buffer_mode(struct i2c_device *priv)
 }
 
 /* Block transaction function */
-static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
+static int i801_block_transaction(struct i2c_device *priv,
+				  union i2c_smbus_data *data, char read_write,
+				  int command, int hwpec)
 {
 	int result = 0;
 	//unsigned char hostc;
@@ -366,12 +393,14 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
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
@@ -384,13 +413,21 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
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
@@ -399,32 +436,41 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
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
@@ -432,7 +478,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -442,7 +490,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -463,7 +513,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		block = 1;
 		break;
 	default:
-		dev_dbg(&priv->adapter.dev, "  [acc] Unsupported transaction %d\n", size);
+		dev_dbg(&priv->adapter.dev,
+			"  [acc] Unsupported transaction %d\n", size);
 		return -EOPNOTSUPP;
 	}
 
@@ -472,13 +523,15 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -490,7 +543,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	 */
 	if (hwpec || block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
-		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
+		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC |
+					SMBAUXCTL_E32B), SMBAUXCTL(priv));
 	}
 	if (block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] block\n");
@@ -501,19 +555,22 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -535,30 +592,47 @@ static u32 i801_func(struct i2c_adapter *adapter)
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
 
@@ -611,7 +685,8 @@ static int pi2c_probe(struct platform_device *pldev)
 	priv->adapter.retries = 3;
 
 	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
-	snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");
+	snprintf(priv->adapter.name, sizeof(priv->adapter.name),
+		 "Fake SMBus I801 adapter");
 
 	err = i2c_add_adapter(&priv->adapter);
 	if (err) {
-- 
2.17.1



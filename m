X-GM-THRID: 6751257049994100736
X-Received: by 2002:a63:e156:: with SMTP id h22mr14507674pgk.266.1571899536847;
        Wed, 23 Oct 2019 23:45:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8b86:: with SMTP id ay6ls1469961plb.7.gmail; Wed, 23
 Oct 2019 23:45:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqycotPCaAxIZgvpSfhUm+HvB3Idf52rQt7y2SuJ4swrkE40ABJhlXb/Fr6zDtH7Ksrss4ZX
X-Received: by 2002:a17:902:8ec2:: with SMTP id x2mr14552511plo.35.1571899535994;
        Wed, 23 Oct 2019 23:45:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571899535; cv=none;
        d=google.com; s=arc-20160816;
        b=xHC0BLvAZWSrnXdypmWYQFrjP2GKIclyVZhf5UhBGonqpWMO2/Ujy2I3n+Nfso9DOo
         vJFW9oEpyhlLd/C03inofInmyEpFWUX1opHaP2wICTGzkJr/9JlwVd/9ULdxva3/c2Tt
         hM9aIOIDRTo6HSX5zeVmCYidjl4Z0af2ZS9IPV679hAdXoFYOwZsRg/lpYnWk5vDl3Ro
         a501r1AivuV2guwvJzLcGA5brliGJpa9nu+uHPMAZgZBwqv6l+zQcAyFyIfCNXk6oYQg
         VeQGE3OGGfP7suLfHdvU2mMd4i9I/A3MGfpCz8+Qupuz2YxMwcufylrdn6fk37XHcyvN
         k6pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=NainunFmns0KQgLk0Zk2OBaRWDNtmHJ79z0FclAr05M=;
        b=j5q8SB7Dazlfmnoj5jjVZUrQM1JbacRrB/NrjFq2pE8TJRgjUujSM8k4VesgKsxCqI
         jy1rumufFlodWPtRNPkGmcH4M2c4ySX4W/LoyB1/Rd7Oauo4feVMkpuYHeABofdlZ6P/
         W4dHZnDGaPyCY1tiQ+oqmP/EMvnVsNmhUUZ1uU/unAOcPiwRjzHMTUsK3QHfpoOBXS0c
         ryko2P08FXLbAfRRLxNpDFy3uk06HDSU7MGOYAQSDQZ5j7lGI3Al9doZpWtGzKfCfojo
         45gzcpME7d5tf20pCEflOQO7obGkmcReAuzQEqxIiVd2mnY/nU/NkO1+LQ7BOj0EzluX
         EoVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YunYKyFJ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h13si35337pjb.0.2019.10.23.23.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 23:45:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YunYKyFJ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id c8so8816157pgb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 23:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=NainunFmns0KQgLk0Zk2OBaRWDNtmHJ79z0FclAr05M=;
        b=YunYKyFJD/poSWgf3kfOBkU1IBf/9DxoboipdMk6fHSY8yKXzyVUWNmBeMlqRpMEw2
         p9F6iOqDG/7clomESN2W069+E1kZlCCosS5H3T+CSLyms+esm/3Iby58VuewrJ+Py58U
         LJ82QBLJG/8/GlJRjDN5kM2r+TArrUEND4M8e0UEpeh9STxFfpLiInXFaOUMk3vcvUWP
         kDRdgwQhwRAt2U7ICS/Y7oZpiybxOo6GIxRT+e53eFZjgG2AI5VCrj2D7xbyE5gXPDZ5
         Ez8uQ2NrMVTIXjOGIVFkqMfv3aVa5HBC7klT21CFSaCsDSAdpyNfSgsEhIqXcazVFYyz
         tTwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=NainunFmns0KQgLk0Zk2OBaRWDNtmHJ79z0FclAr05M=;
        b=q6lm3Q6RGuZJ8VuB6pNxf2zM/gkShArAB9OmFf+9GWWT88Gf120vx7TEGLfRsdee8R
         YgIMwOWFk1Urqvp6OwFImIPqH7iotj8Emmhhyk5GGKCWbg7piLjHRrfhIIVqxsQ3QG5i
         ni6IyRPpXIKosHOndaOu64PiUTBWsRC5URfn111wT/GJh7uIcL5sIcC6xpFAJeDy4Nis
         f2X//E/RAFNfE9s4C4rFHze/y0+jpZalN8XTL46XIosB7NfqlklVcMiHnj9nJAZoudjI
         s/evsFjNUMTCLSEnVv+izajkEaLAbSnAcy6Sz0sbT2eNuPNsi1m5yNrx5REkhnwdFLb0
         aN3Q==
X-Gm-Message-State: APjAAAXwt7WwhTj/vlEViQLcHElKF+9ASv8Nj6lKZ7Hp+genwfOEvI/b
	5UyBHpklmdMu3yY2ZL/1eNUm3vkF
X-Received: by 2002:a17:90a:234d:: with SMTP id f71mr5080372pje.134.1571899535341;
        Wed, 23 Oct 2019 23:45:35 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id z18sm26393348pgv.90.2019.10.23.23.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2019 23:45:34 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 1/2] staging: kpc2000: kpc_i2c: Fix lines over 80 chars
Date: Wed, 23 Oct 2019 23:45:10 -0700
Message-Id: <e374c2933a1f0a4eefa31c1f0d8553dbf22a57ac.1571899299.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571899299.git.jamal.k.shareef@gmail.com>
References: <cover.1571899299.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1571899299.git.jamal.k.shareef@gmail.com>
References: <cover.1571899299.git.jamal.k.shareef@gmail.com>

Fix lines over 80 characters warnings.
issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 202 ++++++++++++++++++--------
 1 file changed, 138 insertions(+), 64 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index bc02534d8dc3..d133b31d41e5 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -99,7 +99,8 @@ struct i2c_device {
 #define SMBHSTSTS_INTR          0x02
 #define SMBHSTSTS_HOST_BUSY     0x01
 
-#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED | SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)
+#define STATUS_FLAGS        (SMBHSTSTS_BYTE_DONE | SMBHSTSTS_FAILED |\
+		SMBHSTSTS_BUS_ERR | SMBHSTSTS_DEV_ERR | SMBHSTSTS_INTR)\
 
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
 
@@ -146,7 +148,9 @@ static int i801_check_pre(struct i2c_device *priv)
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
@@ -162,15 +166,20 @@ static int i801_check_post(struct i2c_device *priv, int status, int timeout)
 	if (timeout) {
 		dev_err(&priv->adapter.dev, "Transaction timeout\n");
 		/* try to stop the current command */
-		dev_dbg(&priv->adapter.dev, "Terminating the current operation\n");
-		outb_p(inb_p(SMBHSTCNT(priv)) | SMBHSTCNT_KILL, SMBHSTCNT(priv));
+		dev_dbg(&priv->adapter.dev,
+			"Terminating the current operation\n");
+		outb_p(inb_p(SMBHSTCNT(priv)) |
+				SMBHSTCNT_KILL, SMBHSTCNT(priv));
 		usleep_range(1000, 2000);
-		outb_p(inb_p(SMBHSTCNT(priv)) & (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
+		outb_p(inb_p(SMBHSTCNT(priv)) &
+			     (~SMBHSTCNT_KILL), SMBHSTCNT(priv));
 
 		/* Check if it worked */
 		status = inb_p(SMBHSTSTS(priv));
-		if ((status & SMBHSTSTS_HOST_BUSY) || !(status & SMBHSTSTS_FAILED))
-			dev_err(&priv->adapter.dev, "Failed terminating the transaction\n");
+		if ((status & SMBHSTSTS_HOST_BUSY) ||
+				!(status & SMBHSTSTS_FAILED))
+			dev_err(&priv->adapter.dev,
+				"Failed terminating the transaction\n");
 		outb_p(STATUS_FLAGS, SMBHSTSTS(priv));
 		return -ETIMEDOUT;
 	}
@@ -244,7 +253,9 @@ static void i801_wait_hwpec(struct i2c_device *priv)
 	outb_p(status, SMBHSTSTS(priv));
 }
 
-static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int hwpec)
+static int i801_block_transaction_by_block(struct i2c_device *priv,
+					   union i2c_smbus_data *data,
+					   char read_write, int hwpec)
 {
 	int i, len;
 	int status;
@@ -259,7 +270,8 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
 			outb_p(data->block[i + 1], SMBBLKDAT(priv));
 	}
 
-	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 | I801_PEC_EN * hwpec);
+	status = i801_transaction(priv, I801_BLOCK_DATA | ENABLE_INT9 |
+				  I801_PEC_EN * hwpec);
 	if (status)
 		return status;
 
@@ -275,7 +287,10 @@ static int i801_block_transaction_by_block(struct i2c_device *priv, union i2c_sm
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
@@ -301,7 +316,8 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
 			else
 				smbcmd = I801_BLOCK_LAST;
 		} else {
-			if (command == I2C_SMBUS_I2C_BLOCK_DATA && read_write == I2C_SMBUS_READ)
+			if (command == I2C_SMBUS_I2C_BLOCK_DATA &&
+					read_write == I2C_SMBUS_READ)
 				smbcmd = I801_I2C_BLOCK_DATA;
 			else
 				smbcmd = I801_BLOCK_DATA;
@@ -309,25 +325,33 @@ static int i801_block_transaction_byte_by_byte(struct i2c_device *priv, union i2
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
+		} while ((!(status & SMBHSTSTS_BYTE_DONE)) &&
+				(timeout++ < MAX_RETRIES));
 
 		result = i801_check_post(priv, status, timeout > MAX_RETRIES);
 		if (result < 0)
 			return result;
-		if (i == 1 && read_write == I2C_SMBUS_READ && command != I2C_SMBUS_I2C_BLOCK_DATA) {
+		if (i == 1 && read_write == I2C_SMBUS_READ &&
+				command != I2C_SMBUS_I2C_BLOCK_DATA) {
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
@@ -354,7 +378,9 @@ static int i801_set_block_buffer_mode(struct i2c_device *priv)
 }
 
 /* Block transaction function */
-static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data *data, char read_write, int command, int hwpec)
+static int i801_block_transaction(struct i2c_device *priv,
+				  union i2c_smbus_data *data, char read_write,
+				  int command, int hwpec)
 {
 	int result = 0;
 	//unsigned char hostc;
@@ -366,12 +392,14 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
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
+			command == I2C_SMBUS_I2C_BLOCK_DATA) {
 		if (data->block[0] < 1)
 			data->block[0] = 1;
 		if (data->block[0] > I2C_SMBUS_BLOCK_MAX)
@@ -384,13 +412,21 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
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
+			read_write == I2C_SMBUS_WRITE) {
 		/* restore saved configuration register value */
 		//TODO: Figure out the right thing to do here...
 		//pci_write_config_byte(priv->pci_dev, SMBHSTCFG, hostc);
@@ -399,32 +435,41 @@ static int i801_block_transaction(struct i2c_device *priv, union i2c_smbus_data
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
@@ -432,7 +477,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -442,7 +489,9 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -463,7 +512,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 		block = 1;
 		break;
 	default:
-		dev_dbg(&priv->adapter.dev, "  [acc] Unsupported transaction %d\n", size);
+		dev_dbg(&priv->adapter.dev,
+			"  [acc] Unsupported transaction %d\n", size);
 		return -EOPNOTSUPP;
 	}
 
@@ -472,13 +522,15 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -490,7 +542,8 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
 	 */
 	if (hwpec || block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] hwpec || block\n");
-		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), SMBAUXCTL(priv));
+		outb_p(inb_p(SMBAUXCTL(priv)) & ~(SMBAUXCTL_CRC |
+					SMBAUXCTL_E32B), SMBAUXCTL(priv));
 	}
 	if (block) {
 		dev_dbg(&priv->adapter.dev, "  [acc] block\n");
@@ -501,19 +554,22 @@ static s32 i801_access(struct i2c_adapter *adap, u16 addr, unsigned short flags,
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
@@ -535,30 +591,47 @@ static u32 i801_func(struct i2c_adapter *adapter)
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
 
@@ -611,7 +684,8 @@ static int pi2c_probe(struct platform_device *pldev)
 	priv->adapter.retries = 3;
 
 	//snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter at %04lx", priv->smba);
-	snprintf(priv->adapter.name, sizeof(priv->adapter.name), "Fake SMBus I801 adapter");
+	snprintf(priv->adapter.name, sizeof(priv->adapter.name),
+		 "Fake SMBus I801 adapter");
 
 	err = i2c_add_adapter(&priv->adapter);
 	if (err) {
-- 
2.17.1



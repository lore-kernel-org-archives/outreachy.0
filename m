X-GM-THRID: 6392973755593785344
X-Received: by 10.46.7.80 with SMTP id i16mr266588ljd.5.1488480194977;
        Thu, 02 Mar 2017 10:43:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.23 with SMTP id e23ls804825ljb.28.gmail; Thu, 02 Mar
 2017 10:43:14 -0800 (PST)
X-Received: by 10.46.33.163 with SMTP id h35mr2370730lji.17.1488480194588;
        Thu, 02 Mar 2017 10:43:14 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id i76si1809453wmh.1.2017.03.02.10.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:43:14 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id u108so6684205wrb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=a/EIEmyRxBH5peSOWUvkvDbln7t7xcedsTAzp8K2M04=;
        b=hb+kp546NMbHesS8KdPPkig4AZMoNEFzBEgUqvvjCl1iivVQ21cOehA5h89tTERCGz
         86gvBupxPCoKLpA9BRQ1Xh882ob0aQgn1QZb2TzeZf8DIP3RD7IvUoJ9MCnRyG6Dde6Y
         cH0SPMHrEf4SKyrugduLNy/S2LAePgyo4i1OTck3QgBuIkl9aArxyRgdfTuDlttAmfXg
         bl/ZruWVCGr6z+CU34PG/I3jYKQF3IxWH6diYtuaSzoMnFECts8wa1bGMyLbpDUliKVt
         d/OHfasZizLVLWclJmKEBVZYNhm3eDtHj+xgkwGPTA8f/5JiCH26CKxZtvgPG+G8AMpW
         5GRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=a/EIEmyRxBH5peSOWUvkvDbln7t7xcedsTAzp8K2M04=;
        b=lxn8zNG2uk7L19vAGp8pM6r/braMpJ/ahCzknQgY6vWe7+dXSMXWdYtuL2mT2wryp3
         GvZrZwUe/ea/XfwNX7E4Pt5JACnG1t9+bqNQ4zZ12zemfOoBLjepD5ZmuZxdUpJlRG1G
         VrDEuRblc/pqe5cbZZ/nQHcM5Kvcx1LM9sGro90WRqkxGG//B8ZvkhhLhcgE/JONyNsK
         Puu7RTLfKNhHYUfcoNF6RkrqpjsYLllxIfnb3oMfamAcoEVgZLiNeUgx0UU8KTaoB4cI
         gs+BTTyKFyksgITxOHZluWnZ719qZBQz0U2qD5C6iM546AcN0ck+WX4olWYgOTjzjuP/
         dCaw==
X-Gm-Message-State: AMke39kd/HhwdA+fhHGIvVpzUpTB4JGNyuJ4f78Yn5WRWk9pCKEG7ZvOXKBZV9fmDHWSrg==
X-Received: by 10.223.176.225 with SMTP id j30mr13230414wra.25.1488480194316;
        Thu, 02 Mar 2017 10:43:14 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.72])
        by smtp.gmail.com with ESMTPSA id 65sm11909910wri.53.2017.03.02.10.43.13
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:43:13 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 5/5] staging:cxd2099:Remove redundant code
Date: Thu,  2 Mar 2017 20:43:10 +0200
Message-Id: <20170302184310.3527-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Removed redundant code marked with #if 0 to fix the following
checkpath.pl issue: CHECK: if this code is redundant consider
removing it.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 74 +--------------------------------
 1 file changed, 1 insertion(+), 73 deletions(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index d0e012c..8d1cf11 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -181,34 +181,6 @@ static int write_io(struct cxd *ci, u16 address, u8 val)
 	return status;
 }
 
-#if 0
-static int read_io_data(struct cxd *ci, u8 *data, u8 n)
-{
-	int status;
-	u8 addr[3] = { 2, 0, 0 };
-
-	status = i2c_write(ci->i2c, ci->cfg.adr, addr, 3);
-	if (!status)
-		status = i2c_read(ci->i2c, ci->cfg.adr, 3, data, n);
-	return 0;
-}
-
-static int write_io_data(struct cxd *ci, u8 *data, u8 n)
-{
-	int status;
-	u8 addr[3] = {2, 0, 0};
-
-	status = i2c_write(ci->i2c, ci->cfg.adr, addr, 3);
-	if (!status) {
-		u8 buf[256] = {3};
-
-		memcpy(buf + 1, data, n);
-		status = i2c_write(ci->i2c, ci->cfg.adr, buf, n + 1);
-	}
-	return 0;
-}
-#endif
-
 static int write_regm(struct cxd *ci, u8 reg, u8 val, u8 mask)
 {
 	int status;
@@ -327,12 +299,6 @@ static int init(struct cxd *ci)
 		if (status < 0)
 			break;
 
-#if 0
-		/* Input Mode C, BYPass Serial, TIVAL = low, MSB */
-		status = write_reg(ci, 0x09, 0x4D);
-		if (status < 0)
-			break;
-#endif
 		/* TOSTRT = 8, Mode B (gated clock), falling Edge,
 		 * Serial, POL=HIGH, MSB
 		 */
@@ -430,23 +396,6 @@ static int read_attribute_mem(struct dvb_ca_en50221 *ca,
 			      int slot, int address)
 {
 	struct cxd *ci = ca->data;
-#if 0
-	if (ci->amem_read) {
-		if (address <= 0 || address > 1024)
-			return -EIO;
-		return ci->amem[address];
-	}
-
-	mutex_lock(&ci->lock);
-	write_regm(ci, 0x06, 0x00, 0x05);
-	read_pccard(ci, 0, &ci->amem[0], 128);
-	read_pccard(ci, 128, &ci->amem[0], 128);
-	read_pccard(ci, 256, &ci->amem[0], 128);
-	read_pccard(ci, 384, &ci->amem[0], 128);
-	write_regm(ci, 0x06, 0x05, 0x05);
-	mutex_unlock(&ci->lock);
-	return ci->amem[address];
-#else
 	u8 val;
 
 	mutex_lock(&ci->lock);
@@ -455,7 +404,6 @@ static int read_attribute_mem(struct dvb_ca_en50221 *ca,
 	mutex_unlock(&ci->lock);
 	/* printk(KERN_INFO "%02x:%02x\n", address,val); */
 	return val;
-#endif
 }
 
 static int write_attribute_mem(struct dvb_ca_en50221 *ca, int slot,
@@ -500,15 +448,6 @@ static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
 	struct cxd *ci = ca->data;
 
 	mutex_lock(&ci->lock);
-#if 0
-	write_reg(ci, 0x00, 0x21);
-	write_reg(ci, 0x06, 0x1F);
-	write_reg(ci, 0x00, 0x31);
-#else
-#if 0
-	write_reg(ci, 0x06, 0x1F);
-	write_reg(ci, 0x06, 0x2F);
-#else
 	cam_mode(ci, 0);
 	write_reg(ci, 0x00, 0x21);
 	write_reg(ci, 0x06, 0x1F);
@@ -516,25 +455,14 @@ static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
 	write_regm(ci, 0x20, 0x80, 0x80);
 	write_reg(ci, 0x03, 0x02);
 	ci->ready = 0;
-#endif
-#endif
 	ci->mode = -1;
 	{
 		int i;
-#if 0
-		u8 val;
-#endif
+
 		for (i = 0; i < 100; i++) {
 			usleep_range(10000, 11000);
-#if 0
-			read_reg(ci, 0x06, &val);
-			dev_info(&ci->i2c->dev, "%d:%02x\n", i, val);
-			if (!(val & 0x10))
-				break;
-#else
 			if (ci->ready)
 				break;
-#endif
 		}
 	}
 	mutex_unlock(&ci->lock);
-- 
2.9.3



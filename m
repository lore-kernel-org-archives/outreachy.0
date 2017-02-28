X-GM-THRID: 6392227712888471552
X-Received: by 10.46.83.7 with SMTP id h7mr505022ljb.24.1488306492990;
        Tue, 28 Feb 2017 10:28:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.65 with SMTP id 1ls201298ljv.35.gmail; Tue, 28 Feb 2017
 10:28:12 -0800 (PST)
X-Received: by 10.25.193.213 with SMTP id r204mr465644lff.24.1488306492458;
        Tue, 28 Feb 2017 10:28:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id v70si287260wmf.0.2017.02.28.10.28.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:28:12 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id v77so3683784wmv.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yV7rBT5uOdBgS6VJwgMcfGY8usSzCmmIxyPiV0Doaos=;
        b=UCvkyWr2mISkqhkvIOHSxSZFtQ1auBjXmNB9OPixLmSGrQAQuUe4Ecgni+SLTngTbR
         BD5la6sBI0N/LD0/d+BgkutX964ARY32DGLr0a1dcCPCexqEnsEZDEXOBQjf2lrVMXFf
         BH9umkQq82XWzU3B/Q4TtqosUyLT08pvp4F/uZsi+OGrRVOgVe5xZOtkbJaDnmB8B9O6
         MmLOmt5TFFbF/hD8XqftaPuyA9STYZEd6/aVXoBf7AVzQ9enHwEuCd2eTK05NjnyVVZl
         tZcmZ94cnjNp8eJc8JK554A5sPii7wuPNfh48Dw78IP/kq3fj5cYsN1WGlLxdsuewQ/Z
         GeiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yV7rBT5uOdBgS6VJwgMcfGY8usSzCmmIxyPiV0Doaos=;
        b=GLz36Unz0+xVHZS537nk/zmwg5E1ZdG6/mvKvIdWfDO1GkCkgnr5r0z9CwOQkhsjUB
         e2Ci9r+Tp9idduPD6I/D7dL3BPL4t/cMjKxVgPJ0LcbP76+rfOMAmgWd1IcSPeSNJBzN
         MbGQKQVJhBoxkfW37VF9dInF2aZnX+LpMxxZKzHKmEen3k6D8s6ku8PNSjs+hLqbpLie
         meh4xutkTE3qewdhYisNxpk0ay9HokKjoBt5H0vjlE6kuXzBHCXcSVNHuQUhnz488ped
         izEVBTuFYTvWHnIGjJvY1y1mOGgBFPbtdFSEmWTLJM9jdPFHTmpFWNLHCgfl1TzG/1rl
         IIwA==
X-Gm-Message-State: AMke39mt0E0XLgUYbOBFlwwoS9oGZ+8A6OPa4ivz14f+Ymw73b5aC4WCRg1+2rTYK+Mo6A==
X-Received: by 10.28.208.201 with SMTP id h192mr42362wmg.100.1488306492250;
        Tue, 28 Feb 2017 10:28:12 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:1411:993d:3104:6e7f])
        by smtp.gmail.com with ESMTPSA id x25sm3379080wrx.27.2017.02.28.10.28.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 10:28:11 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 5/5] emoved redundant code.
Date: Tue, 28 Feb 2017 20:28:09 +0200
Message-Id: <20170228182809.26734-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 67 +--------------------------------
 1 file changed, 1 insertion(+), 66 deletions(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index 43b0507..0d25849 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -180,33 +180,6 @@ static int write_io(struct cxd *ci, u16 address, u8 val)
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
 
 static int write_regm(struct cxd *ci, u8 reg, u8 val, u8 mask)
 {
@@ -326,12 +299,7 @@ static int init(struct cxd *ci)
 		if (status < 0)
 			break;
 
-#if 0
 		/* Input Mode C, BYPass Serial, TIVAL = low, MSB */
-		status = write_reg(ci, 0x09, 0x4D);
-		if (status < 0)
-			break;
-#endif
 		/* TOSTRT = 8, Mode B (gated clock), falling Edge,
 		 * Serial, POL=HIGH, MSB
 		 */
@@ -429,23 +397,7 @@ static int read_attribute_mem(struct dvb_ca_en50221 *ca,
 			      int slot, int address)
 {
 	struct cxd *ci = ca->data;
-#if 0
-	if (ci->amem_read) {
-		if (address <= 0 || address > 1024)
-			return -EIO;
-		return ci->amem[address];
-	}
 
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
@@ -499,15 +451,6 @@ static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
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
@@ -520,17 +463,9 @@ static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
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
 #endif
-- 
2.9.3



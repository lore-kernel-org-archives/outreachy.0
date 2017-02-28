X-GM-THRID: 6392226584392105984
X-Received: by 10.25.223.67 with SMTP id q3mr436569lfj.1.1488306230297;
        Tue, 28 Feb 2017 10:23:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.92 with SMTP id 28ls190074ljw.54.gmail; Tue, 28 Feb 2017
 10:23:49 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr469274lja.13.1488306229786;
        Tue, 28 Feb 2017 10:23:49 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id v70si286425wmf.0.2017.02.28.10.23.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:23:49 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id q39so2612761wrb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JvTXu25aG+Z1r5J2VLoQYPXBlwF/PCS4twLcOLARzkk=;
        b=Fh0kZsqUilAHmYK7m2sB4jm+B1uVtr5nyPcnE+GHhDp+3jnC9N+fIxRAtCsq3VPkaq
         otTVFNaN3vqAYYbpGCGrTBSUb2Mc1bmx49ZMwQ1PI6Jr9b6PaPCA7+ywvU2eQvwnsmJr
         WAiBot/PnOpAusssidnQeAtx4JvEa8/JyK3iD0PopHYBOFlzxnSP6adtugmb0XaaKibG
         2X3UsoAnFq1fRIXmQetsOYSqxvb7/6bZcYGxUr2VGci+pEQHgg6o1U8zB8dEW9qGp1BE
         2qGgAHcXTwVe+uI37uaM1vVehlx7eFxwqSYOdryU5icEGuNmcZVqrgVHNbwiwZEnBr5T
         9r8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JvTXu25aG+Z1r5J2VLoQYPXBlwF/PCS4twLcOLARzkk=;
        b=LbPBXzSVC1UFS9mOS2rwh2HQuQRZXF8gSEoyy18sZUF9ApcrDSnShihhw15x6piDnz
         kkYCJSQzZIQbIC/jChRDeyBo6GqFwF+OZgU+etGg8YbgDMwf+Ka4Ftubd8g9ohc6MwSt
         zgn2XqvpO2IndwW1DHObiyxzOuBkrfMhJS/2QVQmkNcojM7LtEkpTNujbUFxjnvxpYjm
         XmHhgjCyHfy07P5tvY9FduhNQ4ICFjkM2DGAFkmJiWvoHFLgbgbUXeEny5Px19weikYJ
         lsCgpniLi9+LTU0CsUYBWQ2+65if3LYBkkHrR58lW9V6dDZQAWvfkBK5L1Hj6w5aAR4l
         2qVg==
X-Gm-Message-State: AMke39maqzTeE31SLTo8MXX5EEcLy3E+2Abrg/KsIRB10cHMWkxOdNGitce1Op5o7D/VgQ==
X-Received: by 10.223.145.45 with SMTP id j42mr3863169wrj.141.1488306229537;
        Tue, 28 Feb 2017 10:23:49 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:1411:993d:3104:6e7f])
        by smtp.gmail.com with ESMTPSA id d29sm3359862wrc.34.2017.02.28.10.23.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 10:23:48 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/5] Added spaces around arithmetical operators.
Date: Tue, 28 Feb 2017 20:23:41 +0200
Message-Id: <20170228182341.25926-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index f88690b..0da9294 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -152,8 +152,8 @@ static int write_pccard(struct cxd *ci, u16 address, u8 *data, u8 n)
 	if (!status) {
 		u8 buf[256] = {3};
 
-		memcpy(buf+1, data, n);
-		status = i2c_write(ci->i2c, ci->cfg.adr, buf, n+1);
+		memcpy(buf + 1, data, n);
+		status = i2c_write(ci->i2c, ci->cfg.adr, buf, n + 1);
 	}
 	return status;
 }
@@ -202,7 +202,7 @@ static int write_io_data(struct cxd *ci, u8 *data, u8 n)
 	if (!status) {
 		u8 buf[256] = {3};
 
-		memcpy(buf+1, data, n);
+		memcpy(buf + 1, data, n);
 		status = i2c_write(ci->i2c, ci->cfg.adr, buf, n + 1);
 	}
 	return 0;
@@ -531,7 +531,7 @@ static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
 #if 0
 			read_reg(ci, 0x06, &val);
 			dev_info(&ci->i2c->dev, "%d:%02x\n", i, val);
-			if (!(val&0x10))
+			if (!(val & 0x10))
 				break;
 #else
 			if (ci->ready)
@@ -582,18 +582,18 @@ static int campoll(struct cxd *ci)
 		return 0;
 	write_reg(ci, 0x05, istat);
 
-	if (istat&0x40) {
+	if (istat & 0x40) {
 		ci->dr = 1;
 		dev_info(&ci->i2c->dev, "DR\n");
 	}
-	if (istat&0x20)
+	if (istat & 0x20)
 		dev_info(&ci->i2c->dev, "WC\n");
 
-	if (istat&2) {
+	if (istat & 2) {
 		u8 slotstat;
 
 		read_reg(ci, 0x01, &slotstat);
-		if (!(2&slotstat)) {
+		if (!(2 & slotstat)) {
 			if (!ci->slot_stat) {
 				ci->slot_stat = DVB_CA_EN50221_POLL_CAM_PRESENT;
 				write_regm(ci, 0x03, 0x08, 0x08);
@@ -607,7 +607,7 @@ static int campoll(struct cxd *ci)
 				ci->ready = 0;
 			}
 		}
-		if (istat&8 &&
+		if (istat & 8 &&
 		    ci->slot_stat == DVB_CA_EN50221_POLL_CAM_PRESENT) {
 			ci->ready = 1;
 			ci->slot_stat |= DVB_CA_EN50221_POLL_CAM_READY;
@@ -648,7 +648,7 @@ static int read_data(struct dvb_ca_en50221 *ca, int slot, u8 *ebuf, int ecount)
 	mutex_lock(&ci->lock);
 	read_reg(ci, 0x0f, &msb);
 	read_reg(ci, 0x10, &lsb);
-	len = (msb<<8)|lsb;
+	len = (msb << 8) | lsb;
 	read_block(ci, 0x12, ebuf, len);
 	ci->dr = 0;
 	mutex_unlock(&ci->lock);
@@ -662,8 +662,8 @@ static int write_data(struct dvb_ca_en50221 *ca, int slot, u8 *ebuf, int ecount)
 
 	mutex_lock(&ci->lock);
 	dev_info(&ci->i2c->dev, "write_data %d\n", ecount);
-	write_reg(ci, 0x0d, ecount>>8);
-	write_reg(ci, 0x0e, ecount&0xff);
+	write_reg(ci, 0x0d, ecount >> 8);
+	write_reg(ci, 0x0e, ecount & 0xff);
 	write_block(ci, 0x11, ebuf, ecount);
 	mutex_unlock(&ci->lock);
 	return ecount;
-- 
2.9.3



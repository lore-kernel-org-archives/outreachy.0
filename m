X-GM-THRID: 6392973316881121280
X-Received: by 10.46.81.66 with SMTP id b2mr2190392lje.3.1488480092707;
        Thu, 02 Mar 2017 10:41:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.20 with SMTP id m20ls787593ljb.27.gmail; Thu, 02 Mar
 2017 10:41:31 -0800 (PST)
X-Received: by 10.46.81.66 with SMTP id b2mr2190379lje.3.1488480091982;
        Thu, 02 Mar 2017 10:41:31 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id 14si859860wmn.2.2017.03.02.10.41.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:41:31 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m70so13925056wma.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=TqNwn8t2TP9wT+2aSYWVGMWSu+bsFUQdbi+2jFJhia8=;
        b=JZcIfnivljs2WZskcwuLg3FXS8fQODrlGV+iL5Xx4d9gSR4l4ujgQIGuETv4s402pr
         RcWOaibL1Jgw8Tto8M7NCtoxmUrt+75R+qb+tJjJm49L8TRo0Ht6fugA9CaSfF5q/ZrB
         j4h3yO7H5mdPlGn508cwnZWzCDAr9uamERQEBVYBGIhokLpfQ20/cO84QQlHKZ3G6+61
         yTnJwurxsuPlznCljVYVOKrmtFMKaMMG6k65RM17hnRMvwYFtMWUGt++mZSNMR4taede
         mmW0G1LSjJeqVdF+doJcanwF78SJzek/aHrxql65rMRlZ2jpy8O3LtszcRweFB1a4Srs
         1F/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TqNwn8t2TP9wT+2aSYWVGMWSu+bsFUQdbi+2jFJhia8=;
        b=JqJKBYpH23C+y2Pi0FvKzadfmjQnXvfc8Im+/cxSJNvKeMNh+mAVTwFaRDieaqWSh+
         remdy3WdCC70WBabHGnc3wcwxknu6MALpoi4TlWDIs1sH5wIID+J1xmwJYZ+w9NXdaoa
         IA6umDRNguvybdJXC+AgGy2hHFCkaW2Ko1MLk4rdskurd4gMSq1/QpEbhSY4wHsFA/bp
         8HhXlDnQq+O6LsX97PmQ8HLvQEEZ8iVPMu15nPasn92Jbw0PqwakPDM93FvAqLsNUnbW
         I+7KscdGIH/W+JnINTayjd8bKZy4Br8zEHMbQ3pjMEQDSvp0b601rGyHSttvoVmMSYj1
         P8FA==
X-Gm-Message-State: AMke39nLSDd41/9P5z3d+fs5YC4Y/s9atEO95fC1PbS3fdmGg12v7QWHSm3kSBBeEjEcXQ==
X-Received: by 10.28.215.138 with SMTP id o132mr9038577wmg.41.1488480091685;
        Thu, 02 Mar 2017 10:41:31 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.72])
        by smtp.gmail.com with ESMTPSA id o2sm12217314wmb.28.2017.03.02.10.41.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:41:30 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 1/5] staging:cxd2099: Add spaces around arithmetical operators
Date: Thu,  2 Mar 2017 20:41:26 +0200
Message-Id: <20170302184126.3318-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Added spaces around multiple arithmetical operators
to fix the checkpatch.pl issue: CHECK: spaces preferred around that 'operator'.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index c72c3f0..e047ea8 100644
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



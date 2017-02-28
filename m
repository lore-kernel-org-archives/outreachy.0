X-GM-THRID: 6392226705840275456
X-Received: by 10.25.145.17 with SMTP id t17mr468676lfd.23.1488306258211;
        Tue, 28 Feb 2017 10:24:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.82.29 with SMTP id g29ls185674ljb.37.gmail; Tue, 28 Feb
 2017 10:24:17 -0800 (PST)
X-Received: by 10.46.9.206 with SMTP id 197mr476477ljj.12.1488306257797;
        Tue, 28 Feb 2017 10:24:17 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id h62si824934wme.2.2017.02.28.10.24.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 10:24:17 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so2619871wrg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 10:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rQJFQBNeDkTFeEHAvMacXZNqG/GkMAfVsvLv7sOt0C0=;
        b=cpl+xNZ6+1LYrIY+cwtYmJhCE+VMwkj1sdT/lAbneiQxdySyEC3d2qBHiLYbbEi+4X
         prRHqyzCbldrEXHbi9O0/DXO4mZTBPBiJhjTlSS0HxgAc5zsmDJHHU1xXyDgEGtrYABJ
         DsHAPQFloW7W9aFL2jGe2QGfySRGgA7oy0A2cCowaV1gM90s/Jah7CWcWLAT/LCOCKLk
         rSCwfDjOH2vbXv38lLZHPJEqksRo5ure+DhbestEB3wTa9f7y68gIl8v3o+2J49ooNrB
         hUHrG6DVnOFqQewA5OKbZE11HpwGuJyTT72/Iv78QLtz8HKdKiXlqaVaLMjmimr9ZUt/
         SZAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rQJFQBNeDkTFeEHAvMacXZNqG/GkMAfVsvLv7sOt0C0=;
        b=WFRqBf53pfkUjhtxs6zE5nWaxPo3OYijLsQhkIy19gAPNvXe1drNl+XX+IWI2VGhsS
         g1QsqCUNuSIHuQnb6bsxdXodqx/lTelbwp6XhaBDBO0YETV9WyZBc6UaB25zW5VhnA05
         aSPYDD9Crq7SG1zj2KOzAZi5R5Sq8lv5vyAvUBr2X5LXv9XAYR2V+gdLJFKyjHY8j1W2
         n4ZvEOMyp7UxEaqLfL+ZNCfxlv80TaPbWw8a/dYGed/LkDL2qhakddw6EW6f/7t4WGNB
         GxMxwsKDdoYaSVvBfALOKguEpLn2mEaX3UCK16SPvWZ39DCj/z5yFvi2bxNBk8KRFd8p
         tWsQ==
X-Gm-Message-State: AMke39mYZrL1MGGTKtPhCbwT7MC2GzmhIuoO3hPna7TZ37FGE1tWH15X/oQLARBDwY/Mug==
X-Received: by 10.223.165.65 with SMTP id j1mr4036220wrb.79.1488306257620;
        Tue, 28 Feb 2017 10:24:17 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:1411:993d:3104:6e7f])
        by smtp.gmail.com with ESMTPSA id k10sm3709679wmg.10.2017.02.28.10.24.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 10:24:16 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/5] Removed unnecessary blank lines.
Date: Tue, 28 Feb 2017 20:24:13 +0200
Message-Id: <20170228182413.26063-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index 0da9294..bcf1c75 100644
--- a/drivers/staging/media/cxd2099/cxd2099.c
+++ b/drivers/staging/media/cxd2099/cxd2099.c
@@ -131,7 +131,6 @@ static int read_reg(struct cxd *ci, u8 reg, u8 *val)
 	return read_block(ci, reg, val, 1);
 }
 
-
 static int read_pccard(struct cxd *ci, u16 address, u8 *data, u8 n)
 {
 	int status;
@@ -292,8 +291,6 @@ static void cam_mode(struct cxd *ci, int mode)
 	ci->cammode = mode;
 }
 
-
-
 static int init(struct cxd *ci)
 {
 	int status;
@@ -572,7 +569,6 @@ static int slot_ts_enable(struct dvb_ca_en50221 *ca, int slot)
 	return 0;
 }
 
-
 static int campoll(struct cxd *ci)
 {
 	u8 istat;
@@ -616,7 +612,6 @@ static int campoll(struct cxd *ci)
 	return 0;
 }
 
-
 static int poll_slot_status(struct dvb_ca_en50221 *ca, int slot, int open)
 {
 	struct cxd *ci = ca->data;
-- 
2.9.3



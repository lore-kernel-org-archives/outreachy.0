X-GM-THRID: 6392973450164568064
X-Received: by 10.46.21.11 with SMTP id s11mr2380358ljd.23.1488480123527;
        Thu, 02 Mar 2017 10:42:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.19 with SMTP id s19ls787441ljd.52.gmail; Thu, 02 Mar
 2017 10:42:03 -0800 (PST)
X-Received: by 10.25.24.65 with SMTP id o62mr705814lfi.8.1488480123008;
        Thu, 02 Mar 2017 10:42:03 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id 14si859996wmn.2.2017.03.02.10.42.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:42:02 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id u48so10655467wrc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 10:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HSA7owY4r37cPBb+160K8OGOa4f8GMimqqitATXe3lA=;
        b=Sn6Cp/Ce+4Oj+9hS+lSXSFxkl7pGojouEcTYCXLVl5MvQA1E7j/skjCjpYJjwFQjIj
         bA/NVZeqmIIo/UWqdEe/j7fxsRZlx1g8t+F7pzxNucpGuNulDiBd+8Wpk/ewiYXR/lSh
         1jdx5CLd+duB4xZAlAFaTqg27/Jrjo4xYfhJxKxfUBzUPynfIgHgeNTRylUCnTTy9uZn
         ifRqZtQTBHgvlcXBrX1S5WL5BpKLr/qNYriSs2UNZTlfQSaBxcTzsnqVVUuMhtRgjirq
         yjDV0EfBauV8agxSOETlbTRvmegy4qLpenE/8fqd/eq83OTT36Qa3fkFw/56+fTS/S8b
         SdyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HSA7owY4r37cPBb+160K8OGOa4f8GMimqqitATXe3lA=;
        b=B1At9fQKAbXqOd67B4Ge1zzmfUEZp8hSQeha3SvwvMnyB8zuhXVZRqYO1rOUq+zIht
         wLkqa1xhVr3kBas2ZK9H7MaUDzy9ZtRq1iLxgwJHDqbLcQExoxtgIyRwAaqLGAhD4ox6
         O3dOmCI0X1M8Xd3NV859wvLxjg0PY7pbIBzGbLcrQHIyHZuKUqnkWdFQ/AHaI+3/zvrz
         RjJx6YYvsxe0YnpbdAeMNVkf6yQCtKwc0CyVoo3ctgwdtD3BuVb3OD9tdnAgw41A8t+I
         AETlNpSQMHSvqX4CAkIrpcrtq8FngAFtzfN63bUFKJBjks2lf/yPBPb2df+4X5K/tkOA
         AZtg==
X-Gm-Message-State: AMke39lsxAA+QUqzyCMiDc9cjk2PwCdixEY87p33pcPXoTKmzrq8DBxNsfvKB0hpklF0Ug==
X-Received: by 10.223.163.81 with SMTP id d17mr13785121wrb.93.1488480122820;
        Thu, 02 Mar 2017 10:42:02 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.72])
        by smtp.gmail.com with ESMTPSA id i203sm12199456wmf.12.2017.03.02.10.42.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 10:42:01 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 2/5] staging:cxd2099:Remove multiple blank lines
Date: Thu,  2 Mar 2017 20:41:58 +0200
Message-Id: <20170302184158.3376-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Removed multiple blank lines to fix the checkpath.pl issue:
CHECK: Please don't use multiple blank lines.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/media/cxd2099/cxd2099.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
index e047ea8..b26f28d 100644
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



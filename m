X-GM-THRID: 6250350811445985280
X-Received: by 10.182.79.134 with SMTP id j6mr2194200obx.4.1455293745665;
        Fri, 12 Feb 2016 08:15:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.22.1 with SMTP id z1ls212769ige.0.canary; Fri, 12 Feb 2016
 08:15:45 -0800 (PST)
X-Received: by 10.66.141.36 with SMTP id rl4mr2163212pab.3.1455293745348;
        Fri, 12 Feb 2016 08:15:45 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id tn7si1589065pac.1.2016.02.12.08.15.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 08:15:45 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e127so4158974pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 08:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=v0IG3mGNZOfPcPVoO3d+wJkS9xn+cJn5evR7WQ0ts+k=;
        b=yxaEdedOodmNeDd0bbgQ6p4MOFbDcXf47qhJJmz6aJQvP2BxdHIP754cIPhvdSqejI
         ZJPv7uamZXw8Litg2Efeab5He9JOdQlawb/NXETZieK7eVozCIuyBrtA9BAdxQYvfFCu
         v/p0P2o151qiRGrz4FHA39qhC72iH2Dq+5pfXwiZX0kdL1FxVqa5DJAdWL6uKxpW0+q9
         nqK0IVm1Xs+meqvfdUFeYox05VPwyICGRgNWYLGFMLeVqlo1090B76tkVkU79RgWhs3O
         wXOi0fKefFe6uShq2SZzKrm8TwLRcaxVwLvHqDWkSkjreHN7+il2smjeI3d4bCHyJnGG
         XAOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=v0IG3mGNZOfPcPVoO3d+wJkS9xn+cJn5evR7WQ0ts+k=;
        b=U6W3MoCTPSxPUvvh9B0Pcf+mLn3/TtslUE4oXWiUj3gEp+KY7nqMJYaf9LL2BKMeNO
         MjxOii0UA7H5oMzkESqWLYQNC2IbCpR3gg2wXq3UASwaKFFz3eMcFaOz7WLjN0f5CLCB
         fXG6h7lMLLmWPmjIWmVFpcB0/ACOj6534K/LDk+19dKCBWvAESEueKQiKccMVoh6aQVD
         jCmTHvxm0XSJzTH0ySiQIWq3BKGNgqmvWLce1shmdaSBmhBUUl8FpwaTWI2QiB9sPkrL
         9EXHNNxy/67ZuI9Ekpg8VlhEnZk5YOa/Bk6ae4bOQU8n1fmjFu4xnQtw20eedap5kEe4
         lBwQ==
X-Gm-Message-State: AG10YOSdY8RmJaIv/f0w7eCKtBFKeRqkHehXCiVnoca9LqeQ46BPAGs26alHJXKYh+TWNA==
X-Received: by 10.98.89.78 with SMTP id n75mr3312042pfb.120.1455293745239;
        Fri, 12 Feb 2016 08:15:45 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id l62sm20500527pfj.7.2016.02.12.08.15.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 08:15:44 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	daniel.baluta@gmail.com,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v3] staging: rtl8712: Fixed a comparision coding style warning.
Date: Fri, 12 Feb 2016 21:45:37 +0530
Message-Id: <1455293737-19132-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Comparisons should place the constant on the right side of the test
Fixed this warning by placing the constant on right side.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>

Changes in v3:
remove 4/4 from [PATCH 4/4] in v3.
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index eaa93fb..76f60ba 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -161,7 +161,7 @@ static u8 efuse_is_empty(struct _adapter *padapter, u8 *empty)
 
 	/* read one byte to check if E-Fuse is empty */
 	if (efuse_one_byte_rw(padapter, true, 0, &value)) {
-		if (0xFF == value)
+		if (value == 0xFF)
 			*empty = true;
 		else
 			*empty = false;
@@ -345,7 +345,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 				ret = false;
 			} else if (pkt.data[i * 2] != value) {
 				ret = false;
-				if (0xFF == value) /* write again */
+				if (value == 0xFF) /* write again */
 					efuse_one_byte_write(padapter, addr,
 							pkt.data[i * 2]);
 			}
@@ -353,7 +353,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 				ret = false;
 			} else if (pkt.data[i * 2 + 1] != value) {
 				ret = false;
-				if (0xFF == value) /* write again */
+				if (value == 0xFF) /* write again */
 					efuse_one_byte_write(padapter, addr + 1,
 							     pkt.data[i * 2 +
 								      1]);
@@ -420,7 +420,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 		}
 		/* write header fail */
 		bResult = false;
-		if (0xFF == efuse_data)
+		if (efuse_data == 0xFF)
 			return bResult; /* nothing damaged. */
 		/* call rescue procedure */
 		if (!fix_header(padapter, efuse_data, efuse_addr))
-- 
1.9.1



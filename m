X-GM-THRID: 6250350811445985280
X-Received: by 10.50.142.73 with SMTP id ru9mr2896279igb.8.1455276071726;
        Fri, 12 Feb 2016 03:21:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.101 with SMTP id k5ls130343igv.20.gmail; Fri, 12 Feb
 2016 03:21:11 -0800 (PST)
X-Received: by 10.50.50.208 with SMTP id e16mr1826437igo.12.1455276071406;
        Fri, 12 Feb 2016 03:21:11 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id ff2si1387391pad.2.2016.02.12.03.21.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 03:21:11 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id x65so46294852pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 03:21:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=MPCvOFnwvz3NO5ghUb3/6sLTdqJnlUoa5R6AEH4V/GQ=;
        b=pkQK1Lfu01qndbgxvmVT5OW4Sf6yIP9o4fMi0rhoH5LW4pML6DYtC+rJhN5lZI0E4w
         BI7E/kXtOV0g7/dYmzR7sRCjF6WeuKPw6F2YrVTlib1EREAvq7J0Y0gueAPFVmIjwrc8
         03/5JeBNkP506UPjPEROVucVtMZ/cENSDZtz4rgVmVlkmx5v3/DrwqX6uxgzND6upsSx
         mRE1K1z0OXCPv2YOvQCKUH/yDzYXt7nNJbt2g9ge05CJIOvD/nDzGnPz2bbdx/JZ3IEw
         K7t9W5HS22cZ57g3zVV1zEZ5VeVc+UlE/ykk+NRGZC3H1WRpeEPq2WOWvUeXx/gbqpi6
         6UOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MPCvOFnwvz3NO5ghUb3/6sLTdqJnlUoa5R6AEH4V/GQ=;
        b=Tz8PqnuSAbZ0qiSqPvdMHLPPzkAZx73alUpE7TDwLifuKHp25JEV0t3tVfdckT+Cun
         f1/mRxfzou+X1Jb026YltGWCEou2zU3vXF0AoFgTno/t9cbc7vdUwhVeeduZ+Uwf83uR
         jROxUPb4sPdLerSOzPR0tWmXyDicKdog4d4qznopqvED2tVOqWNX7WZfjjRvQWVqB3Jm
         OLHXVqubEZmIccdL8Ub/sLPmgNzBkqIwWI4VlMufVVzWCfuyvDpAidnn4kmE2J6RB3mF
         15k2K+Y9s+YWg+34UjUYiFYQr6NYwKHwZ/tyO7LhgYqEKR+4IQ2ZKb1J9tJlS3XOiYzw
         Omeg==
X-Gm-Message-State: AG10YOT9Adw7SHr/z73IZ4y74AihXY4MsaXPKTDXV8zi8h1sjDQ69AN6FTymmBDTyH/0nw==
X-Received: by 10.98.31.221 with SMTP id l90mr1303826pfj.92.1455276071254;
        Fri, 12 Feb 2016 03:21:11 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id q85sm12857701pfq.81.2016.02.12.03.21.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 03:21:10 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v2] staging: rtl8712: Fixed a comparision coding style warning.
Date: Fri, 12 Feb 2016 16:51:04 +0530
Message-Id: <1455276064-16426-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Comparisons should place the constant on the right side of the test
Fixed this warning by placing the constant on right side.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
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



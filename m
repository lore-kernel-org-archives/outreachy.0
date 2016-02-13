X-GM-THRID: 6250350811445985280
X-Received: by 10.140.156.139 with SMTP id c133mr5121560qhc.4.1455341066908;
        Fri, 12 Feb 2016 21:24:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.196 with SMTP id n65ls926381ioi.67.gmail; Fri, 12 Feb
 2016 21:24:26 -0800 (PST)
X-Received: by 10.66.249.41 with SMTP id yr9mr596452pac.37.1455341066631;
        Fri, 12 Feb 2016 21:24:26 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 79si2202642pft.0.2016.02.12.21.24.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 21:24:26 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e127so4842945pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 21:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ryAZcST/JE7+c6VUTZyPDh1+BNzsvx+LeXX1UBCaehU=;
        b=Yy/2JucY9ATyXlpajqSDsmUb0Gy5iXAgx7GxjrzvawpwcpjQKdV0VQDkvgFch4uvux
         R4w38aJmJk55VHp9gD849GDMY89mo1Nbg+hwym079j9Z/y2htsgmNp1nOC6MielaDtEA
         FGNJB93l/rac/aqWhzlcT5LW4XMFD8hoJgeJ5Uu4oY2uPB7jeefUBj8pZb+V9+InYYWa
         WD9giDzSq1L2TuHdNiHj+3Yabg2jG743W+0iQ9YLS2UYVd8DSh1e9SuCJfbjRgwFBjSw
         fLr8ad7bAZu8m61lChByS19cyUlzzjZ2gcJW2CYfd0uaohRmSYAxarb0GRKSK6+FRKoP
         wktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ryAZcST/JE7+c6VUTZyPDh1+BNzsvx+LeXX1UBCaehU=;
        b=LWDPrbyZLCExzOlrXHJq7lDxA7L/PGm3jsG2j/3irDotHmGtRnZ2xmtqAecWcVljyD
         jg+Jg2/ZH4hpT46gNnm8RyBBkA69NFTipKtEMFU8PE+bOFxwcTsYYfyOwJMI4Ovihy/4
         rVbI8MSNo/SZCwFvNld+cQKeZjJ1K+xdBm/sNsihqQcVcA06AIXj1e+xMe76a2KfYufB
         lpr4vdtIb51GM5SdrL8/DFfBBGMcCuktvo6nmooaKp08jEoWQCuZwrhDPxokDNkzLmrB
         wc/zUv8Z6Qe9iler3T7iH8YK9FOPytzXh+AFcldYHPbEvsJMHkkf5sw/NpxwSyf/vDr4
         aCqw==
X-Gm-Message-State: AG10YOTCHrBlGX/BQNh/UYJbnagwoj37++FMC/5FJrpNarzKcLTLIp+qmhh7nowemworBw==
X-Received: by 10.98.75.196 with SMTP id d65mr7661798pfj.96.1455341066526;
        Fri, 12 Feb 2016 21:24:26 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id 76sm23091805pft.44.2016.02.12.21.24.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 21:24:26 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v4] staging: rtl8712: Fixed a comparision coding style warning.
Date: Sat, 13 Feb 2016 10:54:20 +0530
Message-Id: <1455341060-4992-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: Comparisons should place the constant on the right side of the test
Fixed this warning by placing the constant on right side.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>-
---
Changes in v4:
  - changed version explanation is under the ---

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



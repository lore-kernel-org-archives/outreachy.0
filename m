X-GM-THRID: 9605342035968
X-Received: by 10.152.45.7 with SMTP id i7mr14831563lam.9.1427048372249;
        Sun, 22 Mar 2015 11:19:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.163.36 with SMTP id yf4ls34107lab.43.gmail; Sun, 22 Mar
 2015 11:19:30 -0700 (PDT)
X-Received: by 10.112.242.7 with SMTP id wm7mr11880413lbc.1.1427048370852;
        Sun, 22 Mar 2015 11:19:30 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id c8si318996wiw.1.2015.03.22.11.19.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:19:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22f.google.com with SMTP id p45so121024916weo.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 11:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=IF6NWKYIeDilEMSToR39AOHpZCcr19q3W9rTONUaCtc=;
        b=gu1rzbYU1+jn+oA/ESSFhpF2rSm/38vgIFrTLxzuToa8SLrCZxlU/YuKzOA0pRDmHb
         RRQTkHPLXwQ4dcMr+7g/vgRPdDtIN/65fXLhggD6c8e9Jpns141EBFU8TdE85cx3556i
         +GAbnSHo7pjVU/fJ+6NJE6fdk2/8mNm9A7ZRZ1e8/Pn/ROZnpwDlbILpUp7elcKeB6gm
         V60vjzc1QK+lmG3B+9Z8D8ndUusD+1Y4Opp4887GRt8ojGkVC7umlWJQwcFVPvoPDILd
         ijok6kKOOayXd4kBfN40KiS4Xoj/Tn52/KpzlRHqT3v6BWHBXqCaAepFtaN3WBJybh13
         z6qw==
X-Received: by 10.180.218.71 with SMTP id pe7mr13211325wic.70.1427048370771;
        Sun, 22 Mar 2015 11:19:30 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.88])
        by mx.google.com with ESMTPSA id l9sm7543535wij.16.2015.03.22.11.19.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 11:19:30 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id C4547C1FBB; Sun, 22 Mar 2015 21:19:21 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/2] Staging: iio: use the BIT macro in .h and adc 
Date: Sun, 22 Mar 2015 21:17:48 +0300
Message-Id: <1427048268-6999-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset replace bit shifting on 0,1,2, and 3 with the BIT(x) macro.
Issue addressed by checkpatch.pl with --strict flag.

This was done with the help of the following Coccinelle script:

@r1@ 
constant int g; 
@@
(
0<<g
|
1<<g
|
2<<g
|
3<<g
)

@script:python b@
g2 <<r1.g;
y;
@@
coccinelle.y = int(g2) + 1

@c@
constant int r1.g;
identifier b.y;
@@
(
-(1 << g)
+BIT(g)
|
-(0 << g)
+ 0
|
-(2 << g)
+BIT(y)
|
-(3 << g)
+(BIT(y)| BIT(g))
)


Haneen Mohammed (2):
  Staging: iio: use the BIT macro in .h files
  Staging: iio: use the BIT macro in adc

 drivers/staging/iio/accel/adis16201.h | 18 +++++-----
 drivers/staging/iio/accel/adis16203.h | 24 ++++++-------
 drivers/staging/iio/accel/adis16204.h | 22 ++++++------
 drivers/staging/iio/accel/adis16209.h | 22 ++++++------
 drivers/staging/iio/accel/adis16220.h | 40 ++++++++++-----------
 drivers/staging/iio/accel/adis16240.h | 30 ++++++++--------
 drivers/staging/iio/adc/ad7192.c      | 64 +++++++++++++++++-----------------
 drivers/staging/iio/adc/ad7280a.c     | 58 +++++++++++++++----------------
 drivers/staging/iio/adc/ad7280a.h     |  8 ++---
 drivers/staging/iio/adc/ad7780.c      | 18 +++++-----
 drivers/staging/iio/adc/ad7816.c      |  2 +-
 drivers/staging/iio/adc/mxs-lradc.c   | 65 ++++++++++++++++++-----------------
 drivers/staging/iio/adc/spear_adc.c   |  6 ++--
 13 files changed, 189 insertions(+), 188 deletions(-)

-- 
1.9.1



X-GM-THRID: 8283938095104
X-Received: by 10.236.17.168 with SMTP id j28mr54260342yhj.0.1426328482292;
        Sat, 14 Mar 2015 03:21:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.2 with SMTP id y2ls1413806ioi.2.gmail; Sat, 14 Mar 2015
 03:21:22 -0700 (PDT)
X-Received: by 10.66.141.104 with SMTP id rn8mr664945pab.42.1426328481768;
        Sat, 14 Mar 2015 03:21:21 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id l3si839323pdo.0.2015.03.14.03.21.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 03:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id cy3so13361394pad.3
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 03:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=tn5MpCsPI4qB/F8Th44gPgRtk7Q8Cpn6Z9soyFfi2rY=;
        b=YgWlNnpuGLQTpP5k5na9Z83Q5ExxMLdT3W5qjydA4fg6w3M8dzd0HLDQKKKlnP98Zj
         zXiceI8WnwgJBVOySW4cOk2auGrm5CS3vn62OxbuPETQGEn2n76MKLUBnoRt9ycYW9Lu
         AuwIISLVIDDwapQxd/PsjcAJF2OdmHcfFl0R9RXGVDfjvUQn1ArLTrjV/b5KZceYaxDC
         AvMIaJT0O6dMc28E3OPiPOgqZQgBfJdIY6lDNkf9htjlGE5NyWtYgNdjY8/ojDn7Y1Fo
         xkDjG1bjCWXNMPP1j9KnJxtA1U3KCzqhJhhlB5vmjL9kFtlWSKC48FC/8sQ/h+78K/Rx
         bFiw==
X-Received: by 10.66.249.68 with SMTP id ys4mr112983738pac.82.1426328481651;
        Sat, 14 Mar 2015 03:21:21 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id 7sm7552017pdj.16.2015.03.14.03.21.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 03:21:20 -0700 (PDT)
Date: Sat, 14 Mar 2015 15:49:30 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: skein: Remove do-while(0) from single statement
 macros
Message-ID: <20150314101930.GA11063@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unneeded do-while(0) loop from single statement macros.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/skein/skein_block.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/skein/skein_block.c b/drivers/staging/skein/skein_block.c
index 9bd69ce..b0cd935 100644
--- a/drivers/staging/skein/skein_block.c
+++ b/drivers/staging/skein/skein_block.c
@@ -68,9 +68,7 @@ do {                                         \
 
 #if SKEIN_UNROLL_256 == 0
 #define R256(p0, p1, p2, p3, ROT, r_num) /* fully unrolled */ \
-do {                                                          \
-	ROUND256(p0, p1, p2, p3, ROT, r_num);                 \
-} while (0)
+	ROUND256(p0, p1, p2, p3, ROT, r_num)
 
 #define I256(R)                                                           \
 do {                                                                      \
@@ -152,9 +150,7 @@ do {                                                         \
 
 #if SKEIN_UNROLL_512 == 0
 #define R512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num) /* unrolled */ \
-do {                                                                    \
-	ROUND512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num);           \
-} while (0)
+	ROUND512(p0, p1, p2, p3, p4, p5, p6, p7, ROT, r_num)
 
 #define I512(R)                                                           \
 do {                                                                      \
-- 
1.9.1



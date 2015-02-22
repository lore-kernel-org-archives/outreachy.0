X-GM-THRID: 2367647907840
X-Received: by 10.140.147.82 with SMTP id 79mr6655047qht.8.1424600929851;
        Sun, 22 Feb 2015 02:28:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.83 with SMTP id m77ls1944731qgm.80.gmail; Sun, 22 Feb
 2015 02:28:49 -0800 (PST)
X-Received: by 10.236.111.4 with SMTP id v4mr1869135yhg.55.1424600929630;
        Sun, 22 Feb 2015 02:28:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22f.google.com (mail-pd0-x22f.google.com. [2607:f8b0:400e:c02::22f])
        by gmr-mx.google.com with ESMTPS id bx1si2767243pdb.2.2015.02.22.02.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 02:28:49 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) client-ip=2607:f8b0:400e:c02::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22f as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22f.google.com with SMTP id y10so18376942pdj.13
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 02:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=w6eB0xmN7Jj0Q/npEgQFq55Zqm3qB85KaOi3h22VG2g=;
        b=zlLBvfYtOF1K2eqA9tiNhsobmFQZVyIyR/bG+nvgzy53VP6JoBN/QbfMIGq5vVNlj2
         NX27nAVzStSXJoK7DEDmPUbWdAC5hWw8NGqylGTBtv5HBkxuIRBszYyCxaOwRmKmEzAL
         4moxKy4SATEnm3/7/WB3NNAJqIoosezkuVJ1Wdixbd15EHeHj8iNS4lS/+TiZO7P/UXg
         1tEOcTDs0ghhSRotKSEKnnoWD5Ub+s9ggIMP22KxakEarbWgOt3Pn1n5JAQoGb9ApDf8
         Bxi1CwpEOG6koXbzNmQvYx3pYHkZqN+/y0FHm7PVtAZ6skRDeFhKDagj4l75/+1IsR6R
         Arfg==
X-Received: by 10.70.123.70 with SMTP id ly6mr10649603pdb.154.1424600929515;
        Sun, 22 Feb 2015 02:28:49 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id pa6sm22563772pac.45.2015.02.22.02.28.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 02:28:48 -0800 (PST)
Date: Sun, 22 Feb 2015 15:58:30 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Removed unnecessary {} from conditional statements
Message-ID: <20150222102830.GA1072@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch is to remove unnecessary braces from single line
conditional statements to follow kernel coding conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/bb_cfg.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/bb_cfg.c b/drivers/staging/rtl8188eu/hal/bb_cfg.c
index 1e963bf..76d3db1 100644
--- a/drivers/staging/rtl8188eu/hal/bb_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/bb_cfg.c
@@ -554,21 +554,20 @@ static void store_pwrindex_offset(struct adapter *Adapter, u32 regaddr, u32 bitm
 
 static void rtl_addr_delay(struct adapter *adapt, u32 addr, u32 bit_mask, u32 data)
 {
-	if (addr == 0xfe) {
+	if (addr == 0xfe)
 		msleep(50);
-	} else if (addr == 0xfd) {
+	else if (addr == 0xfd)
 		mdelay(5);
-	} else if (addr == 0xfc) {
+	else if (addr == 0xfc)
 		mdelay(1);
-	} else if (addr == 0xfb) {
+	else if (addr == 0xfb)
 		udelay(50);
-	} else if (addr == 0xfa) {
+	else if (addr == 0xfa)
 		udelay(5);
-	} else if (addr == 0xf9) {
+	else if (addr == 0xf9)
 		udelay(1);
-	} else{
+	else
 		store_pwrindex_offset(adapt, addr, bit_mask, data);
-	}
 }
 
 static bool config_bb_with_pgheader(struct adapter *adapt)
-- 
1.9.1



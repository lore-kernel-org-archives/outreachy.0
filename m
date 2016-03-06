X-GM-THRID: 6258950529072758784
X-Received: by 10.107.185.5 with SMTP id j5mr13221554iof.8.1457275480499;
        Sun, 06 Mar 2016 06:44:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.228 with SMTP id c91ls1417408qgf.37.gmail; Sun, 06 Mar
 2016 06:44:39 -0800 (PST)
X-Received: by 10.140.99.106 with SMTP id p97mr13359572qge.13.1457275479840;
        Sun, 06 Mar 2016 06:44:39 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ff2si2572510pad.2.2016.03.06.06.44.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 06:44:39 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id 1so479196pal.3
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 06:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qtEh401xCmFcuco/rxkwvrt6UQr5LDsLZkMfgGYNWX0=;
        b=i+FbF58UMwd/uaCi3p/+px7KKYTWQ2LGa3NVeKuO6z2CVPcaNI9hSCZAbql7qGoF6K
         CAmjEpMaQuyQ1UmyMudr2VUSGZ9Ipc91nGp7gmab+jiB9/w1UbrQYisujQxUoB6xUxCX
         Paz9lK32vaTr2rluJfJlV9YAwSv9rbu5t7FugPeBqIjg8vqe8DpSdbsFyFT/dkz1Qomf
         LDaTgoCO4CvGWOREnmYuGcVOKOhk4A949g5Bt8gDlRMQPClS9RAo5bhYLO0HjB3iaDBq
         hh/2LjaHL6hBQvbMMtHPzCU0QcH8Sm4OXihNsVycyl04y7UFHn3lkoGMmIGhsHNfV7jH
         yrPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qtEh401xCmFcuco/rxkwvrt6UQr5LDsLZkMfgGYNWX0=;
        b=iqPMWRPPpa7xZU3Fmz3xAki4OIvGNMT81bees7wnerAtDyopA3lZWdRNeyaGGaKFiY
         iUF6NtJzVZvSsjt314o5wDsa/lqI5xX4VKcADB0fP43vjqdrYeRGXh4p/otVcjGvRLh6
         c5orymxK9i8paUoFvrcu9/7JZ19frd0AVkrprgb0S1LfXFL8yGRdtkln5JZVsq+BlGQ/
         oE34npWvvEOiDFZvtaBMNChA7kKS5Oi13pihrBKjV1m8sKRvjNPL4i0nos3wbCaLiaBc
         VN7SCRLCzm4rxKB/rLW2oSSYz52M3XdY2/b1p1pKOSlSLOKPPjLIrz73Z0BFI+n65LAV
         WXLQ==
X-Gm-Message-State: AD7BkJIpqcHj7PgwQ11RTE4OCuwDtmK/RLiVF85I3dC3MqpWqeB61KFtfVD4l4LH+lLVig==
X-Received: by 10.66.102.104 with SMTP id fn8mr27235572pab.129.1457275479641;
        Sun, 06 Mar 2016 06:44:39 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([49.207.21.252])
        by smtp.gmail.com with ESMTPSA id n28sm18227923pfa.45.2016.03.06.06.44.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 06:44:39 -0800 (PST)
Date: Sun, 6 Mar 2016 20:14:36 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: mt29f_spinand: Replacing pr_err with dev_err
 after the call to devm_kzalloc
Message-ID: <20160306144436.GA6623@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The function devm_kzalloc has a first argument of type struct device *.
This is the type of argument required by printing functions such as
dev_info, dev_err, etc. Thus, functions like pr_info should not normally
be used after a call to devm_kzalloc. Thus, all pr_info occurances are
replaced with dev_info function calls.

This was done using Coccinelle, the patch being:
@@
expression E1,E2;
expression list args;
@@

E1 = devm_kzalloc(E2, ...);
<...
- pr_info(
+ dev_info(E2,
args);
...>

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 1:
	    * Changed the name in the From: and Signed-off-by: to full
	    name.

 drivers/staging/mt29f_spinand/mt29f_spinand.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt29f_spinand/mt29f_spinand.c b/drivers/staging/mt29f_spinand/mt29f_spinand.c
index 75fe61c..791e36f 100644
--- a/drivers/staging/mt29f_spinand/mt29f_spinand.c
+++ b/drivers/staging/mt29f_spinand/mt29f_spinand.c
@@ -893,7 +893,8 @@ static int spinand_probe(struct spi_device *spi_nand)
 #else
 	chip->ecc.mode	= NAND_ECC_SOFT;
 	if (spinand_disable_ecc(spi_nand) < 0)
-		pr_info("%s: disable ecc failed!\n", __func__);
+		dev_info(&spi_nand->dev, "%s: disable ecc failed!\n",
+			 __func__);
 #endif
 
 	nand_set_flash_node(chip, spi_nand->dev.of_node);
-- 
2.1.4



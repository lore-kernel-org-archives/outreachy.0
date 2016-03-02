X-GM-THRID: 6257460833513635840
X-Received: by 10.98.0.132 with SMTP id 126mr21327488pfa.2.1456928633811;
        Wed, 02 Mar 2016 06:23:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.206 with SMTP id n197ls2123990ion.52.gmail; Wed, 02 Mar
 2016 06:23:53 -0800 (PST)
X-Received: by 10.50.87.7 with SMTP id t7mr110887igz.11.1456928633300;
        Wed, 02 Mar 2016 06:23:53 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id yd9si5227360pab.1.2016.03.02.06.23.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 06:23:53 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id 4so56387439pfd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 06:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=wxcN9TA5Gv/qVOaLocXFc4w3ojefV2MxquIKhIkZBa0=;
        b=GHSLFQmgFTYYzZnhd4hkwgjifYObwOazK/NxDJHwUfphHmwqw4yLcZDu1F91/FyJS5
         day02wNLBehu2Ts8WVOeNF2c6JgKB8ZmktyF3qmrFL/OT1fNuSNT0PccpaRR/DYzfoWH
         nIMh3K7C6l1K2ZTJiOilAaqkzk19lm16/bk0VFdJfl7EsDbsI5T+8wGnYq0UJaf4lxoe
         CUcblKUkViBgFWeogzd+cdjlU2Ph72KAlTW7BYifM1+kcwwL6SENgZFheiXABN4TcZQ/
         f3qK5j+dSfLbNZoh4QbXyR1U9HDSAbt8K3LanAmqpBjRGl+fqpzx2sZy4shc0Vl7vTSi
         yPNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wxcN9TA5Gv/qVOaLocXFc4w3ojefV2MxquIKhIkZBa0=;
        b=MzDieTxzxdbocUnNNEW0Lee4fDprZJoqq+plxOk9uA7P5yewG+byv5hGrZin01J+25
         OQ1Oe45DeoyuKYxUYtT9tIWs2D1snrl/ZAlsJ9RrZuHRj5sWymA7ALzrk+uVjh1ix8IQ
         NFsrtGjrCgI28mWXi7+3LOKJCD/TV/IL5triwcVFs96ZsxUNlOIpfU/BzGMZierW8WFz
         cxYHmVMaeKBX04XTGVpL8KqpQwyDxqTKRgK+gICzqUQ+B7fjw6Lx6dsKPwD1vH0KKMat
         oALFOvFAqmCK9jNQM0RHZrdGeo+BTtoQ8wSyYTe34TaIiogVv+B4Qg12NY3KJEJil8iF
         XfeQ==
X-Gm-Message-State: AD7BkJJl4dnkmLtW29415feegTlDB60ZpYeVVai6j0/ubIdvp3rjK7E0UrQ4OJ/ooWTQhA==
X-Received: by 10.98.33.28 with SMTP id h28mr35073372pfh.54.1456928633150;
        Wed, 02 Mar 2016 06:23:53 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.172])
        by smtp.gmail.com with ESMTPSA id 144sm53499129pfa.83.2016.03.02.06.23.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 02 Mar 2016 06:23:52 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] staging: gs_fpgaboot: drop wrapper function 'finish_driver'
Date: Wed,  2 Mar 2016 22:23:46 +0800
Message-Id: <1456928626-1975-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the function 'finish_driver' since a direct call to
platform_device_unregister() is intuitive enough to signify the original
intention of the function being removed. Coccinelle semantic patch used to
detect this:

@@
identifier wrapper, func;
type T;
@@

*T wrapper(...)
{
(
	return func(...);
|
	func(...);
)
}

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/gs_fpgaboot/gs_fpgaboot.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
index fe3a6bc..7b7c978 100644
--- a/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
+++ b/drivers/staging/gs_fpgaboot/gs_fpgaboot.c
@@ -281,11 +281,6 @@ static int init_driver(void)
 	return PTR_ERR_OR_ZERO(firmware_pdev);
 }
 
-static void finish_driver(void)
-{
-	platform_device_unregister(firmware_pdev);
-}
-
 static int gs_fpgaboot(void)
 {
 	int err;
@@ -370,14 +365,14 @@ static int __init gs_fpgaboot_init(void)
 	return 0;
 
 errout:
-	finish_driver();
+	platform_device_unregister(firmware_pdev);
 
 	return err;
 }
 
 static void __exit gs_fpgaboot_exit(void)
 {
-	finish_driver();
+	platform_device_unregister(firmware_pdev);
 	pr_info("FPGA image download module removed\n");
 }
 
-- 
1.9.1



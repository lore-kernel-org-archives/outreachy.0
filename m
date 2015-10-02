X-GM-THRID: 6200896862154653696
X-Received: by 10.66.254.131 with SMTP id ai3mr11249005pad.5.1443758807754;
        Thu, 01 Oct 2015 21:06:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.106.72 with SMTP id d66ls1434603qgf.53.gmail; Thu, 01 Oct
 2015 21:06:47 -0700 (PDT)
X-Received: by 10.31.162.16 with SMTP id l16mr11199421vke.5.1443758807110;
        Thu, 01 Oct 2015 21:06:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id w5si1370703pbt.1.2015.10.01.21.06.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 21:06:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id fv12so96917822pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 21:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GZ6f4XNpAVOxpfrEtYjA/hlRYVIxzymPhDRpq+4rcXc=;
        b=E6nXQyp+tHPIgGKM/BBOPEghId87t3qtrGl+eIrr+wLdbSZdyCT7Orczr9ohvNNpFt
         fdquySYJ9loTkaudbdoMf4FJuNnL6/ML3ZVw+q3NzQqErmDMYH70kO7jnwuBYSAtS6U8
         lxUpZgPXvswWCt0s79AgznBBYnx7OTLT+QLHQ3ia79eIbcqm4K07t4NJdljQDhPuSloy
         zzPoHv751xOud84vfJwOOJmxO6GrQRROjIOuLvfOW0hC2LzE4m0V2y90e/kCnzfyR0Qj
         c4Qh26MtfHBDJiLmfXo/+ydLl4XwsoaQPEa24HifyxhWu+8eD9x61jeztJ/pScbMrNoE
         xogA==
X-Received: by 10.66.147.74 with SMTP id ti10mr17202211pab.88.1443758806947;
        Thu, 01 Oct 2015 21:06:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id xm4sm9615981pab.27.2015.10.01.21.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 01 Oct 2015 21:06:46 -0700 (PDT)
Date: Fri, 2 Oct 2015 09:36:37 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: board: Fixed the error for implicit declaration of
 function
Message-ID: <20151002040637.GA41415@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Fixed the error for implicit declaration of the function
'of_find_all_nodes' by adding the appropriate header file and declaring
the function before it has been called.

Signed-off-by: Shivani Bhardwaj: <shivanib134@gmail.com>
---
 drivers/staging/board/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/board/board.c b/drivers/staging/board/board.c
index 29d456e..8d0ac82 100644
--- a/drivers/staging/board/board.c
+++ b/drivers/staging/board/board.c
@@ -19,11 +19,13 @@
 #include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
+#include <asm/prom.h>
 
 #include "board.h"
 
 static struct device_node *irqc_node __initdata;
 static unsigned int irqc_base __initdata;
+struct device_node *of_find_all_nodes(struct device_node *prev);
 
 static bool find_by_address(u64 base_address)
 {
-- 
2.1.0



X-GM-THRID: 6330275775734874112
X-Received: by 10.107.10.167 with SMTP id 39mr3754055iok.14.1473882333472;
        Wed, 14 Sep 2016 12:45:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.21.49 with SMTP id u46ls1892032otf.43.gmail; Wed, 14 Sep
 2016 12:45:30 -0700 (PDT)
X-Received: by 10.13.221.86 with SMTP id g83mr3225525ywe.45.1473882330377;
        Wed, 14 Sep 2016 12:45:30 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id c20si1604343pfc.1.2016.09.14.12.45.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:45:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so1129561pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=27QEAekRoclnpebUcjS+tH9vKv6fjShNJdXP1xtnhq8=;
        b=U6BxJYEJ7NQM1vSA9DMPqKaxzlY7jEJP6COJLhqwKXa4jwH2zi/bWSFj9jWB0OFTgQ
         d58RGQJWNff8oWKNclHchNLtU/ZuFj/zZzdISIQTnBWkOwnEUbgVSikqWw/6IbuGqBvp
         K2hZtxdAWJGkCE/Vn3NZZQSJHtraa/wAL7OQ6Lo7mi1b6VHuTT5Cvo1dI9nS1YhIczYF
         h6cWB2FA2YD8+KM9PnCcRsaQbPMXbQ5ooU+U7cXfiNir8E1y7eC2dCNWINtK0hxRsAbO
         VIZ0VO29yxK3+tSe3aeZfYInN6VMDykTu95sslzvL+qJ+6CnvlEt675PkY6VrM66eEI4
         pQ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=27QEAekRoclnpebUcjS+tH9vKv6fjShNJdXP1xtnhq8=;
        b=X0lirSxdaVtjx6+vnahgS3Q4pJnJ9nIAkniYGrS8erDm1eLc9tP41pz7TaPEIjvbG5
         qh/uiMs+aih/rLfyPAvbSYJ/IWQJfvpwnjM0EE3of2l8Z052Zm4KaNVvYxNJRYBbqFFi
         oLttSkIlminM/tsyDkz4+daXSp+EaY2UEI4zb7m1oEnE50iG5hNAEICDVMAjWn7XxBHV
         mRN3xkxckrASwDVHWU739JlflPc2JWyFNx2XrWKHkVmBfaoJ+fPu2rnx2Pam1QbFP6Mw
         K/+c1m6WWv6ylrj0bn0EXUhll/mxw0JrjgvrWtf90jilvl77N6YcQQRRfPsFa6Y7etb6
         x3BA==
X-Gm-Message-State: AE9vXwPmOw3y5XWjp/vaWOaRX0Z7PXfz0m6yo7m7u/5+aYm0AhfBOBjOnNyNwn69cCKOPA==
X-Received: by 10.66.127.38 with SMTP id nd6mr7719168pab.74.1473882326840;
        Wed, 14 Sep 2016 12:45:26 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.240.22])
        by smtp.gmail.com with ESMTPSA id tm1sm7313900pac.23.2016.09.14.12.45.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:45:25 -0700 (PDT)
Date: Thu, 15 Sep 2016 01:15:10 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/6] staging: ks7010: ks7010_sdio.c: Use <linux/atomic.h>
 instead of <asm/atomic.h>
Message-ID: <4125e2f478c28ca98e9040948ac2d953d7b69593.1473877138.git.karniksayli1995@gmail.com>
References: <cover.1473877138.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473877138.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch replaces #include <asm/atomic.h> with #include <linux/atomic.h> as
suggested by checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 129e203..36e6734 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -14,7 +14,7 @@
 #include <linux/mmc/card.h>
 #include <linux/mmc/sdio_func.h>
 #include <linux/workqueue.h>
-#include <asm/atomic.h>
+#include <linux/atomic.h>
 
 #include "ks_wlan.h"
 #include "ks_wlan_ioctl.h"
-- 
2.7.4



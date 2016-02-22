X-GM-THRID: 6254033434194214912
X-Received: by 10.66.124.200 with SMTP id mk8mr25424027pab.27.1456130661527;
        Mon, 22 Feb 2016 00:44:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls1358953qgf.25.gmail; Mon, 22 Feb
 2016 00:44:21 -0800 (PST)
X-Received: by 10.31.160.209 with SMTP id j200mr25987193vke.6.1456130661087;
        Mon, 22 Feb 2016 00:44:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id ui7si3033688pab.0.2016.02.22.00.44.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:44:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id x65so89281047pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:44:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OCZIsFrNdP2WgbzHtjwcnPlbNZN8w/5TeUGhAf1ehKs=;
        b=Dh22Qni0nHtCPTEPT90EHbcmmpv+eYwshY5xIvzgVPWyQOf21toci6zdTbQsl2CWfG
         K4Pc0KKWHYuo2R4Fd2WXdGb+P8xJDCdvRTne7hP1OJtcUQcYkmHOKVKHMnjoYQIzvXyP
         pxRULIl97O0SQIRZWWzZ2Oaqk3nai3HgR8oZ6c0MOtysEvU3obsU6r50EC2nM40LcyGH
         Z3NLfQeRTxsKU8e/WAE3zWsvxWvj/Ew9GqKhJq1hoNg31B4TpchHztr83cbMSDi2OA6J
         XtR5nx8lKUHnkHjiQ5P+ZVgztRgENdY/4Mc0lWj09CnAP5PYbDTCLcPWR+aqIWBlsqxw
         naNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=OCZIsFrNdP2WgbzHtjwcnPlbNZN8w/5TeUGhAf1ehKs=;
        b=NRDQq7rI9bwRmJ0LrHlZfuXc5+nkkGwSJH6fKGTyUi4mpbw+Mmzzw5sE9ndUx5eFws
         OJg9kCRyiPvr87ROSxvn2NGsDYO0p7RXgl4j0i5vcJCjrzAVGRxKKroL07efgzdrRKho
         6kut5zBldyV0miZN687UhuTYll0CsOUAC46+KTYHeSag9aLgaJWcDiVYx8TxgsJlOKSp
         9VsHt1ugy9xOo8TIyzswVQs7WJitUYriQ84Ib/un7GIzihKzLw4d2a+x2IGBZahguOaJ
         3uwkHN27Wvr2Rq7CQNprTJ2Yd3cbKh3ywIqv+RGjoTmqND+2BgT3mfuh1ShBh4s0Ba7n
         CLVw==
X-Gm-Message-State: AG10YOQGL5/1/rVcNCyUyIk/KzgSY2+nbjY+q9ggFGeCMneJVSqACan4wmQeMChjOw/dGw==
X-Received: by 10.98.0.84 with SMTP id 81mr36647406pfa.67.1456130660899;
        Mon, 22 Feb 2016 00:44:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id xm10sm35159266pab.12.2016.02.22.00.44.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:44:20 -0800 (PST)
Date: Mon, 22 Feb 2016 14:14:10 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/7] staging: sm750fb: Remove header files
Message-ID: <e988523fc7af963d902af9128fad1364932b3f4a.1456129759.git.amitoj1606@gmail.com>
References: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456129759.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate include files. Found using includecheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index e392acc..b889409 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -13,8 +13,6 @@
 #include <linux/vmalloc.h>
 #include <linux/pagemap.h>
 #include <linux/screen_info.h>
-#include <linux/vmalloc.h>
-#include <linux/pagemap.h>
 #include <linux/console.h>
 #include <asm/fb.h>
 #include "sm750.h"
-- 
1.9.1



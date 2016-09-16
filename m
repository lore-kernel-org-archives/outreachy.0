X-GM-THRID: 6330925606572654592
X-Received: by 10.157.37.75 with SMTP id j11mr115228otd.111.1474033554479;
        Fri, 16 Sep 2016 06:45:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.217.70 with SMTP id p67ls1054288itg.14.gmail; Fri, 16 Sep
 2016 06:45:51 -0700 (PDT)
X-Received: by 10.98.95.71 with SMTP id t68mr10447508pfb.7.1474033551400;
        Fri, 16 Sep 2016 06:45:51 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id h124si4181405pfe.0.2016.09.16.06.45.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so3510678pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 06:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=GHWUzdJfSsASwMjqNlgYjnb6o/fdwHQuHsPSboWfRvA=;
        b=xNMAtP2YVsqA7n00XdSPzguFOXazRu6lTuh9q7LBqho714jo1lUunIVSzZDCMCbGUH
         T+NsjzWF4u9q/M1JDpA5DGYGzlkja0QgwKMQVyzd2RN/4d5UeIbTS3T10X3eo0vyrzE5
         q4uniZEhON16iajAHBgOardBukSWVatmGfDAHNBxG+FM8a+ldLaA+zbSJ8nPpIUzi0Px
         rNCPot1wnRPQhRVCkEkeKB27db/HUW0AmiMHVOSpF5L/tlFl368F00YsyRit4emRBuPV
         okFFhyShHmeB8zrkaQUjnUXZoLJwKQam7bU6yP2rLTQSRUao6Rs7hgZVT9UgV1W8QeN3
         xeGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=GHWUzdJfSsASwMjqNlgYjnb6o/fdwHQuHsPSboWfRvA=;
        b=RlHEMgsJTmFPcOTneDjo9jN0RqKrB03jSxteIvC+bIjddsyk6kkrngBnYMj+hGbIlx
         dq6SVYxiK/68hip56+RxP41N7X1x9fHTPpna1kmKpCkfrzM3H55xkRjBOdFKebWEJ4ez
         qiHKyiefsPmiyNX4jMLAwATaxabwInQblBm0WOCM5mS537qM82vLWpdouCdp+iS6h/fP
         KeNZsymXZBenzmgZLXTEFdKa7bjQ7u0dT/wCgLBjAJLIy0WkqMykyQLxagEkKm+nRXo8
         mmc5hftgncuO9hodDyWSPs7Afw5ZaLp5o1BmU0LIWJdRsAu6qs9dcTlkg3S+5NmkkpMZ
         M1zQ==
X-Gm-Message-State: AE9vXwPCc/p4u+xLGvNWkm30qRszztaa8M5nf+IRhH+RvUzuppcLeGd4hAq9Ii0/5ORNVg==
X-Received: by 10.66.81.201 with SMTP id c9mr23234185pay.14.1474033551025;
        Fri, 16 Sep 2016 06:45:51 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id 138sm28489415pfx.41.2016.09.16.06.45.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 06:45:50 -0700 (PDT)
Date: Fri, 16 Sep 2016 19:15:38 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/6] staging: ks7010: Use #include <linux/atomic.h>
 instead of <asm/atomic.h>
Message-ID: <3a2a38b1b291ac0dea9d5ca60387e3788fd0991f.1474032241.git.karniksayli1995@gmail.com>
References: <cover.1474032241.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474032241.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces <asm/atomic.h> with <linux/atomic.h>, as suggested
by checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index d5299f0..b993804 100644
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



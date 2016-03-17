X-GM-THRID: 6262912321843101696
X-Received: by 10.66.246.170 with SMTP id xx10mr5763908pac.13.1458198022930;
        Thu, 17 Mar 2016 00:00:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.127.177 with SMTP id nh17ls1913925igb.21.canary; Thu, 17
 Mar 2016 00:00:22 -0700 (PDT)
X-Received: by 10.66.244.171 with SMTP id xh11mr6174012pac.32.1458198022565;
        Thu, 17 Mar 2016 00:00:22 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h69si1085855pfj.0.2016.03.17.00.00.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 00:00:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id x3so9754604pfb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 00:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ZuOgc2qb40dN4swsBdNIgZ3mr4vz+xAoUssQ4M1y5QI=;
        b=ygY6dfy1BUG/iEO3dXl0Rw6Lt6bVflJL1PE3u9sUJCmBY4MQMyJh4ksUV4v4eGKNLN
         19ibqp8aL+kMAFIH55v6k+5zrfvfHL/Dh7gbBI8j/rBI4YwRjtIrit3k9h5vioK03Qtk
         gxXn/SmPcq7ocELFhj4ZQGRM+u7CsGWs0zkeoeWs3WwmDRYJGx+l+Ky0ucHcQ3Zc7uCV
         fdpcST4xU6R784C2SuhMmXJrhcxVD+HSDDLbHC6qoCFuvcgNIV+xNxAECLhrJ4O2ucra
         U3ZtN2ijo5sgLxTDr4QzPJE9bXbsNJdOMYp0QlIosmCn+m2s5h3/9Fxd+ynrQMDaKNyJ
         Lj0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ZuOgc2qb40dN4swsBdNIgZ3mr4vz+xAoUssQ4M1y5QI=;
        b=G7SJYUytUpsSohjd2oIk9nlcSmD1EdLsm4hRGmKQnQGb5bA8M25l24R/7yL6VXuG6K
         zYruXgbVx41MZEPocJFeQjb+w2x27nrkp61WPO1SWhnd/lzZvr6LLO/zuHTj2XIPd0VR
         68bpbxSZbIDwnnyONKKZuPp8+D0syO8rAf7b28tYCB1+UwvZCOG0Ih6bUfiKCd5/ZHG4
         0Fyi69gsQI4rxFQWA+/W7R2kBU8ZhklKtyVWwHhuhiflFxASjoiPfZ8TvA3y+41sf5JI
         I1BQWCOtGL0cYwVnE9WbJOFe2I7X6TBMJJM/LycDKSp81BpA+7/A4iuyZuc4YgDhUPoi
         ePdQ==
X-Gm-Message-State: AD7BkJLBsa7DvxGdFxVG94FvNqijiEDDpgXL8kieNuIoUKl342csAFXglLucSkYkj4fmIQ==
X-Received: by 10.66.190.168 with SMTP id gr8mr12459256pac.23.1458198022429;
        Thu, 17 Mar 2016 00:00:22 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id ud8sm10478289pac.11.2016.03.17.00.00.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 00:00:22 -0700 (PDT)
Date: Thu, 17 Mar 2016 00:00:20 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: iio: ad5933: remove unused #includes
Message-ID: <d801f67a81c9dc22586df1e8d9f751eaae99ee2e.1458197518.git.amsfield22@gmail.com>
References: <cover.1458197518.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458197518.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove #includes no longer used in this module.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index a7d71d7..0576918 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -12,12 +12,10 @@
 #include <linux/sysfs.h>
 #include <linux/i2c.h>
 #include <linux/regulator/consumer.h>
-#include <linux/slab.h>
 #include <linux/types.h>
 #include <linux/err.h>
 #include <linux/delay.h>
 #include <linux/module.h>
-#include <asm/div64.h>
 
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
-- 
2.1.4



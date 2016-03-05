X-GM-THRID: 6258482142571921408
X-Received: by 10.28.15.82 with SMTP id 79mr313843wmp.3.1457166425953;
        Sat, 05 Mar 2016 00:27:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.158.12 with SMTP id h12ls163059lfe.0.gmail; Sat, 05 Mar
 2016 00:27:05 -0800 (PST)
X-Received: by 10.25.210.201 with SMTP id j192mr1631334lfg.6.1457166425398;
        Sat, 05 Mar 2016 00:27:05 -0800 (PST)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id w10si68038wmw.3.2016.03.05.00.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 00:27:05 -0800 (PST)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x231.google.com with SMTP id n186so19995807wmn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 00:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=CA8g03Nshu5KourD4cQeLP370Cr7O4Wbf3TDd0gL9kY=;
        b=jXSgTrQFFHk7dLm52cB81hNKhyQ643Jl7Ac+ZUakeBwSlqlk42u5B7mreRd5u5YhKU
         Uopwk2Hm9C7k5LNq+d4FaKy76O0xE5iCuBdnWPfmi16ZuWpTuXz06OfT0eS/vZqeMwuQ
         QISbfneVcocC2UE0HpxaRlxVdligyCTuC6j5u3w1vZgtWU/zcbjWHl/H9JFMtxumosZy
         g2rMDZnyF/6qzE69OjCCRavSgBl+TZJpvFUjmxmEr4NcMyLtYWYoo/bIh4yIaPUPEGeb
         mALfMQsPX5yDIUGbEEijGjm4usklw5/amuLuiYvLOWvhbNETGCNtHiytNXsouRNliVaz
         AHJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=CA8g03Nshu5KourD4cQeLP370Cr7O4Wbf3TDd0gL9kY=;
        b=Q29NFKK9iS4TYbQdbONvx47GKJ/v7xGTQXU+6JVjUHWMRKN1Zz1uhaQsORGJfMjrAo
         LeJWNM/GixcY+N0+RLRcaGX13ar4bBFf7zjFIMXRaynjKQeuO3cA2W3nYDfYpl+2ysji
         1Ve7bSg5JlCdh72SBdf1Nk31nANtXJsY+0r1pxTM1oaTKnhE3hFhUXpd6De2Cx3wlikk
         6rYDEgAWGDwJ9Cn3seFFdJeMn59UqlV1WoQOqoB82AjnB5+ccp1Bcyedr7DJ7cf9Gpim
         8kZcQ9AbZXqNgZIAIhXijezh5FVcHr4wtCdA37TKh/cqWRNCnLDr7y1POjtl6RPR3bS4
         tUag==
X-Gm-Message-State: AD7BkJI1bUx30Pmihhz5PT8EQxIpYC/Q/3gIlQ+ZA6rMmKq0S5/HvW7FO3NEtg8AzBvXLQ==
X-Received: by 10.28.13.79 with SMTP id 76mr2912315wmn.5.1457166425286;
        Sat, 05 Mar 2016 00:27:05 -0800 (PST)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id up6sm7070391wjc.6.2016.03.05.00.27.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 05 Mar 2016 00:27:04 -0800 (PST)
Date: Sat, 5 Mar 2016 10:27:03 +0200
From: Muraru Mihaela <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging:octeon:ethernet-rx.c: Fix comparison with constant
 warning
Message-ID: <20160305082703.GA5425@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix the comparison with a constant on the left side, by checking if the
variable is not null

It also reduce to silence the checkpatch.pl warning.

Signed-off-by: Muraru Mihaela <mihaela.muraru21@gmail.com>
---
 drivers/staging/octeon/ethernet-rx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
index ed55304..b54b0b2 100644
--- a/drivers/staging/octeon/ethernet-rx.c
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -449,7 +449,7 @@ void cvm_oct_rx_initialize(void)
 		}
 	}
 
-	if (NULL == dev_for_napi)
+	if (!dev_for_napi)
 		panic("No net_devices were allocated.");
 
 	netif_napi_add(dev_for_napi, &cvm_oct_napi, cvm_oct_napi_poll,
-- 
1.9.1



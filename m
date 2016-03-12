X-GM-THRID: 6261186175315214336
X-Received: by 10.25.142.130 with SMTP id q124mr1948856lfd.9.1457796007598;
        Sat, 12 Mar 2016 07:20:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.94.200 with SMTP id s191ls279773wmb.53.canary; Sat, 12 Mar
 2016 07:20:07 -0800 (PST)
X-Received: by 10.194.62.69 with SMTP id w5mr1973995wjr.5.1457796007143;
        Sat, 12 Mar 2016 07:20:07 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id c7si246866wmf.2.2016.03.12.07.20.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 07:20:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id l68so54215629wml.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 07:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qLu63vh/vV/tdyVc8X1Rt+m1Pwz/eVajIDWwsQ0uduM=;
        b=MQFO6it8NdY7YzPvnNnPp0wznQ/7lkDO3lujjuBuv19cSRd7LavoHsbFXNfzIasb99
         rc3KjOnrTPsCz8TxRTA8xJGdOKFHWK91TRdnV2j+VwlvgYc91QjUKK6ffUTkjo98Awcd
         Hsyw0BQjbcgA0YvDCVNj8VmJ+F/pgsrbtT+dOiZkpGCHTni2G2fBLvIG0+tfw2uk+XyJ
         8x9oEhkgOIQdfklHmPLVbOTVuVT9gTTUpOhhZ0zSRTht1BiHK5PdahwF++jEo2Epj6J2
         ot2vRpJkRuWYgwbCgOCdxsXFD5pi6ZxKVmTbxJPP9vcs3TbvzN8qVa7mly71vfwyW2cR
         SGVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qLu63vh/vV/tdyVc8X1Rt+m1Pwz/eVajIDWwsQ0uduM=;
        b=AmfmebByWY6BzahUP+uRaIqVPRFNnP4ix/5AVg3xJf/utUXoPpjXiU1k6//EN7U+hO
         1BqZiHktKvit5krWBqyJWhYnbKsfFfcRU46ZYMINiwMyY689krf7YnBJtivRznL2GaOQ
         Gkgv1NzQKtoPlk2zpwRb22sPXxE0ZnPsAN7zwZSb+LWgVsnn3sp3cwQQdn+48OOMVQCH
         j4I1RpPhaCj3ivwWrS9HukPcHCdpSZpWMjBtBaVMN/Qn2jVhzQLgNgFKXGB3mABK998l
         PqZv28JI0IrylpPTB91w7U+NePle2E5UdLOYMzXp9plrokZrfSBQwCYMdccvAv9RxxdJ
         qHWA==
X-Gm-Message-State: AD7BkJL/hlGPvUTup9sljI+L/i9TZwOH7K/K6ynQ50isEpqYWyALb0vXQ1c0JHV4dnKDeg==
X-Received: by 10.28.128.80 with SMTP id b77mr9013913wmd.42.1457796007028;
        Sat, 12 Mar 2016 07:20:07 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id b1sm13591379wjy.0.2016.03.12.07.20.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 07:20:05 -0800 (PST)
Date: Sat, 12 Mar 2016 16:20:04 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: nvec: Remove space after a cast
Message-ID: <20160312152001.GA2820@sonyv>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

No space is required after a cast. Checkpatch detected this issue.

Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
---
 drivers/staging/nvec/nvec.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
index 8d589a4..c1feccf 100644
--- a/drivers/staging/nvec/nvec.c
+++ b/drivers/staging/nvec/nvec.c
@@ -659,10 +659,11 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
 		} else if (nvec->tx && nvec->tx->pos < nvec->tx->size) {
 			to_send = nvec->tx->data[nvec->tx->pos++];
 		} else {
-			dev_err(nvec->dev, "tx buffer underflow on %p (%u > %u)\n",
+			dev_err(nvec->dev,
+				"tx buffer underflow on %p (%u > %u)\n",
 				nvec->tx,
-				(uint) (nvec->tx ? nvec->tx->pos : 0),
-				(uint) (nvec->tx ? nvec->tx->size : 0));
+				(uint)(nvec->tx ? nvec->tx->pos : 0),
+				(uint)(nvec->tx ? nvec->tx->size : 0));
 			nvec->state = 0;
 		}
 		break;
-- 
2.7.0



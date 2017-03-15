X-GM-THRID: 6396341070428372992
X-Received: by 10.129.163.208 with SMTP id a199mr1650739ywh.135.1489583769913;
        Wed, 15 Mar 2017 06:16:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.237.77 with SMTP id r74ls729819ith.11.gmail; Wed, 15 Mar
 2017 06:16:09 -0700 (PDT)
X-Received: by 10.99.111.11 with SMTP id k11mr1800438pgc.38.1489583769069;
        Wed, 15 Mar 2017 06:16:09 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si325482pfz.1.2017.03.15.06.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 06:16:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so2186983pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 06:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=o5Wkpl3Y2PlFot8zsnKLOvr9SYOeIjNA0L2DUSExNAk=;
        b=I1V/SlDCM7L949oqEWu1eme7it7qBQ9ao6J245OHSCaQCDfo3trfVdJzAQgsAPMmYH
         8nyB7u3U0oV4fAXqIRhnA+wv/iLPwYPFz1d2bY7vidaTrkrSSTpjLeOQE+Bip3xRJ9hc
         CM52U9wBBt5LHKtrsU5CfBUpRuswByvKjpWf4Po/X+uo3CU5+LJ/nciBb8rVG0TzkErv
         bTqTtnqtPHh0CuCgd9fga3ZW2lZNldP2UC3J7+QqFEJlQcVE2fASydjz3mv0M3ygt7sI
         O2KCX8N0YBWIv7wm0A7XwhZmTajZL0NJZKYfXr40H9d2d686FYhw/luQ1qxdGNnPf+c8
         TNPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=o5Wkpl3Y2PlFot8zsnKLOvr9SYOeIjNA0L2DUSExNAk=;
        b=nJT1kT7abb7n8ooRmqI0B6iMquibr7Z6AHnLCRMaHltJQtz5q9aVQqJZoMWb1Af9PP
         gRv1w0a6lo2epsRrD1yOkRzmnUgCCJozDZrV280P6U7Z6EECyU3iQX7Swgk4+2j+w6gj
         c5dJv9luHJbRKCanR8y3VEN7P/9f6kRi9QmngzF4Uw6+Y1/FJaAOskM1Iv9g8IfAES4w
         Ls19tiyTOgx/swjfft5bLtGB5gwTrdaIZaQXIf7ZpxehiKrBCqV3gYv/QUoHmmcu/5xr
         5hN9aWvLiprMS1o34IKi6nlmVLYE8J07AQY7Qqnwx+tXDtlGF+pU390iKaI/3LyHIXYF
         sVsA==
X-Gm-Message-State: AFeK/H2Eii+qpD1rj7fCRNH0uYisDg5x2UvkHW1uRzfdY6sIeUCYXEPOTJAtUsUBvGf3sg==
X-Received: by 10.98.10.83 with SMTP id s80mr3756782pfi.27.1489583768873;
        Wed, 15 Mar 2017 06:16:08 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id x65sm4486181pfx.115.2017.03.15.06.16.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 06:16:08 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [RESEND PATCH]  staging: vc04_services: Use macro DIV_ROUND_UP
Date: Wed, 15 Mar 2017 18:46:28 +0530
Message-Id: <1489583788-16458-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The macro DIV_ROUND_UP performs the computation (((n) + (d) - 1) /(d)).
It clarifies the divisor calculations.
Coccinelle script:

@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 03e1a13..eddff5f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1569,7 +1569,7 @@ dump_phys_mem(void *virt_addr, u32 num_bytes)
 	offset = (int)(long)virt_addr & (PAGE_SIZE - 1);
 	end_offset = (int)(long)end_virt_addr & (PAGE_SIZE - 1);
 
-	num_pages = (offset + num_bytes + PAGE_SIZE - 1) / PAGE_SIZE;
+	num_pages = DIV_ROUND_UP(offset + num_bytes, PAGE_SIZE);
 
 	pages = kmalloc(sizeof(struct page *) * num_pages, GFP_KERNEL);
 	if (pages == NULL) {
-- 
2.7.4



X-GM-THRID: 6254162077482483712
X-Received: by 10.50.50.138 with SMTP id c10mr12477511igo.3.1456160582317;
        Mon, 22 Feb 2016 09:03:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.85 with SMTP id 79ls265034qge.15.gmail; Mon, 22 Feb
 2016 09:03:01 -0800 (PST)
X-Received: by 10.13.226.84 with SMTP id l81mr27536503ywe.16.1456160581716;
        Mon, 22 Feb 2016 09:03:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id yd9si3211177pab.1.2016.02.22.09.03.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 09:03:01 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fy10so93810647pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 09:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Xfx4tW94jkZcBsHM6MXrZ3cVpAa1pebpc8mdcchcf/I=;
        b=lEAA2BKq2XyvX5GtUu/byn/0wmCo54Q7mNFU4JXU4rocsvj1yBwzhfItUdSUr75Yap
         q5cjjnTbpc9TuuoJNdONzAcFHGxtVP/SUdMIAIdrWaBkfd5uaPj1nt3HpnHB2X9OwUhf
         EP6nb6MvHdJofPVwmq9ipOD9nZhj1uBB6Y1QveXhqHthgvnsnczoOInw82fO3gdnqnrU
         XjQxzhUA27pv/SRyXl9PnmTEZJWScRe9GNXCLEndUqbpxNQRFbA5uBoZx8MWNjcsM6DL
         Jo2dJtJBcCBO2P/Kz+HkTlpSqmi0jYavsUmAGGl0TETsMnv0Kp3J1mV0BXBMe++/9v6P
         aEaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Xfx4tW94jkZcBsHM6MXrZ3cVpAa1pebpc8mdcchcf/I=;
        b=W3sSMw2Q4cyUnsFfR/9nkYOXUvIj19N9OiSyRIcRbPIEQypUW5/op9N0jYJYFE0HxZ
         kgdEd8bFJb+uD52+YB5MsTescVSJgphM/HFwILG9s3rMRek6+7lRgtvtyQH7ur6GWVSt
         UgANiqdmWOOeeYQ9FrA/5tOBbPAfRE4ArU1gIRkrbzknPGkUQSioJTN43T8gzHgury/Y
         OlruhOR78xG0fNNhcpI/+d3lsJ57eVfb1bHTnO13UfCApads/1Sp0M/1i1MrnpU9tsrF
         4AHj02hS+5nYqKciHCDSDRZ65HeXu7K5OCvM9lvPSApn20hyX8OzMr2798aXq9hhQIVI
         XJ+A==
X-Gm-Message-State: AG10YORZ1D+YYNpgny6lE19JRefaMFJo4kjG35zQXIFXFHGBHZzCtJ2/gUMOQpI7YUrOgw==
X-Received: by 10.66.139.137 with SMTP id qy9mr39639490pab.57.1456160581553;
        Mon, 22 Feb 2016 09:03:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id sm8sm38288656pac.43.2016.02.22.09.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 09:03:01 -0800 (PST)
Date: Mon, 22 Feb 2016 22:33:34 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Compress return logic
Message-ID: <20160222170333.GA26010@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Simplified function return by merging assignment and return into
one line.

Found with Coccinelle.

@@
expression e;
local idexpression ret;
@@
- ret =
+ return
e;
- return ret;

@@ type T; identifier x; @@
- T x;
... when != x

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rdma/hfi1/user_pages.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/user_pages.c b/drivers/staging/rdma/hfi1/user_pages.c
index 692de65..8ebfe9e 100644
--- a/drivers/staging/rdma/hfi1/user_pages.c
+++ b/drivers/staging/rdma/hfi1/user_pages.c
@@ -61,11 +61,7 @@
 dma_addr_t hfi1_map_page(struct pci_dev *hwdev, struct page *page,
 			 unsigned long offset, size_t size, int direction)
 {
-	dma_addr_t phys;
-
-	phys = pci_map_page(hwdev, page, offset, size, direction);
-
-	return phys;
+	return pci_map_page(hwdev, page, offset, size, direction);
 }

 int hfi1_acquire_user_pages(unsigned long vaddr, size_t npages, bool writable,
--
2.1.4



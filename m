X-GM-THRID: 6253707231891554304
X-Received: by 10.31.152.208 with SMTP id a199mr21766002vke.4.1456054680592;
        Sun, 21 Feb 2016 03:38:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.133 with SMTP id jg5ls172664igb.11.gmail; Sun, 21 Feb
 2016 03:38:00 -0800 (PST)
X-Received: by 10.66.63.68 with SMTP id e4mr21293287pas.40.1456054680252;
        Sun, 21 Feb 2016 03:38:00 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ff2si2797350pad.2.2016.02.21.03.38.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 03:38:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id ho8so77416786pac.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 03:38:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gL17JBdFNlYdLDhf/dbW8Hrd4gRlDHFO1cC2Ey2H7zU=;
        b=HcCacyv4No5ZlG67wbCSUyj6tFKXVAbwKvsJQS9GIYDMvCsfysagZ9c5SjesQWpX2w
         K5fhqkLCTDik9675r7XE5HMBVzc4/y0DwxPS+FLtpscKIi0UWgpFgl7NO/ZwltMdob8w
         G2njh20nLhCzPQvfSMqh4SKWU4i0ALk7w4QVvNzznjXH7AZy3YIE3Jng21+Ps3BqYrwl
         vF25aGhQdnfJ/pCEImxygLrLWzukane3fRGZAEfQw4sgcEhuxGKg4VuuH+VgcyRs3ySe
         b8XngB/38zXRryCCd4d/baFqQ/OS/4uwNxLR/yIq760Z+unYe4UdFSTMSe+AYQdWRvFj
         MELA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=gL17JBdFNlYdLDhf/dbW8Hrd4gRlDHFO1cC2Ey2H7zU=;
        b=IjTla7KqQtPTINJNejoMOsftUKnQOPS2k9CxT/HQVmAvuF0S1ULoKlu90ek63A2lGX
         idT9/2ggjS2Orj+jlz25lwXqozIZG/62YqmG/vNNE1UiJFd5Em5dfPLhRR0bsl8fMcaM
         4p8JCMg+21sWu8sc3/uviM26GSQ9bowwghuRAocppA63hmqqkFz7lTCUN0eNqgl+05kO
         Zs89cFrciAsy/oKw2QrhWry8geBEpQjWusZSN8siXlZ4QjhIUewNY1ohBHjZfqnXI/Oj
         +GbCdVBe1hZohMo6Zs53dC9m2y/rd1TfmX4vAo7ubLRpdGiJFslDUBXGUUrcg/j7OQdJ
         w2Hg==
X-Gm-Message-State: AG10YOQ5VmNpaFKpIHJTZTaCZycQ3v2k5Qma/Z+fRyZdCIk1HKsqjKfp+QHYiA5CXyfrhA==
X-Received: by 10.67.23.161 with SMTP id ib1mr29494926pad.156.1456054680165;
        Sun, 21 Feb 2016 03:38:00 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e4sm770893pat.37.2016.02.21.03.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 03:37:59 -0800 (PST)
Date: Sun, 21 Feb 2016 17:08:32 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft:  Prefer using kmalloc_array
Message-ID: <20160221113832.GA28242@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays to prevent integer
overflows.
This was done using Coccinelle:
@@
expression e1, e2;
constant C;
type t;
@@
(
- kmalloc(sizeof(e1)*e2, C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(e1), C)
+ kmalloc_array(e2, sizeof(e1), C)
|
- kmalloc(e2*sizeof(t), C)
+ kmalloc_array(e2, sizeof(t), C)
|
- kmalloc(sizeof(t)*e2, C)
+ kmalloc_array(e2, sizeof(t), C)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 2a50cf9..5fbfd50 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -272,8 +272,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 	int ret = 0;

 	/* buffer to convert RGB565 -> grayscale16 -> Dithered image 1bpp */
-	signed short *convert_buf = kmalloc(par->info->var.xres *
-		par->info->var.yres * sizeof(signed short), GFP_NOIO);
+	signed short *convert_buf = kmalloc_array(par->info->var.xres * par->info->var.yres,
+						  sizeof(signed short),
+						  GFP_NOIO);

 	if (!convert_buf)
 		return -ENOMEM;
--
2.1.4



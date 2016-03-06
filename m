X-GM-THRID: 6258476989674422272
X-Received: by 10.66.147.106 with SMTP id tj10mr13545886pab.30.1457276715211;
        Sun, 06 Mar 2016 07:05:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.34.208 with SMTP id l74ls1303365qgl.47.gmail; Sun, 06 Mar
 2016 07:05:14 -0800 (PST)
X-Received: by 10.31.165.1 with SMTP id o1mr13229730vke.12.1457276714500;
        Sun, 06 Mar 2016 07:05:14 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si2578683pad.2.2016.03.06.07.05.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 07:05:14 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hj7so6159505pac.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 07:05:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yXPEzvN/weUrqZvgiIsrFK1ZHs5+N201E+04pcmU5uM=;
        b=ckg2+qpQxTpEXFnLXfGiayvkp7/d06d+ida+SXCh6tsN8nafQsFzLA9Wfi/OPYib8S
         aqQLEFxbdQXWcfVA8TRUeifLT2e8qmTbz9ZlPFjyUhxxwVeZLvAMLDXNljPzJcpx+O7e
         gzfU6F5TKbiY4TDJiRa6ErrRkomGnM4T1Np0Mpr4je1OI0H/gXf3j7M/beqmWYF9EejD
         hwoiZF7nEDcJdojFP5XU+6QM3eCmXdNx+3Y+ofZnZHKMCkz5sIb9oj1o+ZCTeZvzuqoY
         otjaCUslsWjpuqrccgh5OmBCWYUq+1Ff5bM/C+wxZmiHPXd0WMDEaBNeGq1bunKsPkNn
         PGmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yXPEzvN/weUrqZvgiIsrFK1ZHs5+N201E+04pcmU5uM=;
        b=MmMLsb9tr7esMqjZrW7BB89AVH5PTNSN6BUHQ1S6XL9TFd46XQupa1VcaIf7yksyqa
         QxqOpOVHJhluIBQ4QL+9XJ1RBvIZ8bJ4l+/ku6DjjMTaRnwLYp7FADxfWqU+LRbV6FC4
         0yAj0RMAi2+OF3s3Po+qYRmT2Jd89s0dpMo1OD0eI4/8NTHV4Z0R6yhfs4I3aEgIlPq9
         ivxxxU3gMJA2tgfUNKFxWxdE9BTDoTTtS+B8qxzTMq3EYOvZjtiIPremfJtlFENaOsXM
         /zRCGgJWCo0BP0ZXeK0rFQh1nwB5RZQp9+Tm4FS/nNCmM21xNZWYoelMj4RZ+Ve2zLYj
         XPwA==
X-Gm-Message-State: AD7BkJL1Xll8RNerTD2tCmUEbQryuMh1nXPOYbKd5O2fL3eEPlFQLB+Myeu0kOav5fmy6w==
X-Received: by 10.66.250.199 with SMTP id ze7mr27064942pac.103.1457276714310;
        Sun, 06 Mar 2016 07:05:14 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id h19sm18302800pfh.43.2016.03.06.07.05.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 07:05:13 -0800 (PST)
Date: Sun, 6 Mar 2016 12:35:29 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: comedi: Use predefined macro offset_in_page()
 instead of (addr & ~PAGE_MASK).
Message-ID: <20160306070529.GA31233@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use predefined macro offset_in_page() instead of (addr & ~PAGE_MASK).

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* No change.
*Compile this patch to check nothing is broken.

 drivers/staging/comedi/comedi_fops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d1cf6a1..7c7b477 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2224,7 +2224,7 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
 		retval = -EFAULT;
 		goto done;
 	}
-	if (size & (~PAGE_MASK)) {
+	if (offset_in_page(size)) {
 		retval = -EFAULT;
 		goto done;
 	}
-- 
1.8.3.4



X-GM-THRID: 6249584411917942784
X-Received: by 10.50.57.17 with SMTP id e17mr8350626igq.11.1455094761051;
        Wed, 10 Feb 2016 00:59:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.18 with SMTP id p18ls280949qge.86.gmail; Wed, 10 Feb
 2016 00:59:20 -0800 (PST)
X-Received: by 10.13.213.208 with SMTP id x199mr6501184ywd.48.1455094760370;
        Wed, 10 Feb 2016 00:59:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si227547pad.2.2016.02.10.00.59.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:59:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id yy13so623321pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eSRZAkXRr6ha5oc2+eEDsvlKbUgY1dtcqbXffLGiPyc=;
        b=ZfUS7JQ5Xv+dD4hRk4msUGYph4JpPAflolCxXKrxjvTWwLe/44sZGIWonChLID9SxI
         vfr3/M7Zh2baKH9j9GZxe+Yl8LrvcFcr17U5abzJDXbXo11wULzTX+02motOEKAM7Bs1
         4Ml8Z33hi0udc6Tq5yM2VUJM8ZqOguBrsDNWnvG2tgTnh1Clk7uAbiQpDXIz8nr8YcyX
         iKeoSrGh2zxO8vsx7mWsq9565k4saCEqRjgxkECs3KLVtP1yedNH59ygVW4l0SoiIYka
         stmKE+WVHvymdCbSV3+oZy5fNLfdOZTpd4jgYxl21dOWCqoXAC/DoYieTfPmFGW3SPan
         Pqgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=eSRZAkXRr6ha5oc2+eEDsvlKbUgY1dtcqbXffLGiPyc=;
        b=HvHGrXtzo9sbiBX/Zbu+4u1A4KTBw8jJnmtq6yZDWjDg0U0XKnvnrGuec7gSmNw6Fp
         BLSU8ybg5QU2/SttiVkUDOjoFEI6/yO7Cm85wLkiuR567DrHZzCokWrzHqg8dIK56ztS
         QiRJeccDeOlWI7JMUONEFjEbO8RNu4aT4bfEFvO/LXttXcdE3JfcP9FxoI8p6/7nG0C1
         ziFM5f0+M2aIUf79oaS9ENhx3YxA4GbVTWGxXtBXPC5U5i8hNK1MzBui9YBSffwhLVw+
         itvsP1NvU4B2LJvzi42M6+Mjw7NNCEqowj3lS4+3s0DeZxLKjly0tadPP1AqSsYKaNZA
         epww==
X-Gm-Message-State: AG10YOTXKSPWJh//RKkilOmQtn7gjUcVY7JJFkyZK4B2xE2/znBUhXh3bsOGWH3sHHohOA==
X-Received: by 10.66.144.37 with SMTP id sj5mr56549632pab.69.1455094760204;
        Wed, 10 Feb 2016 00:59:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id n84sm3368330pfa.45.2016.02.10.00.59.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:59:19 -0800 (PST)
Date: Wed, 10 Feb 2016 14:29:16 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: comedi: comedi_fops: Merge if conditions
Message-ID: <20160210085916.GA14597@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Merge if conditions with the same statements.

Found using Coccinelle. The semantic patch used to find this is as
follows:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d57fade..d6bcf73 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -795,9 +795,7 @@ static int is_device_busy(struct comedi_device *dev)
 
 	for (i = 0; i < dev->n_subdevices; i++) {
 		s = &dev->subdevices[i];
-		if (s->busy)
-			return 1;
-		if (s->async && comedi_buf_is_mmapped(s))
+		if (s->busy || (s->async && comedi_buf_is_mmapped(s)))
 			return 1;
 	}
 
@@ -2216,11 +2214,7 @@ static int comedi_mmap(struct file *file, struct vm_area_struct *vma)
 	}
 
 	size = vma->vm_end - vma->vm_start;
-	if (size > async->prealloc_bufsz) {
-		retval = -EFAULT;
-		goto done;
-	}
-	if (size & (~PAGE_MASK)) {
+	if ((size > async->prealloc_bufsz) || (size & (~PAGE_MASK))) {
 		retval = -EFAULT;
 		goto done;
 	}
-- 
1.9.1



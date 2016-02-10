X-GM-THRID: 6249584411917942784
X-Received: by 10.182.240.226 with SMTP id wd2mr38167065obc.0.1455099173978;
        Wed, 10 Feb 2016 02:12:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.153.111 with SMTP id vf15ls182198igb.7.gmail; Wed, 10 Feb
 2016 02:12:53 -0800 (PST)
X-Received: by 10.66.102.8 with SMTP id fk8mr36160610pab.40.1455099173726;
        Wed, 10 Feb 2016 02:12:53 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 79si325133pft.0.2016.02.10.02.12.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 02:12:53 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id sv5so703258pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 02:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XLCWf0xYPhNQDPKqom88yog/QqHanbshc1BjylGK8JY=;
        b=t/p1CfWcIOwM0ZLqaNdsSZdvLeOF3ywkjcHBbuuX0dtdfduWfQMx7Dgu0Nzbi9IR2X
         VPIXYWHJhUIUMElAVHZDptuq9d+9v78MqHzsSJWLw8U5ppJ2yMGnd863CWKLwGG4KOLc
         vVLlIR3uYiCa1te9xznNOjCcI78DvHNcEo/Ezls/dGcZB1x9t3VBGxkyVoKl3+ihkaXC
         VqC4yIQM4AoQXOSXK7U6jtAC8ciC+9Y5292BNW9OG7BY16rYE8SkGTHsjFTLx2HyKTAi
         9XuX0rvl2m6FjGzrzyVwJBTsvmkmj48I/EaxNaWAA+MEa6OHFRbtO1T/6mDQEUY+2bRV
         O9SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=XLCWf0xYPhNQDPKqom88yog/QqHanbshc1BjylGK8JY=;
        b=AKb3RTe3A1hy24GeZqqNJfe37qnEjUHUxrEscoxwLB1sQUsjN2rvKKvgg0ydW4vVIk
         g7ULrJoLNtFgupD3CMqHL3iYMoNjm95K+jRmrs+9vpg6V3uHXA816WtI/pIVOMlnAkiY
         ohZNRvxcdBWZx/jeq3LIxM8aU9GVHsyqa+HJ0cS7u1ju201LUgUFeIxmduYa4jw+AlaS
         T4rldVg19j1RPQNiAni9isT/976O5wPdsBMTgB7vnnjt6h9BrY8kQbuZ2JfzkmU1MvRX
         EDxAdPOOiP1JSEww2y5IlTUX4GiTxbXsYGTiXtAnJv0fyekrE8kJMz26FYth54aSBUko
         3X7A==
X-Gm-Message-State: AG10YOSZKHmKRDuL3NbNQvJh+tGyqBku4HRFU4cuUrJsueNfvgREPUCabAw1KNemoQYHAA==
X-Received: by 10.67.4.226 with SMTP id ch2mr54143562pad.116.1455099173607;
        Wed, 10 Feb 2016 02:12:53 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id l62sm3977678pfj.7.2016.02.10.02.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 02:12:53 -0800 (PST)
Date: Wed, 10 Feb 2016 15:42:49 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/5] staging: comedi: comedi_fops: Merge if conditions
Message-ID: <20160210101249.GA29055@amitoj-Inspiron-3542>
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
Changes in v2:
        -Merged Patch 2/6 and 3/6 of first version by not dropping if 
         conditions and only merging them for the same file.

 drivers/staging/comedi/comedi_fops.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d57fade..7c09150 100644
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
@@ -2817,9 +2811,7 @@ void comedi_free_subdevice_minor(struct comedi_subdevice *s)
 {
 	unsigned int i;
 
-	if (!s)
-		return;
-	if (s->minor < COMEDI_NUM_BOARD_MINORS ||
+	if (!s || s->minor < COMEDI_NUM_BOARD_MINORS ||
 	    s->minor >= COMEDI_NUM_MINORS)
 		return;
 
-- 
1.9.1



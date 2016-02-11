X-GM-THRID: 6249584411917942784
X-Received: by 10.107.136.23 with SMTP id k23mr34088030iod.23.1455201563740;
        Thu, 11 Feb 2016 06:39:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.7 with SMTP id g7ls1091278qgg.49.gmail; Thu, 11 Feb
 2016 06:39:19 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr42470170ywe.15.1455201559139;
        Thu, 11 Feb 2016 06:39:19 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id ff2si913913pad.2.2016.02.11.06.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 06:39:19 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id e127so30407956pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 06:39:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Vn+8rntb3tNNIgfHDatTXHDH1HXnChrMmj/0UZ6I6ag=;
        b=xpDbWNY8msqdCx1kQi/jmUNUR5U1qpx/6/JggiZYIKZD1pCQlyj/KefJBpx1cVt4Sj
         x+KkINBaWdIJumydChP/K4GL+wxvhIyEo3zccifw9GDBBpywL5RMoVH6q3PiVGNYpoWh
         3dLEskDMhUT+You2i5GiIdpkZFpCf6qzUnHzntm1rCzaRifwswLTYt7TG6dXpekYNvin
         /HLy4I4QAJFAD1P94lPeGrAA6pxu3Zyss1itt9JrjgdqENB9Z9Pd+rAJl3ziZDk6SVfn
         89oc6+PzHsIxPU4gchwQT4MslId+UorCRnJziURBmvzRvFna2GC2qCotNZKrXIvd4vwS
         gjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Vn+8rntb3tNNIgfHDatTXHDH1HXnChrMmj/0UZ6I6ag=;
        b=iGYalUWuostTbQgdiC4QCm4eXkWDUy+8DiP1RYtZQz8i3m1gbXH2lFvfeCFjGdrRBB
         aHA1VgDbq67inFYQjNwIQwII3wWacozt9zIpq+MKRx0N2zKqabqMpUeog2xVoExn44/9
         l0cINnRAlonneFfpxDzY2EMrdpz+kQS7gF1aZfscx7NKfjMFKOYgFpj3QKUHvnA383P0
         Ak+bxG6rcMB86OLYBw+V7uzk/PyZfkUdfVVeUdcdBh8CqXvwepx+QXe3tHPjbLrFGM+V
         Oh/8cTPOsdSxjn0GXDOneZEbOw3Q8coCVkxVTqCXq9nHpDN4UYpFLgTMtiqMrXqASpoB
         MDbg==
X-Gm-Message-State: AG10YOQ3JnJTKGVZjHhfmnp2aDVKiNKXEno6CmIiV9bI+Kc++MAaTZu00MPRcb8kGbh2EA==
X-Received: by 10.98.18.8 with SMTP id a8mr67286258pfj.41.1455201558962;
        Thu, 11 Feb 2016 06:39:18 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id l62sm12926086pfj.7.2016.02.11.06.39.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 11 Feb 2016 06:39:18 -0800 (PST)
Date: Thu, 11 Feb 2016 20:09:15 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/5] staging: comedi: comedi_fops: Merge if conditions
Message-ID: <20160211143914.GA32681@amitoj-Inspiron-3542>
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
Changes in v3:
        -Removed extraneous parentheses.
Changes in v2:
        -Merged Patch 2/6 and 3/6 of first version by not dropping if
         conditions and only merging them for the same file.

 drivers/staging/comedi/comedi_fops.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d57fade..0c6e856 100644
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
+	if (size > async->prealloc_bufsz || size & (~PAGE_MASK)) {
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



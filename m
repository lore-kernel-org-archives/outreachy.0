X-GM-THRID: 6792282494518427648
X-Received: by 2002:a17:902:b909:: with SMTP id bf9mr4535123plb.96.1581451505008;
        Tue, 11 Feb 2020 12:05:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9887:: with SMTP id s7ls6062597plp.9.gmail; Tue, 11
 Feb 2020 12:05:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqxjUWT9sWOSy85V2Lhm5qlonRjm4p1kJDo6Nd19Ge58QKE6n2Cysfr0O9CQBeA1OknnQMgV
X-Received: by 2002:a17:90a:fd85:: with SMTP id cx5mr5562227pjb.80.1581451503573;
        Tue, 11 Feb 2020 12:05:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581451503; cv=none;
        d=google.com; s=arc-20160816;
        b=wgDoe/keaR1Jt3QBvX2MWqsvAD4nhtPap1fwGkjOZ5GN1uIk2drkVj1uVSSAldigkW
         y3BvOlnaf2l4G4omWLl0fa8ufV98/Mzextf1vjtxbXTeiPRyjqOQbSRgBwwCrgMj2/+p
         RnEJ8IGEE7j1i36KpdpdWm75DSYxcJuf20BcCAYUxHKGh1UJGC+/Y6TQ+vavwkRI3NVc
         KV6iXLjPPRm4Jt6gnbrarAoNARF4+f+W/hnfnrDvSbBNqpqdQ50O7+9GjYBBjrPyqGiH
         HY4TvFNhZSbEj6plUQ6DrNepDaQUmktLUjd9NVfKCLg0jIKpixw2+Pd5KBN9qVQROIMD
         QEKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=5ue4G4dpODhoewFsjfAA9LAxruCMbbc5nqgg0UgeuMA=;
        b=Ho9feqePHUG4BWq2y+EubYRANtBcsjywoTV45BAf5t2sosuowV5aRby5zbwLYOERfe
         CvuvGMzSQqwoMptoVl1IlROMG71/U5xj25TRv33tZHWY8rje5dHXmOwPafxvngxXYsfM
         0TdjHJAg3xeUULU7183webg9jdMN5xPzshbrnFMGBdgK464NA2nW0jhKCxl9wCn1To6+
         SgSvW0gOiPOOF665UwQrlsyGNxYf4OYNbzUuzBAvexAAHZSVooyRlhtqo8CojLmQsU/+
         hHQm5ISc6x4tyNM9p9L5XwTm3mydABFToahqlDWKvX3XI1sP1/bPmgmbJ1qyhZzUqKib
         LO/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=fd+OezFO;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id h2si168272pju.2.2020.02.11.12.05.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 12:05:01 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=fd+OezFO;
       spf=neutral (google.com: 2607:f8b0:4864:20::1044 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1044.google.com with SMTP id q39so1730117pjc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 11 Feb 2020 12:05:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5ue4G4dpODhoewFsjfAA9LAxruCMbbc5nqgg0UgeuMA=;
        b=fd+OezFOQSgAFFuPa8ZyWv5lwWwe+m1gaK9jxWXgvtiFiTgtBWTR6HuiSSmAPdsmVh
         LfAI2qXNtyCwolp5ARwDb17CQAHejqQpgERDiz2TPXbhs+v9wV9nrzYc9P6L3MaMsNF/
         7WPDj3CGmczJXo9t4kb8qEXGNdpoYzOIOCpLG2Og6Q+p7+nRrKp7czCnBeGGDejXBdYd
         AGJYhxzfw9SFVQO3o0xJc4NZycrHe4Auw9Oo74ZVjx/BKX9P7P6C/w2xGBnq+jKRN984
         lmgolsnZAGrpCmsE9kR3Y/+NJ+GI+JEWxoe1KEmRvrNv7KtUbOOdLMmadGUJK0QKSIlE
         5P6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5ue4G4dpODhoewFsjfAA9LAxruCMbbc5nqgg0UgeuMA=;
        b=BWFSajZSmZx2rfZiL3AiCYM9ENSknAJt4g58jDNif4oI7mZTfESuuA4/VGI/ApI230
         COovJ4/ECmxDdoSRHwPjOhjfuOnLbzNutWpDkgoUVkKGGD/GdwKWwTolOwW5R+SRT/ie
         sqJAifhqVSj77oaj2SM/HDBM07kZ5+F6hw9zj9AWZ9QQcJszpy94INCBLGPZKyRGDC6x
         0J2ZSADOsR3VwmCejpZC6G8xHzO8MJ/h+fMgs4WjmPtrmJBG6kTWhJpO7x0Q7K91jL4D
         8KNk345ZTZGkjuvw3YgHZrav7aiuwB29tKejW6x+Agdj1Y27bcV8MpB+tZI0FSwfNZSy
         /mzQ==
X-Gm-Message-State: APjAAAWK/f/MkMR5D4/o8t4J8lVURdPevgL1PQ3R823DMm7y07BGibL2
	wwmrERl+R30L5mLvQr9b08WEvQ==
X-Received: by 2002:a17:902:6ac7:: with SMTP id i7mr19152911plt.66.1581451501357;
        Tue, 11 Feb 2020 12:05:01 -0800 (PST)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.169])
        by smtp.gmail.com with ESMTPSA id w38sm5031074pgk.45.2020.02.11.12.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2020 12:05:00 -0800 (PST)
Date: Wed, 12 Feb 2020 01:34:56 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging:Fix WARNING: quoted string split across lines
Message-ID: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Whenever it tries to map a region, but the region has permissions, or it attempts to open gasket with tgid, or it releases device node the messages are displayed in one line only, respectively.
And it becomes confusing for the developer to search for the code based on these lines' output since they are written in separate lines in the code.
So, this patch fixes this 'WARNING: quoted string split across lines'
in three lines in the file gasket_core.c.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/gasket/gasket_core.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
index cd8be80d2076..411aaf248b37 100644
--- a/drivers/staging/gasket/gasket_core.c
+++ b/drivers/staging/gasket/gasket_core.c
@@ -692,8 +692,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
 		(vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
 	if (requested_permissions & ~(bar_permissions)) {
 		dev_dbg(gasket_dev->dev,
-			"Attempting to map a region with requested permissions "
-			"0x%x, but region has permissions 0x%x.\n",
+			"Attempting to map a region with requested permissions 0x%x, but region has permissions 0x%x.\n",
 			requested_permissions, bar_permissions);
 		return false;
 	}
@@ -1180,8 +1179,7 @@ static int gasket_open(struct inode *inode, struct file *filp)
 	inode->i_size = 0;
 
 	dev_dbg(gasket_dev->dev,
-		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, "
-		"fmode_write: %d is_root: %u)\n",
+		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, fmode_write: %d is_root: %u)\n",
 		current->tgid, task_name, filp->f_mode,
 		(filp->f_mode & FMODE_WRITE), is_root);
 
@@ -1258,8 +1256,7 @@ static int gasket_release(struct inode *inode, struct file *file)
 	mutex_lock(&gasket_dev->mutex);
 
 	dev_dbg(gasket_dev->dev,
-		"Releasing device node. Call origin: tgid %u (%s) "
-		"(f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
+		"Releasing device node. Call origin: tgid %u (%s) (f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
 		current->tgid, task_name, file->f_mode,
 		(file->f_mode & FMODE_WRITE), is_root);
 	dev_dbg(gasket_dev->dev, "Current open count (owning tgid %u): %d\n",
-- 
2.17.1



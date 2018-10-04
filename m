X-GM-THRID: 6608442873786400768
X-Received: by 2002:a7b:c159:: with SMTP id z25-v6mr691044wmi.13.1538648007315;
        Thu, 04 Oct 2018 03:13:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7d06:: with SMTP id y6-v6ls813346wmc.27.gmail; Thu, 04
 Oct 2018 03:13:26 -0700 (PDT)
X-Google-Smtp-Source: ACcGV625fAxlkORGqWUOJ5FxN1ogvRVZ+PCwoiU/fvp58dO3GDPOltpqdNbiWx84t40SbiBfcIhs
X-Received: by 2002:a1c:5715:: with SMTP id l21-v6mr693937wmb.17.1538648006545;
        Thu, 04 Oct 2018 03:13:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1538648006; cv=pass;
        d=google.com; s=arc-20160816;
        b=VvERQzU6fPKcSPRKFJ/1BpozMkoq+BpJx1UJlGkqcBt3c90lycUtTCYo1wsn95eCbx
         8jjPjRFR7N9lD7QTUURRSOeHIHprn+4d07ZNUJ2scr1RnN4MRWFLhFXMnnFNJd/bf6vg
         EASmX8W4lgvEmGxxAYVtrI09T1e8bm3Nd3z49e6qjHyRodPmzdfo7JzaGm+mJ2MbrX7g
         r6eMWZpGUjwFbd39Vs/iT2vIWukaW/drjfMN8N5a2CAlge71+lp+nlp8klcIm5+PwlsD
         lVt9iLVhZFpzlB7LlQsl4wHYQc/f/zZZeA86cArR7qjDx/OJpzXOJ1tlyUKc1No3rTpN
         NwhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=edgNiPjhWGo6ExBDnh61hGgR1CGo7yzwXCCOqpHeD3Y=;
        b=pZxyRHvQWEXvzggPvtFCBZ3t9EoBIy7as7NQCOQQSqj+ZgEh77RRwAH7/tF+sPkCmY
         rvPYLnuSkp54AIq9Tk3cTbUGrhq0eScR6phjh1MCuazzKjHNlwoIbmaNQuz4YhVjD7kH
         bt895ZxF+hRf/tGU8fstgZX2XPf/dJuYiG5iinVacqZEiuQgQ49ur9jLzBrNt8kriv1x
         bu+ZfRP++zZmR2P238xxw+kDTG3b4YAw8LK+c+nxkQtxrfX22Gh3ynxpsKlASgxUgbYj
         pD3axnoXK/Kzjrs0NoUbt9Se0KVP98s+98f20O+4oBZ+x9Hxks5NlBrAtZwATtjZZqig
         EOsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JNhz52ET;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id g20-v6si120704edm.0.2018.10.04.03.13.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 03:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JNhz52ET;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1538648004; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=aulGi4XxrR8nYEhSJTiatpIt/ngtLkiuovhSRv8/VfZEPO0xbTlFhlQtH4UdQTXB1eQ/JAPY8jJAN0eSAkN9khF4ILLJ4m9EnzfJbielD7ie+k9Fxa7pHal1bPkANdkgw1FNzOv9efnxcObhlxQsYW+APWJOOa46y266vLt27ws=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1538648004; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=edgNiPjhWGo6ExBDnh61hGgR1CGo7yzwXCCOqpHeD3Y=; 
	b=ZM2MaM/40WcBFh40HDceR2mdtfDlIL+CozrqaoM0+pyG9bpqyxME8u5jzW0TTxZKM3HDCQ32hr4t4rxZmsY1svgkIw4VmANbc4KFV2eBeY0Arafe3xLH1enhuUOFXTwfVqnLV1eaHu98UeZlt8hFcOMBpz1ekANsqN6GbiTBCk4=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1538648004;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1991; bh=edgNiPjhWGo6ExBDnh61hGgR1CGo7yzwXCCOqpHeD3Y=;
	b=JNhz52ET9IvykALNkpGnzQauLxWYRyPhrr4ABJ1cAYkc3LC23e1pJi2hxi6bKXBV
	mYvKKBGDTyVf5I2NK5IoUzfe699jhIg2OyvfRj4rDAW3z3BgCGrlovFIY7Yokslbqpv
	BuDknSR2195xwADtFJ7fi1YDx1BFhpI4I6DnDIdE=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1538648003592333.523980724284; Thu, 4 Oct 2018 12:13:23 +0200 (CEST)
Date: Thu, 4 Oct 2018 11:13:21 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: axis-fifo: Remove parentheses in axis-fifo.c
Message-ID: <20181004101321.GA11491@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

staging: axis-fifo: remove parentheses in axis-fifo.c

Remove parentheses from the end of line and conform to
the coding style guidelines. Reported by checkpatch.

Add an extra space to the function arguments to fix
indentation.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/axis-fifo/axis-fifo.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index 63c8efd1b8db..76907ac26300 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -364,11 +364,11 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
 		 * if nothing is currently available
 		 */
 		spin_lock_irq(&fifo->read_queue_lock);
-		ret = wait_event_interruptible_lock_irq_timeout(
-			fifo->read_queue,
-			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
-			fifo->read_queue_lock,
-			(read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
+		ret = wait_event_interruptible_lock_irq_timeout
+			(fifo->read_queue,
+			 ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
+			 fifo->read_queue_lock,
+			 (read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
 				MAX_SCHEDULE_TIMEOUT);
 		spin_unlock_irq(&fifo->read_queue_lock);
 
@@ -482,12 +482,12 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 		 * currently enough room in the fifo
 		 */
 		spin_lock_irq(&fifo->write_queue_lock);
-		ret = wait_event_interruptible_lock_irq_timeout(
-			fifo->write_queue,
-			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
+		ret = wait_event_interruptible_lock_irq_timeout
+			(fifo->write_queue,
+			 ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
 				>= words_to_write,
-			fifo->write_queue_lock,
-			(write_timeout >= 0) ? msecs_to_jiffies(write_timeout) :
+			 fifo->write_queue_lock,
+			 (write_timeout >= 0) ? msecs_to_jiffies(write_timeout) :
 				MAX_SCHEDULE_TIMEOUT);
 		spin_unlock_irq(&fifo->write_queue_lock);
 
-- 
2.19.0




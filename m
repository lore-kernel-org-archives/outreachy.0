X-GM-THRID: 6608376647638843392
X-Received: by 2002:aed:3dd5:: with SMTP id j21-v6mr3527137qtf.17.1538632588385;
        Wed, 03 Oct 2018 22:56:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4fcb:: with SMTP id d194-v6ls1315404qkb.8.gmail; Wed, 03
 Oct 2018 22:56:27 -0700 (PDT)
X-Received: by 2002:ae9:c00b:: with SMTP id u11-v6mr3460610qkk.53.1538632587746;
        Wed, 03 Oct 2018 22:56:27 -0700 (PDT)
Received: by 2002:a37:6392:0:0:0:0:0 with SMTP id x140-v6msqkb;
        Wed, 3 Oct 2018 16:24:48 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60pA28HWC4QiBTNQXyT6hSkJEh5wSseNoCRvokdBEy/qIe5n7DPb6bYwzteOjM15JjzoT+A
X-Received: by 2002:adf:8b56:: with SMTP id v22-v6mr433628wra.6.1538609088530;
        Wed, 03 Oct 2018 16:24:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1538609088; cv=pass;
        d=google.com; s=arc-20160816;
        b=EdeurH9PS46H4io5N1LamH8eMsMPhY+ynhGJlSEjPgE/zv0VQHC32C5GRK6BeBBGG7
         xAVlmqat8Oy5Mp5zQit/v2yUqhdR2YRFTQA+1fNIuX+7Uf/QGdwxY9cAmLIUXfjXn7iZ
         wWWmTCXiMDGF+KLE3azii498OIi2m2stmIBbt7Uf43uy5+7PImHe3QnDXxrVSzGhNDSM
         K407iQSVloQY3yE7Oae9ha/moRWcKvOM42doNliDq51k9YXrfKs4Dg1JGNvw1GmlGBgj
         Ad9a6bVdCpcMESkydzg7wCTtWnioUkq7zqq43eeDS934O4H+/olK40UqRbXHBj2dZYWS
         51hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CvJ1k4oqZRqlqlD5/9DmhwTFbOpNtF3Oc7RgdZFLaW0=;
        b=nzre4zkrP/3u21LTS3R2yqky0E1Zy4izb+YuzfYh31u2m2Wbs4BXNImeAZnWke9Fwn
         KqvwoprO1wwnh3ox2aArNU3yb6NQnpEyaZ6anvYMyUk1DpebkPShniL5O5+C3WnA2Sc8
         f1W9Bhi2RsmwHL40EDzli+OjezHw3vHhPa2MpIbO2FHXWP/koYd4N1M6vXZf2PLiM+Jg
         Bw/TcYCD/hCr1DsPHpnMG4+g+YcuwUM0M2RY2fmirXsjfOJFbTr86pQb8PDY7vcJ6YV8
         FKtguCMsAsmBJWPIPYH0Pe726zQEPsBzy8sMJ79rc6wM01W1EjsR1UrGeqpNBwiVbdqU
         dhMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=VOvIcmcV;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id 191-v6si32020wmv.0.2018.10.03.16.24.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Oct 2018 16:24:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=VOvIcmcV;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1538609080; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=AJ9q8VlFqJbbKO3hRvpgQTZiQEP/5jwz/I9uB6F3wyx7HvkoMFJxCad0mASTeAUeLB731EmwtjLJQoJDCVv3nu5iKZTvaKD4ZqN33hMJLq2NsRD38ekgBcsLNRZRK/90RBZh+S9R75w0PaoFEGMSr+pFD0R1ebLpoOCFfm3rUsg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1538609080; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=CvJ1k4oqZRqlqlD5/9DmhwTFbOpNtF3Oc7RgdZFLaW0=; 
	b=FJ14s2pyPTrRHGT3a0b2Te6ZaWAP7Kg/PX2U64lg0pf6A6DnMSOWmrBQNbf8b1prZekW7IgUQauOvl6YyFF+sr9rBYcTB80NpxW3zXnAKKjQMe4T7KrIz0R6y5Fl1OqHtTDssDFK9wVKtOyC3v8YjAqhMvP9hJBz8usUMUi5AKY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1538609080;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1471; bh=CvJ1k4oqZRqlqlD5/9DmhwTFbOpNtF3Oc7RgdZFLaW0=;
	b=VOvIcmcVMsXSNgQTa4Ix9OWmzMfCQwngzu0eZEdiKfYHa3xk/ptfO1D53Uocdz1C
	AkE1zm6osmbhMTHxhIQlgz++Ym5pAHAc/UMwI7uz6f3Mo/v9N03tvfN6TUOqOOYuOli
	Zsuqa5mkPvRuqG+r6QMLPRgiNtLhchKmUaLiJfgY=
Received: from kvasir.local (90.255.40.59 [90.255.40.59]) by mx.zoho.eu
	with SMTPS id 1538609078208982.2229660993239; Thu, 4 Oct 2018 01:24:38 +0200 (CEST)
Date: Thu, 4 Oct 2018 00:24:36 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Cc: manasi.d.navare@intel.com, mikelley@microsoft.com,
	alexander.levin@microsoft.com
Subject: [PATCH] staging: axis-fifo: Remove parentheses after EOL
Message-ID: <20181003232436.GA29874@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

staging: axis-fifo: Remove parentheses after EOL

According to the script checkpatch.pl and following the Linux
Kernel Coding Standards, I remove the parentheses from the EOL
and move them to a new line.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/axis-fifo/axis-fifo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index 63c8efd1b8db..f869adf0d0a2 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -364,8 +364,8 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
 		 * if nothing is currently available
 		 */
 		spin_lock_irq(&fifo->read_queue_lock);
-		ret = wait_event_interruptible_lock_irq_timeout(
-			fifo->read_queue,
+		ret = wait_event_interruptible_lock_irq_timeout
+			(fifo->read_queue,
 			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
 			fifo->read_queue_lock,
 			(read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
@@ -482,8 +482,8 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 		 * currently enough room in the fifo
 		 */
 		spin_lock_irq(&fifo->write_queue_lock);
-		ret = wait_event_interruptible_lock_irq_timeout(
-			fifo->write_queue,
+		ret = wait_event_interruptible_lock_irq_timeout
+			(fifo->write_queue,
 			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
 				>= words_to_write,
 			fifo->write_queue_lock,
-- 
2.19.0



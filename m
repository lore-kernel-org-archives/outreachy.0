X-GM-THRID: 6619404937628483584
X-Received: by 2002:a1c:814d:: with SMTP id c74-v6mr14708wmd.19.1541200312461;
        Fri, 02 Nov 2018 16:11:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:cc1a:: with SMTP id h26-v6ls630752wmb.18.gmail; Fri, 02
 Nov 2018 16:11:51 -0700 (PDT)
X-Google-Smtp-Source: AJdET5e+mYM6WTmYsmodcnH9LMigxPr3zFaZRpA0fXg+k9OwFqjobOaTDGz4lpETtqC4mRXgUpJP
X-Received: by 2002:a1c:f308:: with SMTP id q8-v6mr16791wmq.0.1541200311367;
        Fri, 02 Nov 2018 16:11:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541200311; cv=pass;
        d=google.com; s=arc-20160816;
        b=snNc9gEWt07IUhlhYZsWhOhIezZd/PNnS/Y8qZLATgxfEJiwmoOx68Ey0BtkAS62XW
         3WLTscq5OkHEup9PKoEc/tBpPs01fiFxEt+5UcPSIuFrscSvAkhZF2yntExvbhVkrOCJ
         tnKwHPSI42a+RR0jDpnNvkEKENDi5NSVnfWfF1+QpfbL2E5a+CN5H/fsZD3Vxwdz8MEt
         XJJQgoeGbu6z207YvKyMJlRpkYEItVpTMAQ79GaJXa2scT5DA+N846RZZ2gd+YcQ7BUP
         g+Srty2Vwx+2SIoijaX5qNo+3W2wXa0/57xPLYN+kuBdpLBTScm51LX9OH7e6wQKxdfN
         V/pg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=gR4Rnyp8okiMtxwxUcYpIdtoxtwbjlsvct8KXxWRK5U=;
        b=N8n5c62pdSMQGIRS5Y/WJmZPxar1kuG4f4J6CF8rPkDR4jSEUCcxMqiiVbRRkNJHW7
         gUjktN9uG/jqKn+oDS7TqSP1jwK4TzPjxIvYgVzLjtwu2pew/xGnbn20H3Bd19/k6Jc5
         UyhrVQ5UYuyD/iGvDjqe8Ts2CWPIJLtVWsqda/qBhofT0m5ntuB48w8MVNUfM0br9fDU
         aYsLSDvggbzgmtEiuwRdBCrchlHV7wNSzXVWFi8OHw8OyDjqCWODXcW34f5H2ot5ifll
         YwaIMq9sBGsEEea2sV9okbQXKdvDbvs2iiaLHYcRuSPWvmwUl7p1/RTfl8MNM2SBYjn5
         CHKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=flaqCDum;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z139-v6si552403wmc.0.2018.11.02.16.11.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 16:11:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=flaqCDum;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541200307; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=OwLE3Il+RCqiDIs1qutDC19aDMa8XVCb5+NWab6qUfD/2RRE35CSB+ubJiy2my3XbZxqwliXrj1TV+mGmFZ5/xorYLJIZ7uRNpsutxuYN8DTjC5qUojlrvpFmXrRjSLBbYuhvzXWQ3iWt/JglmhLzAUtK+OE0NPh9YC3QhKnfFw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541200307; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=gR4Rnyp8okiMtxwxUcYpIdtoxtwbjlsvct8KXxWRK5U=; 
	b=H87b4sAsbgUaLmr5OvhiBD3R6N+UxQjuSc575eghyl0UAUsh2+t2RNQDOZ2rPn8TyglJbEzLVLvbbGBt7mRzOBNtaSBdNdQbVIRqpYWMxLTSOQAV+50qoAAXaZd3zRXXtepqhZNRXXeGuYvjPXJEwN/oP1QSsXbc6CASXQNPcFw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541200307;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=642; bh=gR4Rnyp8okiMtxwxUcYpIdtoxtwbjlsvct8KXxWRK5U=;
	b=flaqCDumgc9h6GFvE3rxm9ZI91+b+GnerpkkT8kd67cEuUWrqRze958yCXvZ8yEA
	UW7vrxy35NUHyc5epEx1dPKtwwjWk/gp07I7eo9xjiBAuEWg7I2h2pUDLpNlVZpPYdP
	zSE2qTOhEoN6H7buNfqKMcxDnmD3W49baJIDos0U=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 154120030576366.3051862584224; Sat, 3 Nov 2018 00:11:45 +0100 (CET)
Date: Fri, 2 Nov 2018 23:11:44 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: greybus Insert empty line after struct
Message-ID: <20181102231144.GA27291@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Insert empty line after struct definition
Reported by checkpatch

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/bundle.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index ffcfd43802cc..a69200c786d0 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -31,6 +31,7 @@ struct gb_bundle {
 
 	struct list_head	links;	/* interface->bundles */
 };
+
 #define to_gb_bundle(d) container_of(d, struct gb_bundle, dev)
 
 /* Greybus "private" definitions" */
-- 
2.19.1


-- 
ta
ioannis



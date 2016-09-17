X-GM-THRID: 6331261772589170688
X-Received: by 10.66.155.162 with SMTP id vx2mr1486847pab.133.1474119049834;
        Sat, 17 Sep 2016 06:30:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.125.16 with SMTP id b16ls1789890itc.21.gmail; Sat, 17 Sep
 2016 06:30:48 -0700 (PDT)
X-Received: by 10.66.158.230 with SMTP id wx6mr1408660pab.74.1474119048016;
        Sat, 17 Sep 2016 06:30:48 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id si10si3942404pab.1.2016.09.17.06.30.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 06:30:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id oz2so4654232pac.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 06:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=58reJTcQBzV61oucoInkiCU5WuNbXmQIb1gqrscEY7o=;
        b=ngIFJ1uVZYRdyOvmgP8kF+6aJOtLnARRduKmi2V3QgU0Ft+FACPM4an6JuBhmH0dKF
         PzrEQR6KX8HKzmuG2ZC6ZV7/fVIhYwP/Rw11G6Ri1MNz4iNd20OKW4Q+lihg372Eo3/B
         tcklpnbpX5kCvDcXqAmGb+QEZcBY22nWZtiInTr0zoOfhuR5M98kqsHudOoapAaH/5+6
         D1Btu8+j4CphPJqB2F6cnNJw2yIigwgWgsGzBjoGkRtSlU0BlCXF05M5+Eq/7SpDsW56
         esuXItGnZqPZ01kweF2EVanWR+xFCI05s0jLpVvDCmTV+TOmI93rxhS9wp8tbj3eoP6g
         HL1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=58reJTcQBzV61oucoInkiCU5WuNbXmQIb1gqrscEY7o=;
        b=Q35cioUXweSreGjKhsd5WrPQs4d6yGbw12u49k71UufWBD87r7SqKbZOzmh9SeMvr2
         pvLLYDdMNq6ncfKuSiMPZgqizwxeqPhWkV8tYiZnToEBw9ikNPC5R34y3zwhh5J3BrkI
         HXLX3tj6CFSPyjo/2ojHAMCMpIdbWJWtZCf+MW5KRP0DLWsX+twYaD3hJexzcsK7GNyy
         pb0IJjvNH3LOitkxQ84DO0wV73tZfaKlpB9ThxNC9qgiRNgDk41LbrwYB61XjhiblCgp
         7tp3D2PIkcquUMrdtggbGPnocDD9qfXIuame7CQ69c4Xo9AcKYUYZ+5CoktRSVqR9KJE
         N//g==
X-Gm-Message-State: AE9vXwOiXpNrrJIbP7bBIyr94yiYH4mEvfn5nDnboRfVxUzrVeO29LfCowsxMTJl6xkMhQ==
X-Received: by 10.66.131.4 with SMTP id oi4mr31454770pab.66.1474119047633;
        Sat, 17 Sep 2016 06:30:47 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id 138sm35254285pfx.41.2016.09.17.06.30.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 06:30:47 -0700 (PDT)
Date: Sat, 17 Sep 2016 08:00:30 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3] Staging: i4l: Remove NULL comparison.
Message-ID: <20160917023030.GA15067@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This patch removes the explicit NULL comparison. This issue was found by
checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
* Correcting commit message
 drivers/staging/i4l/act2000/act2000_isa.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index c800da8..808bb3b 100755
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -166,7 +166,7 @@ act2000_isa_config_port(act2000_card *card, unsigned short portbase)
 		release_region(card->port, ISA_REGION);
 		card->flags &= ~ACT2000_FLAGS_PVALID;
 	}
-	if (request_region(portbase, ACT2000_PORTLEN, card->regname) == NULL)
+	if (!request_region(portbase, ACT2000_PORTLEN, card->regname))
 		return -EBUSY;
 	else {
 		card->port = portbase;
@@ -244,7 +244,7 @@ act2000_isa_receive(act2000_card *card)
 				if (valid) {
 					card->idat.isa.rcvlen = ((actcapi_msghdr *)&card->idat.isa.rcvhdr)->len;
 					card->idat.isa.rcvskb = dev_alloc_skb(card->idat.isa.rcvlen);
-					if (card->idat.isa.rcvskb == NULL) {
+					if (!card->idat.isa.rcvskb) {
 						card->idat.isa.rcvignore = 1;
 						printk(KERN_WARNING
 						       "act2000_isa_receive: no memory\n");
-- 
1.7.1



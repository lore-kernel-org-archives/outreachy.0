X-GM-THRID: 6331261772589170688
X-Received: by 10.237.59.75 with SMTP id q11mr1329825qte.79.1474111753254;
        Sat, 17 Sep 2016 04:29:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls7680583ota.23.gmail; Sat, 17 Sep
 2016 04:29:12 -0700 (PDT)
X-Received: by 10.200.47.5 with SMTP id j5mr1310659qta.59.1474111752887;
        Sat, 17 Sep 2016 04:29:12 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h124si5040853pfe.0.2016.09.17.04.29.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:29:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 6so1811896pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=velducOpTyfulBaU5iFSk6CuX7kaV2ws3KMqO3c1jGQ=;
        b=qE3bFF3pSKCLZh3OOM5wRhBzlzlZ0tsKNqEOvzUG6Qr3WRmPUebfnlQNqoVr2p/Alp
         UvKJn+YTFb/rJNBebyiRTbQTj4jYZRhMqkxkJdUOYFpYX9ToSBxJzH1BudCh0rRdXSl2
         PsnD9AjAgePQOR4IENXnan4ZvlbC50CH58RwUpJk+vLV2tDABnfvR3YbRExEKezorX7+
         VfeS+PgEls1901zOjBjoeAAIdtrnncPxSXfwvdCb7iaMQ/6gN4a2vMhZqMK94SEQG+UP
         3A542LJjd2mm/fifzRm+kUt9k2AE2Q4XZCcOIg86StdVefrXJUZu9lgR2JmxG1u2mQZC
         DMSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=velducOpTyfulBaU5iFSk6CuX7kaV2ws3KMqO3c1jGQ=;
        b=HB8TCa4ekZroN99HpPQ5JJ1vEwDIEWr2wClfwS4f0TWZQ2P9Q8iX+ZbMlCBrEzzAbC
         9G7UQDeDUxfJAIVhuz8u8RXltRRn1ZpEbce3lDPVpISfFSs3b9xsUhEL9aAzK/Bmye/l
         ffN0f/hDNH7VBd5EvE+jYZBTJoNCP0TdQglNvEA+OuDqkQatg23UVw3syJ0H6fRUixKB
         hnDAwLujAhSNxRfi0DF/Rp0uQEtHXmkxXNeVS7Ah4rubSauZiFLemqVF/CAe4EgCd906
         +KqBBIASXGu5WWGLHbQvvhmX2CoyISC8v29Znw9KjrCq7utbh02soCN1Fv3OOtQxysx5
         5c8w==
X-Gm-Message-State: AE9vXwMm/Tu8gO7p41VWrqa+bvbSXCbZzpG3c8giXDB4UtrYXM0Jfxch56DZMvays8w0zw==
X-Received: by 10.98.155.154 with SMTP id e26mr30604845pfk.68.1474111752506;
        Sat, 17 Sep 2016 04:29:12 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id yu7sm18570892pab.45.2016.09.17.04.29.10
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 04:29:11 -0700 (PDT)
Date: Sat, 17 Sep 2016 05:58:53 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: i4l: Remove NULL comparison.
Message-ID: <20160917002853.GA14373@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove NULL comparison with ! operator.
This patch removes the explicit NULL comparison.
This issue was found by checkpatch.pl script.


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
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



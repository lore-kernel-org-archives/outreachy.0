X-GM-THRID: 6331261772589170688
X-Received: by 10.157.2.104 with SMTP id 95mr2709736otb.133.1474195664774;
        Sun, 18 Sep 2016 03:47:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls8601590ota.17.gmail; Sun, 18 Sep
 2016 03:47:44 -0700 (PDT)
X-Received: by 10.157.56.142 with SMTP id p14mr12961022otc.4.1474195664529;
        Sun, 18 Sep 2016 03:47:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si5570494pfe.0.2016.09.18.03.47.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 03:47:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so5555502pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 03:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MI5HiP9/D+j+cey0kRj9tb7mdThosPZLLBt/9K3Lhzw=;
        b=xZMlbDWAVkGppRpBcWlVySagfoyvbD5r+AECQuFIx0HjYtb9Bi3a5MDeqSHnVr0zMx
         /daS1SuIDAKAa+/s7H2ODfg/p2Zt5Hcag0+XANtGII6PX9dypf0t+RYtOdLJ2JUmk805
         v3O2a83ksip3T567j8u/GyaldHQiw8rVYKCoH2DytQB6YJdEONBJo4F2L42uLreVEjwP
         kMRwaMdGCUe4wEtGyJk1fPwrTdF85pHrQy52W9aU6LLb8mQ8dHk/DkYn1rBRL/1Fzu6A
         dBhJc3LmcoK/XBvvZERheObuPo2l1lZSREnzbalE75TZx/DoQm5w0e+F4gD+2/kZOjr3
         rMsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MI5HiP9/D+j+cey0kRj9tb7mdThosPZLLBt/9K3Lhzw=;
        b=ewedNpYpOfDXvkqxXTGM8kUUKPunDC8ro8qmQOBYZ0TUf+YwQrMKW5h4Nk0FfhhmCQ
         zpDlfxxMVywDmDddOjALv/mGGo3rHvU+BHOpMSfYhX9WHpMcwIcTXjKkemuhKJdtFAyl
         1SiTRMjGbty0C6NCx2C0c2pPEDGVIkfrU+KCfwMGp9m1pVTasKaVHMjf3ACZeDyEPYDY
         3/Dx5/pa+1z3iyVY8PmJhZTDmTX4Z80udIUAMVsXtYlcRD5yQVbT7L7hlOkqsfEESjaZ
         ab3Mr+Onu++F1lkBUixgco7SbLV0066EOapEfS8XQznCkZqXt1duEhbbKqKQ6ch/XP1C
         M3hg==
X-Gm-Message-State: AE9vXwPuWBh3Fi+i5j/T20QaQp6bYbJTMExI+4GUTCobCp45I2zdrhHdhXq5LUqL/ev3/w==
X-Received: by 10.66.145.73 with SMTP id ss9mr38071520pab.82.1474195664108;
        Sun, 18 Sep 2016 03:47:44 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id yu7sm23872902pab.45.2016.09.18.03.47.42
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 03:47:43 -0700 (PDT)
Date: Sun, 18 Sep 2016 05:16:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v4] Staging: i4l: Remove NULL comparison.
Message-ID: <20160917234644.GA24691@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This patch removes the explicit NULL comparison. This issue was found by
checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v4:
* Correcting the file permission isuue.
 drivers/staging/i4l/act2000/act2000_isa.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index c800da8..808bb3b 100644
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



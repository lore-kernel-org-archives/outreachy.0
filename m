X-GM-THRID: 6332110016814776320
X-Received: by 10.98.89.156 with SMTP id k28mr4414710pfj.31.1474309439735;
        Mon, 19 Sep 2016 11:23:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.1 with SMTP id 1ls166159otb.4.gmail; Mon, 19 Sep 2016
 11:23:59 -0700 (PDT)
X-Received: by 10.157.11.33 with SMTP id a30mr89843ota.136.1474309439221;
        Mon, 19 Sep 2016 11:23:59 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si5091001pab.2.2016.09.19.11.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so7290928pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 11:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2o9dLHuYGxaPCuZE4S5RNpXjWXFoeGxKvln8NroA0Mw=;
        b=rgw3Ul16dUi8ZoJjyaX69cySG/ai+QIeQ8BRKhv1mis1dm3rGwQVDEMEZsfpUY4xU+
         t2NeLTeOpLOBJdRDK6vkmjgh3R51IhTgM0Dm86T6z8upPO44GJ4xn7Jp5mY2mdt1Ylw3
         2+ENUn7Eq4BFKFbcwQl7nBgHmrRiA7Sl7yE3j0bTxF9LmfOvX2xRmnZR4y7+ECKMIyaw
         saY5wGXSHLNhxvNa+psm5jp3pEtZomR5pTDpkS5TOQHu1BghaJaiJNtd1ZozANYaVcRU
         QcMx9N84kDOzUPAM7dmnR6SWwL7hQ9GqC+LGkOzFCNxFYofMbBhlZPgNVqVngxXpgCIn
         dfhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2o9dLHuYGxaPCuZE4S5RNpXjWXFoeGxKvln8NroA0Mw=;
        b=HLKMs3kTm7d8t2/tXcxTq2CUmPL/g3Si2IrXlkEuya3Yl7vIAROMfHRsF+/Z5Xul9C
         6ZSo9h0EpNGf3qgaijmi90SfXHMr8L44v4nE0kGDQicjVk6ppVs9QxTCuEtTsgsRIKIO
         y64UuE5JjenI8OUh5Sz+THUMmYS5seVdxJT1eU5m4InFD3tmt+8rRJf4UXO5vkCpMtdT
         g4N4C0bEkmv9Eb5s6P/voM14hb32jcuX6r18i00Y5zQ8IbPcPXdzG70T6IfNjYWUWHJ9
         //eLtoG2qqAF4xCdtOnPv5XtIjPRpVOUJdbK3SDFmOof8aNkYOfn1MXI05pcm8quyPyd
         nV0g==
X-Gm-Message-State: AE9vXwMUeKXcAEjNrt6jw+v5U24V//X7HafDv/018f2lWtPLzOvjGEUic27LKPwy8fDLEA==
X-Received: by 10.66.243.80 with SMTP id ww16mr49486119pac.19.1474309438846;
        Mon, 19 Sep 2016 11:23:58 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.174.13])
        by smtp.gmail.com with ESMTPSA id s7sm73222066pfk.11.2016.09.19.11.23.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 11:23:58 -0700 (PDT)
Date: Mon, 19 Sep 2016 23:53:45 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: i4l: act2000: Replace explicit NULL comparison
 with ! operator
Message-ID: <8ec9978e9851f2e56304e36f68919fce4a460f77.1474308584.git.karniksayli1995@gmail.com>
References: <cover.1474308584.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474308584.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replaces the explicit NULL comparisons with ! operator.
Done using Coccinelle:

@disable is_null@
expression e;
@@
- e == NULL
+ !e

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/i4l/act2000/act2000_isa.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index 4114e17..ed61623 100644
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -165,7 +165,7 @@ act2000_isa_config_port(act2000_card *card, unsigned short portbase)
 		release_region(card->port, ISA_REGION);
 		card->flags &= ~ACT2000_FLAGS_PVALID;
 	}
-	if (request_region(portbase, ACT2000_PORTLEN, card->regname) == NULL)
+	if (!request_region(portbase, ACT2000_PORTLEN, card->regname))
 		return -EBUSY;
 	else {
 		card->port = portbase;
@@ -243,7 +243,7 @@ act2000_isa_receive(act2000_card *card)
 				if (valid) {
 					card->idat.isa.rcvlen = ((actcapi_msghdr *)&card->idat.isa.rcvhdr)->len;
 					card->idat.isa.rcvskb = dev_alloc_skb(card->idat.isa.rcvlen);
-					if (card->idat.isa.rcvskb == NULL) {
+					if (!card->idat.isa.rcvskb) {
 						card->idat.isa.rcvignore = 1;
 						netdev_warn(dev,
 						       "act2000_isa_receive: no memory\n");
-- 
2.7.4



X-GM-THRID: 6659803762561908736
X-Received: by 2002:ac8:16c8:: with SMTP id y8mr18274966qtk.26.1550639126546;
        Tue, 19 Feb 2019 21:05:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6394:: with SMTP id x142ls4905622qkb.7.gmail; Tue, 19
 Feb 2019 21:05:26 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibd4M8ADntG0QQPozcEczHFc4Ldex2rLVzzKtKGdE3PwaVTNf6AcRoCnN6eewxQM86neW2L
X-Received: by 2002:a37:5b83:: with SMTP id p125mr18548524qkb.57.1550639126048;
        Tue, 19 Feb 2019 21:05:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550639126; cv=none;
        d=google.com; s=arc-20160816;
        b=EM8vqOi7nV4ewOM6q3kPg7xf+rmvmnlwPkoF0Jhhbos4YeG2EmHfF100cAlWpLuF2Y
         HfC/OGgDsSGpgcv1WUAVq/0D65eN2nIT+fvh5CKhDyZJP4a8G0z6zNthe8bAvh3mnud8
         Dt7haGmpdxhXASHIk6Gl3N99R29pUKTVi3lZ7fIg92cjMX2W/aX/xZX3nUu+ERNQK6Sh
         QNyBsOwc3MhisyV2XscdmqywWsVbksXf1OwuFx6cNkraVIa5qQy5mzoz9YGowAmFJiW3
         rvICuf+SOvsVORgWD07tZWTQzqVxawNePqjWoXr/s1QMAorFMpz1xW5FEMlNiB5kRDtM
         f2sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FfaVa1+x3sM3H0WYzRvYDrIFO0mqKtVbF6I+5yxYpxI=;
        b=mYZlszYGUpZPnP/Yi1ctLkeKs3AP/nHbG/3C1TFUWnSJig3R4R/nDBdlQiHQxOzWoO
         h4KZNr08uE9fogAYXRXW2sNfEPGOza+RvnaSFMD8v5JBawlEy5AUMiRQRNB716w8JXH9
         POUIX/kz1erv34MlTHR5OPRCAVrfCma7oeR4xa/S9xZV4CJDK3tR+iYVcGDaXLHhxUy6
         TIvcatrOZeDDT+gIxG/AFIWqyiRrMPMujyiRifTTx+NCjnWYddBmqitrv5hP/pXh+QdS
         +qdkowsXnC4MzeZqslH5dWVyhdZRZB0NWzxrRJuIcOkH2C3ZfAsKzqs9ZO1jxum34Auc
         mdnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hdgy1LHH;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o7si839998qte.3.2019.02.19.21.05.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 21:05:26 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hdgy1LHH;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id i20so885833pfo.6
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 21:05:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=FfaVa1+x3sM3H0WYzRvYDrIFO0mqKtVbF6I+5yxYpxI=;
        b=hdgy1LHHoz7XhCY8P6RfOA9N37u6lTRBrjkI8/dcxc5CAg/BA+rVIfT0PFZ0TkgAfE
         4Kh7Bs4l82V1/i+3O8Ex5cVlxSmNMpogmi28MlP0b9WD2+kLp/oDxshxHhcrHWJ6jFoo
         DGr4ChZGdv4bqAWGhaf7DLhnWZb9n4a7NzWazm4uZdW8/7rPReWFoqQKoso2KKPfg28P
         c5/H0HjJXkAQCHpYEY2bvcmFVTR4s2K2vQicHUWjKaSxAfChc6je1MhE9aZVrWveREYl
         0oje+1Cctt6M/jbOP+PzLdq6+CLHEbCbV3wV8a/T55DC7xAndtwwDeF4hV14m9nEXBuS
         IllQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=FfaVa1+x3sM3H0WYzRvYDrIFO0mqKtVbF6I+5yxYpxI=;
        b=jnQ0srqP9Kqa5c4TjEcFblNJSUO9zOgCSREriKNU7xboxtkKJgGmOyW2oToZSUfmY6
         yuyTnWmiGHtheKFzd1E2d3VajUErKl3FdiuLfOCdsnyPxlgh9NQV3+bk00S+SUczLWML
         kGbViD5RiAajFnmHlYK6/OR6Q8zn3q/2EqpJAasN0sVQWR5jqoZEAKfmiQEGH/GzCxY0
         qAqJHF3ecKDTP5ENCV2wnYemFfusSNgO4675fMJ9fZAZ/K2FoIBgO5jAhmg9Y4EOfEWA
         ZkfmQDNgXA9eBxI1GnwStFXtS7uozQz+t1SmBkDWuNJ4842++2PyGgcELGClqq5YqUkf
         I4UA==
X-Gm-Message-State: AHQUAuYVROnRCYnEE2VS3rH6W6TDIFywtB7eNF/k0VlApLbKqEcafuB3
	XOyt4TEXY5v5DqZlvXGCEEo=
X-Received: by 2002:a62:68c5:: with SMTP id d188mr33768059pfc.194.1550639125169;
        Tue, 19 Feb 2019 21:05:25 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id n75sm37737946pfb.39.2019.02.19.21.05.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 21:05:24 -0800 (PST)
Date: Wed, 20 Feb 2019 10:35:22 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] Staging: rts5208: Fix Macro argument reuse
Message-ID: <20190220050522.GA19976@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fixes Macro argument reuse issue
typeof is used to avoid possible side effects
Issue found with checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rts5208/xd.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index 98c00f268e56..5e9b3805c33a 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -99,11 +99,12 @@
 #define	XD_RW_ADDR			0x01
 #define	XD_ERASE_ADDR			0x02
 
-#define	XD_PAGE_512(xd_card)		\
+#define	XD_PAGE_512(_card)		\
+(typeof(_card) (card) = (_card);	\
 do {					\
-	(xd_card)->block_shift = 5;	\
-	(xd_card)->page_off = 0x1F;	\
-} while (0)
+	(card)->block_shift = 5;	\
+	(card)->page_off = 0x1F;	\
+} while (0))
 
 #define	XD_SET_BAD_NEWBLK(xd_card)	((xd_card)->multi_flag |= 0x01)
 #define	XD_CLR_BAD_NEWBLK(xd_card)	((xd_card)->multi_flag &= ~0x01)
-- 
2.17.1



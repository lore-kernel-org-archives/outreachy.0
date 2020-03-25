X-GM-THRID: 6808044843867045888
X-Received: by 2002:a25:7c2:: with SMTP id 185mr3534056ybh.521.1585121487919;
        Wed, 25 Mar 2020 00:31:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ed04:: with SMTP id k4ls488019ybh.4.gmail; Wed, 25 Mar
 2020 00:31:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtFzg9u7tzcwyrT1Ei1Bt3AoQhJ6uqu3xcmmjhRLReqpiz1pBLgRI+6V0lxZ9A1sSNebMcS
X-Received: by 2002:a25:c683:: with SMTP id k125mr2096523ybf.191.1585121486565;
        Wed, 25 Mar 2020 00:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121486; cv=none;
        d=google.com; s=arc-20160816;
        b=LRMic4aI61HH6msz1wDC6ICF8v5XY9FtN/S7t1BRgTzMViNBN3N36tuPiYl9NvMm3Z
         7qr7O/tzjAPy1RxRMXlrT6c8LKTmGgrjEyD1ewpb/o8Z2Ic9pfpXmZ4gBedlOLJPdLJP
         /Gb26bN8kndHuvP6e5ap3LQ13IWVdhek4uVUPU13FNG+myluQ/ScfzzHyrqS+giQdf4c
         36geTZs8E3v+a032gMgb0m4t5Vi8WuDIbaFt8jd0QwQQQ5NA6TkJDtElq9gp5itT82m7
         ovhPoxgfHNATC1CHIJkiCBtTCjzit2hoUFiYGQJE0OFtpx3nWrWLTDet97GQXagQ4tL1
         S7UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=/+KRU5b7eUy3/Up65Tak35s7Gn/oNkx4hwQDoPuFvV8=;
        b=P9j+XcHe9NPWNJ0o0eo/u0ck6bYKh8JI+VIjQdg5KRbb+hAH3P2M1KRTJ6uCd4tpTg
         te+z7eLjNM5+61CqomynV5M/R8LZ0n01EkIzQv2DUHQBAM7ZD6EYQU7e2w0v7VEm6bdC
         xZGW07yY0Y6fH2OKmYOguxdL1ew+/eybfRui6/lr3wIsJcBbj9F1GZzxKrEpC7S8uIAm
         nzgjchVkuGLDD3hXT4Q++zvSywrHwiyOaw7f6KwzkJtJOLELB3SVBH2XN17XbUFrrZRS
         f/bdSM+F0QuGkL1NRm9qJlCcVKjlLzJXqEjsOmDyQv1XpmoUQ6PUSMuieJV80hlSK8Hs
         OnAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZucZLNiW;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x13si1644781ybs.4.2020.03.25.00.31.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZucZLNiW;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id z25so634117pfa.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=/+KRU5b7eUy3/Up65Tak35s7Gn/oNkx4hwQDoPuFvV8=;
        b=ZucZLNiWPGrjvavClpOUNnKHb6gl6MIlyOlnSGKHcEv8L0/WN2o4CQ3Va0sWLhmtv0
         RDV23agRlM7ASUJJmpmoO65txqmVrLJGVtOfJ2dgbk3jRon58d6KgGS1ZYxvD0L6QyGV
         qazoE2sQ+fox6tBPi9XD2eDqiLvLpQTPfzi26J+AEyLkoL/tjp2S379dgEr77BXqYmsD
         dHuQoBq0rZCMN6vPxck9xOnPZ3rQUrB7f8dJ8KYPAvZvw0/HMjZiONSHHYwFoP4zBQOt
         y5epmCoI3fBdaR6wGteaxdPZ55C07p5mYA7t2S4kjaSF4K9tIlXrA6/y6mUznpYtLYeM
         f3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=/+KRU5b7eUy3/Up65Tak35s7Gn/oNkx4hwQDoPuFvV8=;
        b=oD6r0kohOXXnEjeyh+MUSQB6LwtYpjQXRxo+/6PPQFtma4VQ3oXRG9dfruqoQ0NAU6
         oTk0/npGCeFLiwLLPFIOt4O2nXKjCAbR1vxJyDJieY0eE/xXsaxs8FFllRz5MJLtoXMT
         KDJud+7YsF8r7j/GJz3k07tSBGv1c832+Lr3zC5CusWJIuZBaPomsZ0lPgiO8pcWGz7f
         +MesOua8i1dtMbhz1MHo74KHSVJDj/rQlKmyWppT3xwUODfd5TjoROPCSr82trG3YBXg
         VC5zL02Byyqb0t6MWeyKr/vQyb547pFLjQ0WEiS8e5O8SSn2MEpNE+ZEA09VRHWD08FH
         dPoA==
X-Gm-Message-State: ANhLgQ16QtGXedX21B7FD2CqIbRmArcMj1UnvrREVA5++MMM30Q3PTeP
	1YkdHAmAjI6iVb2kSaKUhrxCJHVz/6hkqw==
X-Received: by 2002:aa7:9d0a:: with SMTP id k10mr2060601pfp.266.1585121485343;
        Wed, 25 Mar 2020 00:31:25 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id m11sm3896670pjl.18.2020.03.25.00.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 00:31:24 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 5/6] Staging: hp100: Add space after "," in function arguments.
Date: Wed, 25 Mar 2020 12:59:04 +0530
Message-Id: <20200325072905.29066-6-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325072905.29066-1-debsoumyajit100@gmail.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>

Add space after "," in function arguments to improve code readability.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index f76e6b39b12d..bc8bb48956c8 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -1804,7 +1804,7 @@ static void hp100_rx(struct net_device *dev)
 
 			u_char *ptr;
 
-			skb_reserve(skb,2);
+			skb_reserve(skb, 2);
 
 			/* ptr to start of the sk_buff data area */
 			skb_put(skb, pkt_len);
@@ -1812,7 +1812,7 @@ static void hp100_rx(struct net_device *dev)
 
 			/* Now transfer the data from the card into that area */
 			if (lp->mode == 2)
-				memcpy_fromio(ptr, lp->mem_ptr_virt,pkt_len);
+				memcpy_fromio(ptr, lp->mem_ptr_virt, pkt_len);
 			else	/* io mapped */
 				insl(ioaddr + HP100_REG_DATA32, ptr, pkt_len >> 2);
 
-- 
2.17.1



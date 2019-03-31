X-GM-THRID: 6674267883353145344
X-Received: by 2002:a67:dc84:: with SMTP id g4mr5792252vsk.46.1553998934884;
        Sat, 30 Mar 2019 19:22:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:49f3:: with SMTP id f48ls1000667uad.4.gmail; Sat, 30 Mar
 2019 19:22:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVoXYuCu2mjuSswcJZdem2m9/Va+rUBz6LG5lA0JqSnY30abDaGC9CuxR9mOkfp0MUe0tY
X-Received: by 2002:ab0:3141:: with SMTP id e1mr5066431uam.9.1553998934147;
        Sat, 30 Mar 2019 19:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998934; cv=none;
        d=google.com; s=arc-20160816;
        b=jr046XyS5tTr4Tqi38+yeqE9YjtgN7mVhE1qv0sjyg+4GxLp1soECZCau4oOFAQrIJ
         yyT3dD+URIZikDhi2mC2dH9jETUFc7LKdBNRo0Igvb9yD6g45wKqBCfp2r45wJOgUzoX
         oL3tPIZEh3dU8DRZl9iH1+nqtO0uQEafer8GUSevwHDv5JBppv6lRNIislK/cddIq/lS
         5QbPyM78WsQHS2OURQBN2MvERsbjSPAd4EUUr+cNo/jl+sN5BKMSWhZuHBhy5bCxy6YY
         9EImnokAFBV38tSVBjA4sVU4tR0eCdOnoTE3agr1OO73/gJVmmSDuLA/kxDOaoEKZ/bZ
         ul2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=6fqjq6wEXfkjinNRmf6uChBZMlFd5tOQeKVxqL921Ss=;
        b=PoYh/Gjw/JILyBx8Hl4y7xSph5FX8oDY0mabTyygUw5eGVybR0o21vggOZjoveKoA+
         G4Ezcs1OL0c8zLp7Y5rmLesEs9VKglO5ofshhwDoH5ICDBFoEXfbaMYy0KJ82KNF67vF
         bQ6EV9VaHAt2fOBYnJvK4LkcLk6vSqUi/mVoLftyZW8k74bYrIadS4mJwS2zPRjg3e1e
         BZQCuVzq4kPfd2Oxe1RUJRc+k6qtrV/uBbTMPJ+OvcVlMTrQOw6JfHIoojqS6JQJjzZS
         YPyDhWGJDISuA73+2uHskZmzNFB/MWJovVfD3b36gyIbegF4dxUVd2NNL/v/pzVRuH+v
         zsGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uh8LR2FO;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id h13si432284vkf.4.2019.03.30.19.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uh8LR2FO;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb44.google.com with SMTP id e12so943335ybq.2
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6fqjq6wEXfkjinNRmf6uChBZMlFd5tOQeKVxqL921Ss=;
        b=uh8LR2FO5fdxQRisU1s8PH4fMlkIY9gLFv5IoDsxuhDKcrPuzAuZtB2UqEKvz2HMlU
         wSQcfqyh/MAvR1Wmp30UnOI5+9peXJXS9hH35gGAgRMCvyUqE2Bu6rmFf/qb4NhLSsMg
         gITCXQ5yLMeEHEuuvhADqSUgPmSapHtXtr+2vWG2DkYofN1pWd9FxQChJVv1FP5z7k1i
         wMPuURswUw+d8khz2Hv+b27aSpdplQ/fU3MU0Y6ZtRwZSk3oHSVCANZHt635W/O6KNwo
         ylOOvXW27g8R3sIuPFwgMeYQzjbuPTGRq/p7q0Vaxmmm3hMfxmlMIICi8oNmDjP4Y+Ec
         83Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6fqjq6wEXfkjinNRmf6uChBZMlFd5tOQeKVxqL921Ss=;
        b=DEN/xVkmDiHHHG6FKlqKrvGHN7HXzDUuPsjXkxGgYZfwfwtlvzLTLLTfgfPX5NBDBm
         SqC1qoLRfJGHsAes6342V0zH3YE9JY8dbMX6D6zci2TLAv6Yd5IG8oq9F0KsGSWN+X0H
         NIQDXn2Y8qrcjnEjKv8QQswZJD7MoI789TyttNsX16PZjtIYfbsnBHTZWFP5u8RY2f3d
         epemliMm/VQe4pU/n4T1shQDHWKO/NfD6+pYNeH3CVYbwaDDG7S9T/mKHj+rLsQaBkI4
         cY2pRXrDl5SUyPvS4D779MkcP7yY8ng+LPcFVDJGlc8kjOTAm1AnlPGzeksyN4Y1omz3
         cSpg==
X-Gm-Message-State: APjAAAXpUSTU81WlncgVMeKaQwVstK6xAwGWH08bnFsmiQ02Rhh7OpVE
	8Q6jftyYyiBov6OHd/J5+yM=
X-Received: by 2002:a25:b448:: with SMTP id c8mr46665375ybg.269.1553998933685;
        Sat, 30 Mar 2019 19:22:13 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:13 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 2/7] staging: rtl8712: use list_for_each in function _r8712_find_network
Date: Sun, 31 Mar 2019 07:51:50 +0530
Message-Id: <20190331022155.68569-3-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>

Use list_for_each to iterate over list scanned_queue->queue in
function _r8712_find_network() because it is a better
practice to use list macros for list manipulations in kerel.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 9bfceaeaa05e..6912d73e8172 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -141,9 +141,8 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 	spin_lock_irqsave(&scanned_queue->lock, irqL);
 	phead = &scanned_queue->queue;
 	plist = phead->next;
-	while (plist != phead) {
+	list_for_each(plist, phead) {
 		pnetwork = list_entry(plist, struct wlan_network, list);
-		plist = plist->next;
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
 	}
-- 
2.17.1



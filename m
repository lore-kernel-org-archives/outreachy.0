X-GM-THRID: 6670698779080916992
X-Received: by 2002:aca:3409:: with SMTP id b9mr542556oia.29.1553143090064;
        Wed, 20 Mar 2019 21:38:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5dc1:: with SMTP id r184ls69622oib.5.gmail; Wed, 20 Mar
 2019 21:38:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy5bCeVZ+I5E07ZDsrqszSzCESzw9nIoSFKZMdUYqOCKzgXybzTpclCUJ51aE9R1J082RAG
X-Received: by 2002:aca:3409:: with SMTP id b9mr542542oia.29.1553143089166;
        Wed, 20 Mar 2019 21:38:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553143089; cv=none;
        d=google.com; s=arc-20160816;
        b=AhaSnMTECKasT44CnMWZqNqb3rsoF+h27GxkanmqUSFBmOO4t20Cuo73ywqNPUYR0I
         a8JC4j6d6MjPrEx+LB2rDIQTA8jKsj/V7BA/0BVcLwqO9x7r0itsbH4subKbrMKzL/nh
         mIQRv2V2gb3rQmcWdkKoRgJGGHAbIMy8GCFnQsZlgWcUIn4FNz0DenMqj2BOl//Aiahb
         HEkKUHYFei+NDur1zgIHvaJr5hKBFf+lzSk/CStMeHjM1DOm5hPpzvmQbog3KL4PQBYk
         1Oj2UgpZnwhQoa9iUmwyNsUKpRbHJ8QpCoqgObkL9fhjyLkhohyIRNKOVsfUZF5cw4uI
         5wew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=2er+20jsKzYkwX3YD9+K74T9Z3r37JcX9BXX0kAxz84=;
        b=kgDcdnUbjRXUChbNNbA98QFizzIXqDb4wMbqHVgRbK6dlOtvVm4WpvGnMoMpJC5PXR
         fGs4s4rFfiowJ23M3ZC55o1uxvTQXxayhyx3yIICCzqzjoNQaRYPW0UGCKCXD45dGCaA
         3eYTHvj1k2KhACqdPQFDJrcQgMsYVjJ0fNrDL2EUAUkI27v9lPzwjC32d1u8klDG9/wu
         ElTZuIwqE7clsQvX6vTAl3pF7fyWmYcFi+PltucyU3Yxdgig8Ck9qKCSBNAJoRW0zBcU
         lK4AGKg5xd42VaHLhONJ4VoGQWT4wEVZQSSW+qseyAqF905pmToS5rbcL8sOshfzfGch
         QxTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PZ0iXx0h;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d128si194467oia.3.2019.03.20.21.38.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 21:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PZ0iXx0h;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g8so3399268pgf.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 21:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2er+20jsKzYkwX3YD9+K74T9Z3r37JcX9BXX0kAxz84=;
        b=PZ0iXx0hdMqg7D1j220XN7S14UUtSqm8dAK9yCAuETJpqxTi5eKCl87HEkIrSE9/zK
         EFzhtidKm5iTZrLLMeCkVdizBVhLafXqdGj9roDXzeTeJMdQeBkbjGrd4+vZk6lYxoWg
         7vmmonAsdltcxezp6YO+UdHg1oZakk+kvgYNZ7GvURcDSQtPbrwpVgk+QW0XsHOqk3W/
         wKYRBy7J47paVY17xDSjTNdECDL0yguxiyWDfvRxIutDHLOUlHlVd+iRXctfGt1bYvld
         0nI3DSJZQ0i++sTyVoyow+K8ZxCQpZum0mHhaUWw4MO9jExlFtaec8N+W7OsmDqXPNPS
         uaww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2er+20jsKzYkwX3YD9+K74T9Z3r37JcX9BXX0kAxz84=;
        b=GOJbZQlaX3OUnGKsV4Yw+NZA7RBFORRcezKWdRy6P3L/cA+nNPXlQf2bL+8ixVWs5A
         ndGb0fn/zfiRP61/vf7XDQyivvHrVMd4cVOPi6l1CN/HS/CZbfy0QSKTHspTrgq6F3a+
         TvLJCptg7W0g7XNh9KP/d+C6G6z0SkeiqblGoHC73zr3H0buFqNsqXupyWBHoQBxZ3A0
         +Gp28M4beFA56XhBKnF7HmOGhGVpkL6b9wyeb+gdL+HgBhZAUcc4Q37g5+oQkbDjMvY2
         bNCG+Kl9inat5FworBWxW6zzay48nZBhghWKJCKYztxOLawyfML3tTyo7sZ0ASOEEk2F
         JeLw==
X-Gm-Message-State: APjAAAXq05O1Uk5VmMY7PrjrWBX8KEf/hxZvsUnxtTcDkbW9oD7TxYRP
	EwERmk2MONgjaMIOrn3G52uQHuBY
X-Received: by 2002:a63:cd10:: with SMTP id i16mr1529816pgg.90.1553143088204;
        Wed, 20 Mar 2019 21:38:08 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.224.165])
        by smtp.gmail.com with ESMTPSA id v1sm5297676pff.9.2019.03.20.21.38.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Mar 2019 21:38:07 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: emxx_udc: lines should not end with parenthesis
Date: Thu, 21 Mar 2019 10:07:50 +0530
Message-Id: <1553143070-4067-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Adjust code to meet the style of “lines should not end with
parenthesis”.
In file named as drivers/staging/emxx_udc/emxx_udc.c

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index b960a21..743a519 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -459,22 +459,22 @@ static void _nbu2ss_dma_map_single(struct nbu2ss_udc *udc,
 		if (req->unaligned) {
 			req->req.dma = ep->phys_buf;
 		} else {
-			req->req.dma = dma_map_single(
-				udc->gadget.dev.parent,
-				req->req.buf,
-				req->req.length,
-				(direct == USB_DIR_IN)
-				? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+			req->req.dma = dma_map_single(udc->gadget.dev.parent,
+						      req->req.buf,
+						      req->req.length,
+						      (direct == USB_DIR_IN)
+						      ? DMA_TO_DEVICE
+						      : DMA_FROM_DEVICE);
 		}
 		req->mapped = 1;
 	} else {
 		if (!req->unaligned)
-			dma_sync_single_for_device(
-				udc->gadget.dev.parent,
-				req->req.dma,
-				req->req.length,
-				(direct == USB_DIR_IN)
-				? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+			dma_sync_single_for_device(udc->gadget.dev.parent,
+						   req->req.dma,
+						   req->req.length,
+						   (direct == USB_DIR_IN)
+						   ? DMA_TO_DEVICE
+						   : DMA_FROM_DEVICE);
 
 		req->mapped = 0;
 	}
@@ -1414,8 +1414,8 @@ static inline int _nbu2ss_req_feature(struct nbu2ss_udc *udc, bool bset)
 			if (selector == USB_ENDPOINT_HALT) {
 				ep_adrs = wIndex & 0xFF;
 				if (!bset) {
-					_nbu2ss_endpoint_toggle_reset(
-						udc, ep_adrs);
+					_nbu2ss_endpoint_toggle_reset(udc,
+								      ep_adrs);
 				}
 
 				_nbu2ss_set_endpoint_stall(udc, ep_adrs, bset);
@@ -2594,9 +2594,9 @@ static int nbu2ss_ep_queue(struct usb_ep *_ep,
 
 	if (req->unaligned) {
 		if (!ep->virt_buf)
-			ep->virt_buf = dma_alloc_coherent(
-				NULL, PAGE_SIZE,
-				&ep->phys_buf, GFP_ATOMIC | GFP_DMA);
+			ep->virt_buf = dma_alloc_coherent(NULL, PAGE_SIZE,
+							  &ep->phys_buf,
+							  GFP_ATOMIC | GFP_DMA);
 		if (ep->epnum > 0)  {
 			if (ep->direct == USB_DIR_IN)
 				memcpy(ep->virt_buf, req->req.buf,
-- 
2.7.4



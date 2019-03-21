X-GM-THRID: 6670698779080916992
X-Received: by 2002:a62:42c2:: with SMTP id h63mr109498pfd.90.1553168420574;
        Thu, 21 Mar 2019 04:40:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1281:: with SMTP id 1ls2239185pfs.4.gmail; Thu, 21 Mar
 2019 04:40:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxedpIZeX2LBxL9eDBtMzRfSUGgJwSIfYrqTV+z7MZ9YiHTdPZ/UtRGGiAvAQSQ1It4rffC
X-Received: by 2002:a62:2542:: with SMTP id l63mr132847pfl.20.1553168419912;
        Thu, 21 Mar 2019 04:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553168419; cv=none;
        d=google.com; s=arc-20160816;
        b=FlNrHvAJWeEB2Qe0fNjK7cETI4F5fcb9mO7E6dLFoEHyITJ3jnOxust6Y5zKNUJL7M
         u7pmbncDG6RoVA7KeZzee9O6AaaUXvbHhYQDKpdEFayiBxCLNMdzWe6whCcV/RDFEBSC
         9YKUfnR37s7L8p+2a8j8cV7ElO420O2ZsgpwWcaw6u9kcvwrX5/SY+aWvhnuff0VlX7j
         7F8v0EuCRjUm0DJ0X2EqG8txuNStiEioJcTzVEfxuqvPQ7KymBAcXPa8m/pm5iWKErXt
         Gfvs8be8EUBZH78cwh20B2ER5BmbiSpW3c2djFTYiajz87K16exhKwuIeUEePxQ2I6mn
         Q+2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=rHWsTqkcyZ2cL/GEGwVumK/yPCut04SXUVfCmU47QrQ=;
        b=ASkk9tYq+sEwoYTmkqi0UrGqdI5uw60ipL8nl9RnL3pQEnmRbowHU38d0WF7IN67Ty
         XZtd0jgT1KaqYK29bOWNe/qba8WClyYb8HAYdxf4YsenNHSzVc0ZNA4QOmI5+p4AFdKm
         QJMoK84jfqMv4rC8Pry4KSIcVFs9xDYbxeNDbqxF51tlVk/Fyoxqw9l8TDLz6hyIYUjh
         gqzmYlWDC2z69JPdjnyfyMVgRHf10+OLR3PNfSsLMTQbE2TSKS2NPSUbRLDnFctFMSh8
         RAzHRhCzeI/3UrWa9RG4KOFeQOzyrqjUfdcIQ5nYVa+xnWCSBRbSrH4F0LT46aluxLSk
         nmZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XR2YAQIv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id k70si252500pfc.0.2019.03.21.04.40.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 04:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XR2YAQIv;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 8so4129019pfr.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 04:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rHWsTqkcyZ2cL/GEGwVumK/yPCut04SXUVfCmU47QrQ=;
        b=XR2YAQIvPXYb1fFU2+0Vd0wdd4bb2cl3LtfM/zebNe9cDM9PBKungc57YWgi/BnpuI
         0MZ4rOPDx7GfMVIs8ZnZU/UCVVyMzeb5/9v1g2Zjdx4K4fA/dBn2NwTCLLyLaXoUB2IY
         tmENG5T3EZdHcR7738M2Bik5KJC6BvBU2LwfX8OlRORQ3JF5lxrQymSmBBnxHo1qFKfv
         I+KQF4xHcFZwOTHoZd6UZJItx/gOztB16neUweGOZ3AQEmmdLwF8PnS7MwO9N3sYD5up
         qTeC1y3AEh3JLnNvDwqlfCb3tLAd+JPLKPsGupfUPQMjml53rUHYGFc4dSeLI1eDel+p
         K42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rHWsTqkcyZ2cL/GEGwVumK/yPCut04SXUVfCmU47QrQ=;
        b=XYiRZIsJfS7hnUHCK40ygqbdl2mLI6sGnxopFNrOnZK3n8HnplY2Ya+cK/3GdfRl+q
         PFwoBnUNPTqEOe2sgXjpVU6GXLBI64Dh+X//z6LLiu4DBzGU67GDIFfK8X71GTeQ5S7b
         On7AUFYPykkGt188GkZq8q4zS68/P0c3UDdLY9z9sdXMMyoneEQ0c/i+k7DMivGxUkBY
         NWP3KlEgawrPfxZ+20roC00Mn5N1e0jzV4VpLlXqKQ9+FDPS7yIsq2c34K4YaJ5id0bn
         UmvSj3QeEX+EiyIK9PzmtX6oLkxDPUMn6z9wc4bRsFl+newmZVn//1Gbw0VzXpI9QlWq
         Gv/w==
X-Gm-Message-State: APjAAAWfOFsX+AKHfgzG2RBziGnFv205156cG3m1d56FI63JqReb7H21
	EUMIEug96WISEDrA011CdZCKAPuT
X-Received: by 2002:a62:7042:: with SMTP id l63mr2800484pfc.1.1553168419375;
        Thu, 21 Mar 2019 04:40:19 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id n65sm14563926pfb.160.2019.03.21.04.40.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 04:40:18 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH v2] [Outreachy kernel] staging: emxx_udc: lines should not end with parenthesis
Date: Thu, 21 Mar 2019 17:10:04 +0530
Message-Id: <1553168404-13526-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Adjust code to meet the style of “lines should not end with
parenthesis”.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---

Change from v1 to v2 - Removal of specification of file name.

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



X-GM-THRID: 6256338264344494080
X-Received: by 10.140.42.138 with SMTP id c10mr25202133qga.7.1456667265381;
        Sun, 28 Feb 2016 05:47:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.232 with SMTP id hn8ls907459obb.12.gmail; Sun, 28 Feb
 2016 05:47:45 -0800 (PST)
X-Received: by 10.182.148.227 with SMTP id tv3mr8775062obb.30.1456667265045;
        Sun, 28 Feb 2016 05:47:45 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id k15si672116igt.3.2016.02.28.05.47.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:47:45 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x235.google.com with SMTP id z8so62652574ige.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=RHfTsfsIEyGwQXHHsGGTQrJgk3DDu6Xc6qwCUBaXYaI=;
        b=R8Ebs0Mw1K29vUHjjWU1lqjTMRGgzSQg6G73Yr3c0ZUBH0r+M5E6k2wqgaVpSZIDCt
         7HPKItYn1HNt6mZFZBOCMDXH367hwA60jwmRF+uT8xLiLRJX8F404AQhxFxnXMbaCZVF
         HtNFEFMFtR8OcrPbKTpbVyrrVKFhkjpdCH+akB2eMvewKrK9YwK6W2HbpSNapAzJQr5/
         52cpePa79Hwf9EFgt/r0SixNr4c2sEfRpxfepf0+rGhiEb1jgKVlrvZrvSbqfYmt2/24
         BGtydkhlagHbzYHLXHjrlz3Ma14Ez7yQJhagxhTT9v7UgE5PlTwR3au2IwZUvRav4DRC
         SP4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=RHfTsfsIEyGwQXHHsGGTQrJgk3DDu6Xc6qwCUBaXYaI=;
        b=mlB6wYalRnnGmRJVV84DG3x0NyGSbccUpM678cmzUGpJ0+LVNKRY0kvS//fFjoV/jW
         +slBFIGKlMhDfKj39v+jnsWmeKUaAqs9rAZaRANDHl4n5xGeujLL6p3s2r1L7Vu5Eg9U
         6UjkfFLKhHrUGzMlBxFu5eyuC4Hcmb89g1hUX9E3bQr+fBCVddMF1fiGV9ZfM2RZ0EV1
         OmltyFLtpAxtyALMvRMZ4vk3D2pe5wAzrPS+Lc0KnkTPg5qs6YXl0y0R5TgI5PfOcC2F
         j/1OcXnCOK/kPOcgR83T7ndpMyREIK6/3JEamfFujI3YNA7edv6nAAzwJ0xflK0+rN0P
         prGw==
X-Gm-Message-State: AD7BkJIOaHMCvv8CPIqlr7iaE4gZbF2MS8LzL5wBg1Qv3FtSl6uKxyYDFBIr/UnyH3P6jg==
X-Received: by 10.50.12.33 with SMTP id v1mr5393620igb.33.1456667264888;
        Sun, 28 Feb 2016 05:47:44 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id h83sm9090356iod.4.2016.02.28.05.47.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:47:44 -0800 (PST)
Date: Sun, 28 Feb 2016 13:46:55 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: rtw_xmit.c: Replace container_of
Message-ID: <20160228184655.GA4960@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_entry() rather than container_of() for linked list nodes.
Semantic patch used:

@a exists@
identifier var;
struct list_head *ptr;
@@

  var =
- container_of
+ list_entry
  (ptr, ...);

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
index b82b182..5a74bbe 100644
--- a/drivers/staging/rtl8723au/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
@@ -1459,7 +1459,7 @@ static struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)
 
 		plist = phead->next;
 
-		pxframe = container_of(plist, struct xmit_frame, list);
+		pxframe = list_entry(plist, struct xmit_frame, list);
 
 		list_del_init(&pxframe->list);
 		pxmitpriv->free_xmitframe_cnt--;
@@ -1491,7 +1491,7 @@ struct xmit_frame *rtw_alloc_xmitframe23a_ext(struct xmit_priv *pxmitpriv)
 	} else {
 		phead = get_list_head(queue);
 		plist = phead->next;
-		pxframe = container_of(plist, struct xmit_frame, list);
+		pxframe = list_entry(plist, struct xmit_frame, list);
 
 		list_del_init(&pxframe->list);
 		pxmitpriv->free_xframe_ext_cnt--;
-- 
2.5.0



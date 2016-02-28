X-GM-THRID: 6256354433714618368
X-Received: by 10.182.53.233 with SMTP id e9mr9256028obp.28.1456671029323;
        Sun, 28 Feb 2016 06:50:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.13 with SMTP id z13ls1874609qge.36.gmail; Sun, 28 Feb
 2016 06:50:28 -0800 (PST)
X-Received: by 10.13.219.80 with SMTP id d77mr9286402ywe.39.1456671028765;
        Sun, 28 Feb 2016 06:50:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id nt4si764461igb.2.2016.02.28.06.50.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:50:28 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x235.google.com with SMTP id hb3so60431328igb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 06:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5U+XCRnL81fD+EJmGVqBkDEm1zSoqwmXgChjCparWFc=;
        b=rfp5bQxmaHLZQsamoQ/3OCvUYvfvddJFJaOy/j7sEh/JZoH8YldomqVgzjTPGck8Er
         AUiv7JR+PrbtQzG2FYv+9WA+kQpqRD04k6uURdD2Bm7pL/UvgIy3WKaVT1YFEIkSU6j+
         o627hZzMDcOHi7cIxQUoVMBCVc7cvYgDaL9OAuj5T00Xu2qWvj5NFU0206131w/dcAFy
         lyPoRdf1aME1ZPvar1X4fOOnpRzMMCSOeIHZyUCIysax34Ei9tZhy/u6SSfgrjCgYLGM
         bOfhfh4HPvYdFoWL0qJ1NH2poAthbJ+v4bOML5ZTbgN3yGA7uCKz3CBbWvmivbthBYCe
         ipbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5U+XCRnL81fD+EJmGVqBkDEm1zSoqwmXgChjCparWFc=;
        b=EGM3lm4ELHeaV8abcwxVv6ZQ3EWKlZMPrE8lx/7LcQpbUc/IIfHGFnsYXLHBmmwAwW
         uQBf5bMkWL69Zf17se86HTY60jK/IWjraq9zykb36yNPtoPxGUrOJNYjzsLNHDTjG1wz
         perHSYrGUgiQ3G75jb5GJyQljdP6Ir59A7u1TLOdHiNXMbFtAADbeMz3lqid/KGAomfM
         ghRiWKchbC8as+Qn1djegrTigerrt+/BN/kFgbShMHNQBSZ2bo+xmglBnMNEWY0StJ1e
         0IxHPSqCn7RRW21f9SBq6fi9Ni6l2sNdIiTAMJh1Oarz/Kzm2Hyp7UNOfPTt0sC42Krq
         D1qQ==
X-Gm-Message-State: AD7BkJJn6T5RKoNdJEok5gZKKqpVg2MYXlcUDYTBNUxSaCFGoRaJXGtw5MPigR4UDi6PuA==
X-Received: by 10.50.62.178 with SMTP id z18mr5946818igr.12.1456671028563;
        Sun, 28 Feb 2016 06:50:28 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id xh7sm5147862igb.1.2016.02.28.06.50.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:50:28 -0800 (PST)
Date: Sun, 28 Feb 2016 14:49:38 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: core: rtw_mlme.c: Perfer
 list_for_each_entry()
Message-ID: <20160228194938.GA6314@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry() rather than a combination of list_for_each()
and container_of().

Semantic patch used:

@a@ 
expression pos, n, head; 
expression mem; 
type t; 
identifier var; 
iterator name list_for_each_entry, list_for_each_entry_safe; 
iterator name list_for_each, list_for_each_safe; 
@@   

(   
- list_for_each(pos, head) 
+ list_for_each_entry(var, head, mem) 
  { 
   ... when != var 
-  var = \(list_entry \| container_of\)(pos, t, mem); 
   ... when any 
  } 
| 
- list_for_each_safe(pos, n, head) 
+ list_for_each_entry_safe(var, n, head, mem) 
  { 
   ... when != var 
-  var = \(list_entry \| container_of\)(pos, t, mem); 
   ... when any 
  } 
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_mlme.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_mlme.c b/drivers/staging/rtl8723au/core/rtw_mlme.c
index 3adda55..d561201 100644
--- a/drivers/staging/rtl8723au/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723au/core/rtw_mlme.c
@@ -436,8 +436,7 @@ static void rtw_update_scanned_network(struct rtw_adapter *adapter,
 
 	spin_lock_bh(&queue->lock);
 	phead = get_list_head(queue);
-	list_for_each(plist, phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+	list_for_each_entry(pnetwork, phead, list) {
 
 		if (is_same_network23a(&pnetwork->network, target)) {
 			found = 1;
-- 
2.5.0



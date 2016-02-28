X-GM-THRID: 6256350272839221248
X-Received: by 10.140.102.69 with SMTP id v63mr26399905qge.14.1456670060427;
        Sun, 28 Feb 2016 06:34:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.40 with SMTP id 37ls1714944qga.14.gmail; Sun, 28 Feb
 2016 06:34:19 -0800 (PST)
X-Received: by 10.140.29.183 with SMTP id b52mr25317852qgb.8.1456670059759;
        Sun, 28 Feb 2016 06:34:19 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22e.google.com (mail-io0-x22e.google.com. [2607:f8b0:4001:c06::22e])
        by gmr-mx.google.com with ESMTPS id c15si768508igm.1.2016.02.28.06.34.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:34:19 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) client-ip=2607:f8b0:4001:c06::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22e.google.com with SMTP id 9so159535052iom.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 06:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nq5y2jjAg0ynfh6ger7stmOqFIr1eS32UKA4HxzPnWY=;
        b=ejCb3pmd+memZpc58s3xUtLQg1Svm2Y1TreaLsm+FbJNAgMasRPpALv7JCNG+dzMyh
         zIrzNIrVgBXZpq3nTMv9jz0GywTXxCC1iCan8KOTot0KTC+0EwqgwVPbJGLfNOORELUF
         aliWzUfXGM+89qdD0NNrFh91/odOKJvd3iSeLqJDZuwXIpj2QGzYHbQYkCZ6VEDm/fbA
         llqUSqPV5IJaXDkZHvZ/PpNIJPPciSjZSWxT09ebSBhQYtn7X1bcypcHS3OI6Ad3EGGV
         DN8/Q6QfFCs5cZ0H7eZOu9YGmfnUc6XVSt55LHljA3WD/jhNt4m3RUyRD62Tf8Q5PAdu
         pRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nq5y2jjAg0ynfh6ger7stmOqFIr1eS32UKA4HxzPnWY=;
        b=LtluZR5Z1edF4eugEmSjIZsH36SdU7S/q+VztV7zLGTbqRHivdiUwKxnVyO3gmEX1+
         o6IwiZMSXzyG440DHULhaOfv5QMkQ2L3FbZDBNum4DtifoC1ufm+5D0peoS+LXx7yBho
         /IsDw0Ng6uJO4IsIiqYj/oalE1s3mhH397ocg5JDlU+5iphp324Q3LeXNfGKrOWaoPrc
         hIgLVd6uJDpJAHhWs96c6Ow1iH9ovrDicq7/CPs+slRzqPNUunH/XEUq/XZncZu8wLm7
         kQF8Y2xMMwArLmludqRsHDVQEkf9QY31qW1p/L9t2eS5D0W8zyVYB1Z3xpCr5qOAFDgo
         9y6w==
X-Gm-Message-State: AG10YOQ3bJKkdM9iOkpu97O7SUJQox6U/Pq9Y1hVAIaSWMBzVuoz4kBud+sGupuFKXlAGw==
X-Received: by 10.107.152.142 with SMTP id a136mr16232452ioe.84.1456670059554;
        Sun, 28 Feb 2016 06:34:19 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id n75sm9173657ioe.28.2016.02.28.06.34.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 06:34:19 -0800 (PST)
Date: Sun, 28 Feb 2016 14:33:29 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: os_dep: Use list_for_each_entry_safe()
Message-ID: <20160228193329.GA6063@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() instead of a combination of
list_for_each_safe() and container_of().

Semantic patch used:

@a@
expression pos, n, head, tmp;
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
- var = \(list_entry \| container_of\)(pos, t, mem);
 ... when any
  }
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
index 908b84c..c79d623 100644
--- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
@@ -1994,8 +1994,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 
 	phead = get_list_head(queue);
 
-	list_for_each_safe(plist, ptmp, phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+	list_for_each_entry_safe(pnetwork, ptmp, phead, list) {
 
 		if (sme->bssid) {
 			if (!ether_addr_equal(pnetwork->network.MacAddress,
-- 
2.5.0



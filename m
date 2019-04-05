X-GM-THRID: 6676441168066117632
X-Received: by 2002:a0c:af53:: with SMTP id j19mr1866251qvc.19.1554480107769;
        Fri, 05 Apr 2019 09:01:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:227a:: with SMTP id o55ls2898015qtc.8.gmail; Fri, 05 Apr
 2019 09:01:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzXIT92imqWMVzOgxYB3faWknYsukWCPdBpRDTyfp0671nVBbCNYjB3qz+yrDQN+QiOSYqQ
X-Received: by 2002:ac8:529a:: with SMTP id s26mr1878770qtn.51.1554480106772;
        Fri, 05 Apr 2019 09:01:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554480106; cv=none;
        d=google.com; s=arc-20160816;
        b=DfkNY1wIRcCzMWdGe0ESXCGErqN5AcfZz9tu2KzZ5mWz1e2ZPIr23miiDBNhDiqUD/
         ND3FP0GVBLgGtD/OuIhf50jMqQeOT/lJdssN8/q9nKHynfbjpp8NA8lypqhUVVm3puyY
         L/noAJsrWsP8tw31OHc/NdqGsI/YEd7tNpQlVZetS46Hm0w9fmTRc976Lcvb4vz05JQF
         qNXSISACl3kxkjGscpyezQyOZ3iS3A0bWu9+7VPfvGjCjC8RYcO2vWU+em4X34G8Ie5n
         qnllcluoyh8xMeQWrHvUICRSH6w5c73sP8VZXOIhXMjiLe3FxfYInUsE0sAtZmqJJEbk
         JdLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=RW0CUDGY0Qrb1EoWs/Oonjc0eF8y0ZyqPRuyvW6BdT0=;
        b=pZMzOJUXZBh9dJV6XhrP6RBFQtyIGCBUIG0R3aMORiV1AtUG4KIjYVyHIXCqDAlABC
         8GJSLgITm1ZNVNqTyRRSfZvW2ND7cWZE1IiggVkEdeHtnzhZf+r/S9B9Yne9TjMxLSXP
         rfXocnyBXdTAQQaPDJituT0h6gNAi7aCf8OPaE4tfOGhFDVY8PEcj5f8AZvSbz9p0W6H
         IYdL7PE8dDg/I0GCfqJHJfzPlTnwHSY6eb7xhhG/cMvOLKHX5tQvM3joyUAnijwwQESS
         WnARRQWhP9Nm93vTFb5Bw6tlS00h1oM19ISa3MijYHj2dRVVImYj/xSTP+ro7YLBPaCW
         XZ2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cgRiufdK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id u197si859647qka.0.2019.04.05.09.01.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:01:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cgRiufdK;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id e24so3498941pfi.12
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Apr 2019 09:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RW0CUDGY0Qrb1EoWs/Oonjc0eF8y0ZyqPRuyvW6BdT0=;
        b=cgRiufdK6vU06ZXGtGP+FRZZ9PNRV+TxkrUfVzwhZcvqyOi31hxFRYf39NHuf2uOxl
         UoYhftR01C2v+RGXabo91phSxx4zsXf2d5tPu7H58rmxt/lR8sOsryNN9REoOeRQhdeN
         rTWZYQmzUUQ0WclUm9qs2pZDPcrFzbEU59iLLrbaYKpymXebBkK6r1dKD/dDoC0uvKom
         gJwaZoCaMTGX6eezgdrQzoVk5Eq1hGXBiosGEWaPZyVPRxhxhJvOk0fq9mbPsPid94Kh
         hgY8BEIk6ohsOlENRHsuSw6bAvnD2MeeiogUbsN0U9mL3tWUM/E+eTpNtTqS02Yfkgcn
         kxPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=RW0CUDGY0Qrb1EoWs/Oonjc0eF8y0ZyqPRuyvW6BdT0=;
        b=LVdtY12wrGVbcOoIxOj8yuvzDn/XiSZ3JM4TJr+F8f28IdpVeTW8F2RlEJW28sXmFR
         YD3eHLxfdvyTlDZpjpVQm3dkfzDyGH8eu+/JRwe8do9Sb2XOdIJkgmSn/tQ9BLrDoOIx
         AQMT6sLKSUe0U9oMZ/iYYmzXmoYI90P7PyfQaP6dIU3iMckUiGHNnjkDa3ptoQbWhWsV
         VhbUTcGSu6FbZU2Uj3eKuaAy4rcMnCT+gVMLVJS2KsRC3MpA2AmFd1IZDfH5xEwFDnDE
         FhJ8KggyPRQF01OmOC43vW1tCXmOEuVS5MO/nbXT/tG/3pFEkmFw/67PDw7cDTt9K310
         SyPA==
X-Gm-Message-State: APjAAAU/hbBDE/D3Zbi973R+JZvUqipbcyT+AQQLmZfrowZWcfOvGhjq
	ArIcIFdeowc7YFihousULSU=
X-Received: by 2002:a65:410a:: with SMTP id w10mr13041291pgp.206.1554480105856;
        Fri, 05 Apr 2019 09:01:45 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id n1sm25515946pgv.19.2019.04.05.09.01.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Apr 2019 09:01:37 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [RESEND PATCH v5 1/4] staging: rtl8712: use list_for_each_entry in function _r8712_find_network
Date: Fri,  5 Apr 2019 21:30:58 +0530
Message-Id: <20190405160101.8691-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190405160101.8691-1-himadri18.07@gmail.com>
References: <20190405160101.8691-1-himadri18.07@gmail.com>

wlan_network is a list structure. We can avoid using next fileds and
comparison to head of the list in order to iterate over it. Instead
list_for_each_entry macro can be used to do this more tidily.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V5:
	- Use list_for_each_entry
Changes in V4:
	- Change log message
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index e370841a79ca..9cf7050e68b1 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -133,17 +133,15 @@ static struct wlan_network *_r8712_find_network(struct  __queue *scanned_queue,
 					 u8 *addr)
 {
 	unsigned long irqL;
-	struct list_head *phead, *plist;
+	struct list_head *phead;
 	struct wlan_network *pnetwork = NULL;
 
 	if (is_zero_ether_addr(addr))
 		return NULL;
 	spin_lock_irqsave(&scanned_queue->lock, irqL);
 	phead = &scanned_queue->queue;
-	plist = phead->next;
-	while (plist != phead) {
-		pnetwork = container_of(plist, struct wlan_network, list);
-		plist = plist->next;
+
+	list_for_each_entry(pnetwork, phead, list) {
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
 	}
-- 
2.17.1



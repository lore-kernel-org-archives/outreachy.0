X-GM-THRID: 6674267883353145344
X-Received: by 2002:a1f:654:: with SMTP id 81mr5974731vkg.3.1553998937885;
        Sat, 30 Mar 2019 19:22:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:2a58:: with SMTP id p24ls758885uar.3.gmail; Sat, 30 Mar
 2019 19:22:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqziEC3V+XoGO2Xrf6L2n4lRYo887t6VYV+YCSUCog67ABM20LQlD3yIJV/HlpBPq0S/2w1k
X-Received: by 2002:ab0:6893:: with SMTP id t19mr4837139uar.24.1553998937322;
        Sat, 30 Mar 2019 19:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553998937; cv=none;
        d=google.com; s=arc-20160816;
        b=a4XOAB9/MHo58BSPjIEGO9E5bF+lpZGJTzE4H7JCEUs/H07AXWxmVGJg5fykkVde+2
         ZtJv0hcwtwX+LFErQXtl6ZXPaL1k7N+90ou6U/Gb7e/duc9DU6eGh+gGUj9XPQhC7MXJ
         IibFa2T3za0KvvSOKc5IquijAq8gLJNDEi5Vn7uAhv6CvTsUNGj11aCfF4AO6fuE8Wfg
         SDMKcskzwuDUB9ZWO1RiGbyZhInSpKiCUuvPysZ7WZNzBKJKc4UdZ9CK2tOQayFmUJA4
         UbfHTgElefgTtxz7ODZAUxMfY4RxJkXfPI2mRC2a1g6dcSVpnhor3PouGRlPWn6N0R2z
         LrYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=hngk+4x+X9KLfiBUI9XOeZrVLVKATvOjRByTznfaRhg=;
        b=PDU/VIqmqWTWeukkZ3hIJqblnb9kJaCXGS7azm5zcBIy41ql6oNHsuDrZuDKhqAag5
         /Oz7sBHMnPucnKgdS+QW1pOWYr4yqkbG34SvhfjFIRoFwqJjA3C7XDxZR2HCdmDjZ/or
         PE0DdEt7VTSLEH48g1DAwbUnxpujGL3NzyNEpTNdn9621/yE1k3kbgN32saL8jUJFyjn
         hzNzk0na2PD61JcDbFS74dIVih9k6ogov7INWPMIEotWu0LjhCo4GQSTvIOf17grqqEZ
         JcEl0+xyKVblTKiGpH6lKxfQ+AlABmbyxhiNEmRKdFgYg1RyTUIPe6+WOFLe3bxohxMu
         R28Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGaaeJD0;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id h13si432284vkf.4.2019.03.30.19.22.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AGaaeJD0;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb44.google.com with SMTP id e12so943335ybq.2
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 19:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=hngk+4x+X9KLfiBUI9XOeZrVLVKATvOjRByTznfaRhg=;
        b=AGaaeJD0S/MWWIde+qCRgSuDdqN/MDU7WXGJGvoS1d7fm8736qgDVvPrSdERQwid2q
         wnXL65ecf1ZkZnSkuy6m9wnYAqTh8ZrApMZMwfo0SQfed+81iSJwqkJsAHJJCn6ipVKS
         GQuMugNS0hd1UG5J6SzKdAe8s1I30RrA41HZegEjG/epkTolC3k7e05gBWFGVNE/rBgS
         ZUVDacrzUn7X7+oyhmPNUy9k1W7RW4ZcuQy+ruACEW/j78wizDYNyxzgEZ2NO2wX6gRP
         zLp3WgWHs16ofcWmRyRIxZY3qdasY0X3KBh2+MrsmymJv0G3QbPd4tQfDZK0i5NPFSTq
         5i3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=hngk+4x+X9KLfiBUI9XOeZrVLVKATvOjRByTznfaRhg=;
        b=iI90Dvc3+1aaXuiK8K73YTFrV9BX9gpyATk0MrF6PcVhzcTJoPPvEM5BfT/qI4LBhQ
         lBaBnN1zJLtW4VjGl8dWKPLbPHCA2LXasLwcTH9HZTRr6O0XVVYUsWxMJCE4DwJlU2QF
         PnSuuiWGE9pMI7bt2uQEv7dgOqCAW2MLlxBDV8o0bVS+TxVT6K/76jR9h732S6em0BWV
         0e1F4vKxGQiBir0rlFqaj+1ZoiyPehUxx86mbaykCOa34H6BQzUz4sDhAELjkorFtLH4
         TBEhUAPuqzcb7DtjoRNLNYLSod9FUWDat9yZFwU3qX6WySY/F2sA3xawWKwgJmvS/8gq
         5TEw==
X-Gm-Message-State: APjAAAX8/w/WK0NpcV+yrPVEaE2ohIeSDsKAQ4gJ2bZoFf7d8k6m0Ito
	RAX1snZ3Odc3+XEdWgqf2pE=
X-Received: by 2002:a25:3b02:: with SMTP id i2mr47201601yba.253.1553998936982;
        Sat, 30 Mar 2019 19:22:16 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id x126sm2425558ywf.92.2019.03.30.19.22.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 19:22:16 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 3/7] staging: rtl8712: use list_entry in function _free_network_queue
Date: Sun, 31 Mar 2019 07:51:51 +0530
Message-Id: <20190331022155.68569-4-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190330192742.65250-1-himadri18.07@gmail.com>
 <20190331022155.68569-1-himadri18.07@gmail.com>

Use list_entry instead of container_of for conversion to wlan_network
in function _free_network_queue() because it is a better
practice to use list_entry for such list manipulations in kerel.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V3:
	- Improve log message
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 6912d73e8172..e0b4b8fbcc0e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -162,7 +162,7 @@ static void _free_network_queue(struct _adapter *padapter)
 	phead = &scanned_queue->queue;
 	plist = phead->next;
 	while (!end_of_queue_search(phead, plist)) {
-		pnetwork = container_of(plist, struct wlan_network, list);
+		pnetwork = list_entry(plist, struct wlan_network, list);
 		plist = plist->next;
 		_free_network(pmlmepriv, pnetwork);
 	}
-- 
2.17.1



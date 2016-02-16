X-GM-THRID: 6251883453427482624
X-Received: by 10.31.174.2 with SMTP id x2mr21389529vke.13.1455630118956;
        Tue, 16 Feb 2016 05:41:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.63.2 with SMTP id m2ls1762240ioa.14.gmail; Tue, 16 Feb
 2016 05:41:58 -0800 (PST)
X-Received: by 10.66.65.168 with SMTP id y8mr11550791pas.1.1455630118605;
        Tue, 16 Feb 2016 05:41:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id yd9si692006pab.1.2016.02.16.05.41.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 05:41:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so107703013pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 05:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bbEv1/fd9cem0QgSTsjuCjv3e/Bsk+SdbWJbQB5Atvo=;
        b=havSKpSOSQDR1PpbPTd+f1/oxhnNEdlz/6D8jUwRkEKgt5AbbXPQ4vkh50DNp7Ym4V
         TUjqt/VXzrf0D8+wKsHLJsDaU7Q6QBZp+MfOJU2x6iPCOrlVBQOmjYpvYnNTcFtf2/YC
         1OURuo1Lr9Yc7sJHc7A43GbVnN+ZOxcqUCX134lgv+z9vYcB34HVE9s982gXg1OpIUVh
         /IDh+zPckrp6XJKRVARwjVZup4wjnfD1f4uQ+WE7Y8bgq7WwOk824ujQwTB3RQDN/Hj/
         8lLuFXsRAr46lt21pUN6d47warFrWph8PLmu/LqRueVjm3IVqfCKzzxvCZr4eFzSj3AR
         Cnjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=bbEv1/fd9cem0QgSTsjuCjv3e/Bsk+SdbWJbQB5Atvo=;
        b=ELxUDMIasHfVtbMGYCW1nQj4qdGoS2bTRojF88Fssjxz9oLUYWYYYk9wSSY/W+ARuY
         jkIjConDr9ImsWUJkYl4n6m6YCZ9sz5gamFN3QVYeLQOthqH661FAEO6qjpmKlToQx9R
         t1/GBEmWUz0CaEeRqL/5kqSNT02ATQsbWK8u7faXtgO/4nK0URwkSERkCWFS0boBZ1o0
         SFALpT6T1QC6Ji0yTsalq12MH+VdVb471HRV9pHNetdahHLz4W4tLODinSObq7GT/HC3
         UuQeMjH6Ot3BP+Hux4hdNKUglLhB/wbJ16HVNKiFw5hL+tdaxgKq6W8wVrMWxWWRG8aW
         nBtw==
X-Gm-Message-State: AG10YOSWwP6aGI5ucHDsMzBWhqtTIk0lKPJ8Kf6xVnActanIiatB33/Smtu0TtZUiKHgJg==
X-Received: by 10.98.74.202 with SMTP id c71mr31076366pfj.25.1455630118496;
        Tue, 16 Feb 2016 05:41:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.154.9])
        by smtp.gmail.com with ESMTPSA id w89sm46035158pfi.13.2016.02.16.05.41.55
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 05:41:58 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 16 Feb 2016 19:11:49 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 4/4] Staging: wlan-ng: Remove  prototype for hfa384x_drvr_getconfig_async
Date: Tue, 16 Feb 2016 19:10:35 +0530
Message-Id: <efd68ed4965636f35be830aeb5e0fa53b9e2e96d.1455629651.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455629651.git.bhumirks@gmail.com>
References: <cover.1455629651.git.bhumirks@gmail.com>

The function prototype for hfa384x_drvr_getconfig_async is now no longer
needed so it can be removed.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 4fd3145..cec6d0b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1390,10 +1390,6 @@ static inline int hfa384x_drvr_setconfig16(hfa384x_t *hw, u16 rid, u16 val)
 }
 
 int
-hfa384x_drvr_getconfig_async(hfa384x_t *hw,
-			     u16 rid, ctlx_usercb_t usercb, void *usercb_data);
-
-int
 hfa384x_drvr_setconfig_async(hfa384x_t *hw,
 			     u16 rid,
 			     void *buf,
-- 
1.9.1



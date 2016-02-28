X-GM-THRID: 6256374617143771136
X-Received: by 10.98.67.142 with SMTP id l14mr6561468pfi.13.1456675729817;
        Sun, 28 Feb 2016 08:08:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.15 with SMTP id g15ls1104326iod.50.gmail; Sun, 28 Feb
 2016 08:08:49 -0800 (PST)
X-Received: by 10.66.124.200 with SMTP id mk8mr9284513pab.27.1456675729403;
        Sun, 28 Feb 2016 08:08:49 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id p10si867347igg.1.2016.02.28.08.08.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:08:49 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x229.google.com with SMTP id 9so160771277iom.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 08:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7T56vLJgoELIEqheIUkfq3oOcMRCYbxdgpSK0WAhydY=;
        b=fCuFH5FxDym0uE0qd/LeCZeunmAXIfVbAdz9SqN8a71BSLdsejgBzv1mEncFXoDA1Q
         Rz9iH5FBnL3tf4mb6Nhr6o56dTaO0oXQeD3YO/38McMaMQtuTW4rAkrr8rzOIUwZ8kNP
         dnpg0CU4E94WKcLxAaFD5mfOzQ7DdNUEPB7KGJsmwr60lr9wSZfz66R0IGQ55zhiI19T
         3I1acSXeJLMGLCzMxcgLUN11fZ1qUUmjLvYr3CTzji/bi7UvcP+vCHA6dMoikG6jJ783
         ORi9PrGkdKw+aooCIyVSxfMNDkMtz/Z36vgDjOUv7MeEVG6owF8GjvzdVnfa6e9vYVCm
         X5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7T56vLJgoELIEqheIUkfq3oOcMRCYbxdgpSK0WAhydY=;
        b=j3KEP8MfUfTAR2BbzOHYuQ5bM1fnZXddH/59nGHgZfuqrD7szA2j3MYM86vr/nWLgo
         njIK7kzHLD1J5uSu10gqZFmNxYKOfzEbfRI0ArMuGwMgv/O3zwA7dupo9Dx+EVJNatHT
         ROcQUjw8AJEnocZkN2T2PuMPTRFR7lrr8JubzeipUSzuArPzbseF2cYdeQ75m+/7/jfX
         qKeCYeSp8AiuktERbHAiR7dYWQ5LuBOKJ9woBkzbOn2sICDOjw814nylWPnzqugCKQ8M
         i/81Oz4LXhNBD1HZJf427y7TlWikCMQcKxJDXq+g7iQHDYqbjnZme96nacihRIX2zR0Z
         6v6g==
X-Gm-Message-State: AG10YOTZ/2ivjuSRJrTuh05NZOeyfl5MtwObV4eawfdxbZ9mpaBKf37ThtajT1d61aGvjw==
X-Received: by 10.107.152.142 with SMTP id a136mr16525482ioe.84.1456675729243;
        Sun, 28 Feb 2016 08:08:49 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 90sm9241997iod.12.2016.02.28.08.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 08:08:48 -0800 (PST)
Date: Sun, 28 Feb 2016 16:07:59 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: osc: Use list_for_each_entry_safe()
Message-ID: <20160228210759.GA7689@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_for_each_entry_safe() rather than a combination of list_for_each()
and list_entry(). Also remove the variable l which becomes useless after
the transformation. 

Semantic patch used:

@a@
expression pos, n, head;
expression mem;
type t;
identifier var;
iterator name list_for_each_entry_safe, list_for_each_safe;
@@

- list_for_each_safe(pos, n, head)
+ list_for_each_entry_safe(var, n, head, mem)
  {
   ... when != var
-  var = \(list_entry \| container_of\)(pos, t, mem);
   ... when != pos
  }

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_cache.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_cache.c b/drivers/staging/lustre/lustre/osc/osc_cache.c
index c6623c1..6c3fc6f 100644
--- a/drivers/staging/lustre/lustre/osc/osc_cache.c
+++ b/drivers/staging/lustre/lustre/osc/osc_cache.c
@@ -1624,11 +1624,10 @@ out:
 /* caller must hold loi_list_lock */
 void osc_wake_cache_waiters(struct client_obd *cli)
 {
-	struct list_head *l, *tmp;
+	struct list_head *tmp;
 	struct osc_cache_waiter *ocw;
 
-	list_for_each_safe(l, tmp, &cli->cl_cache_waiters) {
-		ocw = list_entry(l, struct osc_cache_waiter, ocw_entry);
+	list_for_each_entry_safe(ocw, tmp, &cli->cl_cache_waiters, ocw_entry) {
 		list_del_init(&ocw->ocw_entry);
 
 		ocw->ocw_rc = -EDQUOT;
-- 
2.5.0



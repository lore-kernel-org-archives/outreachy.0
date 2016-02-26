X-GM-THRID: 6255453282079080448
X-Received: by 10.66.249.41 with SMTP id yr9mr45616416pac.37.1456461214710;
        Thu, 25 Feb 2016 20:33:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls713243qga.11.gmail; Thu, 25 Feb
 2016 20:33:34 -0800 (PST)
X-Received: by 10.129.58.16 with SMTP id h16mr43074447ywa.56.1456461214082;
        Thu, 25 Feb 2016 20:33:34 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id i9si112878igg.1.2016.02.25.20.33.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 20:33:34 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22a.google.com with SMTP id z135so111775820iof.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 20:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=phwHAZSTBOWlRV4SgUFEUZckYCQGYLT3RD69La+llik=;
        b=Y5FaydnmzHFsfONH78c1cChQ74JRQok/EqOxJvcKWjA/whgGoLvJlAd0sGFqtE80/g
         LVYnE/Q+rBf5h3VlfUnS6ENQaP59KFCUqPbDp1u5QIhAKPPcmtNPOS/vfONtmidOHDFW
         DD86EuM159t9tsK2GezN1ZEOTOeVtaq5Bi5aldNfTT4eXkmVayuKwbactufAvD6UZS+N
         5dPh0uMzkSOSZGpNuxxUhjCZVNP8SKuOSDAyOusqRnguf36PG95VOe4IASwoplsLMSwz
         ecWYDi53UrfK6awIk0pDM+jjF5dk0LGB3+H7celigN6wY5TON1BNI3qlmX6ogbGteKxD
         1+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=phwHAZSTBOWlRV4SgUFEUZckYCQGYLT3RD69La+llik=;
        b=mf3SHxqlIVhBzyUkisg9yk40mMLoM+x9D/HCq04n+rNvNvhcZpbdLoAn0vHgiwDLWU
         JnfL/9cdSjc84fOfOZKsDuMJlJRphxU05IJl9+yxLRFkqUpy0yyiylGVCcePQhBkRnC5
         LaJM82KANQkF+0uL69zODkWkoL/YAQbmleIdj5kZrbNShVZAFrfSO1WVWHATGrj9VMed
         XGAFkZcrOSyusIKis6KGx+8tDHrFyvm7OgZ2zdAJZ12hCeC9+9xi24Vvb88JtYu26C7g
         t43mKLIUqSpCBtPYuQXDmdgUrPN27jaujySi0a+Q5pJ7sbOSlmGY+Dv949VlgOMywTY5
         I4Hg==
X-Gm-Message-State: AG10YOR4d2XIvDDhWX79sbWH3zipBVZvBurASk49LfYXBsoRxV7Y9ymF7yOf+okmsO941g==
X-Received: by 10.107.41.133 with SMTP id p127mr6742218iop.100.1456461213863;
        Thu, 25 Feb 2016 20:33:33 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id m7sm4619440ioa.42.2016.02.25.20.33.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 20:33:33 -0800 (PST)
Date: Fri, 26 Feb 2016 04:32:44 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Use setup_timer to combine
 initialization
Message-ID: <20160226093243.GA10762@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

setup_timer combines initialization of timer with the initialization of
the timer's function and data fields.
Semantic patch used:

@@
expression E1, E2, E3;
type T;
@@
- init_timer(&E1);
...
(
- E1.function = E2;
...
- E1.data = (T)E3;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.data = (T)E3;
...
- E1.function = E2;
+ setup_timer(&E1, E2, (T)E3);
|
- E1.function = E2;
+ setup_timer(&E1, E2, 0);
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rdma/hfi1/verbs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/verbs.c b/drivers/staging/rdma/hfi1/verbs.c
index 09b8d41..1761686 100644
--- a/drivers/staging/rdma/hfi1/verbs.c
+++ b/drivers/staging/rdma/hfi1/verbs.c
@@ -1926,9 +1926,7 @@ int hfi1_register_ib_device(struct hfi1_devdata *dd)
 	spin_lock_init(&dev->n_qps_lock);
 	spin_lock_init(&dev->n_srqs_lock);
 	spin_lock_init(&dev->n_mcast_grps_lock);
-	init_timer(&dev->mem_timer);
-	dev->mem_timer.function = mem_timer;
-	dev->mem_timer.data = (unsigned long) dev;
+	setup_timer(&dev->mem_timer, mem_timer, (unsigned long)dev);
 
 	/*
 	 * The top hfi1_lkey_table_size bits are used to index the
-- 
2.5.0



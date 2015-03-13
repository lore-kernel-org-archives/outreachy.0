X-GM-THRID: 7913154281472
X-Received: by 10.66.162.137 with SMTP id ya9mr47508616pab.47.1426275242609;
        Fri, 13 Mar 2015 12:34:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.137 with SMTP id j9ls331948igx.39.gmail; Fri, 13 Mar
 2015 12:34:02 -0700 (PDT)
X-Received: by 10.66.151.101 with SMTP id up5mr49694520pab.10.1426275242090;
        Fri, 13 Mar 2015 12:34:02 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id gb13si515283pac.2.2015.03.13.12.34.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:34:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id lj1so31700883pab.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XI1ignxIt04hJ6ib1L/vPwE1ia/gaJh4uNLHXCsadjY=;
        b=rGflpVj/daSW7AnBMoHKuGSGtJrYmV5ZqHr1lMoUaK6hnjvcOA6NcXxERoeM6niiTq
         ay7OcdPe91KhhsCEp2OoDaassodwinv9BQPDcc5RUyVLtniPY4wAZhtjDY4ngDSn1wOh
         ZrXcuaTK76tEGlL8G0KaD27ZvbvtQv2VFsddskmy2iXSrfFk5/rQLr8uMt+bMD9EYVMD
         u6tjOLapEp8IBMwKK5y92szCp5UCy+zh9PDTUe132n5ZbqQkMkTKvwJtR7THcRouBs5a
         SvkFm5UrXv70r9N/yp2PxOeAuUp8FomKO7zWSFr29I6hcTp9RbKCJKM2xzIK5UtHLC5z
         Tozg==
X-Received: by 10.67.7.102 with SMTP id db6mr105837320pad.14.1426275242028;
        Fri, 13 Mar 2015 12:34:02 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.44.252])
        by mx.google.com with ESMTPSA id j5sm4777540pdo.60.2015.03.13.12.33.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 12:34:01 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2  2/4] Staging: emxx_udc: Iterate list using list_for_each_entry
Date: Sat, 14 Mar 2015 01:03:08 +0530
Message-Id: <1426275190-9883-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426275190-9883-1-git-send-email-somyaanand214@gmail.com>
References: <1426275190-9883-1-git-send-email-somyaanand214@gmail.com>

Code using doubly linked list is iterated generally  using list_empty and
list_entry functions, but it can be better written using list_for_each_entry
macro.

This patch replaces the while loop containing list_empty and list_entry with
list_for_each_entry and list_for_each_entry_safe. list_for_each_entry is a
macro which is used to iterate over a list of given type. So while loop used to
iterate over a list can be replaced with list_for_each_entry macro. However, if
list_del is used in the loop, then list_for_each_entry_safe is a better choice.
This transformation is done by using the following coccinelle script.

@ rule1 @
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry;
@@

- while (list_empty(&E1) == 0)
+ list_for_each_entry (I1, &E1, I2)
 {
	...when != T *I1;
- 	I1 = list_entry(E1.next, T, I2);
    ...when != list_del(...);
       when != list_del_init(...);
 }

@ rule2  @
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@
   T *I1;
+  T *tmp;
  ...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
 {
	...when != T *I1;
- 	I1 = list_entry(E1.next, T, I2);
    ...
 }

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
Changes since v1:
 * used list_for_each_entry_safe where list_del and list_del_init is used.
 * used improved coccinelle script.
 * reword commit message.
 
 drivers/staging/emxx_udc/emxx_udc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index 35dc1c4..561d47e 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -2229,8 +2229,7 @@ static int _nbu2ss_nuke(struct nbu2ss_udc *udc,
 		return 0;
 
 	/* called with irqs blocked */
-	while (!list_empty(&ep->queue)) {
-		req = list_entry(ep->queue.next, struct nbu2ss_req, queue);
+	list_for_each_entry(req, &ep->queue, queue) {
 		_nbu2ss_ep_done(ep, req, status);
 	}
 
-- 
1.9.1



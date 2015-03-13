X-GM-THRID: 7913154281472
X-Received: by 10.236.41.73 with SMTP id g49mr55738322yhb.57.1426275247433;
        Fri, 13 Mar 2015 12:34:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.150.74 with SMTP id y71ls1123659iod.78.gmail; Fri, 13 Mar
 2015 12:34:07 -0700 (PDT)
X-Received: by 10.66.100.198 with SMTP id fa6mr50328749pab.31.1426275247209;
        Fri, 13 Mar 2015 12:34:07 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id gb13si515575pac.2.2015.03.13.12.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:34:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x231.google.com with SMTP id li10so31815556pab.2
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ooswtx4MRxQ9fuM34ch9oQXM5vbQCht9HLcBc/24rcI=;
        b=YPN+3fKtOtjcI+BFyus5lyg74r0TZeo1l/yQ28KUfAlefQ8Zrc0Ae2cvt3sB1NxKOK
         pTniObYe7IbFMdd+yHe3gha1qP9lefUv9SPHhbv+yzUAuzrcIRt2eCrJAq84Lz1hFDYl
         eyFewlBgE5/noTu2j55ltvfURH79qsO5hkU36JkqCJ3wTh8S0i86smVxiIQR45g+z1sZ
         j/vFmvxMHO7bXfC3jZ+ipB/KdJEdxfVd/GYIjAAp/MojW4/cBUk1/mSLhtntA5mRCfd7
         P7AQNZ+c6uWKU3dkK0dJhn4ljpTwx0uZ+t2KffAvTgAsI9qmvDYcZl9fstJJGWD8+CfB
         B66g==
X-Received: by 10.66.136.17 with SMTP id pw17mr106924647pab.33.1426275247075;
        Fri, 13 Mar 2015 12:34:07 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.44.252])
        by mx.google.com with ESMTPSA id j5sm4777540pdo.60.2015.03.13.12.34.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 12:34:06 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2  3/4] Staging: gdm72xx: Iterate list using list_for_each_entry
Date: Sat, 14 Mar 2015 01:03:09 +0530
Message-Id: <1426275190-9883-3-git-send-email-somyaanand214@gmail.com>
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
 
 drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index 9cab54b..32fe93b 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -129,11 +129,11 @@ static void __gdm_wimax_event_send(struct work_struct *work)
 	int idx;
 	unsigned long flags;
 	struct evt_entry *e;
+	struct evt_entry *tmp;
 
 	spin_lock_irqsave(&wm_event.evt_lock, flags);
 
-	while (!list_empty(&wm_event.evtq)) {
-		e = list_entry(wm_event.evtq.next, struct evt_entry, list);
+	list_for_each_entry_safe(e, tmp, &wm_event.evtq, list) {
 		spin_unlock_irqrestore(&wm_event.evt_lock, flags);
 
 		if (sscanf(e->dev->name, "wm%d", &idx) == 1)
-- 
1.9.1



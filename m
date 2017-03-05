X-GM-THRID: 6394061646033059840
X-Received: by 10.129.117.193 with SMTP id q184mr5436311ywc.63.1488733492339;
        Sun, 05 Mar 2017 09:04:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.33 with SMTP id d30ls13385131otb.17.gmail; Sun, 05 Mar
 2017 09:04:52 -0800 (PST)
X-Received: by 10.31.140.19 with SMTP id o19mr2423543vkd.33.1488733492028;
        Sun, 05 Mar 2017 09:04:52 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y90si951472pfa.6.2017.03.05.09.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:04:51 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id v190so4193131pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ABJ+cZeUto2sdrQ82sLqwh/b1LLvZm2yFhSpbqUFI/Y=;
        b=DxrTCZTL0OZBBZ+VB3A2mHwdpl4MRv3EvjF+xE/vSgEOSatCIMP0IXdrscCRvrdOQ8
         LBULnCJG0XEqEeu0P6k+OXD/cAQZ1NnjoMHSmttXWyb3s5KAUqYxNim0PeKvbRafA+Zn
         Yi1INtdSbM3PJBgKpYIFVP+v8EshSEU1m2clmtYO1B4ucDJCkSZeMYn5HFWQ2Faxya8m
         r6i2EQ/DwgLEPkUmj2O6H291hJ0gXkWx0mAzZaZX7wvD7XEhwpGvLkbgu97vIJ1tt9R4
         4BhM3OwMANz0xLQXEK/zVFAYMGSUlvlDNW8EOcfRHS2BZNVtM3BhdFKv2OHZlvaZxz1h
         FluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ABJ+cZeUto2sdrQ82sLqwh/b1LLvZm2yFhSpbqUFI/Y=;
        b=VFK/PTWxnazw2JWT/ASai5rVg0PPZz1Q9mJtP8enkHX8SG3gSk/naxjaDYo/VKpqI6
         JozmS9PUiGZ0FrqngvtV9wtY5VzeEJ0idXhuFi8Uo5vv0owu7HJ0Z8e5cOiqsXySNXf9
         E1Gue5EyedCbvdCca7Qfc3oVidpMxdpMUZDq5Vf7dBhF4Ci6uS+LHNLicEERjqNsIB2z
         fuGxw7vQtQG0+zJ5Mivw8eA6jbhju1msENlqtfZIvNQTTrX3y/bo27zyJjRrxKVHPHk3
         gFPYasgXYGAuf/bre8QqYxJMSUMStfRGQueuZ5pJcHpCoeyd4ZXoGWluCXzP27rPC4K8
         rOtg==
X-Gm-Message-State: AMke39n7hKtpgIfUz7FaT9+QUuPG6vGPpPJ1JNgo6zcbs3vT0vIs5CoJa0lQlnolEp4EuA==
X-Received: by 10.84.129.3 with SMTP id 3mr19800011plb.150.1488733491785;
        Sun, 05 Mar 2017 09:04:51 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a77sm34505010pfl.91.2017.03.05.09.04.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 09:04:50 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: lustre: Use list_for_each_entry_safe
Date: Sun,  5 Mar 2017 22:36:46 +0530
Message-Id: <1488733610-22289-2-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.
This makes the iteration simpler and more readable.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/service.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/service.c b/drivers/staging/lustre/lustre/ptlrpc/service.c
index b8091c1..4e7dc1d 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/service.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/service.c
@@ -2314,6 +2314,7 @@ static void ptlrpc_svcpt_stop_threads(struct ptlrpc_service_part *svcpt)
 {
 	struct l_wait_info lwi = { 0 };
 	struct ptlrpc_thread *thread;
+	struct ptlrpc_thread *tmp;
 	LIST_HEAD(zombie);
 
 	CDEBUG(D_INFO, "Stopping threads for service %s\n",
@@ -2329,9 +2330,7 @@ static void ptlrpc_svcpt_stop_threads(struct ptlrpc_service_part *svcpt)
 
 	wake_up_all(&svcpt->scp_waitq);
 
-	while (!list_empty(&svcpt->scp_threads)) {
-		thread = list_entry(svcpt->scp_threads.next,
-				    struct ptlrpc_thread, t_link);
+	list_for_each_entry_safe(thread, tmp, &svcpt->scp_threads, t_link) {
 		if (thread_is_stopped(thread)) {
 			list_del(&thread->t_link);
 			list_add(&thread->t_link, &zombie);
-- 
2.7.4



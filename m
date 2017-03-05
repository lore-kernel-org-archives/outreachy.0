X-GM-THRID: 6394061646033059840
X-Received: by 10.98.72.205 with SMTP id q74mr2739150pfi.36.1488733500402;
        Sun, 05 Mar 2017 09:05:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.62.180 with SMTP id b49ls14991698otc.36.gmail; Sun, 05 Mar
 2017 09:05:00 -0800 (PST)
X-Received: by 10.157.56.251 with SMTP id k56mr4826796ote.28.1488733500090;
        Sun, 05 Mar 2017 09:05:00 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id y90si952042pfa.6.2017.03.05.09.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:05:00 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 187so3807661pgb.2
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=KoApKPPrl9KGJJM7hjPcnrtRCUP2Vr6K8OdCID1APMc=;
        b=RXyW6+tzGJxkAu6HKwqx8oaDuTXlhnIySCgdrQsSqFXpQnqPouq4J0KiTQ1ghOC5jQ
         H9NSXwbivAAGZp4XBdepm2aEl9tRZsoSsybAKTGAopInfGE9sTZGsvBZJd7ZYLtSlbtq
         RaEbRwdB9Had/YvhjMw9zbt7yVz5l8ORETRlDdaCD68aYELzRnFyyBLWrlWzFzp0+tYQ
         JzoQ6GT/A8t6XDTHzNzWbiC4IAMLTxl4Z90En3xWL69k+4uBImpVOKJXc6TXms6OUwI5
         jCNO32xL6JyS+WuaRWjxZ675L13fDI0T4OvWQORce7PzV/wo9Q3SjMWnAqnAhe41TMxx
         IhDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=KoApKPPrl9KGJJM7hjPcnrtRCUP2Vr6K8OdCID1APMc=;
        b=seV77tibqoFfbMmkvZlSn7eWux5bL3FJRByYqCqqKUN8MbR6hhnVmxepYkM5nMeKW0
         IgPd95jn/tDqs1gQ2a4+h4kT48nQ9VatilwvrxaSGVNgRvyiUGRujVMJ4n6wLOK732Qx
         WH862TZzBkTPoY8hnEiDrAnvEjgcjY/JpIzvhOA6OlLGupYMNVnvOShLvvY95vF4vtoZ
         wM27LyGFm9YV2qZTSR6tlWz24yOVb5TuhtWjpP0cOnuGEGFFAmNa5NGwGrDHR9I7D3DU
         sIe9C/5bDNY8tRGJ9nE+DBihmkJHFfSL+41BJ5BhEVYEh6cu4EIdnNif1fklHhc7XqBO
         2bBg==
X-Gm-Message-State: AMke39k20hHTovJdkMSoiyfiaLHArtcLAcbl/s4+837mT+uO/eXLuDx/loYd+t3xfGjfRQ==
X-Received: by 10.99.38.196 with SMTP id m187mr12155188pgm.195.1488733499832;
        Sun, 05 Mar 2017 09:04:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t133sm34802010pgc.24.2017.03.05.09.04.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 09:04:58 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: lustre: osc: Use list_for_each_entry_safe
Date: Sun,  5 Mar 2017 22:36:48 +0530
Message-Id: <1488733610-22289-4-git-send-email-singhalsimran0@gmail.com>
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
 drivers/staging/lustre/lustre/osc/osc_cache.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_cache.c b/drivers/staging/lustre/lustre/osc/osc_cache.c
index f8c5fc0..caa5fec 100644
--- a/drivers/staging/lustre/lustre/osc/osc_cache.c
+++ b/drivers/staging/lustre/lustre/osc/osc_cache.c
@@ -1996,6 +1996,7 @@ static unsigned int get_write_extents(struct osc_object *obj,
 {
 	struct client_obd *cli = osc_cli(obj);
 	struct osc_extent *ext;
+	struct osc_extent *tmp;
 	struct osc_extent *temp;
 	struct extent_rpc_data data = {
 		.erd_rpc_list = rpclist,
@@ -2014,9 +2015,7 @@ static unsigned int get_write_extents(struct osc_object *obj,
 	if (data.erd_page_count == data.erd_max_pages)
 		return data.erd_page_count;
 
-	while (!list_empty(&obj->oo_urgent_exts)) {
-		ext = list_entry(obj->oo_urgent_exts.next,
-				 struct osc_extent, oe_link);
+	list_for_each_entry_safe(ext, tmp, &obj->oo_urgent_exts, oe_link) {
 		if (!try_to_add_extent_for_io(cli, ext, &data))
 			return data.erd_page_count;
 
-- 
2.7.4



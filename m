X-GM-THRID: 6259697708137709568
X-Received: by 10.98.14.21 with SMTP id w21mr5621695pfi.7.1457726830606;
        Fri, 11 Mar 2016 12:07:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.182 with SMTP id c51ls2899196qga.60.gmail; Fri, 11 Mar
 2016 12:07:09 -0800 (PST)
X-Received: by 10.140.228.7 with SMTP id y7mr8523979qhb.27.1457726829644;
        Fri, 11 Mar 2016 12:07:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id h69si489244pfj.0.2016.03.11.12.07.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 12:07:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so8098119pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 12:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=UomroAzWXVCODULN14O0TkmEFwDY6QF1NOeBeXxOn2Y=;
        b=YbMyp71ZC7D0c7jvi54+WW/ksgun1+yS6zwWVSBL2KqicWayqszBjaJkQGMCWg1adk
         5N/73w8O9op+b+5NlRkv9ZgRaNYOLKfgp6m6esLLkpb1KyMUynTxomQ7Z4M+lTotYopc
         GkcBfjE3v5b41q64baHKjVJIXWDjolf+t7AkcrC9RgExxCWAG6soUZLMB7hKcLcxuPjv
         JdtLXEDcGA1vFKOw7HET1WwcSkVsSI+COwGCnTzw+Oen0OuuyKZ/d70MMVXbXmjK0Ws1
         AxnR8EuaUW+0qILzKYvA3uX8YDlGXOMiqUBEIp9ZYGB7o6CtSXqIftP8/sTxXO/e3D1/
         9Ajg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=UomroAzWXVCODULN14O0TkmEFwDY6QF1NOeBeXxOn2Y=;
        b=dw4uQs/XBiXoXZ4AyJKv+FOzcOvF9TEI+yr9Dzf+CIYYrnTEDTTNUhq5K00V89hblU
         yl4nPClzrhbJMftTAPXFrOu//7o+25XQ16qjUZIP3jyJpy4vE2yb64wFWCROcKeqdVFk
         XLsjgzvTEt6hKm/DxhKIx6d7u7S7f5ibDQ+tiIKvaAuHkQysZt0TRjf3C4JPxMSaFEJU
         dUm1WIhZ+MrI8i6RJVEAk7mzVvdlFlkNTz+g7MuXHGuBEAmHNm8awSbAL97ROZfBrYM+
         VWAhSFBKfkSNdfcuowb0FvFCoVsOWb2pWcdfYotUbpzgtXyEel3tWEZqhNTgNLHZxAV3
         2Enw==
X-Gm-Message-State: AD7BkJJ/ThWFIIIyEjzMUny9wVY6Egx7pgG3oeUirPGcH6SN7OF+BOSh+rAFd1fjD5sCsA==
X-Received: by 10.98.42.207 with SMTP id q198mr10826810pfq.103.1457726829470;
        Fri, 11 Mar 2016 12:07:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id xs10sm14891749pab.4.2016.03.11.12.07.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 12:07:08 -0800 (PST)
Date: Sat, 12 Mar 2016 01:36:51 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 08/13] staging: lustre: osc: Use list_for_each_entry_safe
Message-ID: <20160311200651.GA3005@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

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

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	-Combined all "Use list_for_each_entry" lustre patches into
	a patch-set

 drivers/staging/lustre/lustre/osc/osc_page.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
index 537107c..d720b1a 100644
--- a/drivers/staging/lustre/lustre/osc/osc_page.c
+++ b/drivers/staging/lustre/lustre/osc/osc_page.c
@@ -563,6 +563,7 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	struct cl_object *clobj = NULL;
 	struct cl_page **pvec;
 	struct osc_page *opg;
+	struct osc_page *temp;
 	int maxscan = 0;
 	int count = 0;
 	int index = 0;
@@ -582,14 +583,12 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	client_obd_list_lock(&cli->cl_lru_list_lock);
 	atomic_inc(&cli->cl_lru_shrinkers);
 	maxscan = min(target << 1, atomic_read(&cli->cl_lru_in_list));
-	while (!list_empty(&cli->cl_lru_list)) {
+	list_for_each_entry_safe(opg, temp, &cli->cl_lru_list, ops_lru) {
 		struct cl_page *page;

 		if (--maxscan < 0)
 			break;

-		opg = list_entry(cli->cl_lru_list.next, struct osc_page,
-				 ops_lru);
 		page = cl_page_top(opg->ops_cl.cpl_page);
 		if (cl_page_in_use_noref(page)) {
 			list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
--
2.1.4



X-GM-THRID: 6212618506149560320
X-Received: by 10.31.134.2 with SMTP id i2mr19898148vkd.8.1446487965188;
        Mon, 02 Nov 2015 10:12:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.69 with SMTP id 63ls2919830qgk.10.gmail; Mon, 02 Nov
 2015 10:12:44 -0800 (PST)
X-Received: by 10.13.217.75 with SMTP id b72mr11342930ywe.30.1446487964453;
        Mon, 02 Nov 2015 10:12:44 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id fa8si2096488pab.1.2015.11.02.10.12.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:12:44 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fh17so31283927pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 10:12:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/EdLzeGkpIMvF+uxHi19Ngj8d4VH/dx6xPc8oQbK0vM=;
        b=j5DebybwtFtBvBKypPs6Slw9RfcxM8DSylBi/E2wnMmVhnRObNzqWVnUhMV6VFhvte
         gIYBalvP2hl+fHMSadFGHHnDi0RM62osDvVaS3l3rNDgad0LQiZEjKL8AeNi0TxQ/5yN
         0W76x7LU7c3JypZ3cpa4cwGVCAYrvvoHmAkY8WrdR5Mc+2j835Eg0fGo1atEkkObckxu
         naCmnKwMXZpgLwd5K2NqRQrQNLYnRyskmTnRLDidhmbXOnsfYc6CEOloivYWaxGzXo1S
         hm0hlys1H8D9QOq332TlzEPelxKvXktaNeoSWhJSpCwKO1ad8r/yL/uHjzHIOuD0LktG
         c7NA==
X-Received: by 10.68.218.132 with SMTP id pg4mr28147402pbc.129.1446487964305;
        Mon, 02 Nov 2015 10:12:44 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id by6sm25311343pab.25.2015.11.02.10.12.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 10:12:43 -0800 (PST)
Date: Mon, 2 Nov 2015 23:42:37 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: tracefile: Remove wrapper function
Message-ID: <20151102181237.GA41744@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the function cfs_tage_from_list() and replace all its calls with
the function it wrapped.

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/tracefile.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
index 973c7c2..907214a 100644
--- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
@@ -59,12 +59,6 @@ static atomic_t cfs_tage_allocated = ATOMIC_INIT(0);
 static void put_pages_on_tcd_daemon_list(struct page_collection *pc,
 					 struct cfs_trace_cpu_data *tcd);
 
-static inline struct cfs_trace_page *
-cfs_tage_from_list(struct list_head *list)
-{
-	return list_entry(list, struct cfs_trace_page, linkage);
-}
-
 static struct cfs_trace_page *cfs_tage_alloc(gfp_t gfp)
 {
 	struct page	    *page;
@@ -142,14 +136,16 @@ cfs_trace_get_tage_try(struct cfs_trace_cpu_data *tcd, unsigned long len)
 
 	if (tcd->tcd_cur_pages > 0) {
 		__LASSERT(!list_empty(&tcd->tcd_pages));
-		tage = cfs_tage_from_list(tcd->tcd_pages.prev);
+		tage = list_entry(tcd->tcd_pages.prev,
+				  struct cfs_trace_page, linkage);
 		if (tage->used + len <= PAGE_CACHE_SIZE)
 			return tage;
 	}
 
 	if (tcd->tcd_cur_pages < tcd->tcd_max_pages) {
 		if (tcd->tcd_cur_stock_pages > 0) {
-			tage = cfs_tage_from_list(tcd->tcd_stock_pages.prev);
+			tage = list_entry(tcd->tcd_stock_pages.prev,
+					  struct cfs_trace_page, linkage);
 			--tcd->tcd_cur_stock_pages;
 			list_del_init(&tage->linkage);
 		} else {
@@ -233,7 +229,8 @@ static struct cfs_trace_page *cfs_trace_get_tage(struct cfs_trace_cpu_data *tcd,
 	if (thread_running)
 		cfs_tcd_shrink(tcd);
 	if (tcd->tcd_cur_pages > 0) {
-		tage = cfs_tage_from_list(tcd->tcd_pages.next);
+		tage = list_entry(tcd->tcd_pages.next,
+				  struct cfs_trace_page, linkage);
 		tage->used = 0;
 		cfs_tage_to_tail(tage, &tcd->tcd_pages);
 	}
@@ -607,7 +604,8 @@ static void put_pages_on_tcd_daemon_list(struct page_collection *pc,
 			struct cfs_trace_page *victim;
 
 			__LASSERT(!list_empty(&tcd->tcd_daemon_pages));
-			victim = cfs_tage_from_list(tcd->tcd_daemon_pages.next);
+			victim = list_entry(tcd->tcd_daemon_pages.next,
+					    struct cfs_trace_page, linkage);
 
 			__LASSERT_TAGE_INVARIANT(victim);
 
-- 
2.1.0



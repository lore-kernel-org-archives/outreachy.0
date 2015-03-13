X-GM-THRID: 7913154281472
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d335c0b66309892f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.52.122.75 with SMTP id lq11mr49980163vdb.4.1426275260178;
        Fri, 13 Mar 2015 12:34:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.111.199 with SMTP id ik7ls709953obb.88.gmail; Fri, 13 Mar
 2015 12:34:19 -0700 (PDT)
X-Received: by 10.182.246.67 with SMTP id xu3mr53207852obc.18.1426275259990;
        Fri, 13 Mar 2015 12:34:19 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id l3si552768pdo.0.2015.03.13.12.34.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:34:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabrd3 with SMTP id rd3so31770653pab.6
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T4MU76T/PHE9Vpq+beI/ytsmxlVAjlcjn7v8d3iDFsg=;
        b=n5vdvqnvPxOgPx4ayzG3oqEJMgNx45/YezcQGQfzZd8syqO3RiHRbvTZf7Vu53baXI
         pUep7wrSJkN3f9tSHsrRZGoMzCteT5kMjgqU+Tdp66E37mUksJEr1cE7nOqN7Xs+1LmP
         ORaDluBgQ3j/vKC6nhVazRHe+OnZ15RYioALqpZB43eu1EaT6vl8bpyEub+J8AaQ2cHB
         Cm0dIXKQe35buxtqip9pdzvH0gOXqVvZFRMlXXb5trhMUrssDo8gwtJDesswXc7SfVcW
         wu0wsMHoCfjJdZmcE2oMD+ISSaWa7iHNA0cAZ8UiXmjelquiJZBvn6bGApCTxnM27VLT
         fLvg==
X-Received: by 10.70.126.167 with SMTP id mz7mr105270426pdb.109.1426275259796;
        Fri, 13 Mar 2015 12:34:19 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.44.252])
        by mx.google.com with ESMTPSA id j5sm4777540pdo.60.2015.03.13.12.34.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 12:34:19 -0700 (PDT)
From: Somya Anand <somyaanand214@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH v2  4/4] Staging: lustre: Iterate list using list_for_each_entry
Date: Sat, 14 Mar 2015 01:03:10 +0530
Message-Id: <1426275190-9883-4-git-send-email-somyaanand214@gmail.com>
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

 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |  6 ++----
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 14 ++++++--------
 2 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 109f44c..72a2837 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -1893,13 +1893,11 @@ kiblnd_destroy_pmr_pool(kib_pool_t *pool)
 {
 	kib_pmr_pool_t *ppo = container_of(pool, kib_pmr_pool_t, ppo_pool);
 	kib_phys_mr_t  *pmr;
+	kib_phys_mr_t *tmp;
 
 	LASSERT(pool->po_allocated == 0);
 
-	while (!list_empty(&pool->po_free_list)) {
-		pmr = list_entry(pool->po_free_list.next,
-				     kib_phys_mr_t, pmr_list);
-
+	list_for_each_entry_safe(pmr, tmp, &pool->po_free_list, pmr_list) {
 		LASSERT(pmr->pmr_mr == NULL);
 		list_del(&pmr->pmr_list);
 
diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index c762dbe..2e156a9 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -1936,14 +1936,13 @@ kiblnd_handle_early_rxs(kib_conn_t *conn)
 {
 	unsigned long    flags;
 	kib_rx_t	*rx;
+	kib_rx_t *tmp;
 
 	LASSERT(!in_interrupt());
 	LASSERT(conn->ibc_state >= IBLND_CONN_ESTABLISHED);
 
 	write_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
-	while (!list_empty(&conn->ibc_early_rxs)) {
-		rx = list_entry(conn->ibc_early_rxs.next,
-				    kib_rx_t, rx_list);
+	list_for_each_entry_safe(rx, tmp, &conn->ibc_early_rxs, rx_list) {
 		list_del(&rx->rx_list);
 		write_unlock_irqrestore(&kiblnd_data.kib_global_lock, flags);
 
@@ -2074,6 +2073,7 @@ kiblnd_connreq_done(kib_conn_t *conn, int status)
 {
 	kib_peer_t	*peer = conn->ibc_peer;
 	kib_tx_t	  *tx;
+	kib_tx_t *tmp;
 	struct list_head	 txs;
 	unsigned long      flags;
 	int		active;
@@ -2150,8 +2150,7 @@ kiblnd_connreq_done(kib_conn_t *conn, int status)
 
 	/* Schedule blocked txs */
 	spin_lock(&conn->ibc_lock);
-	while (!list_empty(&txs)) {
-		tx = list_entry(txs.next, kib_tx_t, tx_list);
+	list_for_each_entry_safe(tx, tmp, &txs, tx_list) {
 		list_del(&tx->tx_list);
 
 		kiblnd_queue_tx_locked(tx, conn);
@@ -3027,6 +3026,7 @@ kiblnd_check_conns(int idx)
 	struct list_head    *ptmp;
 	kib_peer_t    *peer;
 	kib_conn_t    *conn;
+	kib_conn_t *tmp;
 	struct list_head    *ctmp;
 	unsigned long  flags;
 
@@ -3080,9 +3080,7 @@ kiblnd_check_conns(int idx)
 	/* Handle timeout by closing the whole
 	 * connection. We can only be sure RDMA activity
 	 * has ceased once the QP has been modified. */
-	while (!list_empty(&closes)) {
-		conn = list_entry(closes.next,
-				      kib_conn_t, ibc_connd_list);
+	list_for_each_entry_safe(conn, tmp, &closes, ibc_connd_list) {
 		list_del(&conn->ibc_connd_list);
 		kiblnd_close_conn(conn, -ETIMEDOUT);
 		kiblnd_conn_decref(conn);
-- 
1.9.1



X-GM-THRID: 6211892414504763392
X-Received: by 10.112.12.131 with SMTP id y3mr1414lbb.5.1446318915683;
        Sat, 31 Oct 2015 12:15:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.7.203 with SMTP id 194ls355079wmh.6.gmail; Sat, 31 Oct 2015
 12:15:15 -0700 (PDT)
X-Received: by 10.28.173.83 with SMTP id w80mr843045wme.0.1446318915265;
        Sat, 31 Oct 2015 12:15:15 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id t2si265909wme.1.2015.10.31.12.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 12:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x235.google.com with SMTP id f134so32457954wmf.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 12:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=cdZ+K5/f76rfwhmy5Ono6GGW1WyUv9NsUC37+kLPv38=;
        b=Skks/muB4Pv4pc/VHcI5dGlNXKSWDnLTKrBm/Y5kLGKO0FmpGauK7/nVMcvs/ymAR6
         Crx82hKG1E0GEOTS3Rj3yEmKj3/AyFEI5Ko69JmxobQRzUp/ffWrCRWuj0jTQrwPq+3T
         SwQKO4g337cBMcZL8M4+37tRYRIZxGpXUdKL6lrt0AVOxl0G+2v3poDeF679rWlQnveW
         g8Pr4vRzeiwfqDTWoY3OAdfUzyiNlf+xLErb8hz1vMpEpx53BtVJaz9XEJDS+KZTg3vL
         GstZrJrp9mB7ogb7xeeeKSmVtSFAY5nTCNQuB3tGp85ykADw6MSku0xqXdOfrjpS/pjS
         2hGg==
X-Received: by 10.28.19.78 with SMTP id 75mr5138943wmt.101.1446318915172;
        Sat, 31 Oct 2015 12:15:15 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id q1sm13390585wje.39.2015.10.31.12.15.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 12:15:14 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: lustre: lnet: Remove typedef cfs_workitem_t
Date: Sun,  1 Nov 2015 00:44:58 +0530
Message-Id: <1446318898-27986-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446318898-27986-1-git-send-email-shraddha.6596@gmail.com>
References: <1446318898-27986-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.56351341.0074,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The Linux kernel coding style guidelines suggest not using typedefs
for structure types. This patch gets rid of the typedef for
cfs_workitem_t.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h    |  4 ++--
 .../staging/lustre/include/linux/libcfs/libcfs_workitem.h    | 12 ++++++------
 drivers/staging/lustre/lnet/selftest/selftest.h              |  6 +++---
 drivers/staging/lustre/lustre/libcfs/hash.c                  |  6 +++---
 drivers/staging/lustre/lustre/libcfs/workitem.c              | 10 +++++-----
 5 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
index 70b8b29..ca1c1eb 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_hash.h
@@ -249,7 +249,7 @@ struct cfs_hash {
 	/** # of iterators (caller of cfs_hash_for_each_*) */
 	__u32		       hs_iterators;
 	/** rehash workitem */
-	cfs_workitem_t	      hs_rehash_wi;
+	struct cfs_workitem	      hs_rehash_wi;
 	/** refcount on this hash table */
 	atomic_t		hs_refcount;
 	/** rehash buckets-table */
@@ -266,7 +266,7 @@ struct cfs_hash {
 	/** bits when we found the max depth */
 	unsigned int		hs_dep_bits;
 	/** workitem to output max depth */
-	cfs_workitem_t	      hs_dep_wi;
+	struct cfs_workitem	      hs_dep_wi;
 #endif
 	/** name of htable */
 	char			hs_name[0];
diff --git a/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h b/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h
index 5cc64f3..f9b20c5 100644
--- a/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h
+++ b/drivers/staging/lustre/include/linux/libcfs/libcfs_workitem.h
@@ -73,7 +73,7 @@ int cfs_wi_sched_create(char *name, struct cfs_cpt_table *cptab, int cpt,
 struct cfs_workitem;
 
 typedef int (*cfs_wi_action_t) (struct cfs_workitem *);
-typedef struct cfs_workitem {
+struct cfs_workitem {
 	/** chain on runq or rerunq */
 	struct list_head       wi_list;
 	/** working function */
@@ -84,10 +84,10 @@ typedef struct cfs_workitem {
 	unsigned short   wi_running:1;
 	/** scheduled */
 	unsigned short   wi_scheduled:1;
-} cfs_workitem_t;
+};
 
 static inline void
-cfs_wi_init(cfs_workitem_t *wi, void *data, cfs_wi_action_t action)
+cfs_wi_init(struct cfs_workitem *wi, void *data, cfs_wi_action_t action)
 {
 	INIT_LIST_HEAD(&wi->wi_list);
 
@@ -97,9 +97,9 @@ cfs_wi_init(cfs_workitem_t *wi, void *data, cfs_wi_action_t action)
 	wi->wi_action    = action;
 }
 
-void cfs_wi_schedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi);
-int  cfs_wi_deschedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi);
-void cfs_wi_exit(struct cfs_wi_sched *sched, cfs_workitem_t *wi);
+void cfs_wi_schedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi);
+int  cfs_wi_deschedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi);
+void cfs_wi_exit(struct cfs_wi_sched *sched, struct cfs_workitem *wi);
 
 int  cfs_wi_startup(void);
 void cfs_wi_shutdown(void);
diff --git a/drivers/staging/lustre/lnet/selftest/selftest.h b/drivers/staging/lustre/lnet/selftest/selftest.h
index cbc8699..354fe20 100644
--- a/drivers/staging/lustre/lnet/selftest/selftest.h
+++ b/drivers/staging/lustre/lnet/selftest/selftest.h
@@ -176,13 +176,13 @@ typedef int (*swi_action_t) (struct swi_workitem *);
 
 typedef struct swi_workitem {
 	struct cfs_wi_sched *swi_sched;
-	cfs_workitem_t      swi_workitem;
+	struct cfs_workitem      swi_workitem;
 	swi_action_t        swi_action;
 	int                 swi_state;
 } swi_workitem_t;
 
 /* server-side state of a RPC */
-typedef struct srpc_server_rpc {
+struct srpc_server_rpc {
 	/* chain on srpc_service::*_rpcq */
 	struct list_head       srpc_list;
 	struct srpc_service_cd *srpc_scd;
@@ -462,7 +462,7 @@ srpc_serv_is_framework(struct srpc_service *svc)
 }
 
 static inline int
-swi_wi_action(cfs_workitem_t *wi)
+swi_wi_action(struct cfs_workitem *wi)
 {
 	swi_workitem_t *swi = container_of(wi, swi_workitem_t, swi_workitem);
 
diff --git a/drivers/staging/lustre/lustre/libcfs/hash.c b/drivers/staging/lustre/lustre/libcfs/hash.c
index 0308744..47ccd87 100644
--- a/drivers/staging/lustre/lustre/libcfs/hash.c
+++ b/drivers/staging/lustre/lustre/libcfs/hash.c
@@ -971,10 +971,10 @@ cfs_hash_buckets_realloc(struct cfs_hash *hs, struct cfs_hash_bucket **old_bkts,
  * @flags    - CFS_HASH_REHASH enable synamic hash resizing
  *	   - CFS_HASH_SORT enable chained hash sort
  */
-static int cfs_hash_rehash_worker(cfs_workitem_t *wi);
+static int cfs_hash_rehash_worker(struct cfs_workitem *wi);
 
 #if CFS_HASH_DEBUG_LEVEL >= CFS_HASH_DEBUG_1
-static int cfs_hash_dep_print(cfs_workitem_t *wi)
+static int cfs_hash_dep_print(struct cfs_workitem *wi)
 {
 	struct cfs_hash *hs = container_of(wi, struct cfs_hash, hs_dep_wi);
 	int	 dep;
@@ -1874,7 +1874,7 @@ cfs_hash_rehash_bd(struct cfs_hash *hs, struct cfs_hash_bd *old)
 }
 
 static int
-cfs_hash_rehash_worker(cfs_workitem_t *wi)
+cfs_hash_rehash_worker(struct cfs_workitem *wi)
 {
 	struct cfs_hash	 *hs = container_of(wi, struct cfs_hash, hs_rehash_wi);
 	struct cfs_hash_bucket **bkts;
diff --git a/drivers/staging/lustre/lustre/libcfs/workitem.c b/drivers/staging/lustre/lustre/libcfs/workitem.c
index e1143a5..2dd0a0c 100644
--- a/drivers/staging/lustre/lustre/libcfs/workitem.c
+++ b/drivers/staging/lustre/lustre/libcfs/workitem.c
@@ -120,7 +120,7 @@ cfs_wi_sched_cansleep(struct cfs_wi_sched *sched)
  * 1. when it returns no one shall try to schedule the workitem.
  */
 void
-cfs_wi_exit(struct cfs_wi_sched *sched, cfs_workitem_t *wi)
+cfs_wi_exit(struct cfs_wi_sched *sched, struct cfs_workitem *wi)
 {
 	LASSERT(!in_interrupt()); /* because we use plain spinlock */
 	LASSERT(!sched->ws_stopping);
@@ -149,7 +149,7 @@ EXPORT_SYMBOL(cfs_wi_exit);
  * cancel schedule request of workitem \a wi
  */
 int
-cfs_wi_deschedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi)
+cfs_wi_deschedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi)
 {
 	int	rc;
 
@@ -190,7 +190,7 @@ EXPORT_SYMBOL(cfs_wi_deschedule);
  * be added, and even dynamic creation of serialised queues might be supported.
  */
 void
-cfs_wi_schedule(struct cfs_wi_sched *sched, cfs_workitem_t *wi)
+cfs_wi_schedule(struct cfs_wi_sched *sched, struct cfs_workitem *wi)
 {
 	LASSERT(!in_interrupt()); /* because we use plain spinlock */
 	LASSERT(!sched->ws_stopping);
@@ -240,12 +240,12 @@ cfs_wi_scheduler (void *arg)
 	while (!sched->ws_stopping) {
 		int	     nloops = 0;
 		int	     rc;
-		cfs_workitem_t *wi;
+		struct cfs_workitem *wi;
 
 		while (!list_empty(&sched->ws_runq) &&
 		       nloops < CFS_WI_RESCHED) {
 			wi = list_entry(sched->ws_runq.next,
-					    cfs_workitem_t, wi_list);
+					    struct cfs_workitem, wi_list);
 			LASSERT(wi->wi_scheduled && !wi->wi_running);
 
 			list_del_init(&wi->wi_list);
-- 
2.1.4



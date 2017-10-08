X-GM-THRID: 6474404930917498880
X-Received: by 10.99.127.3 with SMTP id a3mr588485pgd.128.1507472027765;
        Sun, 08 Oct 2017 07:13:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.232.202 with SMTP id x10ls886298plm.3.gmail; Sun, 08 Oct
 2017 07:13:46 -0700 (PDT)
X-Received: by 10.98.42.7 with SMTP id q7mr497559pfq.47.1507472026716;
        Sun, 08 Oct 2017 07:13:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507472026; cv=none;
        d=google.com; s=arc-20160816;
        b=mUM+p51q4XoVeJ2TPuhzfg8ke+fl9JKYjoVq2EeI99FujLYcaJhU7b5XTLBmkpbW22
         +JUBfYbKJxE8D05IXCBThCQMnqNAGHlphYDpNVlWRH9HszaZHXHV8sbvnh7CExvkwWyP
         3bw/2koPTd8vOVMa/Ewf2W5YnLt0kz2ydzCJQIKUCCXP9bPtSUpehYI+WP0lToaw7Oi4
         zK9zuILIiJelUbreIsjAMeAZDNDAmSRXJOKo7nhdHBhDsi6HnNpGxdnNc9aKkfMsX3pX
         NuXOrwFcxTpoRzHdHrPgwb85MShB5690E5vJtKxo6pnMRDnLi3mT5tgO9Gl3DlWrwVgz
         3JsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=00cQzSYFlWASOW48HFZyqtYby7ucgrCCs7gGf8hXeyg=;
        b=XEjHmvnsqC8Tu7l3NKkkZj/8lqzgCD2hKSLTwvcMdSQDT/TlyJ2FihNIXom5IiTPpg
         9+CDJFEsYXUejaPSYXEi3jSB3MIkxkSJ0/UL3F02U24rb+608zrq35bAt12zx2QBW+7A
         Ya509x0QInLHlkKiqfX6ZHd6yQrGm5V6LGqAuIRekrH912LuptcEYFKRFLatk88Ez9XM
         I6Wum9XFYjAZFE1AoATkCfKFgB2rkh9nbbWa1IyCAQhKFZaa0NNgts3qrlOue5V1YRsd
         NW/qRPpiiZJuiH4kw29njcnA5mSbwjGuoFDjSBuYJTGyHbUUMp/HQSsRNP5sAJBpCgb/
         xdag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HNhyifeD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id s81si699723pfg.19.2017.10.08.07.13.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Oct 2017 07:13:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HNhyifeD;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o1so22701226pga.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Oct 2017 07:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=00cQzSYFlWASOW48HFZyqtYby7ucgrCCs7gGf8hXeyg=;
        b=HNhyifeDkwOjflcQ6ghHi0H1ifVy9IiPL+zdrku/jkGZ+NwwrdosNvmkvno/IXU5st
         dliQmFipfZaN64sVTlAa4kPGF+p+CEKx02aWBSsKNF/kVrddGQO1hFQidPj3eWezD/zE
         lp7tZpEjHiZvAG3g9ravZ+ja2o6jfpEEE7yQILh3WIH3aI+zs1YSde3YowOIbscGdDc1
         /5r0ZeyaaNaQL7i+vZ2+ybc4l/Gdnl6TkfzH7ftnivLkqz7j94DzW6PBxcBREIIDC2VV
         sgsPtu+IxRdIFVHRSq5z7Tl5BWTqMGJiSqAOLa/8qJ/7CpVjPfvqY0fx9HAPFHwgR77j
         AKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=00cQzSYFlWASOW48HFZyqtYby7ucgrCCs7gGf8hXeyg=;
        b=TqIEgAifWBjI/nDiuchdG/5tbbIj+Ojz0JK4vvue06IeRHljLP9lSGLXJdAK3II63h
         194E8dxQ0SxaGrBMHjiQPqAWdNIYGQekOB1lfg/GOnAJ1C/H7QS5CqSLn2TduoINW+V9
         rfZRsf8GoQErSfcdkuEM3r3xVth2GtM26WZoOqw0nbxiuF92KcBrmdisNKLdkbDe8WEo
         fwIzawUIx/L5zooH4TKgY+PqGR4lRci9tf/XzHwp1jlRLXxqwKCPg2qrkQg9yQj5aYJY
         RG7ow4ctfXTrQLHfg1kuEOXeQbQOwaiqJttLdA3t2L5mJqLZsq4DRXTHM9BiUnKRkFgD
         +xpg==
X-Gm-Message-State: AMCzsaUj/KpPq806bm2Tl9zyDvR4GHiDdIvE+6GdBevwtOK6Xrp4yFHc
	MJjnrWQC2pVYEBGInNBjqEM=
X-Google-Smtp-Source: AOwi7QCoo1jSRJ3pY0s3qI0BxFQbeOqy8PN9mTo/+/NHR1gY5LINI/bz65Y9DGSUc6UhQxUsmGHXZg==
X-Received: by 10.84.174.197 with SMTP id r63mr6710667plb.235.1507472026246;
        Sun, 08 Oct 2017 07:13:46 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([45.127.232.78])
        by smtp.gmail.com with ESMTPSA id x27sm11073344pfe.172.2017.10.08.07.13.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 08 Oct 2017 07:13:45 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: lustre: Replace list_for_each with list_for_each_entry
Date: Sun,  8 Oct 2017 19:43:33 +0530
Message-Id: <1507472013-23716-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

list_for_each is a macro that iterates over the elements of a list.
list_entry is a function that takes as argument a list pointer and
returns the structure that is pointed to.
list_for_each_entry is a macro that iterates over the structures in the
list, rather than exposing the list spine.

Here the  list is only used for its entries,
and thus list_for_each_entry can be used instead of the
composition of list_for_each and list_entry.

This patch is with the help of following Coccinelle script:

@@
expression l, list;
type t1, t2;
identifier p, v;
iterator name list_for_each_entry, list_for_each;
@@

- t1 *p;
...when != p
- list_for_each(p, l)
+ list_for_each_entry(v, l, list)
{
... when != p
    when != v
    when != t2 *v;
- v = list_entry(p, t2, list);
... when != p
}
...when != p

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
Changes in v2:
	- changed coccinelle script

 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |  4 +--
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 11 ++------
 .../staging/lustre/lnet/klnds/socklnd/socklnd_cb.c | 16 +++--------
 drivers/staging/lustre/lnet/lnet/api-ni.c          | 31 +++++-----------------
 drivers/staging/lustre/lnet/lnet/config.c          |  5 +---
 drivers/staging/lustre/lustre/ldlm/ldlm_extent.c   |  5 +---
 drivers/staging/lustre/lustre/ldlm/ldlm_lock.c     |  5 +---
 drivers/staging/lustre/lustre/obdclass/genops.c    |  4 +--
 .../staging/lustre/lustre/obdecho/echo_client.c    |  4 +--
 drivers/staging/lustre/lustre/ptlrpc/client.c      |  6 +----
 10 files changed, 18 insertions(+), 73 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 64763aa..cd81424 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -384,11 +384,9 @@ struct kib_peer *kiblnd_find_peer_locked(lnet_nid_t nid)
 	 * that this creates
 	 */
 	struct list_head *peer_list = kiblnd_nid2peerlist(nid);
-	struct list_head *tmp;
 	struct kib_peer *peer;
 
-	list_for_each(tmp, peer_list) {
-		peer = list_entry(tmp, struct kib_peer, ibp_list);
+	list_for_each_entry(peer, peer_list, ibp_list) {
 		LASSERT(!kiblnd_peer_idle(peer));
 
 		if (peer->ibp_nid != nid)
diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index 8fc191d..3106ffe 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -3128,11 +3128,7 @@ static int
 kiblnd_check_txs_locked(struct kib_conn *conn, struct list_head *txs)
 {
 	struct kib_tx *tx;
-	struct list_head *ttmp;
-
-	list_for_each(ttmp, txs) {
-		tx = list_entry(ttmp, struct kib_tx, tx_list);
-
+	list_for_each_entry(tx, txs, tx_list) {
 		if (txs != &conn->ibc_active_txs) {
 			LASSERT(tx->tx_queued);
 		} else {
@@ -3167,7 +3163,6 @@ kiblnd_check_conns(int idx)
 	LIST_HEAD(closes);
 	LIST_HEAD(checksends);
 	struct list_head *peers = &kiblnd_data.kib_peers[idx];
-	struct list_head *ptmp;
 	struct kib_peer *peer;
 	struct kib_conn *conn;
 	struct kib_conn *temp;
@@ -3182,9 +3177,7 @@ kiblnd_check_conns(int idx)
 	 */
 	read_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
 
-	list_for_each(ptmp, peers) {
-		peer = list_entry(ptmp, struct kib_peer, ibp_list);
-
+	list_for_each_entry(peer, peers, ibp_list) {
 		list_for_each(ctmp, &peer->ibp_conns) {
 			int timedout;
 			int sendnoop;
diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
index 6b38d5a..76932e3 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
@@ -793,12 +793,9 @@ struct ksock_route *
 ksocknal_find_connectable_route_locked(struct ksock_peer *peer)
 {
 	unsigned long now = cfs_time_current();
-	struct list_head *tmp;
 	struct ksock_route *route;
 
-	list_for_each(tmp, &peer->ksnp_routes) {
-		route = list_entry(tmp, struct ksock_route, ksnr_list);
-
+	list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
 		LASSERT(!route->ksnr_connecting || route->ksnr_scheduled);
 
 		/* connections being established */
@@ -829,12 +826,9 @@ ksocknal_find_connectable_route_locked(struct ksock_peer *peer)
 struct ksock_route *
 ksocknal_find_connecting_route_locked(struct ksock_peer *peer)
 {
-	struct list_head *tmp;
 	struct ksock_route *route;
 
-	list_for_each(tmp, &peer->ksnp_routes) {
-		route = list_entry(tmp, struct ksock_route, ksnr_list);
-
+	list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
 		LASSERT(!route->ksnr_connecting || route->ksnr_scheduled);
 
 		if (route->ksnr_scheduled)
@@ -2280,13 +2274,9 @@ ksocknal_find_timed_out_conn(struct ksock_peer *peer)
 {
 	/* We're called with a shared lock on ksnd_global_lock */
 	struct ksock_conn *conn;
-	struct list_head *ctmp;
-
-	list_for_each(ctmp, &peer->ksnp_conns) {
+	list_for_each_entry(conn, &peer->ksnp_conns, ksnc_list) {
 		int error;
 
-		conn = list_entry(ctmp, struct ksock_conn, ksnc_list);
-
 		/* Don't need the {get,put}connsock dance to deref ksnc_sock */
 		LASSERT(!conn->ksnc_closing);
 
diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c b/drivers/staging/lustre/lnet/lnet/api-ni.c
index ad83503..d1e68cf 100644
--- a/drivers/staging/lustre/lnet/lnet/api-ni.c
+++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
@@ -269,12 +269,7 @@ static struct lnet_lnd *
 lnet_find_lnd_by_type(__u32 type)
 {
 	struct lnet_lnd *lnd;
-	struct list_head *tmp;
-
-	/* holding lnd mutex */
-	list_for_each(tmp, &the_lnet.ln_lnds) {
-		lnd = list_entry(tmp, struct lnet_lnd, lnd_list);
-
+	list_for_each_entry(lnd, &the_lnet.ln_lnds, lnd_list) {
 		if (lnd->lnd_type == type)
 			return lnd;
 	}
@@ -656,14 +651,11 @@ lnet_unprepare(void)
 struct lnet_ni  *
 lnet_net2ni_locked(__u32 net, int cpt)
 {
-	struct list_head *tmp;
 	struct lnet_ni *ni;
 
 	LASSERT(cpt != LNET_LOCK_EX);
 
-	list_for_each(tmp, &the_lnet.ln_nis) {
-		ni = list_entry(tmp, struct lnet_ni, ni_list);
-
+	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
 		if (LNET_NIDNET(ni->ni_nid) == net) {
 			lnet_ni_addref_locked(ni, cpt);
 			return ni;
@@ -770,13 +762,10 @@ struct lnet_ni  *
 lnet_nid2ni_locked(lnet_nid_t nid, int cpt)
 {
 	struct lnet_ni *ni;
-	struct list_head *tmp;
 
 	LASSERT(cpt != LNET_LOCK_EX);
 
-	list_for_each(tmp, &the_lnet.ln_nis) {
-		ni = list_entry(tmp, struct lnet_ni, ni_list);
-
+	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
 		if (ni->ni_nid == nid) {
 			lnet_ni_addref_locked(ni, cpt);
 			return ni;
@@ -806,14 +795,11 @@ lnet_count_acceptor_nis(void)
 {
 	/* Return the # of NIs that need the acceptor. */
 	int count = 0;
-	struct list_head *tmp;
 	struct lnet_ni *ni;
 	int cpt;
 
 	cpt = lnet_net_lock_current();
-	list_for_each(tmp, &the_lnet.ln_nis) {
-		ni = list_entry(tmp, struct lnet_ni, ni_list);
-
+	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
 		if (ni->ni_lnd->lnd_accept)
 			count++;
 	}
@@ -1731,18 +1717,16 @@ static int
 lnet_get_net_config(struct lnet_ioctl_config_data *config)
 {
 	struct lnet_ni *ni;
-	struct list_head *tmp;
 	int idx = config->cfg_count;
 	int cpt, i = 0;
 	int rc = -ENOENT;
 
 	cpt = lnet_net_lock_current();
 
-	list_for_each(tmp, &the_lnet.ln_nis) {
+	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
 		if (i++ != idx)
 			continue;
 
-		ni = list_entry(tmp, struct lnet_ni, ni_list);
 		lnet_ni_lock(ni);
 		lnet_fill_ni_info(ni, config);
 		lnet_ni_unlock(ni);
@@ -2103,7 +2087,6 @@ int
 LNetGetId(unsigned int index, struct lnet_process_id *id)
 {
 	struct lnet_ni *ni;
-	struct list_head *tmp;
 	int cpt;
 	int rc = -ENOENT;
 
@@ -2111,12 +2094,10 @@ LNetGetId(unsigned int index, struct lnet_process_id *id)
 
 	cpt = lnet_net_lock_current();
 
-	list_for_each(tmp, &the_lnet.ln_nis) {
+	list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
 		if (index--)
 			continue;
 
-		ni = list_entry(tmp, struct lnet_ni, ni_list);
-
 		id->nid = ni->ni_nid;
 		id->pid = the_lnet.ln_pid;
 		rc = 0;
diff --git a/drivers/staging/lustre/lnet/lnet/config.c b/drivers/staging/lustre/lnet/lnet/config.c
index 26841a7..72bba89 100644
--- a/drivers/staging/lustre/lnet/lnet/config.c
+++ b/drivers/staging/lustre/lnet/lnet/config.c
@@ -78,12 +78,9 @@ lnet_issep(char c)
 int
 lnet_net_unique(__u32 net, struct list_head *nilist)
 {
-	struct list_head *tmp;
 	struct lnet_ni *ni;
 
-	list_for_each(tmp, nilist) {
-		ni = list_entry(tmp, struct lnet_ni, ni_list);
-
+	list_for_each_entry(ni, nilist, ni_list) {
 		if (LNET_NIDNET(ni->ni_nid) == net)
 			return 0;
 	}
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
index f9b4c0a..cefbfad 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_extent.c
@@ -63,7 +63,6 @@
 __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __u64 old_kms)
 {
 	struct ldlm_resource *res = lock->l_resource;
-	struct list_head *tmp;
 	struct ldlm_lock *lck;
 	__u64 kms = 0;
 
@@ -73,9 +72,7 @@ __u64 ldlm_extent_shift_kms(struct ldlm_lock *lock, __u64 old_kms)
 	 */
 	ldlm_set_kms_ignore(lock);
 
-	list_for_each(tmp, &res->lr_granted) {
-		lck = list_entry(tmp, struct ldlm_lock, l_res_link);
-
+	list_for_each_entry(lck, &res->lr_granted, l_res_link) {
 		if (ldlm_is_kms_ignore(lck))
 			continue;
 
diff --git a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
index adfc0b4..e23cdec 100644
--- a/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
+++ b/drivers/staging/lustre/lustre/ldlm/ldlm_lock.c
@@ -885,12 +885,9 @@ static void search_granted_lock(struct list_head *queue,
 				struct ldlm_lock *req,
 				struct sl_insert_point *prev)
 {
-	struct list_head *tmp;
 	struct ldlm_lock *lock, *mode_end, *policy_end;
 
-	list_for_each(tmp, queue) {
-		lock = list_entry(tmp, struct ldlm_lock, l_res_link);
-
+	list_for_each_entry(lock, queue, l_res_link) {
 		mode_end = list_prev_entry(lock, l_sl_mode);
 
 		if (lock->l_req_mode != req->l_req_mode) {
diff --git a/drivers/staging/lustre/lustre/obdclass/genops.c b/drivers/staging/lustre/lustre/obdclass/genops.c
index 739bfb9..6d93d9c 100644
--- a/drivers/staging/lustre/lustre/obdclass/genops.c
+++ b/drivers/staging/lustre/lustre/obdclass/genops.c
@@ -86,12 +86,10 @@ static void obd_device_free(struct obd_device *obd)
 
 static struct obd_type *class_search_type(const char *name)
 {
-	struct list_head *tmp;
 	struct obd_type *type;
 
 	spin_lock(&obd_types_lock);
-	list_for_each(tmp, &obd_types) {
-		type = list_entry(tmp, struct obd_type, typ_chain);
+	list_for_each_entry(type, &obd_types, typ_chain) {
 		if (strcmp(type->typ_name, name) == 0) {
 			spin_unlock(&obd_types_lock);
 			return type;
diff --git a/drivers/staging/lustre/lustre/obdecho/echo_client.c b/drivers/staging/lustre/lustre/obdecho/echo_client.c
index f9808d1..172037c 100644
--- a/drivers/staging/lustre/lustre/obdecho/echo_client.c
+++ b/drivers/staging/lustre/lustre/obdecho/echo_client.c
@@ -949,12 +949,10 @@ static int cl_echo_cancel0(struct lu_env *env, struct echo_device *ed,
 {
 	struct echo_client_obd *ec = ed->ed_ec;
 	struct echo_lock       *ecl = NULL;
-	struct list_head	     *el;
 	int found = 0, still_used = 0;
 
 	spin_lock(&ec->ec_lock);
-	list_for_each(el, &ec->ec_locks) {
-		ecl = list_entry(el, struct echo_lock, el_chain);
+	list_for_each_entry(ecl, &ec->ec_locks, el_chain) {
 		CDEBUG(D_INFO, "ecl: %p, cookie: %#llx\n", ecl, ecl->el_cookie);
 		found = (ecl->el_cookie == cookie);
 		if (found) {
diff --git a/drivers/staging/lustre/lustre/ptlrpc/client.c b/drivers/staging/lustre/lustre/ptlrpc/client.c
index b1d379a..291b9ff 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/client.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/client.c
@@ -2202,16 +2202,12 @@ static void ptlrpc_interrupted_set(void *data)
  */
 int ptlrpc_set_next_timeout(struct ptlrpc_request_set *set)
 {
-	struct list_head *tmp;
 	time64_t now = ktime_get_real_seconds();
 	int timeout = 0;
 	struct ptlrpc_request *req;
 	time64_t deadline;
 
-	list_for_each(tmp, &set->set_requests) {
-		req = list_entry(tmp, struct ptlrpc_request, rq_set_chain);
-
-		/* Request in-flight? */
+	list_for_each_entry(req, &set->set_requests, rq_set_chain) {
 		if (!(((req->rq_phase == RQ_PHASE_RPC) && !req->rq_waiting) ||
 		      (req->rq_phase == RQ_PHASE_BULK) ||
 		      (req->rq_phase == RQ_PHASE_NEW)))
-- 
2.7.4



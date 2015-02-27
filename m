X-GM-THRID: 4920227921920
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,90644364147caca8,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.39.164 with SMTP id q4mr772071wik.5.1425072772835;
        Fri, 27 Feb 2015 13:32:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.167 with SMTP id ej7ls188349wid.36.canary; Fri, 27 Feb
 2015 13:32:52 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr775976wic.4.1425072772572;
        Fri, 27 Feb 2015 13:32:52 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id i7si201129wif.0.2015.02.27.13.32.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 13:32:52 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id q59so22868150wes.1
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 13:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jnzXTJx1qvHqaNfNVOEsnSTuOBwq8DVVf36+J2lYd64=;
        b=vJLNc3RZLLCe1P6IZE9uoyVI3b6GtxKI49ucQDQ26Rq7weWdkLWbApi5Iy2ffsWngo
         vEzh+wOCtw5VSjQn2jq7+Ivkgtzjwh75zV/CzgD+Onw96GB6dxHK3G+Pfkt8kzgkSQpr
         HsYtIpKQUECcat7HAIo+fzLQCaGoJWbBvIo4OZEqdhbBe9D9c4WOtDAPHod1bXv8r7jo
         bb1yUzoRwETcDQEGgPuGVU5xIKtiGiuUqYmRgVuUG4RvVE1toc+vl9y8Pp/CH8n/0rBY
         4bv9IeUoeGRpuWPrOJiOcIvPjNlMlHacvploMz8Uoj2r6GqKP0LwNoQLIl9ZKYqAqVG4
         rSTA==
X-Received: by 10.180.83.69 with SMTP id o5mr10380785wiy.48.1425072772487;
        Fri, 27 Feb 2015 13:32:52 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id k1sm7655709wjn.9.2015.02.27.13.32.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 13:32:51 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: lnet: Remove space after the name of that function
Date: Fri, 27 Feb 2015 23:32:45 +0200
Message-Id: <1425072765-18816-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "space prohibited between function name
and open parenthesis" in router.c

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lnet/lnet/router.c | 74 +++++++++++++++----------------
 1 file changed, 37 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index 52ec0ab..c0a6aeb 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -225,7 +225,7 @@ lnet_rtr_decref_locked(lnet_peer_t *lp)
 }
 
 lnet_remotenet_t *
-lnet_find_net_locked (__u32 net)
+lnet_find_net_locked(__u32 net)
 {
 	lnet_remotenet_t	*rnet;
 	struct list_head		*tmp;
@@ -274,7 +274,7 @@ static void lnet_shuffle_seed(void)
 
 /* NB expects LNET_LOCK held */
 static void
-lnet_add_route_to_rnet (lnet_remotenet_t *rnet, lnet_route_t *route)
+lnet_add_route_to_rnet(lnet_remotenet_t *rnet, lnet_route_t *route)
 {
 	unsigned int      len = 0;
 	unsigned int      offset = 0;
@@ -282,13 +282,13 @@ lnet_add_route_to_rnet (lnet_remotenet_t *rnet, lnet_route_t *route)
 
 	lnet_shuffle_seed();
 
-	list_for_each (e, &rnet->lrn_routes) {
+	list_for_each(e, &rnet->lrn_routes) {
 		len++;
 	}
 
 	/* len+1 positions to add a new entry, also prevents division by 0 */
 	offset = cfs_rand() % (len + 1);
-	list_for_each (e, &rnet->lrn_routes) {
+	list_for_each(e, &rnet->lrn_routes) {
 		if (offset == 0)
 			break;
 		offset--;
@@ -364,7 +364,7 @@ lnet_add_route(__u32 net, unsigned int hops, lnet_nid_t gateway,
 		return rc;
 	}
 
-	LASSERT (!the_lnet.ln_shutdown);
+	LASSERT(!the_lnet.ln_shutdown);
 
 	rnet2 = lnet_find_net_locked(net);
 	if (rnet2 == NULL) {
@@ -375,7 +375,7 @@ lnet_add_route(__u32 net, unsigned int hops, lnet_nid_t gateway,
 
 	/* Search for a duplicate route (it's a NOOP if it is) */
 	add_route = 1;
-	list_for_each (e, &rnet2->lrn_routes) {
+	list_for_each(e, &rnet2->lrn_routes) {
 		lnet_route_t *route2 = list_entry(e, lnet_route_t, lr_list);
 
 		if (route2->lr_gateway == route->lr_gateway) {
@@ -384,7 +384,7 @@ lnet_add_route(__u32 net, unsigned int hops, lnet_nid_t gateway,
 		}
 
 		/* our lookups must be true */
-		LASSERT (route2->lr_gateway->lp_nid != gateway);
+		LASSERT(route2->lr_gateway->lp_nid != gateway);
 	}
 
 	if (add_route) {
@@ -546,7 +546,7 @@ lnet_del_route(__u32 net, lnet_nid_t gw_nid)
 }
 
 void
-lnet_destroy_routes (void)
+lnet_destroy_routes(void)
 {
 	lnet_del_route(LNET_NIDNET(LNET_NID_ANY), LNET_NID_ANY);
 }
@@ -758,13 +758,13 @@ lnet_wait_known_routerstate(void)
 	struct list_head	  *entry;
 	int		  all_known;
 
-	LASSERT (the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
+	LASSERT(the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
 
 	for (;;) {
 		int	cpt = lnet_net_lock_current();
 
 		all_known = 1;
-		list_for_each (entry, &the_lnet.ln_routers) {
+		list_for_each(entry, &the_lnet.ln_routers) {
 			rtr = list_entry(entry, lnet_peer_t, lp_rtr_list);
 
 			if (rtr->lp_alive_count == 0) {
@@ -886,7 +886,7 @@ lnet_create_rc_data_locked(lnet_peer_t *gateway)
 	}
 	rcd->rcd_pinginfo = pi;
 
-	LASSERT (!LNetHandleIsInvalid(the_lnet.ln_rc_eqh));
+	LASSERT(!LNetHandleIsInvalid(the_lnet.ln_rc_eqh));
 	rc = LNetMDBind((lnet_md_t){.start     = pi,
 				    .user_ptr  = rcd,
 				    .length    = LNET_PINGINFO_SIZE,
@@ -929,7 +929,7 @@ lnet_create_rc_data_locked(lnet_peer_t *gateway)
 }
 
 static int
-lnet_router_check_interval (lnet_peer_t *rtr)
+lnet_router_check_interval(lnet_peer_t *rtr)
 {
 	int secs;
 
@@ -942,7 +942,7 @@ lnet_router_check_interval (lnet_peer_t *rtr)
 }
 
 static void
-lnet_ping_router_locked (lnet_peer_t *rtr)
+lnet_ping_router_locked(lnet_peer_t *rtr)
 {
 	lnet_rc_data_t *rcd = NULL;
 	unsigned long      now = cfs_time_current();
@@ -1019,7 +1019,7 @@ lnet_router_checker_start(void)
 	int	  rc;
 	int	  eqsz;
 
-	LASSERT (the_lnet.ln_rc_state == LNET_RC_STATE_SHUTDOWN);
+	LASSERT(the_lnet.ln_rc_state == LNET_RC_STATE_SHUTDOWN);
 
 	if (check_routers_before_use &&
 	    dead_router_check_interval <= 0) {
@@ -1067,14 +1067,14 @@ lnet_router_checker_start(void)
 }
 
 void
-lnet_router_checker_stop (void)
+lnet_router_checker_stop(void)
 {
 	int rc;
 
 	if (the_lnet.ln_rc_state == LNET_RC_STATE_SHUTDOWN)
 		return;
 
-	LASSERT (the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
+	LASSERT(the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
 	the_lnet.ln_rc_state = LNET_RC_STATE_STOPPING;
 
 	/* block until event callback signals exit */
@@ -1082,7 +1082,7 @@ lnet_router_checker_stop (void)
 	LASSERT(the_lnet.ln_rc_state == LNET_RC_STATE_SHUTDOWN);
 
 	rc = LNetEQFree(the_lnet.ln_rc_eqh);
-	LASSERT (rc == 0);
+	LASSERT(rc == 0);
 	return;
 }
 
@@ -1178,7 +1178,7 @@ lnet_router_checker(void *arg)
 
 	cfs_block_allsigs();
 
-	LASSERT (the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
+	LASSERT(the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
 
 	while (the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING) {
 		__u64	version;
@@ -1291,11 +1291,11 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp)
 	if (rbp->rbp_nbuffers == 0) /* not initialized or already freed */
 		return;
 
-	LASSERT (list_empty(&rbp->rbp_msgs));
-	LASSERT (rbp->rbp_credits == rbp->rbp_nbuffers);
+	LASSERT(list_empty(&rbp->rbp_msgs));
+	LASSERT(rbp->rbp_credits == rbp->rbp_nbuffers);
 
 	while (!list_empty(&rbp->rbp_bufs)) {
-		LASSERT (rbp->rbp_credits > 0);
+		LASSERT(rbp->rbp_credits > 0);
 
 		rb = list_entry(rbp->rbp_bufs.next,
 				    lnet_rtrbuf_t, rb_list);
@@ -1304,8 +1304,8 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp)
 		nbuffers++;
 	}
 
-	LASSERT (rbp->rbp_nbuffers == nbuffers);
-	LASSERT (rbp->rbp_credits == nbuffers);
+	LASSERT(rbp->rbp_nbuffers == nbuffers);
+	LASSERT(rbp->rbp_credits == nbuffers);
 
 	rbp->rbp_nbuffers = rbp->rbp_credits = 0;
 }
@@ -1317,7 +1317,7 @@ lnet_rtrpool_alloc_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
 	int	    i;
 
 	if (rbp->rbp_nbuffers != 0) {
-		LASSERT (rbp->rbp_nbuffers == nbufs);
+		LASSERT(rbp->rbp_nbuffers == nbufs);
 		return 0;
 	}
 
@@ -1337,10 +1337,10 @@ lnet_rtrpool_alloc_bufs(lnet_rtrbufpool_t *rbp, int nbufs, int cpt)
 
 		/* No allocation "under fire" */
 		/* Otherwise we'd need code to schedule blocked msgs etc */
-		LASSERT (!the_lnet.ln_routing);
+		LASSERT(!the_lnet.ln_routing);
 	}
 
-	LASSERT (rbp->rbp_credits == nbufs);
+	LASSERT(rbp->rbp_credits == nbufs);
 	return 0;
 }
 
@@ -1513,16 +1513,16 @@ lnet_notify(lnet_ni_t *ni, lnet_nid_t nid, int alive, unsigned long when)
 	unsigned long		now = cfs_time_current();
 	int			cpt = lnet_cpt_of_nid(nid);
 
-	LASSERT (!in_interrupt ());
+	LASSERT(!in_interrupt ());
 
-	CDEBUG (D_NET, "%s notifying %s: %s\n",
+	CDEBUG(D_NET, "%s notifying %s: %s\n",
 		(ni == NULL) ? "userspace" : libcfs_nid2str(ni->ni_nid),
 		libcfs_nid2str(nid),
 		alive ? "up" : "down");
 
 	if (ni != NULL &&
 	    LNET_NIDNET(ni->ni_nid) != LNET_NIDNET(nid)) {
-		CWARN ("Ignoring notification of %s %s by %s (different net)\n",
+		CWARN("Ignoring notification of %s %s by %s (different net)\n",
 			libcfs_nid2str(nid), alive ? "birth" : "death",
 			libcfs_nid2str(ni->ni_nid));
 		return -EINVAL;
@@ -1577,7 +1577,7 @@ lnet_notify(lnet_ni_t *ni, lnet_nid_t nid, int alive, unsigned long when)
 EXPORT_SYMBOL(lnet_notify);
 
 void
-lnet_get_tunables (void)
+lnet_get_tunables(void)
 {
 	return;
 }
@@ -1585,13 +1585,13 @@ lnet_get_tunables (void)
 #else
 
 int
-lnet_notify (lnet_ni_t *ni, lnet_nid_t nid, int alive, unsigned long when)
+lnet_notify(lnet_ni_t *ni, lnet_nid_t nid, int alive, unsigned long when)
 {
 	return -EOPNOTSUPP;
 }
 
 void
-lnet_router_checker (void)
+lnet_router_checker(void)
 {
 	static time_t last;
 	static int    running;
@@ -1643,7 +1643,7 @@ lnet_router_checker (void)
 			abort();
 		}
 
-		LASSERT (rc == 1);
+		LASSERT(rc == 1);
 
 		lnet_router_checker_event(&ev);
 	}
@@ -1655,14 +1655,14 @@ lnet_router_checker (void)
 		return;
 	}
 
-	LASSERT (the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
+	LASSERT(the_lnet.ln_rc_state == LNET_RC_STATE_RUNNING);
 
 	lnet_net_lock(0);
 
 	version = the_lnet.ln_routers_version;
-	list_for_each_entry (rtr, &the_lnet.ln_routers, lp_rtr_list) {
+	list_for_each_entry(rtr, &the_lnet.ln_routers, lp_rtr_list) {
 		lnet_ping_router_locked(rtr);
-		LASSERT (version == the_lnet.ln_routers_version);
+		LASSERT(version == the_lnet.ln_routers_version);
 	}
 
 	lnet_net_unlock(0);
@@ -1674,7 +1674,7 @@ lnet_router_checker (void)
 /* NB lnet_peers_start_down depends on me,
  * so must be called before any peer creation */
 void
-lnet_get_tunables (void)
+lnet_get_tunables(void)
 {
 	char *s;
 
-- 
1.9.1



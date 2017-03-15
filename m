X-GM-THRID: 6392026082663464960
X-Received: by 10.107.9.228 with SMTP id 97mr1208204ioj.25.1489576849171;
        Wed, 15 Mar 2017 04:20:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls1933298ott.28.gmail; Wed, 15 Mar
 2017 04:20:48 -0700 (PDT)
X-Received: by 10.157.66.1 with SMTP id q1mr1163419ote.47.1489576848861;
        Wed, 15 Mar 2017 04:20:48 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si280088pfb.5.2017.03.15.04.20.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:20:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so1976789pgg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nN9mo1sUWLUmP+g400BPrlghLIB0e8kexpCKJdfM4Fg=;
        b=UzKv662n5b2KMp8Yic22aYb+/KTwsdMp22oVPxU5p0gLBq5Q7nTH5neDCqZv52Ba3u
         5ANP536brnDrghznQs5TMRHaIhpSB77iBXCoVzw9rAv1v2BqI/GKQ7q2vuTMVsQmn+cu
         sG9gA2Czq0l33jMd9+SQS1cJg1+N4CbGzX9uy8oT5rHCoP0lSNA7AfAmLpIvR7v4EJwJ
         FBSyRyAMjtaT8iaXEqEquHYn2/OkEK/T1ae9HRVXQufREkBTv6Jj4iezsexRejkbUtt9
         AixC0ZGLzZgDLKP0KN7Io2NNtLuc9jI6eqRZt+nzMVQQWOQk7GOVMKDupcysu0WeRZSJ
         Df8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nN9mo1sUWLUmP+g400BPrlghLIB0e8kexpCKJdfM4Fg=;
        b=d5PZYGal70hQHfDWtlaYPBm92+EAKQfgVfWeE8jpsyP9KqqGYdpLpS83ZDbONYp8zY
         0j/r0yDkfvMnzwk7iBzM0TGnk8twCKzpUoUSC3GiEi4IwkCqVLqjP9ui8LwjkdGC/koz
         AkSeqiWAm4lm9dBRd64CAZzjHPkOatncbJY3tzN0KxDCIfWoNxpAcyIelR9eafHh8O7Z
         4q30beHYHybpv7tvhhlFJ+0VvnIoRVaVDfaCCH3Gq+Nww6hojbvq1sviDxkVnG8m06Xo
         AxKBZsKGM9zeWsjqZfCJxf2Vy99uS0ZZ86Xy1tjdoQAXCiAoemyZFnr9SN8i171wUxyG
         3cdA==
X-Gm-Message-State: AFeK/H2DQ9WR5kuvlM3UMGGv2boNsEcoWeLAmHoxkUN32Kd6kM5aXtocpxwbdpknpgbVqA==
X-Received: by 10.84.212.8 with SMTP id d8mr3967705pli.152.1489576848591;
        Wed, 15 Mar 2017 04:20:48 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id r12sm3822820pgn.26.2017.03.15.04.20.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 04:20:48 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 1/6] staging: lustre: Replace typedef lnet_rc_data_t with struct
Date: Wed, 15 Mar 2017 16:50:50 +0530
Message-Id: <3b9c9de1b11aa97119bad7a50208a180a00ad24e.1489576506.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>
In-Reply-To: <cover.1489576506.git.gs051095@gmail.com>
References: <cover.1489576506.git.gs051095@gmail.com>

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurences of typedefs have been
removed in the lib-types.h file. The typedef is detected by Script 1,
and modified manually. Script 2 replaces all instances of the typedef.

Script 1:
@r1@
type T;
@@

* typedef struct { ... } T;

Script 2:
@@
typedef lnet_rc_data_t;
@@
(
- lnet_rc_data_t
+ struct lnet_rc_data
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/lustre/include/linux/lnet/lib-types.h |  6 +++---
 drivers/staging/lustre/lnet/lnet/router.c             | 18 +++++++++---------
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/lustre/include/linux/lnet/lib-types.h b/drivers/staging/lustre/include/linux/lnet/lib-types.h
index 9850398..b9f4c20 100644
--- a/drivers/staging/lustre/include/linux/lnet/lib-types.h
+++ b/drivers/staging/lustre/include/linux/lnet/lib-types.h
@@ -296,13 +296,13 @@ typedef struct lnet_ni {
 /* router checker data, per router */
 #define LNET_MAX_RTR_NIS   16
 #define LNET_PINGINFO_SIZE offsetof(struct lnet_ping_info, pi_ni[LNET_MAX_RTR_NIS])
-typedef struct {
+struct lnet_rc_data {
 	/* chain on the_lnet.ln_zombie_rcd or ln_deathrow_rcd */
 	struct list_head	 rcd_list;
 	lnet_handle_md_t	 rcd_mdh;	/* ping buffer MD */
 	struct lnet_peer	*rcd_gateway;	/* reference to gateway */
 	struct lnet_ping_info	*rcd_pinginfo;	/* ping buffer */
-} lnet_rc_data_t;
+};
 
 typedef struct lnet_peer {
 	struct list_head	 lp_hashlist;	/* chain on peer hash */
@@ -344,7 +344,7 @@ typedef struct lnet_peer {
 	/* returned RC ping features */
 	unsigned int		 lp_ping_feats;
 	struct list_head	 lp_routes;	/* routers on this peer */
-	lnet_rc_data_t		*lp_rcd;	/* router checker state */
+	struct lnet_rc_data	*lp_rcd;	/* router checker state */
 } lnet_peer_t;
 
 /* peer hash size */
diff --git a/drivers/staging/lustre/lnet/lnet/router.c b/drivers/staging/lustre/lnet/lnet/router.c
index cf22525..6acd676 100644
--- a/drivers/staging/lustre/lnet/lnet/router.c
+++ b/drivers/staging/lustre/lnet/lnet/router.c
@@ -642,7 +642,7 @@ lnet_swap_pinginfo(struct lnet_ping_info *info)
  * networks on that router.
  */
 static void
-lnet_parse_rc_info(lnet_rc_data_t *rcd)
+lnet_parse_rc_info(struct lnet_rc_data *rcd)
 {
 	struct lnet_ping_info *info = rcd->rcd_pinginfo;
 	struct lnet_peer *gw = rcd->rcd_gateway;
@@ -733,7 +733,7 @@ lnet_parse_rc_info(lnet_rc_data_t *rcd)
 static void
 lnet_router_checker_event(lnet_event_t *event)
 {
-	lnet_rc_data_t *rcd = event->md.user_ptr;
+	struct lnet_rc_data *rcd = event->md.user_ptr;
 	struct lnet_peer *lp;
 
 	LASSERT(rcd);
@@ -878,7 +878,7 @@ lnet_update_ni_status_locked(void)
 }
 
 static void
-lnet_destroy_rc_data(lnet_rc_data_t *rcd)
+lnet_destroy_rc_data(struct lnet_rc_data *rcd)
 {
 	LASSERT(list_empty(&rcd->rcd_list));
 	/* detached from network */
@@ -898,10 +898,10 @@ lnet_destroy_rc_data(lnet_rc_data_t *rcd)
 	LIBCFS_FREE(rcd, sizeof(*rcd));
 }
 
-static lnet_rc_data_t *
+static struct lnet_rc_data *
 lnet_create_rc_data_locked(lnet_peer_t *gateway)
 {
-	lnet_rc_data_t *rcd = NULL;
+	struct lnet_rc_data *rcd = NULL;
 	struct lnet_ping_info *pi;
 	lnet_md_t md;
 	int rc;
@@ -984,7 +984,7 @@ lnet_router_check_interval(lnet_peer_t *rtr)
 static void
 lnet_ping_router_locked(lnet_peer_t *rtr)
 {
-	lnet_rc_data_t *rcd = NULL;
+	struct lnet_rc_data *rcd = NULL;
 	unsigned long now = cfs_time_current();
 	int secs;
 
@@ -1124,8 +1124,8 @@ lnet_router_checker_stop(void)
 static void
 lnet_prune_rc_data(int wait_unlink)
 {
-	lnet_rc_data_t *rcd;
-	lnet_rc_data_t *tmp;
+	struct lnet_rc_data *rcd;
+	struct lnet_rc_data *tmp;
 	lnet_peer_t *lp;
 	struct list_head head;
 	int i = 2;
@@ -1182,7 +1182,7 @@ lnet_prune_rc_data(int wait_unlink)
 
 		while (!list_empty(&head)) {
 			rcd = list_entry(head.next,
-					 lnet_rc_data_t, rcd_list);
+					 struct lnet_rc_data, rcd_list);
 			list_del_init(&rcd->rcd_list);
 			lnet_destroy_rc_data(rcd);
 		}
-- 
2.7.4



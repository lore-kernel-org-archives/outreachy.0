X-GM-THRID: 6257536347967324160
X-Received: by 10.182.135.169 with SMTP id pt9mr21414415obb.17.1456946215107;
        Wed, 02 Mar 2016 11:16:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.82 with SMTP id y76ls456855qgd.35.gmail; Wed, 02 Mar
 2016 11:16:54 -0800 (PST)
X-Received: by 10.13.232.195 with SMTP id r186mr22029170ywe.30.1456946214350;
        Wed, 02 Mar 2016 11:16:54 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id 12si5572115pfb.1.2016.03.02.11.16.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 11:16:54 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id bj10so68861128pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Mar 2016 11:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mJUQUvQa/EYT5yhNrsLUXx2WXqdQj5xCUm4+20JSj78=;
        b=HqdvXNsaOpLyij/qSiaO2k2SczDk6mjDy+e7Df1G2MjgJ/W+xBtlf8I3h3Fi1oDQMe
         2GjjI5J7H64HBhyVn9pM4fWQ+45JrXKfeQLsLUs7O+EM+hZglU0/gFlaTRDwK+Ao1aqr
         9Bepr7/DJpIwoIBMB+BsS6hgKWbcTiI5hEcaVun/xKfWJk/SDL3NvemyBee31q03LspP
         5D4mIxP09Cukqn4Yn4ptSCt07aJB6ZWEDoRZwteY/53I06WdWJA2ynAQNRIEjfAg1d0U
         Sfgchfzr6SODNvnikirFbZVk/TJHrbzTQLz4teq1DLdJ/A6sqn3mDULJW0iWWRUjixap
         3FSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mJUQUvQa/EYT5yhNrsLUXx2WXqdQj5xCUm4+20JSj78=;
        b=iTZ25eCjB8HsOmz6Fx8hcfkBVGD0Xbfb00BEeYafxfyjGp94zDZKhBl2RLSDK28V88
         dyCigfABonJVrU3R7WSrQwTLqX8I6FslemE3VG0Y51DF7sH+wtWJjd2gxkpuMo6YKNif
         xG7d5Tl7X0s0Kj5IHDSyNbMC43GSWMf7GcR+jFdQnyahgxDOD84+Juqlj4GS43x3X5lm
         nH02qwSlJZWA8pcAB1/lZcTTjsZ/yWPrDS/9RQh+Rp0GkvN4Ur+WPtqWHH2VvEgYD3bQ
         1qLVxpCFM68MxRjIh0KtAKm42l9QQns1F6i4rHXeo9q1lrCvJ4AJH7138UaGc+LZmExV
         is6Q==
X-Gm-Message-State: AD7BkJKSkTnXb+Pw0OiEEMZNvPyj5pkMc59We2kyBFd06Z/JprN9hQnz11K/f+dSnEeVVw==
X-Received: by 10.66.218.225 with SMTP id pj1mr40238918pac.83.1456946214111;
        Wed, 02 Mar 2016 11:16:54 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.172.77])
        by smtp.gmail.com with ESMTPSA id 74sm54765571pfs.33.2016.03.02.11.16.44
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 02 Mar 2016 11:16:53 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 03 Mar 2016 00:46:38 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: Remove and rename struct typedefs
Date: Thu,  3 Mar 2016 00:46:37 +0530
Message-Id: <1456946197-31940-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove typedefs from structures stt_timer_t and lst_ping_data_t as typedef
for a structure type is not preferred. The suffix '_t' and the typedefs 
are removed using coccinelle.

Script 1:
//Drop typedefs and '_t'
@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_t":
  coccinelle.T2 = T[:-2];
  print T
else:
  coccinelle.T2=T;

@@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

Script 2:
//Replacement
@@
typedef stt_timer_t;
typedef lst_ping_data_t;
@@
(
- stt_timer_t
+ struct stt_timer
|
- lst_ping_data_t
+ struct lst_ping_data
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conrpc.c    |  4 ++--
 drivers/staging/lustre/lnet/selftest/console.h   |  2 +-
 drivers/staging/lustre/lnet/selftest/framework.c |  4 ++--
 drivers/staging/lustre/lnet/selftest/ping_test.c |  6 +++---
 drivers/staging/lustre/lnet/selftest/rpc.c       |  2 +-
 drivers/staging/lustre/lnet/selftest/selftest.h  |  4 ++--
 drivers/staging/lustre/lnet/selftest/timer.c     | 11 ++++++-----
 drivers/staging/lustre/lnet/selftest/timer.h     |  8 ++++----
 8 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c b/drivers/staging/lustre/lnet/selftest/conrpc.c
index b02a140..1e7e63c 100644
--- a/drivers/staging/lustre/lnet/selftest/conrpc.c
+++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
@@ -1173,7 +1173,7 @@ lstcon_rpc_trans_ndlist(struct list_head *ndlist,
 static void
 lstcon_rpc_pinger(void *arg)
 {
-	stt_timer_t *ptimer = (stt_timer_t *)arg;
+	struct stt_timer *ptimer = (struct stt_timer *)arg;
 	lstcon_rpc_trans_t *trans;
 	lstcon_rpc_t *crpc;
 	srpc_msg_t *rep;
@@ -1290,7 +1290,7 @@ lstcon_rpc_pinger(void *arg)
 int
 lstcon_rpc_pinger_start(void)
 {
-	stt_timer_t *ptimer;
+	struct stt_timer *ptimer;
 	int rc;
 
 	LASSERT(list_empty(&console_session.ses_rpc_freelist));
diff --git a/drivers/staging/lustre/lnet/selftest/console.h b/drivers/staging/lustre/lnet/selftest/console.h
index c9d1081..5421311 100644
--- a/drivers/staging/lustre/lnet/selftest/console.h
+++ b/drivers/staging/lustre/lnet/selftest/console.h
@@ -153,7 +153,7 @@ struct lstcon_session {
 	__u64               ses_id_cookie;    /* batch id cookie */
 	char                ses_name[LST_NAME_SIZE];/* session name */
 	lstcon_rpc_trans_t  *ses_ping;        /* session pinger */
-	stt_timer_t         ses_ping_timer;   /* timer for pinger */
+	struct stt_timer         ses_ping_timer;   /* timer for pinger */
 	lstcon_trans_stat_t ses_trans_stat;   /* transaction stats */
 
 	struct list_head    ses_trans_list;   /* global list of transaction */
diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
index 3bbc720..75b703b 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -160,7 +160,7 @@ static void
 sfw_add_session_timer(void)
 {
 	sfw_session_t *sn = sfw_data.fw_session;
-	stt_timer_t *timer = &sn->sn_timer;
+	struct stt_timer *timer = &sn->sn_timer;
 
 	LASSERT(!sfw_data.fw_shuttingdown);
 
@@ -261,7 +261,7 @@ static inline void
 sfw_init_session(sfw_session_t *sn, lst_sid_t sid,
 		 unsigned features, const char *name)
 {
-	stt_timer_t *timer = &sn->sn_timer;
+	struct stt_timer *timer = &sn->sn_timer;
 
 	memset(sn, 0, sizeof(sfw_session_t));
 	INIT_LIST_HEAD(&sn->sn_list);
diff --git a/drivers/staging/lustre/lnet/selftest/ping_test.c b/drivers/staging/lustre/lnet/selftest/ping_test.c
index 9d27e39..6d44126 100644
--- a/drivers/staging/lustre/lnet/selftest/ping_test.c
+++ b/drivers/staging/lustre/lnet/selftest/ping_test.c
@@ -48,12 +48,12 @@ static int ping_srv_workitems = SFW_TEST_WI_MAX;
 module_param(ping_srv_workitems, int, 0644);
 MODULE_PARM_DESC(ping_srv_workitems, "# PING server workitems");
 
-typedef struct {
+struct lst_ping_data {
 	spinlock_t	pnd_lock;	/* serialize */
 	int		pnd_counter;	/* sequence counter */
-} lst_ping_data_t;
+};
 
-static lst_ping_data_t  lst_ping_data;
+static struct lst_ping_data  lst_ping_data;
 
 static int
 ping_client_init(sfw_test_instance_t *tsi)
diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c b/drivers/staging/lustre/lnet/selftest/rpc.c
index 1b76933..129fa02 100644
--- a/drivers/staging/lustre/lnet/selftest/rpc.c
+++ b/drivers/staging/lustre/lnet/selftest/rpc.c
@@ -1100,7 +1100,7 @@ srpc_client_rpc_expired(void *data)
 static void
 srpc_add_client_rpc_timer(srpc_client_rpc_t *rpc)
 {
-	stt_timer_t *timer = &rpc->crpc_timer;
+	struct stt_timer *timer = &rpc->crpc_timer;
 
 	if (!rpc->crpc_timeout)
 		return;
diff --git a/drivers/staging/lustre/lnet/selftest/selftest.h b/drivers/staging/lustre/lnet/selftest/selftest.h
index f6c8244..4ca274f 100644
--- a/drivers/staging/lustre/lnet/selftest/selftest.h
+++ b/drivers/staging/lustre/lnet/selftest/selftest.h
@@ -207,7 +207,7 @@ typedef struct srpc_client_rpc {
 	int               crpc_service;
 	atomic_t          crpc_refcount;
 	int               crpc_timeout;   /* # seconds to wait for reply */
-	stt_timer_t       crpc_timer;
+	struct stt_timer       crpc_timer;
 	swi_workitem_t    crpc_wi;
 	lnet_process_id_t crpc_dest;
 
@@ -328,7 +328,7 @@ typedef struct {
 	unsigned int     sn_timeout; /* # seconds' inactivity to expire */
 	int              sn_timer_active;
 	unsigned int     sn_features;
-	stt_timer_t      sn_timer;
+	struct stt_timer      sn_timer;
 	struct list_head sn_batches; /* list of batches */
 	char             sn_name[LST_NAME_SIZE];
 	atomic_t         sn_refcount;
diff --git a/drivers/staging/lustre/lnet/selftest/timer.c b/drivers/staging/lustre/lnet/selftest/timer.c
index c891371..f9f37ba 100644
--- a/drivers/staging/lustre/lnet/selftest/timer.c
+++ b/drivers/staging/lustre/lnet/selftest/timer.c
@@ -67,7 +67,7 @@ static struct st_timer_data {
 } stt_data;
 
 void
-stt_add_timer(stt_timer_t *timer)
+stt_add_timer(struct stt_timer *timer)
 {
 	struct list_head *pos;
 
@@ -81,7 +81,8 @@ stt_add_timer(stt_timer_t *timer)
 
 	/* a simple insertion sort */
 	list_for_each_prev(pos, STTIMER_SLOT(timer->stt_expires)) {
-		stt_timer_t *old = list_entry(pos, stt_timer_t, stt_list);
+		struct stt_timer *old = list_entry(pos, struct stt_timer,
+						   stt_list);
 
 		if (timer->stt_expires >= old->stt_expires)
 			break;
@@ -101,7 +102,7 @@ stt_add_timer(stt_timer_t *timer)
  * another CPU.
  */
 int
-stt_del_timer(stt_timer_t *timer)
+stt_del_timer(struct stt_timer *timer)
 {
 	int ret = 0;
 
@@ -124,10 +125,10 @@ static int
 stt_expire_list(struct list_head *slot, time64_t now)
 {
 	int expired = 0;
-	stt_timer_t *timer;
+	struct stt_timer *timer;
 
 	while (!list_empty(slot)) {
-		timer = list_entry(slot->next, stt_timer_t, stt_list);
+		timer = list_entry(slot->next, struct stt_timer, stt_list);
 
 		if (timer->stt_expires > now)
 			break;
diff --git a/drivers/staging/lustre/lnet/selftest/timer.h b/drivers/staging/lustre/lnet/selftest/timer.h
index 03e2ee2..2affecf 100644
--- a/drivers/staging/lustre/lnet/selftest/timer.h
+++ b/drivers/staging/lustre/lnet/selftest/timer.h
@@ -38,15 +38,15 @@
 #ifndef __SELFTEST_TIMER_H__
 #define __SELFTEST_TIMER_H__
 
-typedef struct {
+struct stt_timer {
 	struct list_head stt_list;
 	time64_t         stt_expires;
 	void             (*stt_func) (void *);
 	void             *stt_data;
-} stt_timer_t;
+};
 
-void stt_add_timer(stt_timer_t *timer);
-int stt_del_timer(stt_timer_t *timer);
+void stt_add_timer(struct stt_timer *timer);
+int stt_del_timer(struct stt_timer *timer);
 int stt_startup(void);
 void stt_shutdown(void);
 
-- 
1.9.1



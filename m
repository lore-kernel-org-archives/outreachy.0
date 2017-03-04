X-GM-THRID: 6393736323263365120
X-Received: by 10.28.148.132 with SMTP id w126mr234268wmd.10.1488657774657;
        Sat, 04 Mar 2017 12:02:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.23.209 with SMTP id 200ls676184wmx.24.gmail; Sat, 04 Mar
 2017 12:02:53 -0800 (PST)
X-Received: by 10.28.166.144 with SMTP id p138mr233736wme.1.1488657773808;
        Sat, 04 Mar 2017 12:02:53 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id f7si559641wmg.3.2017.03.04.12.02.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 12:02:53 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so7951138wma.0
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Mar 2017 12:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QlqRqoI0xb+vHkRHeeJfxb9GuvmTLja6LpPizVrVi+Q=;
        b=tqCLFxJR3rvt/lyHpfZ3R1ncX6Rq1IUEjN+Nb9Pnl4r+CJ6ytCBzISzv1T2s+3JhLu
         YTvRlO3aEJih6rlL6Rf/MMeN6M5LrWBx+j7iShl9QPEyzZZN8DX1nalxcvFmp6FN4KfE
         gK81aaiBhEwCUQd9O0Gq0VmNZ2juRlYueL0vBaI1Z56QrDQ4uKakjoPSoLJLMiPZdLcP
         tZBCu0YuoP4NWQjotTiLzkxdae4KdGBEYUg54GwjmPo3ENNnOaIpQnDFiln9YSXpOmqZ
         Ftz1riUad7TFyCbh/FjAoLp2wpdmDEorbTAzFIszHDACU8rT5giZJrbD24jrV1FQJfB3
         O8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QlqRqoI0xb+vHkRHeeJfxb9GuvmTLja6LpPizVrVi+Q=;
        b=Im7lNV3yEXymZHA4H18V9r05HpDVriUCUqGZHSy5ImQk5x48UavKhuuAIDP6otj3HX
         WZ59huz4y+z4GM9+XD4QXo6WZ8OYh3v1Np6f4/AWgdWqKZacaLHZR7BDlaxR5pkH6mg1
         sg2TlHnRiI+dBWG/uFFtFSn0j6feTSnPUN3WPwYCrzCDEDWTYVs47kDmqzz60NyikK6j
         Wn4jp3mjV84O/iIHhg8iNTU5B9Oyeno/oOafCIeybhbG+oSULBhhsPvibdghqVU7cqmG
         CXzkG+yQ0jh/UujadOUOWoGQ7d0fx7omClFcr65qQCKF9qyMNKFTUlY5X2DcniB5f9ZH
         rrRw==
X-Gm-Message-State: AMke39kMOjZM8EpSVJ/ooulD2pGSv+8nopcp/sJUoKsE+Yx6lxMYHefnVkNsGYFKFQwJZg==
X-Received: by 10.28.61.198 with SMTP id k189mr7783426wma.71.1488657773430;
        Sat, 04 Mar 2017 12:02:53 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain ([89.165.243.139])
        by smtp.gmail.com with ESMTPSA id t194sm8185817wmd.13.2017.03.04.12.02.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 04 Mar 2017 12:02:52 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 2/2] staging: vc04_services: Refactor conditionals
Date: Sat,  4 Mar 2017 22:02:42 +0200
Message-Id: <ba8881d259df889680ddc99f1a531bf198f42069.1488657258.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1488657258.git.narcisaanamaria12@gmail.com>
References: <cover.1488657258.git.narcisaanamaria12@gmail.com>

Refactor conditionals to reduce one level of indentation and improve
code readability.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 222 ++++++++++-----------
 1 file changed, 109 insertions(+), 113 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index d9622e8..dc9f85c2 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2574,129 +2574,125 @@ static const char *msg_type_str(unsigned int msg_type)
 	VCHIQ_INSTANCE_T instance, VCHIQ_USERDATA_TERM_T userdata_term)
 {
 	VCHIQ_SERVICE_T *service;
+	VCHIQ_SERVICE_T **pservice = NULL;
+	VCHIQ_SERVICE_QUOTA_T *service_quota;
+	int i;
 
 	service = kmalloc(sizeof(VCHIQ_SERVICE_T), GFP_KERNEL);
-	if (service) {
-		service->base.fourcc   = params->fourcc;
-		service->base.callback = params->callback;
-		service->base.userdata = params->userdata;
-		service->handle        = VCHIQ_SERVICE_HANDLE_INVALID;
-		service->ref_count     = 1;
-		service->srvstate      = VCHIQ_SRVSTATE_FREE;
-		service->userdata_term = userdata_term;
-		service->localport     = VCHIQ_PORT_FREE;
-		service->remoteport    = VCHIQ_PORT_FREE;
-
-		service->public_fourcc = (srvstate == VCHIQ_SRVSTATE_OPENING) ?
-			VCHIQ_FOURCC_INVALID : params->fourcc;
-		service->client_id     = 0;
-		service->auto_close    = 1;
-		service->sync          = 0;
-		service->closing       = 0;
-		service->trace         = 0;
-		atomic_set(&service->poll_flags, 0);
-		service->version       = params->version;
-		service->version_min   = params->version_min;
-		service->state         = state;
-		service->instance      = instance;
-		service->service_use_count = 0;
-		init_bulk_queue(&service->bulk_tx);
-		init_bulk_queue(&service->bulk_rx);
-		sema_init(&service->remove_event, 0);
-		sema_init(&service->bulk_remove_event, 0);
-		mutex_init(&service->bulk_mutex);
-		memset(&service->stats, 0, sizeof(service->stats));
-	}
-
-	if (service) {
-		VCHIQ_SERVICE_T **pservice = NULL;
-		int i;
-
-		/* Although it is perfectly possible to use service_spinlock
-		** to protect the creation of services, it is overkill as it
-		** disables interrupts while the array is searched.
-		** The only danger is of another thread trying to create a
-		** service - service deletion is safe.
-		** Therefore it is preferable to use state->mutex which,
-		** although slower to claim, doesn't block interrupts while
-		** it is held.
-		*/
-
-		mutex_lock(&state->mutex);
-
-		/* Prepare to use a previously unused service */
-		if (state->unused_service < VCHIQ_MAX_SERVICES)
-			pservice = &state->services[state->unused_service];
-
-		if (srvstate == VCHIQ_SRVSTATE_OPENING) {
-			for (i = 0; i < state->unused_service; i++) {
-				VCHIQ_SERVICE_T *srv = state->services[i];
-
-				if (!srv) {
-					pservice = &state->services[i];
-					break;
-				}
+	if (!service)
+		return service;
+
+	service->base.fourcc   = params->fourcc;
+	service->base.callback = params->callback;
+	service->base.userdata = params->userdata;
+	service->handle        = VCHIQ_SERVICE_HANDLE_INVALID;
+	service->ref_count     = 1;
+	service->srvstate      = VCHIQ_SRVSTATE_FREE;
+	service->userdata_term = userdata_term;
+	service->localport     = VCHIQ_PORT_FREE;
+	service->remoteport    = VCHIQ_PORT_FREE;
+
+	service->public_fourcc = (srvstate == VCHIQ_SRVSTATE_OPENING) ?
+		VCHIQ_FOURCC_INVALID : params->fourcc;
+	service->client_id     = 0;
+	service->auto_close    = 1;
+	service->sync          = 0;
+	service->closing       = 0;
+	service->trace         = 0;
+	atomic_set(&service->poll_flags, 0);
+	service->version       = params->version;
+	service->version_min   = params->version_min;
+	service->state         = state;
+	service->instance      = instance;
+	service->service_use_count = 0;
+	init_bulk_queue(&service->bulk_tx);
+	init_bulk_queue(&service->bulk_rx);
+	sema_init(&service->remove_event, 0);
+	sema_init(&service->bulk_remove_event, 0);
+	mutex_init(&service->bulk_mutex);
+	memset(&service->stats, 0, sizeof(service->stats));
+
+	/* Although it is perfectly possible to use service_spinlock
+	** to protect the creation of services, it is overkill as it
+	** disables interrupts while the array is searched.
+	** The only danger is of another thread trying to create a
+	** service - service deletion is safe.
+	** Therefore it is preferable to use state->mutex which,
+	** although slower to claim, doesn't block interrupts while
+	** it is held.
+	*/
+
+	mutex_lock(&state->mutex);
+
+	/* Prepare to use a previously unused service */
+	if (state->unused_service < VCHIQ_MAX_SERVICES)
+		pservice = &state->services[state->unused_service];
+
+	if (srvstate == VCHIQ_SRVSTATE_OPENING) {
+		for (i = 0; i < state->unused_service; i++) {
+			VCHIQ_SERVICE_T *srv = state->services[i];
+
+			if (!srv) {
+				pservice = &state->services[i];
+				break;
 			}
-		} else {
-			for (i = (state->unused_service - 1); i >= 0; i--) {
-				VCHIQ_SERVICE_T *srv = state->services[i];
-
-				if (!srv)
-					pservice = &state->services[i];
-				else if ((srv->public_fourcc == params->fourcc)
-					&& ((srv->instance != instance) ||
-					(srv->base.callback !=
-					params->callback))) {
-					/* There is another server using this
-					** fourcc which doesn't match. */
-					pservice = NULL;
-					break;
-				}
+		}
+	} else {
+		for (i = (state->unused_service - 1); i >= 0; i--) {
+			VCHIQ_SERVICE_T *srv = state->services[i];
+
+			if (!srv)
+				pservice = &state->services[i];
+			else if ((srv->public_fourcc == params->fourcc)
+				&& ((srv->instance != instance) ||
+				(srv->base.callback !=
+				params->callback))) {
+				/* There is another server using this
+				** fourcc which doesn't match. */
+				pservice = NULL;
+				break;
 			}
 		}
+	}
 
-		if (pservice) {
-			service->localport = (pservice - state->services);
-			if (!handle_seq)
-				handle_seq = VCHIQ_MAX_STATES *
-					 VCHIQ_MAX_SERVICES;
-			service->handle = handle_seq |
-				(state->id * VCHIQ_MAX_SERVICES) |
-				service->localport;
-			handle_seq += VCHIQ_MAX_STATES * VCHIQ_MAX_SERVICES;
-			*pservice = service;
-			if (pservice == &state->services[state->unused_service])
-				state->unused_service++;
-		}
+	if (pservice) {
+		service->localport = (pservice - state->services);
+		if (!handle_seq)
+			handle_seq = VCHIQ_MAX_STATES *
+				 VCHIQ_MAX_SERVICES;
+		service->handle = handle_seq |
+			(state->id * VCHIQ_MAX_SERVICES) |
+			service->localport;
+		handle_seq += VCHIQ_MAX_STATES * VCHIQ_MAX_SERVICES;
+		*pservice = service;
+		if (pservice == &state->services[state->unused_service])
+			state->unused_service++;
+	}
 
-		mutex_unlock(&state->mutex);
+	mutex_unlock(&state->mutex);
 
-		if (!pservice) {
-			kfree(service);
-			service = NULL;
-		}
+	if (!pservice) {
+		kfree(service);
+		service = NULL;
 	}
 
-	if (service) {
-		VCHIQ_SERVICE_QUOTA_T *service_quota =
-			&state->service_quotas[service->localport];
-		service_quota->slot_quota = state->default_slot_quota;
-		service_quota->message_quota = state->default_message_quota;
-		if (service_quota->slot_use_count == 0)
-			service_quota->previous_tx_index =
-				SLOT_QUEUE_INDEX_FROM_POS(state->local_tx_pos)
-				- 1;
-
-		/* Bring this service online */
-		vchiq_set_service_state(service, srvstate);
-
-		vchiq_log_info(vchiq_core_msg_log_level,
-			"%s Service %c%c%c%c SrcPort:%d",
-			(srvstate == VCHIQ_SRVSTATE_OPENING)
-			? "Open" : "Add",
-			VCHIQ_FOURCC_AS_4CHARS(params->fourcc),
-			service->localport);
-	}
+	service_quota = &state->service_quotas[service->localport];
+	service_quota->slot_quota = state->default_slot_quota;
+	service_quota->message_quota = state->default_message_quota;
+	if (service_quota->slot_use_count == 0)
+		service_quota->previous_tx_index =
+			SLOT_QUEUE_INDEX_FROM_POS(state->local_tx_pos)
+			- 1;
+
+	/* Bring this service online */
+	vchiq_set_service_state(service, srvstate);
+
+	vchiq_log_info(vchiq_core_msg_log_level,
+		"%s Service %c%c%c%c SrcPort:%d",
+		(srvstate == VCHIQ_SRVSTATE_OPENING)
+		? "Open" : "Add",
+		VCHIQ_FOURCC_AS_4CHARS(params->fourcc),
+		service->localport);
 
 	/* Don't unlock the service - leave it with a ref_count of 1. */
 
-- 
1.9.1



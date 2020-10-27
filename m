X-GM-THRID: 6888359188938883072
X-Received: by 2002:a17:902:a50f:b029:d6:da2:aaa7 with SMTP id s15-20020a170902a50fb02900d60da2aaa7mr3567612plq.42.1603821110820;
        Tue, 27 Oct 2020 10:51:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5112:: with SMTP id f18ls919644pgb.0.gmail; Tue, 27 Oct
 2020 10:51:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwuHSNgpICOpa39ue1LbbtgGMewpw8pMzodZkzendKJcISo9P4YdcjhDsfmgD1UkSW1QDi
X-Received: by 2002:a65:410a:: with SMTP id w10mr2047147pgp.208.1603821109007;
        Tue, 27 Oct 2020 10:51:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603821109; cv=none;
        d=google.com; s=arc-20160816;
        b=O60e2GtpryamFjzWYDGhRd+EZo3cGjj1C6nJPTx3wdoQ7IRQ8/dcqHFUAk1UxLR78z
         h+jZoDQ/FhMf/B8z+/RKfteWlLzSfBdSgIU/Kb1hjxg2rA2ua0NYlQKGIqKI6ezFEODi
         FOZPBZEVnH8lzIH8Fa1mHGdRkrZ0koaab1catAhF9Q2r6/aABsl2CTaFBn7NsAYOjY2V
         EBkDP7OyyL9lO/xV03vq2A8w4MycV3ZLh+9o8slclMubX5x14JNnopujcgsPWxTBWmSQ
         mItcIC6NHhXFgBSTKis5ug2pAIE+gC3vX4TSVk0iyQ33VHO/OSKogTcASpAfipym7i17
         szYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HyrBWkqm9o8hYXWnqUDnxlRv24wq/+FwtcoRDPdnzTA=;
        b=XWliwA9A1CK4RMZnnkFli3zoGrEDxO7W1Sptio8Rholz7kPqXSOgQC2Esw1LkRHOEk
         leM6psdvWLC5zSYoV5bcy9BlS7zfxbXCFBrnkGTKghroXbXwAOqz/jllrzyywvUGL3Uy
         8TQIum31U5GBeB8bODRUCambyJgvhE68IVt6/Vk1wzUM50bNwQmaKg2D4gd5yZtcJmJm
         Hjx6dKfiz9Ar8afMY/lZxapB7UL5uHvsEft73gw4OuHJFIGev9qo9Tccvp4mpyWtp+Mq
         zTv0ZvARvmN3tTYIwGrfviu6Y0CN9kfbbjvI5R8W20pXLTirm6QEfvMTARLRHZhSjkV/
         IpuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PNVISt/d";
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id x6si118039pjn.2.2020.10.27.10.51.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 10:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PNVISt/d";
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62d.google.com with SMTP id o9so1149505plx.10
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2020 10:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HyrBWkqm9o8hYXWnqUDnxlRv24wq/+FwtcoRDPdnzTA=;
        b=PNVISt/dw+I8oRmlA+j36Rvw7Zin25zpzTwn+ncwmLmk6qVAJlDi2MmT70d6S/dDUi
         EoavF88slh0wMGOCphk3iGOEsA9nwtNX0d9pLrlrOqO10wIuQvNRzoKVZRUK0CzfkNGW
         e8vP5b+T9Lt10fW5eKL4ljabuNv9lSDy/35AY6KOx4UoloLT4TZjqWt3HUviYKGk2Xvx
         bOsNunc35TO9woFTGmfW5Al2a79PWGNanZHuXF07fZ1FLpJggcAnkgt3ZFjr9WCMzYOQ
         S2DWT6PfZGDfn0k/YXOu3044KU4Y3Vq6JwWo0+Aaf3PxQ9LN01hLufcdBjc35fVGjCIm
         I1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HyrBWkqm9o8hYXWnqUDnxlRv24wq/+FwtcoRDPdnzTA=;
        b=K2vTa9Sm2/KQmLJOh9sUEevUorDPo98+nMk5uMt0VPFjXjL+24RpQmqjaN8HYsSems
         V/M3KfHZic5MJsLpecowas9XS4TXFm7jwbbzpkt3XgJdVUAcIWcAn8H7pnZ5mPOPpMKi
         s4iBI7Lj3CtTcYvfVnT+gQR40Xq7fpyOOZl2GccJAFAUR4WKmNturJL778pX4an9khjg
         EqSisvTE9OoygYc/2Tq3Ad6vP59eJGq5WHGD9LkCFW0Se38vhX9XtY2pA85mn7P5gcN+
         jK2rE+0x5741RN94L5IEmKmOkllvA1J5E1AeJ9QVSmHhUoFNgUU3C3ld7pY4kxqSWuFK
         KX9g==
X-Gm-Message-State: AOAM531fwySGy5kteFM9rcS8+hUzNG6CRMvBM0mnKsSKQWuQXIEDNZsX
	Wr4tyd24HGtSHxNz3p7AQ2Q=
X-Received: by 2002:a17:902:369:b029:d6:1d46:21dc with SMTP id 96-20020a1709020369b02900d61d4621dcmr3703967pld.56.1603821108725;
        Tue, 27 Oct 2020 10:51:48 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from localhost.localdomain ([66.181.189.144])
        by smtp.googlemail.com with ESMTPSA id ge6sm2643906pjb.29.2020.10.27.10.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 10:51:48 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: nsaenzjulienne@suse.de,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Amarjargal Gundjalam <amarjargal16@gmail.com>
Subject: [PATCH 2/3] staging: vc04_services: fix quoted string split across lines
Date: Wed, 28 Oct 2020 01:51:16 +0800
Message-Id: <20201027175117.32826-3-amarjargal16@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027175117.32826-1-amarjargal16@gmail.com>
References: <20201027175117.32826-1-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix checkpatch warning "fix quoted string split across lines".

Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 15 ++---
 .../interface/vchiq_arm/vchiq_connected.c     |  3 +-
 .../interface/vchiq_arm/vchiq_core.c          | 55 ++++++-------------
 3 files changed, 24 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 5862d63cba8d..f500a7043805 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -610,8 +610,7 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 		return VCHIQ_SUCCESS;
 
 	vchiq_log_trace(vchiq_arm_log_level,
-		"%s - service %lx(%d,%p), reason %d, header %lx, "
-		"instance %lx, bulk_userdata %lx",
+		"%s - service %lx(%d,%p), reason %d, header %lx, instance %lx, bulk_userdata %lx",
 		__func__, (unsigned long)user_service,
 		service->localport, user_service->userdata,
 		reason, (unsigned long)header,
@@ -1300,8 +1299,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		rc = mutex_lock_killable(&instance->state->mutex);
 		if (rc) {
 			vchiq_log_error(vchiq_arm_log_level,
-				"vchiq: connect: could not lock mutex for "
-				"state %d: %d",
+				"vchiq: connect: could not lock mutex for state %d: %d",
 				instance->state->id, rc);
 			ret = -EINTR;
 			break;
@@ -1384,8 +1382,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 				vchiq_release_service_internal(service);
 			if (status != VCHIQ_SUCCESS) {
 				vchiq_log_error(vchiq_susp_log_level,
-					"%s: cmd %s returned error %d for "
-					"service %c%c%c%c:%03d",
+					"%s: cmd %s returned error %d for service %c%c%c%c:%03d",
 					__func__,
 					(cmd == VCHIQ_IOC_USE_SERVICE) ?
 						"VCHIQ_IOC_USE_SERVICE" :
@@ -2347,8 +2344,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 			service->client_id);
 		entity_uc = &service->service_use_count;
 	} else {
-		vchiq_log_error(vchiq_susp_log_level, "%s null service "
-				"ptr", __func__);
+		vchiq_log_error(vchiq_susp_log_level, "%s null service ptr", __func__);
 		ret = VCHIQ_ERROR;
 		goto out;
 	}
@@ -2643,8 +2639,7 @@ vchiq_check_service(struct vchiq_service *service)
 
 	if (ret == VCHIQ_ERROR) {
 		vchiq_log_error(vchiq_susp_log_level,
-			"%s ERROR - %c%c%c%c:%d service count %d, "
-			"state count %d", __func__,
+			"%s ERROR - %c%c%c%c:%d service count %d, state count %d", __func__,
 			VCHIQ_FOURCC_AS_4CHARS(service->base.fourcc),
 			service->client_id, service->service_use_count,
 			arm_state->videocore_use_count);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
index 79b75efa6868..f91e21a0b51b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
@@ -43,8 +43,7 @@ void vchiq_add_connected_callback(VCHIQ_CONNECTED_CALLBACK_T callback)
 	else {
 		if (g_num_deferred_callbacks >= MAX_CALLBACKS)
 			vchiq_log_error(vchiq_core_log_level,
-				"There already %d callback registered - "
-				"please increase MAX_CALLBACKS",
+				"There already %d callback registered - please increase MAX_CALLBACKS",
 				g_num_deferred_callbacks);
 		else {
 			g_deferred_callback[g_num_deferred_callbacks] =
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 15c90f81e31b..0b0a97bfd01c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -900,8 +900,7 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
 				service_quota->slot_quota))) {
 			spin_unlock(&quota_spinlock);
 			vchiq_log_trace(vchiq_core_log_level,
-				"%d: qm:%d %s,%zx - quota stall "
-				"(msg %d, slot %d)",
+				"%d: qm:%d %s,%zx - quota stall (msg %d, slot %d)",
 				state->id, service->localport,
 				msg_type_str(type), size,
 				service_quota->message_use_count,
@@ -1412,8 +1411,7 @@ abort_outstanding_bulks(struct vchiq_service *service,
 			vchiq_complete_bulk(bulk);
 
 			vchiq_log_info(SRVTRACE_LEVEL(service),
-				"%s %c%c%c%c d:%d ABORTED - tx len:%d, "
-				"rx len:%d",
+				"%s %c%c%c%c d:%d ABORTED - tx len:%d, rx len:%d",
 				is_tx ? "Send Bulk to" : "Recv Bulk from",
 				VCHIQ_FOURCC_AS_4CHARS(service->base.fourcc),
 				service->remoteport,
@@ -1648,8 +1646,7 @@ parse_rx_slots(struct vchiq_state *state)
 				? service->base.fourcc
 				: VCHIQ_MAKE_FOURCC('?', '?', '?', '?');
 			vchiq_log_info(SRVTRACE_LEVEL(service),
-				"Rcvd Msg %s(%u) from %c%c%c%c s:%d d:%d "
-				"len:%d",
+				"Rcvd Msg %s(%u) from %c%c%c%c s:%d d:%d len:%d",
 				msg_type_str(type), type,
 				VCHIQ_FOURCC_AS_4CHARS(svc_fourcc),
 				remoteport, localport, size);
@@ -1773,8 +1770,7 @@ parse_rx_slots(struct vchiq_state *state)
 				if ((int)(queue->remote_insert -
 					queue->local_insert) >= 0) {
 					vchiq_log_error(vchiq_core_log_level,
-						"%d: prs %s@%pK (%d->%d) "
-						"unexpected (ri=%d,li=%d)",
+						"%d: prs %s@%pK (%d->%d) unexpected (ri=%d,li=%d)",
 						state->id, msg_type_str(type),
 						header, remoteport, localport,
 						queue->remote_insert,
@@ -1957,8 +1953,7 @@ slot_handler_func(void *v)
 					 * through outstanding messages.
 					 */
 					vchiq_log_error(vchiq_core_log_level,
-						"Failed to send RESUME "
-						"message");
+						"Failed to send RESUME message");
 				}
 				break;
 			default:
@@ -2084,9 +2079,7 @@ sync_func(void *v)
 					VCHIQ_MESSAGE_AVAILABLE, header,
 					NULL) == VCHIQ_RETRY)
 					vchiq_log_error(vchiq_sync_log_level,
-						"synchronous callback to "
-						"service %d returns "
-						"VCHIQ_RETRY",
+						"synchronous callback to service %d returns VCHIQ_RETRY",
 						localport);
 			}
 			break;
@@ -2181,8 +2174,7 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
 	if (local->initialised) {
 		vchiq_loud_error_header();
 		if (remote->initialised)
-			vchiq_loud_error("local state has already been "
-				"initialised");
+			vchiq_loud_error("local state has already been initialised");
 		else
 			vchiq_loud_error("master/slave mismatch two slaves");
 		vchiq_loud_error_footer();
@@ -2719,8 +2711,7 @@ vchiq_close_service_internal(struct vchiq_service *service, int close_recvd)
 	case VCHIQ_SRVSTATE_CLOSEWAIT:
 		if (close_recvd)
 			vchiq_log_error(vchiq_core_log_level,
-				"%s(1) called "
-				"in state %s",
+				"%s(1) called in state %s",
 				__func__, srvstate_names[service->srvstate]);
 		else if (is_server) {
 			if (service->srvstate == VCHIQ_SRVSTATE_LISTENING) {
@@ -3533,8 +3524,7 @@ int vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 
 	if (VCHIQ_ENABLE_STATS) {
 		len = scnprintf(buf, sizeof(buf),
-			"  Stats: ctrl_tx_count=%d, ctrl_rx_count=%d, "
-			"error_count=%d",
+			"  Stats: ctrl_tx_count=%d, ctrl_rx_count=%d, error_count=%d",
 			state->stats.ctrl_tx_count, state->stats.ctrl_rx_count,
 			state->stats.error_count);
 		err = vchiq_dump(dump_context, buf, len + 1);
@@ -3543,8 +3533,7 @@ int vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 	}
 
 	len = scnprintf(buf, sizeof(buf),
-		"  Slots: %d available (%d data), %d recyclable, %d stalls "
-		"(%d data)",
+		"  Slots: %d available (%d data), %d recyclable, %d stalls (%d data)",
 		((state->slot_queue_available * VCHIQ_SLOT_SIZE) -
 			state->local_tx_pos) / VCHIQ_SLOT_SIZE,
 		state->data_quota - state->data_use_count,
@@ -3639,8 +3628,7 @@ int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 			service->bulk_rx.remote_insert;
 
 		len = scnprintf(buf, sizeof(buf),
-			"  Bulk: tx_pending=%d (size %d),"
-			" rx_pending=%d (size %d)",
+			"  Bulk: tx_pending=%d (size %d), rx_pending=%d (size %d)",
 			tx_pending,
 			tx_pending ? service->bulk_tx.bulks[
 			BULK_INDEX(service->bulk_tx.remove)].size : 0,
@@ -3654,8 +3642,7 @@ int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 				return err;
 
 			len = scnprintf(buf, sizeof(buf),
-				"  Ctrl: tx_count=%d, tx_bytes=%llu, "
-				"rx_count=%d, rx_bytes=%llu",
+				"  Ctrl: tx_count=%d, tx_bytes=%llu, rx_count=%d, rx_bytes=%llu",
 				service->stats.ctrl_tx_count,
 				service->stats.ctrl_tx_bytes,
 				service->stats.ctrl_rx_count,
@@ -3665,8 +3652,7 @@ int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 				return err;
 
 			len = scnprintf(buf, sizeof(buf),
-				"  Bulk: tx_count=%d, tx_bytes=%llu, "
-				"rx_count=%d, rx_bytes=%llu",
+				"  Bulk: tx_count=%d, tx_bytes=%llu, rx_count=%d, rx_bytes=%llu",
 				service->stats.bulk_tx_count,
 				service->stats.bulk_tx_bytes,
 				service->stats.bulk_rx_count,
@@ -3676,8 +3662,7 @@ int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 				return err;
 
 			len = scnprintf(buf, sizeof(buf),
-				"  %d quota stalls, %d slot stalls, "
-				"%d bulk stalls, %d aborted, %d errors",
+				"  %d quota stalls, %d slot stalls, %d bulk stalls, %d aborted, %d errors",
 				service->stats.quota_stalls,
 				service->stats.slot_stalls,
 				service->stats.bulk_stalls,
@@ -3699,11 +3684,9 @@ void
 vchiq_loud_error_header(void)
 {
 	vchiq_log_error(vchiq_core_log_level,
-		"============================================================"
-		"================");
+		"============================================================================");
 	vchiq_log_error(vchiq_core_log_level,
-		"============================================================"
-		"================");
+		"============================================================================");
 	vchiq_log_error(vchiq_core_log_level, "=====");
 }
 
@@ -3712,11 +3695,9 @@ vchiq_loud_error_footer(void)
 {
 	vchiq_log_error(vchiq_core_log_level, "=====");
 	vchiq_log_error(vchiq_core_log_level,
-		"============================================================"
-		"================");
+		"============================================================================");
 	vchiq_log_error(vchiq_core_log_level,
-		"============================================================"
-		"================");
+		"============================================================================");
 }
 
 enum vchiq_status vchiq_send_remote_use(struct vchiq_state *state)
-- 
2.25.1



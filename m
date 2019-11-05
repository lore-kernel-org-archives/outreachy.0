X-GM-THRID: 6753896393761357824
X-Received: by 2002:aa7:9687:: with SMTP id f7mr33490717pfk.230.1572915345789;
        Mon, 04 Nov 2019 16:55:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:215b:: with SMTP id s27ls3648062pgm.7.gmail; Mon, 04 Nov
 2019 16:55:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqxGgQFjXCW2StUiaHg/hJ2bTx91jhsobWXGgIK/kpzLHsFgSllV5w6Wohh2Pz4PzIbTM6Kt
X-Received: by 2002:a63:89c1:: with SMTP id v184mr28181766pgd.35.1572915344489;
        Mon, 04 Nov 2019 16:55:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915344; cv=none;
        d=google.com; s=arc-20160816;
        b=LDU4l6kPYn/S+Hf1zZzCa0ob3guouigazTsxF/GhQ/5N2QYDEIksUuJKxi4N8bamof
         8erxH8Pg4zui6HDpuYdKngSY2yqXjLtiWxql674e+CVYrjTEhG+7p+Q8T2RJ0QB5lMuE
         Q8REezjU59TnmJ+hjysw1jWCRyPdt4/koUYh6i6sZPFBMHtwNLJoavp4lP+WW6qcKdBv
         qg7ORi44UPRiGghVAT+2KSDxRUQH9Al8jpswUatxf5MwcR58P1eCiCiACwtw4jCHC8/b
         NIqMahNv6fC7G5Slgf16couf3uAK+SnCrpBd8dyJos8UPdROt2qII8Vsxpm6BSXZAG9d
         H3wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=02rpv/LH8a8DstWNhTZ4DhQdk1H+I+RX8N0YQ1c+grs=;
        b=vRIS8Hi0oChJi8OHgTeWV7cV36uYiNZn8yFgjP1ETpue1qP/Xf+LHzrFijfSrxN5Sp
         M9V9i+ywCGNJAebwu4jOR10BmZImHQGmA2qSY3HTu7EhlIm9+leUOjPbFEp/rxMmXcTv
         EUhAfqkWCedRmGsK/otLQchSSxRlx5TBbq6lCnA+vroT4n8UmVMcw9HNqnAoyOpwVRGi
         gR7oQ9yWOgZnlX7bZvoJo+QhA5y7PXpWTqyeHp/tsSQ20hOj5RthKQ9Xc9Qgdayp8I/n
         fqMj77MFrbrjYRYg6qJ1QYNJ273syScv6uai6UcZ7lRGPIdpIs+xMHkiUnFQ+8J/AO2Y
         Nkhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jIF7TttZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id c11si1026415pjn.3.2019.11.04.16.55.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jIF7TttZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42f.google.com with SMTP id 193so12537277pfc.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=02rpv/LH8a8DstWNhTZ4DhQdk1H+I+RX8N0YQ1c+grs=;
        b=jIF7TttZDLmsQ4GkIBOLVz4lQmLhGcSHOnUb0uOGd/e+VVcQE9zfe6hgp6uT9rOaV6
         fdJ3UKOrDSZnIsGv31ue+ps5pQlvuwvJ2dLndhXdcU960mvmzT8PTMHXTEHMCLEEiX65
         hhHo/m1pueRO4K9LzYplNoK2ooFvkaB1wJmFN5sc2ifBhHQw/vctf7ME0otvxn1XBfOX
         F9ieCcXRwhS5vRjY7LlNiZHCeMe/8kW/+VjNQflmVzg7pDCBAKEnoYO18N1FvpxMnEGe
         9dbeVBUedKciCIzXiO3/QCHLmlijLedf2QgHdmG1ZIQ37Cg6mkCkGgywNpSqZ6zIVRDk
         LPkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=02rpv/LH8a8DstWNhTZ4DhQdk1H+I+RX8N0YQ1c+grs=;
        b=CYx51wlPjhs4CndGjFRGJIL0eC14rOEe4gNWoslDTibOwh9XM9sy06svrlqy7+ywY/
         XHJLwa7R6FxGFao9t5l2P2roLQJC9+3mMvVl8QkjDps7k7b9cOeagXmRRky/+sU6qwUG
         YKfNYSze5ud4CrLGnwr93q2S/KlTVS7evWN/esl4HET7KzqOA/zz/CUZ4lRGZ3aJt0wy
         rtsq89EiLyAm7iBmQ1QwtkMNj49jhC6cDRpJST9NUnOA7LeWWSaSjNSoilakQtEuw1Vq
         NAvqftA0M5HJAy6Jtr5W6MIKhublrda1mk5cO/BHr0XpAVLwmrWpk+wSzWPf8ClBXYJp
         TJaw==
X-Gm-Message-State: APjAAAV3tIHpJqVhJLCysim9bQi4Cp1RkybOHsbYv+BnuerNYLe9pzb1
	Pg5S25cDkC6oGdBa67JNz78=
X-Received: by 2002:a17:90a:901:: with SMTP id n1mr2719946pjn.113.1572915344202;
        Mon, 04 Nov 2019 16:55:44 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 21sm18452909pgw.87.2019.11.04.16.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:43 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 07/14] staging: vc04_services: Remove connstate enum typedef
Date: Mon,  4 Nov 2019 16:55:17 -0800
Message-Id: <f9ded050139c3939daa01e1e9f9f5daf44737fc1.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes vchiq connstate enum typedefs. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |  6 +++---
 .../vc04_services/interface/vchiq_arm/vchiq_core.h | 14 +++++++-------
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 8c791e9d5c6a..6991db873e02 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3128,8 +3128,8 @@ void vchiq_on_remote_use_active(struct vchiq_state *state)
 }
 
 void vchiq_platform_conn_state_changed(struct vchiq_state *state,
-				       VCHIQ_CONNSTATE_T oldstate,
-				       VCHIQ_CONNSTATE_T newstate)
+				       enum vchiq_connstate oldstate,
+				       enum vchiq_connstate newstate)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index d72d160c32f8..326a1906c75e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -375,9 +375,9 @@ make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
 }
 
 inline void
-vchiq_set_conn_state(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate)
+vchiq_set_conn_state(struct vchiq_state *state, enum vchiq_connstate newstate)
 {
-	VCHIQ_CONNSTATE_T oldstate = state->conn_state;
+	enum vchiq_connstate oldstate = state->conn_state;
 
 	vchiq_log_info(vchiq_core_log_level, "%d: %s->%s", state->id,
 		conn_state_names[oldstate],
@@ -2078,7 +2078,7 @@ init_bulk_queue(struct vchiq_bulk_queue *queue)
 }
 
 inline const char *
-get_conn_state_name(VCHIQ_CONNSTATE_T conn_state)
+get_conn_state_name(enum vchiq_connstate conn_state)
 {
 	return conn_state_names[conn_state];
 }
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 6a6ae0c01061..8e064047abae 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -169,7 +169,7 @@ enum {
 
 #endif /* VCHIQ_ENABLE_DEBUG */
 
-typedef enum {
+enum vchiq_connstate {
 	VCHIQ_CONNSTATE_DISCONNECTED,
 	VCHIQ_CONNSTATE_CONNECTING,
 	VCHIQ_CONNSTATE_CONNECTED,
@@ -179,7 +179,7 @@ typedef enum {
 	VCHIQ_CONNSTATE_RESUMING,
 	VCHIQ_CONNSTATE_PAUSE_TIMEOUT,
 	VCHIQ_CONNSTATE_RESUME_TIMEOUT
-} VCHIQ_CONNSTATE_T;
+};
 
 enum {
 	VCHIQ_SRVSTATE_FREE,
@@ -367,7 +367,7 @@ struct vchiq_slot_zero {
 struct vchiq_state {
 	int id;
 	int initialised;
-	VCHIQ_CONNSTATE_T conn_state;
+	enum vchiq_connstate conn_state;
 	short version_common;
 
 	struct vchiq_shared_state *local;
@@ -486,7 +486,7 @@ extern int vchiq_sync_log_level;
 extern struct vchiq_state *vchiq_states[VCHIQ_MAX_STATES];
 
 extern const char *
-get_conn_state_name(VCHIQ_CONNSTATE_T conn_state);
+get_conn_state_name(enum vchiq_connstate conn_state);
 
 extern struct vchiq_slot_zero *
 vchiq_init_slots(void *mem_base, int mem_size);
@@ -644,14 +644,14 @@ vchiq_send_remote_use_active(struct vchiq_state *state);
 
 extern void
 vchiq_platform_conn_state_changed(struct vchiq_state *state,
-				  VCHIQ_CONNSTATE_T oldstate,
-				  VCHIQ_CONNSTATE_T newstate);
+				  enum vchiq_connstate oldstate,
+				  enum vchiq_connstate newstate);
 
 extern void
 vchiq_platform_handle_timeout(struct vchiq_state *state);
 
 extern void
-vchiq_set_conn_state(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate);
+vchiq_set_conn_state(struct vchiq_state *state, enum vchiq_connstate newstate);
 
 extern void
 vchiq_log_dump_mem(const char *label, uint32_t addr, const void *voidMem,
-- 
2.17.1



X-GM-THRID: 6755960127598100480
X-Received: by 2002:a63:d40b:: with SMTP id a11mr11745723pgh.296.1572994555578;
        Tue, 05 Nov 2019 14:55:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b304:: with SMTP id i4ls43248pgf.9.gmail; Tue, 05 Nov
 2019 14:55:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqytFjrCK9xwm2Pr+q0YzDzIS+7Kpc4rsNYcvMgayG2tjjXZdqwYmdtKzYxxhtumlt2x45Wu
X-Received: by 2002:aa7:92c9:: with SMTP id k9mr41484407pfa.63.1572994554178;
        Tue, 05 Nov 2019 14:55:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994554; cv=none;
        d=google.com; s=arc-20160816;
        b=qgNeGeS56b0sQJZDeuzWLlCmXN18+c5t6msfcCw9/8o6uNOygjp3v2+AGnjlfY0Cyy
         MFtHFJyW076mi1XZEa+NIMdKNWzMTBesedtF7SDhlHvYRnKcV7dJJcKGbKzb3rF2HREJ
         U2zAhT9h7KhlXPXc9IQy2HJp2A9h8ywLLr1gcW/2Z4AwU4NFSOmlc/NMIbNqs2fqGoID
         /T+FRoJbGcShUIbOXyG7GzejjA3pnvMEJtQDmXLNlGeYbm69BDsX9F0By6zeMFC7x0UM
         u+MFuE7fRmIDMMMmikBoewpXB8VjHfL0nudxYwvP4m/XbDI9FQOTmfHqbTrw2EnpGEDX
         dEGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=yLTppBWaPq30muyg5PpICbobUZh6z2e3D5TApswJWOw=;
        b=wD8oWUYZLk4DvKbLkgXcxsbdlB6eSdFJBvlLJFnqOzHlEGzvmuGLQrMJ6SdxhN3b+w
         OIW8SysPISRPfb74QYa56AwSF9HcCAyoBQnc8BBN6ifoF0xlnaqxOteTNSN39dO72pOW
         Z7kJWk7h2Ff673j0+UlvvQqpisgC+dXnawwTJli1hjbIaSNpfWyl7GX2KJ0zX+xsEIKg
         E/gZKYkf+SOdPsxDlhnogRBm6nkGwMZvFb6R+5VSZOfoar1+cnr9SIsqNvjZdeCfNe4y
         dqEsUZyytYAAxXzyxJ5QLOem4O2mtCi+Kei3t9ArvtmEQSFnOppw/VfcUHB4pJoz2hUH
         kkXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rCQ/XPYO";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 3si433103pfg.1.2019.11.05.14.55.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rCQ/XPYO";
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id u23so15670884pgo.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yLTppBWaPq30muyg5PpICbobUZh6z2e3D5TApswJWOw=;
        b=rCQ/XPYO9JMsu0caj4Yf49tbGWAq5eIVkUDR0fh3v9WA/Zc1PDDjIbGA+MGO0alZOH
         y7d1Lfp7EqlhHWXqwRp54KonSTRsD443HBIx6K1Elhkvfh8g9byC2Z08wVxMkGoSH+Av
         EAsJDFj968wd2VxW4bY4bAZ680qNqXg3XnI91n5ZlsicrzHTy5U/49s1KH0oLvXtlOT7
         QuBkQuNTU1GTGmFBvkSXqR1aV/Zta2mcJsEe36Rg1kZumUsbQVOTXYg5jI0F+YJWWAH9
         qbAefBn89dt3U1EUPv9M6lWPGaMFmMGG5tXV5Npm3n+zw/ES70BN6sLuo7i79oRV0e+v
         kQZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yLTppBWaPq30muyg5PpICbobUZh6z2e3D5TApswJWOw=;
        b=bsUjOJfVodf/z4N2iIteqyUSrANC9hs+cT7qQyOAN0ACvZYvD8VoWedEyXNySoE+Lm
         LPizM/vwF+I4wwXzb3aAAcZXpxVg4NqiH6MLYK8Gd73yYRAsm4sCFOv5PLjSdTs4SYwq
         bIyUr0v30fSv3ClDD7JwBVXodNqx2O6T/FcvIzLGfu14R58AopQmAn6sR+BIWs09ZbPK
         edGfV/7GtuzP0PlhELGahmnuzaBH+7MB2XAugWfZsuEV0Ry4rNMkcbEw+eRVOySijOdR
         xxdlqYnKeuDE94/lVwpwotqyYJhf0PrK2jksuKEU0kCTatrfLl9dOzYkYJOhMMv6o+HU
         DHMg==
X-Gm-Message-State: APjAAAVpxtbjTFPxgkLl+gZeoza5yby4yCyv0hPMqROjnY4bPpVBI6AI
	Oymd/oXCkAF6II7bQL7YsTZ1rr8eoekmlA==
X-Received: by 2002:a17:90a:174a:: with SMTP id 10mr1956971pjm.104.1572994553925;
        Tue, 05 Nov 2019 14:55:53 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id 39sm473384pjo.7.2019.11.05.14.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:53 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 07/14] staging: vc04_services: Replace VCHIQ_CONNSTATE_T enum typedef with enum vchiq_connstate
Date: Tue,  5 Nov 2019 14:55:24 -0800
Message-Id: <7e64765a55193413e9668dc53f751c435369ed80.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHIQ_CONNSTATE_T enum typedef with enum vchiq_connstate to
match kernel code style. Issue found by checkpatch.

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



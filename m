X-GM-THRID: 6753896393761357824
X-Received: by 2002:a63:6247:: with SMTP id w68mr32179128pgb.283.1572915347196;
        Mon, 04 Nov 2019 16:55:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:8302:: with SMTP id h2ls3840276pfe.9.gmail; Mon, 04 Nov
 2019 16:55:46 -0800 (PST)
X-Google-Smtp-Source: APXvYqwioHHGhJmr6vy2DfnKYrg6+e6yqxzU39M0PKlNhnNOFs1agJYznFNAYspCAjThcYOOaz0v
X-Received: by 2002:a63:d308:: with SMTP id b8mr33477825pgg.246.1572915346015;
        Mon, 04 Nov 2019 16:55:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572915346; cv=none;
        d=google.com; s=arc-20160816;
        b=HtxCekVW2F9CxIJ8ue9aFO62c9Es8O40FYZ5J2R7GRE297r8tXMeY8BSB/8kAbyG1E
         lqTSnRYKaYtM27NVn/IaWtOD8Md2HAoeR/pEeqTC0agT61dErEl0fs/akgH5jNXZ/T2/
         nshnxqnw7HhcJggiPKoWGt5mgjJsDXdep3SuSwkjpAedDU/yqhEXYczyxfP737cbLW+O
         cF5h+98S18z+fGLJuL7L4LfEfnqNIqmknjCfPSYAEDsIvcfxc0MAaGHJn3DOCFqWBFKT
         /rAjK8+aqeTzF+HgjfaXdjzy2ewXanmkvmrmi15n4wae5xonzeBk0TtlEcmGJIykNNLJ
         Z9Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=GGqJ719OTRVgnCXIHZdGyj1jqIBE5yMuNDr+63UdMWY=;
        b=XRrYy10eVYDuYhxWJFoj6s8usxk8XJXLIg4SbqR43RJt3lLo6yLw9EYNS/mxiKY2Et
         Jq+Pn21D3PyJhyLr2PmGqXjdh9w6CLzkeyNkG/XGE8vDHXV0pcQpT3n6UW3yon84+MLn
         LiUWyNHU9NIgM21nsrJyhAWhzNSt8ocvWjKBuLMf/AOVRzq9w1JHO2CHRbvA6dnQja/V
         lIymQFoygZ2bGhf5Dfuyb/aHlEYKIISokMMngPThHfjz2l8CR2Otkxcp1Uw54g/Jmotp
         W2rDWa3WqUkMRK71EowAIhsG+fTSkLjuQ2xeaChtq8u3LqGEh3w3lUd6HSbYcxkiz603
         JPdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cEra0agS;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m28si955809pgn.2.2019.11.04.16.55.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 16:55:46 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cEra0agS;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id p26so13831656pfq.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 16:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GGqJ719OTRVgnCXIHZdGyj1jqIBE5yMuNDr+63UdMWY=;
        b=cEra0agSz7MZcwQPzymxquh/avr88JCPW1pn+uc3vt/5UpB2RTIrm8nxz5FC4ZpEE9
         NVPIcRpXXRXb1AmHB+vUuDh4goYm1JFg6o+B8Oo2S0B8598lidzZy9F9xP5WPaIRvhfU
         mcW4R9UNDU0s5CsvrghrFx0+xaC+fnRcJX6JUM05ecL5GnWh5YwfbRcNFx5/mA8su2lQ
         GHKGfVHR1t44N4+gx5jzmFcmiatfPxaRf4PimC+Ylp0XPhZXtASptz2CV0J2z7RF0ag0
         y8PuK7gkrZgU/yaoj2pxYtBo0gWI94uqrbt2EcBej93nHBnqjISlHPDepITnwlZCFQeT
         yE5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=GGqJ719OTRVgnCXIHZdGyj1jqIBE5yMuNDr+63UdMWY=;
        b=hJMShTJMIm1+QwSAPhlCU4uAXxujQjm3hXCMkjtM0LzSvyMGdgQu80QXqGB8Fhzfol
         ZU30h7KQOqMkRQaHQNMMndbJOLCgXztGZkTDmM5x2PjmzwXMjBgG4kpVqS5mBbTvTUv+
         wsQDrUMopigK0R7LIhVm6Bdraex63XGKfd4C0ktivyxhXCEtQkufE2Z0hgYQ/fGauAwL
         7RALDnQYE1Rd3JN4pc7IHukNLuRXHqMiCC2tmn9DUCeA8P/vFrFncFFvHI1NMkQA8FyK
         u/F6dVPkeaASTNiAcca6BVbntM5fTY+VP4tX/V0PraaTH1sXwlfx58V7+lWHKwEpqYrT
         0wLg==
X-Gm-Message-State: APjAAAU/TKQQV85/QfBXf9TMuHdPFWlDRMdZWt3upWgfKmtOssmXWryD
	yNMHb1u0IK94z9jzcmEV0Kk=
X-Received: by 2002:a63:cd47:: with SMTP id a7mr31778367pgj.29.1572915345667;
        Mon, 04 Nov 2019 16:55:45 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id k32sm17573053pje.10.2019.11.04.16.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 16:55:45 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH 08/14] staging: vc04_services: Remove bulk dir enum typedef
Date: Mon,  4 Nov 2019 16:55:18 -0800
Message-Id: <9045ba64bff47858e7b27bac0fe47c7305386516.1572915104.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572915104.git.jamal.k.shareef@gmail.com>
References: <cover.1572915104.git.jamal.k.shareef@gmail.com>

Removes bulk dir enum typedef. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 +++---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h  | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 6991db873e02..1edfaa80f7c1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -174,7 +174,7 @@ vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
 
 static enum vchiq_status
 vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
-	unsigned int size, VCHIQ_BULK_DIR_T dir);
+	unsigned int size, enum vchiq_bulk_dir dir);
 
 #define VCHIQ_INIT_RETRIES 10
 enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
@@ -431,7 +431,7 @@ EXPORT_SYMBOL(vchiq_bulk_receive);
 
 static enum vchiq_status
 vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
-	unsigned int size, VCHIQ_BULK_DIR_T dir)
+	unsigned int size, enum vchiq_bulk_dir dir)
 {
 	VCHIQ_INSTANCE_T instance;
 	struct vchiq_service *service;
@@ -1042,7 +1042,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		struct vchiq_queue_bulk_transfer args;
 		struct bulk_waiter_node *waiter = NULL;
 
-		VCHIQ_BULK_DIR_T dir =
+		enum vchiq_bulk_dir dir =
 			(cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
 			VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 326a1906c75e..4392dad352da 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2955,7 +2955,7 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
 enum vchiq_status vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
 				   void *offset, int size, void *userdata,
 				   enum vchiq_bulk_mode mode,
-				   VCHIQ_BULK_DIR_T dir)
+				   enum vchiq_bulk_dir dir)
 {
 	struct vchiq_service *service = find_service_by_handle(handle);
 	struct vchiq_bulk_queue *queue;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 8e064047abae..d8ecc2fd1677 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -202,10 +202,10 @@ enum {
 	VCHIQ_POLL_COUNT
 };
 
-typedef enum {
+enum vchiq_bulk_dir {
 	VCHIQ_BULK_TRANSMIT,
 	VCHIQ_BULK_RECEIVE
-} VCHIQ_BULK_DIR_T;
+};
 
 typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
 
@@ -524,7 +524,7 @@ remote_event_pollall(struct vchiq_state *state);
 extern enum vchiq_status
 vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *offset, int size,
 		    void *userdata, enum vchiq_bulk_mode mode,
-		    VCHIQ_BULK_DIR_T dir);
+		    enum vchiq_bulk_dir dir);
 
 extern void
 vchiq_dump_state(void *dump_context, struct vchiq_state *state);
-- 
2.17.1



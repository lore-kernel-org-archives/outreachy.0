X-GM-THRID: 6755960127598100480
X-Received: by 2002:a05:620a:1505:: with SMTP id i5mr3940077qkk.64.1572994557349;
        Tue, 05 Nov 2019 14:55:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:58a4:: with SMTP id ea4ls3115195qvb.11.gmail; Tue, 05
 Nov 2019 14:55:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqxpf+yLhORSIRfau7YdB6tnlVD5otwBsjBZPFmNRowlBhlNA+gPRbUVvg6OZe0/d+dvNeHL
X-Received: by 2002:a0c:fca5:: with SMTP id h5mr29431407qvq.149.1572994556344;
        Tue, 05 Nov 2019 14:55:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572994556; cv=none;
        d=google.com; s=arc-20160816;
        b=yp4mg0crj9nhh6hHyUhnzbNWFetkahqVwQs2crNsEkXTNXs80GzboCFbthDfR5DsKl
         n799iAlxcRS+/at2l5wf+NR1sbJQ3vT69KOFGw3P+Dhy9x4A61YJaV5WnL+zg4N732/l
         HOOz/iWgKEGlbo32M2yl+8s4WryGc4cgTgNOS3dWizszA8D7b/+iQ5krPkIPY+j5Ikxd
         NHt5zHp+qVyLDQheus9FUU33j71PCkQNX0Yi+bK4qabF/ivdtCxGX1y5IAIKxFmh8S1B
         v/lFUP9pNE4cW9UUMdaFuaJ3eTgrk4LDDuhoWc6VZynr6J1SyXhH0rvcy85IPAXYnQtq
         iimg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=vSvuM3v495vAsu8p8E+kv9M8YgcomiyO8N/bh0/xvcM=;
        b=fqQmT4JE0QtNaFHTNxNgrEjclsQByxx3307PTafW8+xRkaRlwZo9Bba9JpJxk5Cnx2
         PumvzOc1dhE7PR6cl94qSRTB1bMJnqu8g/ZcYlJ7pTvsU9jQHVKHReTp6cmZVKivgVfC
         1BzoUfn6iuNv/ScME6iItIar2skT/snBK32z0ogIT/HbuZLluRHXzbH0GxrTBDDZkF8N
         V/dj/Ll1woNZPND4gWxd1Cex1BwXMNSCVUAz5bJvXQ1DZRyooEUKxoaa9WFIprJgViFu
         D4jVQ5JcT20jIQzRSsnrZ2nzQNt0wYJRKmKZZZyh20ZiksZY31mn0e94ogPgNhLukgTK
         DBsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf8LPUWj;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k33si1254716qtd.4.2019.11.05.14.55.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 14:55:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Uf8LPUWj;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id a18so9278120plm.10
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 14:55:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vSvuM3v495vAsu8p8E+kv9M8YgcomiyO8N/bh0/xvcM=;
        b=Uf8LPUWjyGTj5fWvc5c/n/ozP/pOPwmo/fSvf8nfjqtt5v36Am8Sb6fv5St8vKiaHn
         7UM7MsjIOM8MerfhzjYdPiaEzYPy7wEEzeAsow4sXaMEg0VssIMru4gfjpNYrZa9b+ja
         qz7OrT7zdsbfrxuicaJj8xMcd0cVtN441jcuiUAbnEKvqPkXD5jDi2hIFYjOEbQPzq28
         o/SCjDRNFHwti2v4Ci3yz1+X7nmCY83LajIT3whA70HBbHhGrPk2NYsePQcrU64x+4tN
         dy8NvdDjIokSXfBAWoWCjty/6WH0irSg0MmplAm7itXuqYAnieValHrY2oidpjKMcuyE
         fDHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vSvuM3v495vAsu8p8E+kv9M8YgcomiyO8N/bh0/xvcM=;
        b=kyuBl0Wh87ienBTs684IIqroLrIhNriHHQTE9EXt05UGlrE1hJPFPLkyP/StSjjrGe
         TaeibqXZ2Tz30szMri9D/G2qKT0Gwvf3FfrFoCl6uXeFHKvErPZXeSq8dWUbdxMkHcDS
         olZeGrjdCuEMZ3rKVXdI7gpyLgG9ovlR0TNcu0sYIHNHgm5n3gGCBvEfHOa0XkO3Q2Qk
         X3yEROx/cPUZwHuXvO6dKfaF5lekW4+52oFEoUCqtjh3h7FockWwD9q2DwuB85BFCTpq
         3R27+BUtU5uqByIeTa8coGP4/vX3zwODP9XnGjQxj+M2LjaaT8zbVV8EWk77hzEfoNCe
         rF8g==
X-Gm-Message-State: APjAAAUGCxn9vLo9Mp5cZz+Nsj9GrVWrzdo4zmuQumv1MzXajEI57Q+Z
	ZNEfZNkXEetcTHaRBvZvk+Un5/27Kditnw==
X-Received: by 2002:a17:902:b948:: with SMTP id h8mr8130770pls.139.1572994555414;
        Tue, 05 Nov 2019 14:55:55 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id f25sm28512231pfk.10.2019.11.05.14.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 14:55:55 -0800 (PST)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 08/14] staging: vc04_services: Replace VCHIQ_BULK_DIR_T enum typedef with enum vchiq_bulk_dir
Date: Tue,  5 Nov 2019 14:55:25 -0800
Message-Id: <344e01e371aa7fbf670ba118be174e391e078e6a.1572994235.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572994235.git.jamal.k.shareef@gmail.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>

Replaces VCHIQ_BULK_DIR_T enum typedef with enum vchiq_bulk_dir to match
kernel code style. Issue found by checkpatch.

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



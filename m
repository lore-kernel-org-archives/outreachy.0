X-GM-THRID: 6743638980640636928
X-Received: by 2002:a62:168e:: with SMTP id 136mr12327592pfw.144.1570125804419;
        Thu, 03 Oct 2019 11:03:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:4301:: with SMTP id j1ls1542361pgq.14.gmail; Thu, 03 Oct
 2019 11:03:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSwopUbzfpFPsvCdKg79JbZB7/uc8WUOYFT3uCeWrhD6GZzKA/fzGr93bym1yphEiAEMoR
X-Received: by 2002:a65:6844:: with SMTP id q4mr11305215pgt.274.1570125802952;
        Thu, 03 Oct 2019 11:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570125802; cv=none;
        d=google.com; s=arc-20160816;
        b=Aam+VguFAOWgN+TBvaj1pSyuNKWE5o/7VwMJWrhhWR0kRhcVXJY3jw94QT/mmaYv6r
         pc3ParxJBOo5VsBjkd5NJJiLnDdLUFH2151h5OKSh5X75jtbEThlbuiOa8yqJ1dsDdB9
         7Cb90+8H1BLG0w+FtAiRPsBd64NvIS7NfCkp2Sz3JMal7YrFh+GOXEE7cfb8YvErcj6k
         mKrI77yKk1DGvQxYqTWTFWwXNMF8n7ncI4Ys0XOL+jhs03u2DEuvn2vUlGZByvYxq05B
         7PfwFsL8zAeDaexlFN/ZRvIlXcoFH0qYoRzXIwTdvItFr3dV3W/TuolytVb/XV0QD67H
         7NAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gMkIJc7maLpy0B0IUU0rr4pEq6kA8K3pEg41oVgYte4=;
        b=k9SKP+UC+ISMx40IKPoSYQ8ddxxwT22UMu0bhHys1vmZkqFdg5W7lJ4zboIG5kzG+n
         r66axLAOXl9vi4ZpVnl1zqhoaK+s/duYoI67RDi20JIvjkxF9tru0VrrfoYaAm5ifj+t
         9GR8GTmsEmA9T1QmebDZhqK0ITYZCrD/fbzQB4vveCMP6Xy7tbAYQF9u5YWbdPabodVq
         +N/ahae5+7ZiZRLb0uRBUw3yiRRAS4966EW5fD+LBYYqVPI60LNWwvupgQuh7yRmR9el
         Z8kEJRCeKt6kx6oKW8yVLNT2jlkex34NbIbRktrXsyBlHiT+kwf+p7y4a4FkBfFUGHEt
         MO8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uqAm2Q9K;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id p9si135713pjo.0.2019.10.03.11.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2019 11:03:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uqAm2Q9K;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb43.google.com with SMTP id m1so1237250ybm.1
        for <outreachy-kernel@googlegroups.com>; Thu, 03 Oct 2019 11:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gMkIJc7maLpy0B0IUU0rr4pEq6kA8K3pEg41oVgYte4=;
        b=uqAm2Q9KjozDkJChmIhh46MJKv2R/HMaT9yXsy8sP1tiSMN4wUUMzluOG7WA6NQVUi
         TGZh5OWPOEvYk+sUc8iDMziJN2sYg15VQXGOib+0lOk3DBItu/p6jXnKwwgxU31PRlYa
         s6Zvm3m4V+l92G9WeOhBCXQjLCPxB9jneZf3opg8uKaU7QBbHtHYMEETmCbsCQJYNsRf
         iHVvFGGTesGIdqYHy0ZJCT18CfkoEVCMEiLMDAOYEnYuz5/FacrjxUwYKNb+dPXLk5Lm
         lPtZQ0cOIXPKShYVHaQ+VJuxzmJ5FzbSnlDaY21E4+iAuBPRunS3RnMX7nZWTqV/BnGv
         6H6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gMkIJc7maLpy0B0IUU0rr4pEq6kA8K3pEg41oVgYte4=;
        b=XZ5gmtJfhzkacUYPY1TPlSip0kVppCUXgFPzneKteuEa/GZ9fK4ZEnZNbcntIv10TH
         vxBdXNNG6MLyTfCL8iww5NR012XNeCc4dk8ZPLVFn6fi2DDLcJ0pwD/RTi/QIu/W42UH
         oBPGIUiaplFIx3ggQxCvtaQIbDYkP6jfHqwtYi2RikfhMJPmEX1/z3jb+w5eyJYH9GhN
         Iw1sHqlwP0qL4KBFKqziVxGv+2hDAcZkE8hZJRmOvAYnlth+twbf+OpWwpcORv0NT9bp
         6zx9P7L5pUc3FHZPM2/WvZUo1C9FBiStGl/oKfZl1nk4AhvxILtPsWaRpD8O0pTdepj3
         Hs3A==
X-Gm-Message-State: APjAAAWuNH26lYztnxVVziGhWWppTQNoASVFDvtKtz8fyD03UDD82kMm
	lan1v3iDByAKKbJ8JfeKYm0=
X-Received: by 2002:a25:6fc1:: with SMTP id k184mr7088466ybc.8.1570125802097;
        Thu, 03 Oct 2019 11:03:22 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id u69sm830273ywu.93.2019.10.03.11.03.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 03 Oct 2019 11:03:21 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Eric Anholt <eric@anholt.net>,
	Stefan Wahren <wahrenst@gmx.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: vc04_services: Avoid typedef
Date: Thu,  3 Oct 2019 11:03:17 -0700
Message-Id: <1570125797-24410-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

Avoid typedefs to maintain kernel coding style. Issue found by
checkpatch.pl

Replace the enum typedef VCHIQ_REASON_T with vchiq_reason.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 4 ++--
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 6 +++---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b1..280e237 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -516,7 +516,7 @@ vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
 ***************************************************************************/
 
 static VCHIQ_STATUS_T
-add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
+add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
 	       struct vchiq_header *header, struct user_service *user_service,
 	       void *bulk_userdata)
 {
@@ -583,7 +583,7 @@ add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
 ***************************************************************************/
 
 static VCHIQ_STATUS_T
-service_callback(VCHIQ_REASON_T reason, struct vchiq_header *header,
+service_callback(enum vchiq_reason reason, struct vchiq_header *header,
 		 VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
 {
 	/* How do we ensure the callback goes to the right client?
@@ -1666,7 +1666,7 @@ vchiq_compat_ioctl_queue_bulk(struct file *file,
 }
 
 struct vchiq_completion_data32 {
-	VCHIQ_REASON_T reason;
+	enum vchiq_reason reason;
 	compat_uptr_t header;
 	compat_uptr_t service_userdata;
 	compat_uptr_t bulk_userdata;
@@ -2271,7 +2271,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
 }
 
 static VCHIQ_STATUS_T
-vchiq_keepalive_vchiq_callback(VCHIQ_REASON_T reason,
+vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
 	struct vchiq_header *header,
 	VCHIQ_SERVICE_HANDLE_T service_user,
 	void *bulk_user)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 56a23a2..b0e0653 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -355,7 +355,7 @@ mark_service_closing(struct vchiq_service *service)
 }
 
 static inline VCHIQ_STATUS_T
-make_service_callback(struct vchiq_service *service, VCHIQ_REASON_T reason,
+make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
 		      struct vchiq_header *header, void *bulk_userdata)
 {
 	VCHIQ_STATUS_T status;
@@ -1230,7 +1230,7 @@ notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
 					spin_unlock(&bulk_waiter_spinlock);
 				} else if (bulk->mode ==
 					VCHIQ_BULK_MODE_CALLBACK) {
-					VCHIQ_REASON_T reason = (bulk->dir ==
+					enum vchiq_reason reason = (bulk->dir ==
 						VCHIQ_BULK_TRANSMIT) ?
 						((bulk->actual ==
 						VCHIQ_BULK_ACTUAL_ABORTED) ?
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index c23bd10..f911612 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -15,7 +15,7 @@
 #define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
 #define VCHIQ_GET_SERVICE_FOURCC(service)   vchiq_get_service_fourcc(service)
 
-typedef enum {
+enum vchiq_reason {
 	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
 	VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
 	VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
@@ -23,7 +23,7 @@ typedef enum {
 	VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
 	VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
 	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
-} VCHIQ_REASON_T;
+};
 
 typedef enum {
 	VCHIQ_ERROR   = -1,
@@ -63,7 +63,7 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(VCHIQ_REASON_T,
+typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
 					   struct vchiq_header *,
 					   VCHIQ_SERVICE_HANDLE_T, void *);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 460ccea..c2343a1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -32,7 +32,7 @@ struct vchiq_queue_bulk_transfer {
 };
 
 struct vchiq_completion_data {
-	VCHIQ_REASON_T reason;
+	enum vchiq_reason reason;
 	struct vchiq_header *header;
 	void *service_userdata;
 	void *bulk_userdata;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index a2268d5..e02518d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -509,7 +509,7 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  ***********************************************************/
 
-static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
+static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
 				    struct vchiq_header *header,
 				    VCHIQ_SERVICE_HANDLE_T handle,
 				    void *bulk_user)
-- 
2.7.4



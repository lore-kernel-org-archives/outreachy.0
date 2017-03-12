X-GM-THRID: 6396335157434908672
X-Received: by 10.13.198.2 with SMTP id i2mr13629163ywd.116.1489308962839;
        Sun, 12 Mar 2017 00:56:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.176 with SMTP id 45ls12251897otd.49.gmail; Sun, 12 Mar
 2017 00:56:02 -0800 (PST)
X-Received: by 10.157.4.39 with SMTP id 36mr12006985otc.107.1489308962470;
        Sun, 12 Mar 2017 00:56:02 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si2612512pfb.2.2017.03.12.00.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 00:56:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so14971437pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 00:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=8HIw5RW5rXyQQOdm3/xmf9JIiSmFBs8JNIULC2PtP1I=;
        b=aAjIaCE5priI8hVwfniu7n4Qwb/f8cQzR5IOtsrcKeEo57EL1UzJlQTxqtm2k1xVnS
         eVOX3J0CgsyvF9ru+5/R+/1cVwcCJRXYU4kHSahqhQqRAS6yVJmAPkm+T1MMn5shauIi
         dhlWXgikTkGYZyn2nl4Ie9VZ+WeM9KjFw8HNK9nJzCHdN7PzYvPqKiJ3MD2vtE3vu5g2
         cR+nrmXYmL2G5KmUf5fchj1xIv9TMzw7f8aBlO73H5CwW7X1qaRoIZ8Vo8Gpdbow4C6b
         7YjdtOCZ6Q4Ye+ZFnbmDj6kujA6Fl0fkvlHncLBaM2/yyMV16fkzGtDG4wQspjtC6x1f
         mWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=8HIw5RW5rXyQQOdm3/xmf9JIiSmFBs8JNIULC2PtP1I=;
        b=Jx3PdfglZINPBagAAWiypTsx9C9B9/N4Rao4uov2QCpzeUGBXCkleRcCdRXp9cmA1M
         HYDLldlWrhLsSfYHBrKbkhgP2CKyf3LvOToVrh6EOw1+xKjFc3s7vDq0WUnogogXOy7b
         AGOPEFL86glBZby85ccawYp0VY+Av49Zp9+U7qekfpSPHZ8+g7uhJNGCOry2VxLhRbxM
         cq6mXiK57+BIEIrJjXwKbbAisxTFu/rJ0d6fTXKO2/r1habd2kxsc+lShL6wPQH2IT29
         UmIiBYtuSSubeHrW2O25yeOy6EycfJ7ZC1vYNRCfUXy7jgLDT2+TFvR8qyG07Xr98HL0
         UO7g==
X-Gm-Message-State: AMke39mi7u1ljNnZKFPvhh5s2uHRHvxoJZ22b+5HTt1KdleWcPKmfzP5HanKNkSI7AVCeQ==
X-Received: by 10.98.202.80 with SMTP id n77mr31172276pfg.167.1489308962181;
        Sun, 12 Mar 2017 00:56:02 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id c22sm27729860pgn.43.2017.03.12.00.55.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 00:56:01 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: vc04_services: Replace typedef with struct
Date: Sun, 12 Mar 2017 14:23:27 +0530
Message-Id: <1489308807-17652-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Using typedef for a structure type and upper case struct names is not
suggested in Linux kernel coding style guidelines. Hence, occurences
of typedefs have been removed and struct names converted to lowercase
in the file. Grep was also used to ensure that all occurence of the
typedefs have been removed. The module compiles
without any warnings or errors.

Script 1:
@r1@
type T;
@@

typedef struct { ... } T;

@script:python c1@
T2;
T << r1.T;
@@
if T[-2:] =="_T":
  coccinelle.T2 = T[:-2].lower();
  print T
else:
  coccinelle.T2=T.lower();

@r2@
type r1.T;
identifier c1.T2;
@@
-typedef
struct
+ T2
{ ... }
-T
;

@r3@
type r1.T;
identifier c1.T2;
@@
- T
+ struct T2

Script 2:
@@
typedef VCHIQ_ELEMENT_T;
@@

(
- VCHIQ_ELEMENT_T
+ struct vchiq_element
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 4 ++--
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 1dc8627..03e1a13 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -406,7 +406,7 @@ static void close_delivered(USER_SERVICE_T *user_service)
 }
 
 struct vchiq_io_copy_callback_context {
-	VCHIQ_ELEMENT_T *current_element;
+	struct vchiq_element *current_element;
 	size_t current_element_offset;
 	unsigned long elements_to_go;
 	size_t current_offset;
@@ -483,7 +483,7 @@ vchiq_ioc_copy_element_data(
  **************************************************************************/
 static VCHIQ_STATUS_T
 vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
-			VCHIQ_ELEMENT_T *elements,
+			struct vchiq_element *elements,
 			unsigned long count)
 {
 	struct vchiq_io_copy_callback_context context;
@@ -752,9 +752,9 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
 			/* Copy elements into kernel space */
-			VCHIQ_ELEMENT_T elements[MAX_ELEMENTS];
+			struct vchiq_element elements[MAX_ELEMENTS];
 			if (copy_from_user(elements, args.elements,
-				args.count * sizeof(VCHIQ_ELEMENT_T)) == 0)
+				args.count * sizeof(struct vchiq_element)) == 0)
 				status = vchiq_ioc_queue_message
 					(args.handle,
 					elements, args.count);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 377e8e4..0e27085 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -88,10 +88,10 @@ typedef struct vchiq_header_struct {
 	char data[0];           /* message */
 } VCHIQ_HEADER_T;
 
-typedef struct {
+struct vchiq_element {
 	const void *data;
 	unsigned int size;
-} VCHIQ_ELEMENT_T;
+};
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 6137ae9..9f85995 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -50,7 +50,7 @@ typedef struct {
 typedef struct {
 	unsigned int handle;
 	unsigned int count;
-	const VCHIQ_ELEMENT_T *elements;
+	const struct vchiq_element *elements;
 } VCHIQ_QUEUE_MESSAGE_T;
 
 typedef struct {
-- 
2.7.4



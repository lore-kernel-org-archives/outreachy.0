X-GM-THRID: 6396335157434908672
X-Received: by 10.13.255.6 with SMTP id p6mr12509278ywf.80.1489262831448;
        Sat, 11 Mar 2017 12:07:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls3331954ion.18.gmail; Sat, 11 Mar 2017
 12:07:10 -0800 (PST)
X-Received: by 10.99.127.5 with SMTP id a5mr12780147pgd.112.1489262830605;
        Sat, 11 Mar 2017 12:07:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si2423847pfx.8.2017.03.11.12.07.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 12:07:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id v190so14586785pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 12:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=iK00q5SLvCiJcrb5pNv1fdjoNr7s3+AcXO0GIv5uCCQ=;
        b=rzpOGgZQWp03eqqHccPTrPrzZ/VY5Klev8zI64SIa5IN8AZo57LJOwTaBE+Ep6e4cM
         LvedfgKFuEffBwqxvb1DcK0YKYGeMGFmIoyGuD5LMwETznke5Pmem2dBWeXCAWCZVGTX
         ighIVSSmX1qumssIk0Y2o+0/a+Maxj31qbNRM1cNl3HTR/B3tR+7pee7/utPsWxtd5Cr
         UfQnCXn1sYkGvIlDoKipuPoT/b2Qz/VrH8WVB359RYw8Xzq8XLEIE2cQRMdK8QOAthIu
         rKlc6scjR6UcEwbjeioKQPR6QnEr0djJs5x1LkUDzj770aSJVA4xWtPi4QQ3zR7DG0Tv
         uYmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=iK00q5SLvCiJcrb5pNv1fdjoNr7s3+AcXO0GIv5uCCQ=;
        b=LQEyrNUXBNmcp0G9b+0LjJbdK1IEfhO2LTIMXfjfVBaouskcuUcQuZN7EKYC4aR0e1
         62dokTvAg7fzHFwwme6k7AwBKm50upxyPlS+OEAA+il4DtK1+uCnrm921zfZxVOxMJJO
         7/oseLkj4EVZvWyXSxHx5tsEbZ2PRDeLhdpAbU3tQc3GrVsZdu/wm4rQDYrwstxYloqt
         pxyY1UqMpysEs2X/4nDGWBAfJNelUws503qG3euBc44phOgtmP6coqB37iJw6C/+Jmso
         ZJNzgGtY3lkrF4ZGa050HY0U249umvij7rOwUdFUzOJTVO9KMkiicOwa+ZcpQPObXPVo
         yDtA==
X-Gm-Message-State: AMke39mP2VL7FRIjCKzsYwZVOW6X5MUA/1PdCKT2Bsp3cPcK+YOV9qfgfeoGU3HnOmlkCg==
X-Received: by 10.84.149.102 with SMTP id b35mr35476823plh.3.1489262830348;
        Sat, 11 Mar 2017 12:07:10 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id p4sm25715223pgd.50.2017.03.11.12.07.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 12:07:09 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: vc04_services: Replace typedef with struct
Date: Sun, 12 Mar 2017 01:34:40 +0530
Message-Id: <1489262680-30792-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Using typedef for a structure type is not suggested in Linux kernel
coding style guidelines. Hence, occurences of typedefs have been
removed in the file. Grep was also used to ensure that
all occurence of the typedefs have been removed. The module compiles
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
if T[-2:] =="_t":
  coccinelle.T2 = T[:-2];
  print T
else:
  coccinelle.T2=T;

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
+ struct VCHIQ_ELEMENT
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 4 ++--
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 1dc8627..a5ba663 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -406,7 +406,7 @@ static void close_delivered(USER_SERVICE_T *user_service)
 }
 
 struct vchiq_io_copy_callback_context {
-	VCHIQ_ELEMENT_T *current_element;
+	struct VCHIQ_ELEMENT *current_element;
 	size_t current_element_offset;
 	unsigned long elements_to_go;
 	size_t current_offset;
@@ -483,7 +483,7 @@ vchiq_ioc_copy_element_data(
  **************************************************************************/
 static VCHIQ_STATUS_T
 vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
-			VCHIQ_ELEMENT_T *elements,
+			struct VCHIQ_ELEMENT *elements,
 			unsigned long count)
 {
 	struct vchiq_io_copy_callback_context context;
@@ -752,9 +752,9 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
 			/* Copy elements into kernel space */
-			VCHIQ_ELEMENT_T elements[MAX_ELEMENTS];
+			struct VCHIQ_ELEMENT elements[MAX_ELEMENTS];
 			if (copy_from_user(elements, args.elements,
-				args.count * sizeof(VCHIQ_ELEMENT_T)) == 0)
+				args.count * sizeof(struct VCHIQ_ELEMENT)) == 0)
 				status = vchiq_ioc_queue_message
 					(args.handle,
 					elements, args.count);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 377e8e4..b31aeb1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -88,10 +88,10 @@ typedef struct vchiq_header_struct {
 	char data[0];           /* message */
 } VCHIQ_HEADER_T;
 
-typedef struct {
+struct VCHIQ_ELEMENT {
 	const void *data;
 	unsigned int size;
-} VCHIQ_ELEMENT_T;
+};
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 6137ae9..39fb4bc 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -50,7 +50,7 @@ typedef struct {
 typedef struct {
 	unsigned int handle;
 	unsigned int count;
-	const VCHIQ_ELEMENT_T *elements;
+	const struct VCHIQ_ELEMENT *elements;
 } VCHIQ_QUEUE_MESSAGE_T;
 
 typedef struct {
-- 
2.7.4



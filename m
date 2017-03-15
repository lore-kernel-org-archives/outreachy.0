X-GM-THRID: 6396335157434908672
X-Received: by 10.99.245.15 with SMTP id w15mr2272697pgh.63.1489596480857;
        Wed, 15 Mar 2017 09:48:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.127.11 with SMTP id r11ls3121899itc.14.canary-gmail; Wed,
 15 Mar 2017 09:47:59 -0700 (PDT)
X-Received: by 10.107.19.74 with SMTP id b71mr1720175ioj.21.1489596479810;
        Wed, 15 Mar 2017 09:47:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id y203si436093pfb.0.2017.03.15.09.47.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 09:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m5so2848126pgk.3
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 09:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VjLO6LNvwNjJfeeFOhGiyNpXuXx93u9YCw+NeCw4RnE=;
        b=Owe/fY0a81yGr4LKGgUgJCdQWJvNa3IAUpY1bH3wVdFlZ9PIc+fSXII3kti/jxRkjL
         /ddP+GfNbi1usmIf9yu95aiKKBnigAGkrfLY8argFmfjNq16ZghMCVLJ6n39yYdN8JbA
         jWyx61dPNurQAckpYmypb2MzF1k7s+cBT/kFOL6+jwuKnIXsoU6zyAjyG0P56YYlLS4M
         Ti6MiG7dROJdkoYgIgn7BdlHpVLoAmFQr/0imUIeAsOs9AqjuCDS5ziq4qCLIc2HdIQD
         eYLCP3J9L12SusbYKTGj/jaXlahNqyj4LsbwMEDYL3YJr1W6BMA+S/3XZ/KP2D+3Kgdw
         2TeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VjLO6LNvwNjJfeeFOhGiyNpXuXx93u9YCw+NeCw4RnE=;
        b=qj/wwQTr4zWKFAnLQKKg5JhBQvliGrH0rLoihQQZ460RYAyIw6gpxZ4J2se4IHmNdf
         5JvhuYCHWBmdF3MohYNdRBujjvUzo4cQbIkMUYFQGuY5Lpw2FHab4CSx0gC4oBmwRpeb
         Zx3EkNuOPDd1raLSQYRhxWxNeHu8nvYIWnndvHiR/mLvaWDgLBM7TjnG0uJEZqo1Vf8a
         BUb9o+qFfBxCyvN3M4vE5eKhyMzrzx6rNtaKKsHN2/8GOMB7Zbgs9u0pG+X+xErmbOPy
         U4gAgcPd8zO1Y23h58YBPqYdF+uvwHO5ZxuJGjVs77sdzJn2pxYtJPCk6gDoKCt+5dii
         p2uw==
X-Gm-Message-State: AFeK/H2wc0hlOIM2gDw18G8ioEViKmoZ096abIN/WkRvdE0Z+KivlQToeQJaNLSQ6pHB5A==
X-Received: by 10.84.140.36 with SMTP id 33mr5978537pls.136.1489596479355;
        Wed, 15 Mar 2017 09:47:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id e63sm5392245pfg.40.2017.03.15.09.47.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 09:47:58 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [RESEND PATCH v4] staging: vc04_services: Replace typedef with struct
Date: Wed, 15 Mar 2017 22:17:41 +0530
Message-Id: <1489596461-30270-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Using typedef for a structure type and upper case struct names is not
suggested in Linux kernel coding style guidelines. Hence, occurences
of typedefs have been removed and struct names converted to lowercase
in the file. Grep was also used to ensure that all occurence of the
typedefs have been removed. The module compiles without any warnings
or errors.

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
Changes in v4:
        - Rebased and sent the patch.
Changes in v3:
        - Add changes to the changelog.
Changes in v2:
        - Convert the struct name to lowercase.
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c    | 12 ++++++------
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h |  4 ++--
 .../staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h  |  2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index ff96e71..e6f8aeb 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -413,7 +413,7 @@ static void close_delivered(USER_SERVICE_T *user_service)
 }
 
 struct vchiq_io_copy_callback_context {
-	VCHIQ_ELEMENT_T *current_element;
+	struct vchiq_element *current_element;
 	size_t current_element_offset;
 	unsigned long elements_to_go;
 	size_t current_offset;
@@ -490,7 +490,7 @@ vchiq_ioc_copy_element_data(
  **************************************************************************/
 static VCHIQ_STATUS_T
 vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
-			VCHIQ_ELEMENT_T *elements,
+			struct vchiq_element *elements,
 			unsigned long count)
 {
 	struct vchiq_io_copy_callback_context context;
@@ -761,10 +761,10 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
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
@@ -1323,7 +1323,7 @@ vchiq_compat_ioctl_queue_message(struct file *file,
 				 unsigned long arg)
 {
 	VCHIQ_QUEUE_MESSAGE_T *args;
-	VCHIQ_ELEMENT_T *elements;
+	struct vchiq_element *elements;
 	struct vchiq_queue_message32 args32;
 	unsigned int count;
 
@@ -1349,7 +1349,7 @@ vchiq_compat_ioctl_queue_message(struct file *file,
 	if (args32.elements && args32.count) {
 		struct vchiq_element32 tempelement32[MAX_ELEMENTS];
 
-		elements = (VCHIQ_ELEMENT_T __user *)(args + 1);
+		elements = (struct vchiq_element __user *)(args + 1);
 
 		if (copy_from_user(&tempelement32,
 				   compat_ptr(args32.elements),
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



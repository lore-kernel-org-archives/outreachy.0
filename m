X-GM-THRID: 6396335157434908672
X-Received: by 10.200.51.164 with SMTP id c33mr4192134qtb.85.1489309376591;
        Sun, 12 Mar 2017 01:02:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls565697otb.24.gmail; Sun, 12 Mar
 2017 01:02:56 -0800 (PST)
X-Received: by 10.13.238.134 with SMTP id x128mr13642163ywe.59.1489309376207;
        Sun, 12 Mar 2017 01:02:56 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id y90si2588230pfa.6.2017.03.12.01.02.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 01:02:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so15731744pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 01:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jo/VuU2AyRq7BLAJ6k73P54Ia4Y8ptQo3Vq1jVkNjx8=;
        b=iJDK5fwAIcRtjF5xd/iXUkG3Xlbdinahh33r2VZB/WuVM4+GAwgiov7sUybAQK9ePA
         dOal+rVbYzprRlDNfaKUU2v289qQHf+/uUImkpc5ituFKuiFoilViKmzYq2O0K74ufzD
         tU/uvsvlC++foWk/UDuhZqN4NG03yXcUO42K0+dTmI49h8Hmp7d/QGD4jWK/UV1y1ytD
         dTzd9zF3Ci2PSxhniMpTKA7TezyOagtR2piATG0leqBiV9cMygcWf/YTEjBjQAptSSJV
         IU8ngiXua6EiYBbe11GLefJoIbDVrI5jtPVe9H79Kyb0lcfTMPQTnbzx+9Qln4PP5oBT
         Ewlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jo/VuU2AyRq7BLAJ6k73P54Ia4Y8ptQo3Vq1jVkNjx8=;
        b=JGCpVkYReKRa5Ej8JR8CW/cEXbGeU+og+JNhv4zVYeDSliGezglkaPG3YL7EprSjTI
         4M7sRHurKCcZkrnqSxN4Q7hR96W20lUt42zdzz+bCqilvYN+Uxk4lG2B16jxHsotOjtK
         op9YX+i6PmnULCca7E6pI93J9s7wSeKFQ2WowuuEo0J/FlOKLxVn+k8OlpbNSfA8om2c
         cBeLm9MoIRJCVYp3V49B+vNd1Gzii2auP4PqsSKdi1bLK10wYkYaJgIPh8B2Gz/1CgU/
         Olmqdlf/F4x0VfjaYfiGDB7mcrBDC0mZIgUZ13wkL4/CP6ekuVVsXCg1M3MeDRMsWSBJ
         Vraw==
X-Gm-Message-State: AMke39lfKB42eVmNM9eP+veflviHx09e/Rd+MAafD0Z56i9gBjO3P/lZdBtzyQ/f55lWdg==
X-Received: by 10.99.117.85 with SMTP id f21mr29999703pgn.62.1489309375901;
        Sun, 12 Mar 2017 01:02:55 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id f78sm27528474pfe.116.2017.03.12.01.02.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 01:02:55 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3] staging: vc04_services: Replace typedef with struct
Date: Sun, 12 Mar 2017 14:30:11 +0530
Message-Id: <1489309211-18172-1-git-send-email-gs051095@gmail.com>
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
Changes in v3:
	- Add changes to the changelog.
Changes in v2:
	- Convert the struct name to lowercase.
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



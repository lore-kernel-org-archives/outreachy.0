X-GM-THRID: 6396335157434908672
X-Received: by 10.99.114.20 with SMTP id n20mr1574501pgc.97.1489583641172;
        Wed, 15 Mar 2017 06:14:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.32 with SMTP id m32ls732987iod.52.gmail; Wed, 15 Mar
 2017 06:14:00 -0700 (PDT)
X-Received: by 10.99.171.15 with SMTP id p15mr1643399pgf.95.1489583640180;
        Wed, 15 Mar 2017 06:14:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si326039pfb.7.2017.03.15.06.14.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 06:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x63so2071772pfx.2
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 06:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=U1pCul8S45hJ5UnMC5aZ1/tPWaa6p27KBVTg1AWlAuY=;
        b=UuuSnY1HFBOJJozDNQcJl8Vmd87P08RlMcLYIEmM1zr8atOlWI0VXzKkZBKabLmER8
         yCwNoHOG1RTYcAlRt9NpeBdKCzEjl8dNTJqlVIvZJAxF1Z9Ma2bDhtRdP4z6Dau1uW2I
         E4bFkNPXTOgr6cIhy6U/ljoYDXLgpgtrZrebuxUJSHZNsi9mx8/4htRPZ7hhib+S+Dk2
         Dy4AVkqJdhcFjeK/5Wt846o0VUA9y8m8WwWwaGYi7b91MrEiyJnltczwl4ok9X04xQVN
         poVmP4sncC1Ew8/eiBiwcdAow2WfY/RKwD/F5tEmiizQc9se6tdZBSCTEOwrD6YoQHHI
         7Y+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=U1pCul8S45hJ5UnMC5aZ1/tPWaa6p27KBVTg1AWlAuY=;
        b=Cw5JzP0Sd87EO5uhZAvLPuMz22FoJKXHLA4RemQ45gycj3GHMzRAZCYFRlZl59ylHy
         R/Cb1RvXkmgAUSnFom9K7kCTjfJygARs/JauvE7KFAaOtDWjm1FG5nr+hphQkB8NeJMS
         WwoqQABDygetC+HtBdwMlzEi31YOPqwt5A+DxaGHBr7kj6Zx1PIdASNVEMBuZCyzwmb7
         XQ4cFxEF6TR6/NbqhQRN+f1hHMhgQV5DC0ks4cDl2zZHWTM/KRpMs4DmGECClswTerJR
         tBt9Mftv/1WEQ8AT8unehZjrEYpZHF4dsHu+pOVdEmjfiluxuliftBt0KzvWdgkTfobJ
         RBAA==
X-Gm-Message-State: AFeK/H1+ZLMG0mnb+MCGf/TjGB6xT+63MvMfJ0M0rg8cqNY0dS1j9YrM1k1PbAHpCtsHRQ==
X-Received: by 10.98.32.24 with SMTP id g24mr3769169pfg.115.1489583639746;
        Wed, 15 Mar 2017 06:13:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id m12sm4502507pgc.46.2017.03.15.06.13.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 06:13:58 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v4] staging: vc04_services: Replace typedef with struct
Date: Wed, 15 Mar 2017 18:44:18 +0530
Message-Id: <1489583658-16337-1-git-send-email-gs051095@gmail.com>
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



X-GM-THRID: 6396335157434908672
X-Received: by 10.157.17.29 with SMTP id g29mr12394515ote.86.1489310637278;
        Sun, 12 Mar 2017 01:23:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls550557otd.11.gmail; Sun, 12 Mar
 2017 01:23:57 -0800 (PST)
X-Received: by 10.129.152.151 with SMTP id p145mr13401811ywg.119.1489310636984;
        Sun, 12 Mar 2017 01:23:56 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si2529771pfz.1.2017.03.12.01.23.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 01:23:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 77so14977867pgc.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 01:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JyJfWVXqK7ea6lsbbd8iO3+EwQgUNZ5s4Ni71oA+Sxs=;
        b=iY3b5sX/txYfCAhutAYH/c2VoOA6KDCxldD2M97z1n+9UGMjd2r+eAJMsW9Hgf89KW
         sDz7nWk9huniAxvhU8Ae2/F/EVm90VDGDAE38bfR4kH2NCHplhL95v2bLdVh0LQK+U3K
         xXlSIAHiMN2b/wWz12Fwd/o3kTfdGfUND273lcS1SYEjDdI2jIHzsDonrEUb47tb4lpt
         QcDorOj3+bBg6foJMjqRzYNak9j/PM0+pz8BSJqCt7NKFBxMZIrn8A6T0lCXYUnG/2R/
         w2+se5f2192M7UwTqig93De/fvWi7edxbFQXDBmZfpQ2bRCXlym509ycvJwgFliVRGDA
         wpnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JyJfWVXqK7ea6lsbbd8iO3+EwQgUNZ5s4Ni71oA+Sxs=;
        b=rGK0l/QxSfCsx86zf5Kgk9QvzV25zaeaXi0enLL2LGNHxVGlyMKkWv/nXbuNxZUuMF
         BBQUcPkIIpLrB9Ee3TBQQWJmcL8j8gEbfZLMJ7Q4Q0FcmL0v5ktqxZ04NAWoE1T/wE40
         Gn4RwPaufakl1QgJFWZX4tBRYpVPjWXc6i+Rz7JwHsckJYKenl65dvfhPY62z7LpBaAI
         94CzgSgCQ8NA2NOXAldSA9b3EYzTbrei/KCFKacJnCeATejf1QoVfyUVEaU5oDqq8CPZ
         ++2TcUE6E80v68nZ5KZMGGgny/NKemXiS8QMC5NXoj4kx13Su7+3PPqEvde4ETMhJdj3
         ridg==
X-Gm-Message-State: AMke39mvZ1aYHgkIl9OpWpTBBB3NHIYfp7LiLJ1utrJmzc25wTmnTHgYEzzMX3UXqshlwA==
X-Received: by 10.99.115.68 with SMTP id d4mr29625173pgn.146.1489310636717;
        Sun, 12 Mar 2017 01:23:56 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id q90sm27601405pfk.73.2017.03.12.01.23.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 01:23:56 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: vc04_services: Replace typedef with struct
Date: Sun, 12 Mar 2017 14:51:33 +0530
Message-Id: <1489310493-22530-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Using typedef for a structure type and upper case struct names is not
suggested in Linux kernel coding style guidelines. Removed occurences
of typedefs and converted struct names to lowercase. Used grep to
ensure that all occurences have been removed. The module compiles
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
typedef VCHIQ_SHARED_MEM_INFO_T;
@@

(
- VCHIQ_SHARED_MEM_INFO_T
+ struct vchiq_shared_mem_info
)
Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
index dd43458..2e30a78 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
@@ -41,7 +41,7 @@
 
 /* ---- Constants and Types ---------------------------------------------- */
 
-typedef struct {
+struct vchiq_shared_mem_info {
 	 void                   *arm_shared_mem_virt;
 	 dma_addr_t              arm_shared_mem_phys;
 	 size_t                  arm_shared_mem_size;
@@ -49,13 +49,13 @@ typedef struct {
 	 void                   *vc_shared_mem_virt;
 	 dma_addr_t              vc_shared_mem_phys;
 	 size_t                  vc_shared_mem_size;
-} VCHIQ_SHARED_MEM_INFO_T;
+};
 
 /* ---- Variable Externs ------------------------------------------------- */
 
 /* ---- Function Prototypes ---------------------------------------------- */
 
-void vchiq_get_shared_mem_info(VCHIQ_SHARED_MEM_INFO_T *info);
+void vchiq_get_shared_mem_info(struct vchiq_shared_mem_info *info);
 
 VCHIQ_STATUS_T vchiq_memdrv_initialise(void);
 
-- 
2.7.4



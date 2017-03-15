X-GM-THRID: 6397712261743378432
X-Received: by 10.157.59.166 with SMTP id k35mr796190otc.3.1489583463194;
        Wed, 15 Mar 2017 06:11:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.74 with SMTP id 68ls2094365otn.3.gmail; Wed, 15 Mar 2017
 06:11:02 -0700 (PDT)
X-Received: by 10.129.52.17 with SMTP id b17mr1604543ywa.107.1489583462792;
        Wed, 15 Mar 2017 06:11:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si324053pfa.4.2017.03.15.06.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 06:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so2172959pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 06:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JoX91hDdH+q8TazG672ucFYOkNXQQIt8G7zQQG9xIRI=;
        b=K5kB09aZf4omI+bSZjAevcAbTRelc8l1RJ59eUpj8jCo5KyQFj7+cFvkmGG12sS2Mh
         JJPT4hGwboKZ3421nQUD+2iHDj/PQDHjFjLF1zAoTOecG4n2NMqMCbJFajbohYKJlLnw
         XsHlci5WpIXCQ+ugsE+LcpcQC0otB0S/4L0cSKLusaC6x9PopToOfW4UkWw9reN75T7T
         4Lu67RMbdMKvixVWczUYxj3Eo+oxdUfBy6hBfltXaumnUDjwHqSHDBamWTqI2FRmcw0Q
         v+DcKDy7gixas1NTbGntU0YZRTM+Azrb0GOKjZQrQK8nFMaTBYzhm3NeWA+WPx81BJS1
         hdtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JoX91hDdH+q8TazG672ucFYOkNXQQIt8G7zQQG9xIRI=;
        b=svaZSfB1vQ0uSMh6FTLFsmlyfE5pzyONOsRcanax/f8NRTQKGZ3HUC4Q1lo4y/sFQj
         3585RUBn1J1EbSHkNTYXOJM7YzdZpDtqdm0pTsx51FsDJadiW4w3xpj1zOWJFUISCLL0
         pN88CqkubWxSnHMpFEm19NaUlCJF2tzjR5OImzcqAMmhUXQQW/sp1zAqIi9RPsCqshvY
         1djpRouehHwIA5meigQC2NdqGWRlaF4yhR21hbC9+wVsECMaBY314knNnmoHrxmsiUqB
         l9yhKnejDBG3afhZXpdazg7aQgUyijLXCK4GoVVyU8NqXB+Z3v12YsQp5hs2oXxaFNcA
         AZzw==
X-Gm-Message-State: AFeK/H2U8LGjzULaydpPU1Iz1Cu2AvxM53LZYgCVJXs0YPn3yM+ifwrk/jJHRsNfJo1eUw==
X-Received: by 10.84.168.69 with SMTP id e63mr4590949plb.124.1489583462513;
        Wed, 15 Mar 2017 06:11:02 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id 19sm4474421pfo.50.2017.03.15.06.10.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 15 Mar 2017 06:11:01 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: swarren@wwwdotorg.org,
	lee@kernel.org,
	eric@anholt.net,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: vc04_services: Remove type and function prototype
Date: Wed, 15 Mar 2017 18:41:11 +0530
Message-Id: <1489583471-16181-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

The function prototype is for a function that is not even in
the kernel, and hence has been removed.
The type VCHIQ_SHARED_MEM_INFO_T is not used anywhere in the
kernel as well.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
index dd43458..c233b86 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_memdrv.h
@@ -41,22 +41,10 @@
 
 /* ---- Constants and Types ---------------------------------------------- */
 
-typedef struct {
-	 void                   *arm_shared_mem_virt;
-	 dma_addr_t              arm_shared_mem_phys;
-	 size_t                  arm_shared_mem_size;
-
-	 void                   *vc_shared_mem_virt;
-	 dma_addr_t              vc_shared_mem_phys;
-	 size_t                  vc_shared_mem_size;
-} VCHIQ_SHARED_MEM_INFO_T;
-
 /* ---- Variable Externs ------------------------------------------------- */
 
 /* ---- Function Prototypes ---------------------------------------------- */
 
-void vchiq_get_shared_mem_info(VCHIQ_SHARED_MEM_INFO_T *info);
-
 VCHIQ_STATUS_T vchiq_memdrv_initialise(void);
 
 VCHIQ_STATUS_T vchiq_userdrv_create_instance(
-- 
2.7.4



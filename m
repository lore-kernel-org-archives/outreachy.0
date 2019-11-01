X-GM-THRID: 6753896393761357824
X-Received: by 2002:a25:9d91:: with SMTP id v17mr7752503ybp.19.1572586140306;
        Thu, 31 Oct 2019 22:29:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:d24e:: with SMTP id j75ls879968ybg.2.gmail; Thu, 31 Oct
 2019 22:28:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxkNBgWZopPM0CCGwhlw9QZ+NU47AtpN7msRCecpD3u70VLuppKrJJx4UHG0iC2/jlL6uAh
X-Received: by 2002:a25:94d:: with SMTP id u13mr7750753ybm.348.1572586139216;
        Thu, 31 Oct 2019 22:28:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572586139; cv=none;
        d=google.com; s=arc-20160816;
        b=ywnh7s19CCPv1mzIAen2gNotU3+IwCuvfaHwNffafs5nxs5jP4VjcVdMwZeLh5skiC
         KjqlMhVIePremjhfS3UU63Lvf61S/7MS8I2vyCbO+TWf6thBsVT9pPIIj5MPV3WDMaLA
         M9iPSpkZoafci3JXvtA62+lYBYtwvjFd9V1O0u3v3hr0IBk+MCTRs5jWwdQbnSxkhGGZ
         6Y6jgsJG6QyiHiiWumwg7uItf0gBrcgxmxb+DEoM6a2PFYKjvI0AAr2aG5GLusCB42hl
         FomdTcj1n75zECkItm0tLa/fo+no2WDcGz3d8e8SgnGdlBHzKN+bk7V0MIvN+6o+qitl
         vIYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Rh/TjcwgXxwTBTI4NNl9aGcCtQdToRQl5XxItpcMgU4=;
        b=Ggtx2lalID0Wk4cSUgGb/7VXif+6/qzdot25MbeoGvrHQfRL3ckRX/kmhUUfLTt5Aq
         nITKaXK8e/zpiIeg2XLwjOI5uwyERhpqoVWFAIElsObRsZZd6bSQOYYt22wDSDGWbotZ
         6pfE9tC2BsIUvQo5c6bPQJOTN9FV2RlL+JyI2NzysDHf/iU+X3ronJw9SnNlM4v0GcHG
         nigwnUTdocBof/R/Toso5CixUIR7AuMlH7hZgs2AHbFev5jdxP0AlN07YB9tjf7A8Il/
         OFgcV5vk1qfjti9r0poC3Q67pIL1+6Ojvx2I06/GLFMZszDyR1fziWC5dDX2SFpx7Uvj
         C0bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJ2255Qn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id d192si521069ywb.1.2019.10.31.22.28.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 22:28:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJ2255Qn;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id e4so5764381pgs.1
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 22:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Rh/TjcwgXxwTBTI4NNl9aGcCtQdToRQl5XxItpcMgU4=;
        b=iJ2255Qnal+IE8/yVK5bPL6sZFpcQBZCS85+Hyx6A4YhKgth4UtFYl1MdfavLZsCej
         UVWE2v7oUm25CoFuiza6YGUeNrB5NS307+dAITbC6yuoXzH2UGxTiw86ngIGZ5oaxzY7
         uMjHIWTZA83YJbi/9WcEwi7zVYKp7LVnYCw0UuLACJw2Z1w76nFPPYmdfuf9bGv5hEfQ
         7yzoHVJXn8fj72lIYnjX8WC4FYP49y68wH1LNSNW+w7qMOAoBSmYwba9+08qhYZHrGnK
         VgtK9gecItSYakv/YExHw5EZT56e6LVBiWnb9V2oSM7AIAiBAFwiD04pNq4/EwejSwUr
         1Zrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Rh/TjcwgXxwTBTI4NNl9aGcCtQdToRQl5XxItpcMgU4=;
        b=fj3CwD6UR0h8zdINFFk2Q/Qo4TJO+ldUb1SQjX50ysJEHCIwdEIlK0M64giOAWfMFu
         0n79BJao7aIuX2UGwSrvJRygB7KK1ySnu7nq4Dp8XRus6oQhXJvm1el7bF/0Tji6Y/Mk
         GTgbmSi7kVHurcE+Ge1sOwqMwPCXYxwTEsoonjYfL7CqNDMYbbnOpJ2ok3VkVwHgwh/T
         3Cl1+n8aIlETPNHS2xvW4ueUj6QjlmrhI+rtXXLhhPSEeAdHhF51V5uFRocG551lUrTx
         NRrAAZEU4O3e4jQag+2Sd77e0+wg6Lqrk+pJR1jj9sVAcoSXG2uleMzYttkQKolaWsJt
         6l7Q==
X-Gm-Message-State: APjAAAUXEd74hOpH7aprWiOT5XckS/wbI+V1dqYUHJDBQKX3HV+q5BbY
	HiGnAZ5qDLBOx9X4TMcGS3k=
X-Received: by 2002:a63:6585:: with SMTP id z127mr11327815pgb.330.1572586138394;
        Thu, 31 Oct 2019 22:28:58 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id q11sm4889712pgq.71.2019.10.31.22.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 22:28:57 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v2 3/7] staging: vc04_services: Remove function pointer typedef
Date: Thu, 31 Oct 2019 22:28:31 -0700
Message-Id: <bbacbdf1a14757a6bb6da29cda32f01b39ae43af.1572585566.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572585566.git.jamal.k.shareef@gmail.com>
References: <cover.1572585566.git.jamal.k.shareef@gmail.com>

Removes function pointer typedef in vchi files. Issue found by
checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/vc04_services/interface/vchi/vchi.h          | 4 +++-
 drivers/staging/vc04_services/interface/vchi/vchi_common.h   | 5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c   | 4 +++-
 3 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 05fb5c3e8ba0..968469990a16 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -45,7 +45,9 @@ struct vchi_held_msg {
 struct service_creation {
 	struct vchi_version version;
 	int32_t service_id;
-	VCHI_CALLBACK_T callback;
+	void (*callback)(void *callback_param, //my service local param
+			 enum vchi_callback_reason reason,
+			 void *handle); //for transmitting msg's only
 	void *callback_param;
 };
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 27fe1d3dea91..adc57429d7b8 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -85,11 +85,6 @@ enum vchi_service_option {
 	VCHI_SERVICE_OPTION_MAX
 };
 
-//Callback used by all services / bulk transfers
- typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
-				 enum vchi_callback_reason reason,
-				 void *handle); //for transmitting msg's only
-
 /*
  * Define vector struct for scatter-gather (vector) operations
  * Vectors can be nested - if a vector element has negative length, then
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 30f029233f52..e908bc556d63 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -16,7 +16,9 @@ struct shim_service {
 
 	struct vchiu_queue queue;
 
-	VCHI_CALLBACK_T callback;
+	void (*callback)(void *callback_param, //my service local param
+			 enum vchi_callback_reason reason,
+			 void *handle); //for transmitting msg's only
 	void *callback_param;
 };
 
-- 
2.17.1



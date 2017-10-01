X-GM-THRID: 6470117861435113472
X-Received: by 10.223.183.19 with SMTP id l19mr1290667wre.6.1506893691401;
        Sun, 01 Oct 2017 14:34:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.83 with SMTP id i80ls1689285wmf.5.canary-gmail; Sun, 01
 Oct 2017 14:34:50 -0700 (PDT)
X-Received: by 10.28.131.208 with SMTP id f199mr1551670wmd.11.1506893690695;
        Sun, 01 Oct 2017 14:34:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506893690; cv=none;
        d=google.com; s=arc-20160816;
        b=TZjPG9+mA3e0qbFlqZzw50DCNGphyxj3Iirx5dv/vGqd/ZdedyQGcWMP3gNXx+SNPt
         iaS6+fGh2O/xvLBWoNkixwo7ro5uHZ2m332+KtlKKxBadFpSAX1Be/lfVsYiujNbBIxy
         zHv+xnQuFtJr5MThsJ8Q2XwjmC3NwiBNwxKqWLFwfsKd6F66o0u8FTCJmG0+AUb0OseR
         h59BYnY6bynJL9hQc9DgoI+lYKHEFRULOJzbO+ES2AoX7WjuuoBBhXdCyjGk2tf+Gz+G
         1VI2jyz7Uyopr+nEtfFlHu/0XJ0jqnN8Lz92Yxlrp5lBVmW5uIdWMIq6ftQr9q+7nrZs
         X48w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=niOUjtmK/BkdHcnGA9UlYaPSYMgMqZMIJ9fEnvaKXaU=;
        b=jBUqLZRskkl6HmrBDLleetvKnkwHOw30QPQsuRYy+An4tasOx1NlrNgheUB3yFvQtv
         Lptr8xdAx4TNkuXnxxn31OQ8mZSIqEuERklokI8Wsvqb+98sE59h11oSBA1g+OSG9rO+
         TdS/plyFsSiBTZIYELnunHMxXAbuJL7uFozDfEAZ3Kk1w637mbbB5JJuw2yIcGviP9z0
         2tEXRDanAjc2n43DQBTdLZSVWIJ5bXNbewOyPPepc4o+0/CQej6sjAdnfXgAfC5m3Bzs
         2vE8/MV1YQV+pEA5rszRndlFCZV0xBl4gJsFyAxVb3eCIG9BAznF49BhO7ZaX7U0e53g
         b0Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YGDVwLTF;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id t65si674486wmg.3.2017.10.01.14.34.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 14:34:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YGDVwLTF;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id z96so1363884wrb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 14:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=niOUjtmK/BkdHcnGA9UlYaPSYMgMqZMIJ9fEnvaKXaU=;
        b=YGDVwLTFIy0Qtx6qk+Vv1+IALCEmuPodIi1Rfhphi1euPg1Wb0AAbLI1Ls0DgZYoeL
         iVuICW+Tp165ICec77Rq3S3ugPVjk7/BEMGE+bT/QeRPnsALtWkGYdk7x1fah3bvtfIe
         AaKpQB9kKHGRMqwfbCBzbmj0dUiLaKxw0lXKFysxRM7THkXWB9UX8iNQBNcKWNylPeSZ
         wAqgXFOxch0L+v0/DF/sYj+Ca7JzHWh8YEvgQjrvDTBR2HqQQOSBV2Tdh4nBNfIZvkyP
         utd1uhqZa2xNT18ERCTDBs6MLGmYlyOfJW5Ic2DutfV2eTUWQ8sUjkERqg93lvgWCX1w
         2f/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=niOUjtmK/BkdHcnGA9UlYaPSYMgMqZMIJ9fEnvaKXaU=;
        b=I3La2CGKW8r+E3FQi1fwKX/MqU+PYJh9XLsdQlTgSLUspt8Y1XteZ8X+UolwpHUNwE
         W1yKDB2V1QXHirjbzVXBQMsR95lePuouq9aONPz8a7nXuvIuXGqPdeuIslzPSPU+H/lF
         037y4KRP0tdUgqSRjYxQV3iEA7dOhbZuqNcU05sqrXgTNWYB2b0rJvx4Tj/INu0k1MN4
         63F48s5dVcwl4YrhL/i1SNym3G2KD0PXzBOSet+mpZvD4xtul/VizAzG654d42XRckoB
         YNuGeTkDU2RrMzKKXsNUnEID7pbIROdrPw0run2McrozFGR/Iv8QFmPLV+deaERzVNCS
         XKRA==
X-Gm-Message-State: AHPjjUi9/RqsSFqwKYbMfXvdmVB+tHMtm5gCe21Hiiq8C3O3C+iKXo/n
	UhOMI4ksWKmb/MMpZZ3Rmbc=
X-Google-Smtp-Source: AOwi7QDTdV1ObifXVh0CGRZpuOUH2VDDI4DfUs/rzgS8MFXUi/CdumP1718Fd6VHb2ZeDcVJt/pMTw==
X-Received: by 10.223.131.65 with SMTP id 59mr13726380wrd.137.1506893690405;
        Sun, 01 Oct 2017 14:34:50 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-133-163.residential.rdsnet.ro. [5.12.133.163])
        by smtp.gmail.com with ESMTPSA id g12sm7802604wra.46.2017.10.01.14.34.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 14:34:49 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/7] Staging: media: atomisp: Remove useless 'out of memory' messages
Date: Mon,  2 Oct 2017 00:34:36 +0300
Message-Id: <2ae7c158c2e3ca8591169a74655ab8b5c99b4394.1506891671.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506891671.git.georgiana.chelu93@gmail.com>
References: <cover.1506891671.git.georgiana.chelu93@gmail.com>

OOM (Out Of Memory Manager) reports memory allocation fails,
so there is no need for the error messages. Also, remove
the {} for single if statement blocks.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

Changes in v3:
* removed {} for single statement blocks
* changed the commit message

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 5232327f5d9c..ca90b22020cc 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -727,10 +727,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
 				GFP_KERNEL);
-	if (unlikely(!bo->page_obj)) {
-		dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
+	if (unlikely(!bo->page_obj))
 		return -ENOMEM;
-	}
 
 	i = 0;
 	alloc_pgnr = 0;
@@ -991,15 +989,12 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	struct page **pages;
 
 	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
-	if (unlikely(!pages)) {
-		dev_err(atomisp_dev, "out of memory for pages...\n");
+	if (unlikely(!pages))
 		return -ENOMEM;
-	}
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
 		GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
-		dev_err(atomisp_dev, "out of memory for bo->page_obj...\n");
 		kfree(pages);
 		return -ENOMEM;
 	}
@@ -1366,7 +1361,6 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 	pages = kmalloc_array(bo->pgnr, sizeof(*pages), GFP_KERNEL);
 	if (unlikely(!pages)) {
 		mutex_unlock(&bo->mutex);
-		dev_err(atomisp_dev, "out of memory for pages...\n");
 		return NULL;
 	}
 
-- 
2.11.0



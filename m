X-GM-THRID: 6470117861435113472
X-Received: by 10.223.175.99 with SMTP id z90mr645583wrc.9.1506441718427;
        Tue, 26 Sep 2017 09:01:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.22 with SMTP id n22ls2909040lja.6.gmail; Tue, 26 Sep
 2017 09:01:56 -0700 (PDT)
X-Received: by 10.25.59.12 with SMTP id i12mr862333lfa.32.1506441716771;
        Tue, 26 Sep 2017 09:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441716; cv=none;
        d=google.com; s=arc-20160816;
        b=KOIG/72sMdCJDXk211myuzQr8usg/99GeP0W8uWoacnsrohFJWoC9eXbWABD/8eBl3
         9DtMSZ6Zzo3PFEP/2yPiMdNQ8RWVB+o9WCz/qyBk4mQfgCWNJqpliRa2AtgWFSjKXOoZ
         QtADfXYfQC/Af5lEu546gat8rVtw8HF734t5Wgb9EBQTfZe62YDGAz2DYpNm+noxTLUZ
         Yw8j8EPSYPEi4J3ennp4Vb3uScAQgxveakYLkyn6VbcN2VVn6XhIwTKMUvHZWfI0/h6q
         4zqB5WrkqD4lHYO8T/DuvJ+Tlp2ip6AUDTu4ijhmF5fHnJxj7NSQNB05uuspQZpZ3HxO
         FfHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=+KROxJFfPXlf8E6pQJ1DLAA0HQWesS3QVCVIyp3i3EQ=;
        b=bUJZnP3NkPtXMpO14MmhprD/1HKnzrXGVMQe/vLamqWBSX6jxPlOtJ5Y4AWjOGFNNe
         ovMG+y44ikqPR5WZo9WvYIS5xt2QPooS2KqakCpaYD6EApR0Vr+nNCbznC5enLzURZFw
         UsE9u7mAFfyHYU9qAxbKu25YyT0EEo/367a9zHaEkniQ+TG8phgKF6c6lj1/YDWZQSmT
         ufXxjpnigsSSl68OxDNnnYrCUbChSb7zHAVJOyYh3VK9FYtfyP959/P4dydsAGdEx6k8
         mAZIze+j0QFL6V4xqqmhVvp41nZTSmj61EQQgxA+4poshQ82k5cXYe8MhgrKwKMxtUCl
         zETA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSwXHMRW;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id p200si202471wmg.4.2017.09.26.09.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:01:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSwXHMRW;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id m127so9577844wmm.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+KROxJFfPXlf8E6pQJ1DLAA0HQWesS3QVCVIyp3i3EQ=;
        b=RSwXHMRWQwA1GHAG4v1E/ujSesxR+r/ORIrhwGoLuoFbyrd9jSH4/0ahm26ZCuqzFE
         HQDZ/5I/ewqE8s/DAXzrTwP5KwNo1P/AGdJCAmF5WyOFOpZLU8PnQ1HFgWdm9WD+DOQV
         Jrdbl2IMu79wgXNzmRnU6J6gNzFMG65z2zZETkNbBWmmaZr0d6fwdAAKj/rA6S3dPBID
         vlIAlm/ZM979CMCGYk3oSWkZhW3cGh62Ymg/9KFdgWjIl1QRD5SOAMh8mludxmjfEspE
         WeAGmKZ2y0uSfpcm9Bu9be7F/bJ3MSqP1vTmCh9xa4DJWS5gDKXJDEWSmGfhB9iRtVFL
         CnpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+KROxJFfPXlf8E6pQJ1DLAA0HQWesS3QVCVIyp3i3EQ=;
        b=uKsnCfBflObt7Z1/Gr9+1FzPdXv12YIgYD3zVF1SqdKCpjnR723bH/cmgqQWq8yTL0
         d4I9J+eQvORGF/omypkJ1rBRrvIpc/ML1gmtytewktz2Ropq9eRJJIhTY0aEWP4bCPC3
         dJE2yRh3+MnVe8B1TvAY3xmgR5mBGC4ZeBh0Cg6n3Ss8tFd+HQJg4pUT0BdOmQLgYe/l
         4hGO2QzWjWg4Qrq94gDvQuVDe6Bk+YdPicLSFXGpL2OCaG9egWswuazAH+838jJaTrmy
         JhbfNXvGSvO63Zi5edv1syUA/CwxHU8Ymv4OCB9bJWNj+6uNWsQQWOTnwTZQDG3nWlh3
         u3rA==
X-Gm-Message-State: AHPjjUiO8K1TRyzRTMyVOPeiskL0P5gEntBpamfdTBpUWzbDXdZ2PWXW
	Wp4UXftRn/m83kO1cY9vOsw=
X-Google-Smtp-Source: AOwi7QCeliXtk5og9BTA2pYiidPZ7mMtJXumjD8Vvpf/qM/wJ4T/X0v3jOuW5CEsWjMgiMStSNQvSw==
X-Received: by 10.28.47.16 with SMTP id v16mr3508804wmv.4.1506441711628;
        Tue, 26 Sep 2017 09:01:51 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id l11sm7238265wre.53.2017.09.26.09.01.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:01:50 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 02/10] Staging: media: atomisp: Remove useless 'out of memory' messages
Date: Tue, 26 Sep 2017 09:01:30 -0700
Message-Id: <6994f57188755df17d3ef47a36a4f4ec032dcb4d.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

OOM (Out Of Memory Manager) reports memory allocation fails,
so there is no need for the error messages.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 5232327..8667466 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -728,7 +728,6 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
 				GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
-		dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
 		return -ENOMEM;
 	}
 
@@ -992,14 +991,12 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 
 	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
 	if (unlikely(!pages)) {
-		dev_err(atomisp_dev, "out of memory for pages...\n");
 		return -ENOMEM;
 	}
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
 		GFP_KERNEL);
 	if (unlikely(!bo->page_obj)) {
-		dev_err(atomisp_dev, "out of memory for bo->page_obj...\n");
 		kfree(pages);
 		return -ENOMEM;
 	}
@@ -1366,7 +1363,6 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 	pages = kmalloc_array(bo->pgnr, sizeof(*pages), GFP_KERNEL);
 	if (unlikely(!pages)) {
 		mutex_unlock(&bo->mutex);
-		dev_err(atomisp_dev, "out of memory for pages...\n");
 		return NULL;
 	}
 
-- 
2.7.4



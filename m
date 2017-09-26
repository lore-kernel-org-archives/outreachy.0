X-GM-THRID: 6470117861435113472
X-Received: by 10.25.196.73 with SMTP id u70mr912741lff.20.1506441720724;
        Tue, 26 Sep 2017 09:02:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.83 with SMTP id i80ls1894064wmf.5.canary-gmail; Tue, 26
 Sep 2017 09:02:00 -0700 (PDT)
X-Received: by 10.28.35.142 with SMTP id j136mr430771wmj.1.1506441719993;
        Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441719; cv=none;
        d=google.com; s=arc-20160816;
        b=AknhgtaO9sX9kqhSo1ieKE84QBWm6MbKeQv0TPCxfJFgddEfM6RSNTMdKuOe9VGppr
         6Xh7Fuzum9hBrVA529dTxnhKjppVFN7yQPFtH/pBBQreE0Vb0eMr64LCtaU5D1g/HIoL
         6ydycxqkdE8dWsgH4X9YGwt6MpAKjKVnANHYG2cHAVkh6OuZxotUZKgGa3cVFtOyUo3g
         vrWkrWJ3PEfy3Z+I8/qXQ/6yLGSjbvXwbEXKqT6m5P5fuDHqij4In73AMHi4oHgJW5NQ
         B6mlXW3Y7zrA8AsIuZYCJPgjL9JYC8XpyFCRa+xkQgEjaT38GMQ42VkpftBhqOGZjxSw
         OYPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=xFdrn5nXOGWT2ib0lx13Pe79FMIekSq8haSgob6cvOc=;
        b=SixU7kfxsAi9KmkLHYxlgYW+zt/oHeKq7MTC00RtGKc48HSKTU92bi3HYmy9jw/VqL
         h6rxbSS4q8hmid7RRhfn7x5cYc/ZC4xdelOSupIuIqcE7MFadFZfRZ9rvEgEWogjlFrv
         6sRL2/7y5wiqnu2sNnbajHs2we+emuxK+Dwlg9bKJdKf4wlPpxeZiS8ixLscamsYMU1b
         Cc/cF98+SFQ0osg0JGmJlk8x5zp+/hYAfY0rFS0LYDUIWiwBPwyoBrcw4qftDK/jAa+q
         /xh45PPOzBoC9E6nrILe2V0K79mT/LwfTzLqB876/sHpfSbHMpIJu5VXSCCbHxiqO7ed
         lJFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYMSfgt9;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id p200si202483wmg.4.2017.09.26.09.01.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYMSfgt9;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id k20so2769893wre.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xFdrn5nXOGWT2ib0lx13Pe79FMIekSq8haSgob6cvOc=;
        b=vYMSfgt9r01H3MYYwY4k1RDmtqYZrFqJPP/uY0o8nTI8GdUW+R+FbxM/sr0tSsIjBW
         hnJfA9KEY+yd8/eghQsw27T7YrG5v0rX1rN5ZfHMqOLOcAfYRaPK9mAW5tuMeqJDJeF7
         4VSntEisLmjIf+AS95fFYrE513SKhFgKj21bYaGBXgPtmA4gNNv5UmygTdvadVGpyxFT
         8qyzyNsNfyzXvb/Zr+RdqFViqkv3r/pGZjk1/ZkQvhGdt5cLKL4qRIYAYlE3sgGjktXt
         7/9k3T8fHp39TD0nz1I1w/AzEUCsLZp8aO3qu3OBUj5vclpbR4v0YVzJhPwwiv3Xfw0t
         Ljdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xFdrn5nXOGWT2ib0lx13Pe79FMIekSq8haSgob6cvOc=;
        b=aw3tzkcY4uKDlvHl1BxKGJgBHaLjUEwismDrnq53BzIr9yEREtxlGoHSY9kmtSJ/ro
         H+uQ0elR9LZ1CEMxDyCyzCi33X9OMvXIZW6g0n0a+bEJJQrpa4+i0RSnH10Q01f0/THX
         azI8LLnrC7qWyH/E2IFRlTDzv1ZurRuNVlba5O29ORLjLka29pEcmpk2TLCWP0Kacsh/
         O6QwPiBxFKx5UH/+BpP3+buVJtdo9z8bC2xoA+dteRgRd/2FuFozq3ybKYPGyWqC0Smc
         mb/0CwVagiUrkt9yUNU+bxUWARBWUPYYjChX7cFsnkZQJ0OqEPgD6ROCXu26Usbp5TRn
         7OhQ==
X-Gm-Message-State: AHPjjUiRW8vOKVcC+5c1bWWqlkyojjmU5ySE0n+e6KVh4GzzTgDCH3Ap
	TIb7CzZULRW6xhwk/+CrBRA=
X-Google-Smtp-Source: AOwi7QDmSNiDxBKigXqm8blcqiJwBPy9QdYpMkvL22czIR9mrX2Vto1H6Mv5IJp1XHMeqRDvWodO5Q==
X-Received: by 10.223.148.165 with SMTP id 34mr4513840wrr.20.1506441715018;
        Tue, 26 Sep 2017 09:01:55 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id j73sm6315987wmf.15.2017.09.26.09.01.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:01:54 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 03/10] Staging: media: atomisp: Remove unlikely from NULL pointer check
Date: Tue, 26 Sep 2017 09:01:31 -0700
Message-Id: <b359615a44297a3a4d2e13b41fc898799196d3c2.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Remove unlikely because kmalloc uses it inside the source code.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 8667466..64f246f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -727,7 +727,7 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
 				GFP_KERNEL);
-	if (unlikely(!bo->page_obj)) {
+	if (!bo->page_obj) {
 		return -ENOMEM;
 	}
 
@@ -990,13 +990,13 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	struct page **pages;
 
 	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
-	if (unlikely(!pages)) {
+	if (!pages) {
 		return -ENOMEM;
 	}
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
 		GFP_KERNEL);
-	if (unlikely(!bo->page_obj)) {
+	if (!bo->page_obj) {
 		kfree(pages);
 		return -ENOMEM;
 	}
@@ -1361,7 +1361,7 @@ void *hmm_bo_vmap(struct hmm_buffer_object *bo, bool cached)
 	}
 
 	pages = kmalloc_array(bo->pgnr, sizeof(*pages), GFP_KERNEL);
-	if (unlikely(!pages)) {
+	if (!pages) {
 		mutex_unlock(&bo->mutex);
 		return NULL;
 	}
-- 
2.7.4



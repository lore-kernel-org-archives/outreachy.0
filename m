X-GM-THRID: 6470117861435113472
X-Received: by 10.25.155.140 with SMTP id d134mr949610lfe.28.1506441726365;
        Tue, 26 Sep 2017 09:02:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.135 with SMTP id y129ls1202576lfc.9.gmail; Tue, 26 Sep
 2017 09:02:05 -0700 (PDT)
X-Received: by 10.46.82.9 with SMTP id g9mr850090ljb.42.1506441725844;
        Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441725; cv=none;
        d=google.com; s=arc-20160816;
        b=JSFKhd1SG0jQkUGxjFcnTsr8EN8h5CS/cXvnrWN+pGL1WNSu0XLhSc5PDH9SRjVG31
         5/G7oPkRrfK7QcCy65F7XmHqwUdrflcCyxG5+pMmXhxWMaO5Ei8BGKeCM7AxRlUs2OJt
         EjAs53JbGrHar1X0+T28K0geX/2Y5gq0qFAzH4mtCWpETq0tsoXM65yDXFnU8TWqhlcW
         sl/6gN5VJoZ17fsxkRvcJWvWcZR7rEVG8g6vKx3rmLmHBt1JmE0FigbV7OoJ4NCSxE0M
         FexQckPdcB35r/oAZ1FR+CexihUB6vPTmZRR3Xkc63iblIG2RstY2OdHratP07ED4DEN
         IQtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=PPCCotIGTcrt5BKI1uSEWNHvrd/V8JlDuwFzEBRZTko=;
        b=KyIE04mA5wyW+33bjpqiuCSPqsFTxtgvy28EKAox5fZE/1/c/aWtO28IpGjBhJ7J2l
         GIF8zNdATStGw1bUsJbvuc6+DIs/KkUP4Dq//gJ1vbshhGqGjX9OYLm0SwxcM2yvyjnM
         K6oqpEiNnJhoVsMzwbWRrw+QzC8nMP7sbBoVpw2gF3AcY/7JU9NAlrCQYIBrgKgWFOnI
         E3u4B8LjIkbgVG3MqIl6dWrWOXpgTTV0nA6H/4IGkWQ7o09vKOrtvfZsF5G9tpKtdT/f
         BBAl2Ht6drzoIs5qxxRR1jA6pnHS+hJi0TLFZxBepiSRgmFxX4ygp51C/T+OGMybU2s2
         bMfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IkrqzyIP;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c142si1292402wmh.3.2017.09.26.09.02.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IkrqzyIP;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id e64so9585502wmi.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=PPCCotIGTcrt5BKI1uSEWNHvrd/V8JlDuwFzEBRZTko=;
        b=IkrqzyIPG9iG6nEqUJLlnLbmYNeTj4YN/yxQmKlLaRIUBWzUfNBTiN5xBPDANZY5IS
         MgiQI6NuQMMAe22RTNLGGQtXN+FAIoLYd0pJ7crnafVKoTpWtpAGdCNoUIaIHgSo/5Xy
         xvPJMFDDeAcjNjqV5W+1ZJfnC7G+QUFWx+PqRKmNMRjZq4d2fpdcWlqVGmZIMWs5xQYk
         H9ml1SAEqyPV3lZRTCb0/P7An5AVPZwoUJ+SVSlPB8jap4imdd9k6NkzWjxc1f0Q5gW4
         3H2/hbGbQzOvSlkpLSScBRUKgZaHBWKfs+5T2DJJiOIFtWHv74bHIEZpSah68rTHceXx
         zqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=PPCCotIGTcrt5BKI1uSEWNHvrd/V8JlDuwFzEBRZTko=;
        b=E5d3r3OdtYTPMik8w5ZnAfb/8nC9GJLQ2fHExvnE8aP8UBe5lt3ca7mHIULgwxNZ86
         b3BDrcLe5vz0jjkmZPfvf1kDM36rB0XXiAYorFax1cE+m0N7BmFjQct1opAQxNHUN3tF
         zEhfjfty8krFpJiLXO/GHaxCxPpu5YI+iR0idStWYh3lVkdxnktJE8b/MKF/aM6QmRwP
         tarKakFxoScG4cVeKQtBGvHZNbXHA51VlRuOBH5uNcaGvkuTkHHxEL6TLb0MARQCC90Z
         4LjA/wvPru+E/gQnunL714d0BQgjbOTH64mN9jc9t2Tp2Z8czNEAtcKdgYw7KF2ukZgP
         35Ug==
X-Gm-Message-State: AHPjjUjfIK2qNx/T4e1R5UIN31geIN2gd79g5gpFu6pqT/x6XBl4JKbd
	aocrKPzArEqAMqOEoaCeB94=
X-Google-Smtp-Source: AOwi7QCBuTbdmpSq/eITuKGWHVCxvCSAv3l7gnpSiSEwz9VMo7gWXPCbS9Q5huy49WHGwgBt+jbGgQ==
X-Received: by 10.28.226.84 with SMTP id z81mr3519864wmg.108.1506441720782;
        Tue, 26 Sep 2017 09:02:00 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id g37sm14021700wra.6.2017.09.26.09.02.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:02:00 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 07/10] Staging: media: atomisp: Remove braces {} for single statement blocks
Date: Tue, 26 Sep 2017 09:01:35 -0700
Message-Id: <cbb4d2d339ab95e7d4d5120d6173542147fcbdea.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Enhance the coding style by removing the
braces {} for single statement blocks.

Fix issue reported by checkpatch.pl script:
*WARNING: braces {} are not necessary for single statement blocks

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 06f6e48..0dcdcdd 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -724,9 +724,8 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
 
 	bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
 				GFP_KERNEL);
-	if (!bo->page_obj) {
+	if (!bo->page_obj)
 		return -ENOMEM;
-	}
 
 	i = 0;
 	alloc_pgnr = 0;
@@ -987,9 +986,8 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 	struct page **pages;
 
 	pages = kmalloc_array(bo->pgnr, sizeof(struct page *), GFP_KERNEL);
-	if (!pages) {
+	if (!pages)
 		return -ENOMEM;
-	}
 
 	bo->page_obj = kmalloc_array(bo->pgnr, sizeof(struct hmm_page_object),
 		GFP_KERNEL);
-- 
2.7.4



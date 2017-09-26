X-GM-THRID: 6470117861435113472
X-Received: by 10.223.172.8 with SMTP id v8mr630116wrc.32.1506441726377;
        Tue, 26 Sep 2017 09:02:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.87 with SMTP id y23ls2890058ljd.11.gmail; Tue, 26 Sep
 2017 09:02:05 -0700 (PDT)
X-Received: by 10.25.38.140 with SMTP id m134mr890219lfm.2.1506441725825;
        Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506441725; cv=none;
        d=google.com; s=arc-20160816;
        b=mHPx9CaQ8AH6IHCU7zrJs9AQe0pqmFvctgURYRZmthtLQjNvinv5z939TG/Ql1uJup
         XtZ08sc3AZTlx9nFeggCfCs967hi6WLInjXhMpafB8QWLBw47ytcYd/N5sOb4dIJXPzh
         j9vkLf6Ex1PjzOU30XF7PbuDFP9cH5aWnWDYIpbNdGpoJZe0KOdN5IUOvhtXCLFLk5di
         9S099SafROhSKMVI2c05l8vEDSMzY9JfvuK/E/lrLS6w4vZwfE6KoYiyBikz6EbRZl6b
         COAvOXUVFwL2PaLR7k2GKfDOfDihcpwbLAndsIKjzBcRb2jGM5EHqtCcp6uFdvu7r1LZ
         qsLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=udYLH+HRtRjw2f4QKcXN0UjQ7u6LpqCJxSRf9jjZguw=;
        b=ds40QBbrl7OFZZwLLJ7Lv8CYebZU1l/hZzPRE8mXJmhp4W9d8n33OBcsKUnQ2EGbJi
         6nBj1cWdjDlUPXtCxbH5MfellC/1uEtsVaYAREX3MivH+r+Rn31eA6wvVnSfSF6O+xz7
         LVzQtBMscxR08X27WLIkbnCvM0Kf1O8ldDZ+seEWKYs+2IXjvpb8VYYk7zjOFM0gosad
         waYftqEmqB//lXP0JFHyKhyiYx0vkT9tPAahX286M38FuvFfbynRyDS6Gtqgmy8JOokF
         1LtDdRSKA6z3EQkpnP4VGcWl1SHemiHRXIJ0o0gIedUbB5nVsxWOlb0U4qYGHqvMVXad
         DyPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EuahLrwG;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id p200si202483wmg.4.2017.09.26.09.02.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EuahLrwG;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id k20so2769893wre.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=udYLH+HRtRjw2f4QKcXN0UjQ7u6LpqCJxSRf9jjZguw=;
        b=EuahLrwG7MuC+xzIIJ765TX1/YaorXfBDWJ2xbWtZmS6WHKu/Brmx3A4F+LBEvvYwB
         DtVL1kHD+D/M0NrIGEXBEhWc/H/U6HgxQlbizwtoIDiYY/Nv12ZDdeFnZmNUiJpmMXYg
         REgAy4uDbfZoPY81B8aXInREbRIfLmp78CiCtyK2Gxt+zYpc33BSs4UDVLgpqrrmcyME
         WVWsZLtk7hhgXUetUt7mGcQbZOZtGG6bCOgxt4bpWvVWQTBw54zVZHZ/irWJn9O7NZXK
         D+xVvYsFqsI/e74TJeBLI4x4eil5eQxLatvKd/4cHx2A9A/a4tTyadF+pOqxrnQHUzeg
         QSEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=udYLH+HRtRjw2f4QKcXN0UjQ7u6LpqCJxSRf9jjZguw=;
        b=doPUbs7O3cCqfiZZgap+oXW9JUZg7Q4g9omsMca33JI2cquyR5kPQu6iXpnCPXXufj
         NpJafpG7z+6KKTIMRvqeVKhCYPs2Zub6QXtGAyiVOHeh1oEqYGoVxtLUeJGqB1aihfzN
         eLNLPJV7KRfQYrX44HPhVPekHpcJ6US0uUS+f1+1F7KHmfiN6PyzBpWum62Qb0CuMpx8
         dHBapTYN6bv3RvMxRvzUqENcp2D5zd2271KBHD3+taog37FmYbdPL1Sqd5ql6GsYc2G/
         NMACde1PTmo634b4v3zxSFGiEekRpZXZb6gUh3T8sGH7LO+VO4eSuhQJ8CQT0aOMLroX
         HrIw==
X-Gm-Message-State: AHPjjUj6NVVvawbJf9sQSILNFCBOo1LjTDjGKIq5Oq9gxx6ggxLFaEEj
	slEdIttez0WbVy20oesYAaEEpc3y
X-Google-Smtp-Source: AOwi7QAwpaNb0uRcZu9pJobzZkl4uNDdicBdoGWKHQB2o2ZlTgMsvE0zpaTaWNIJYX4pR6hVAlNemA==
X-Received: by 10.223.151.55 with SMTP id r52mr10586694wrb.69.1506441725571;
        Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id f127sm13571649wmg.2.2017.09.26.09.02.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 09:02:05 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 10/10] Staging: media: atomisp: Split lines wiht over 80 characters
Date: Tue, 26 Sep 2017 09:01:38 -0700
Message-Id: <8026f4829e6bf15faba188a1e43577deaee5b834.1506436974.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1506436974.git.georgiana.chelu93@gmail.com>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>

Lines with over 80 characters are difficult to read.
Thus, improve the coding style by writing the code
on multiple lines.

Issue found the checkpatch script:
* WARNING: line over 80 characters

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* this is a new patch added to the patchset

 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
index 48f801c..fbf1004 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
@@ -384,7 +384,8 @@ int hmm_bo_device_init(struct hmm_bo_device *bdev,
 	bdev->free_rbtree = RB_ROOT;
 
 	bdev->bo_cache = kmem_cache_create("bo_cache",
-					   sizeof(struct hmm_buffer_object), 0, 0, NULL);
+					   sizeof(struct hmm_buffer_object),
+					   0, 0, NULL);
 	if (!bdev->bo_cache) {
 		dev_err(atomisp_dev, "%s: create cache failed!\n", __func__);
 		isp_mmu_exit(&bdev->mmu);
@@ -683,7 +684,8 @@ static void free_private_bo_pages(struct hmm_buffer_object *bo,
 			ret = set_pages_wb(bo->page_obj[i].page, 1);
 			if (ret)
 				dev_err(atomisp_dev,
-					"set page to WB err ...ret = %d\n", ret);
+					"set page to WB err ...ret = %d\n",
+					ret);
 			/*
 			W/A: set_pages_wb seldom return value = -EFAULT
 			indicate that address of page is not in valid
@@ -957,8 +959,9 @@ static int __get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
 }
 
 static int get_pfnmap_pages(struct task_struct *tsk, struct mm_struct *mm,
-			    unsigned long start, int nr_pages, int write, int force,
-			    struct page **pages, struct vm_area_struct **vmas)
+			    unsigned long start, int nr_pages, int write,
+			    int force, struct page **pages,
+			    struct vm_area_struct **vmas)
 {
 	int flags = FOLL_TOUCH;
 
-- 
2.7.4



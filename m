X-GM-THRID: 6754555674055671808
X-Received: by 2002:a92:5a0c:: with SMTP id o12mr17391556ilb.113.1572667596286;
        Fri, 01 Nov 2019 21:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:b48d:: with SMTP id d135ls1425116iof.0.gmail; Fri, 01
 Nov 2019 21:06:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwvjgugj7+nhfSo+GgPo7Y6dhiykv0GGno1AS5PMGCPWa+bhnaUUFB54Cey3mT3L483kJ7y
X-Received: by 2002:a5d:94d8:: with SMTP id y24mr5976499ior.131.1572667595122;
        Fri, 01 Nov 2019 21:06:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572667595; cv=none;
        d=google.com; s=arc-20160816;
        b=VGw0RwXp9NRwtxpt16JdS6oq0mDKh/wQEZKt7GxLc0ORge+QNbmU/L4qSZ3hupfoVi
         FPR/IJ1zWeW+Noni7jhuG+DbE97ZSNOne5bDpMkagYmCydhvCOnr0qbPBqI0meLsT1+r
         4EnJYZS+D9xGnqrRFs5ed50dGWpxMhWVzFCOAkd1Yr2qKoq4rumSmEZQKpHS7unQ69Uz
         7OLmHPAQhDI2shxid9jJFdj5CQ152VjhURsGmTc99luqZD7Mom9B8/uFaAvdWP0CJEpv
         V/mf50G9VqeOvyYo09tvtjsCPi4v4VwzbIVS8UJpQmS+F+lR0JOXzwT0Y12T6HXgEb50
         +K3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=oE8VqFWYDRjX0QT6fYrzffd6gpasru/ftppGBiCkh2I=;
        b=LLAVETC64SE1iMvrI73ruDqJRmpkuU8CgzJzsbJW8Hk3aV+xWL1TvpBPYbkt3CDtS+
         Iz8vLkl4KMLind8Vw3hIGeS5ByNOdef8ueqYbSrRZF40ZdBiiQc6uKfHtJ4yrgO+7KEr
         edPWsyKmeLmGOYJkK6kvK9Ek+zzbJ8BYA8qKBHDNYmLtFDIwDRl5yeeAPArFbURNuPsP
         hdTOjD5bd9KH5kMLj3+dxCSRfU+UR6ZJavEK7CdgFbnm+PonTmlGKlqozQC/fZ39OEaU
         cYSPbGqShmgAcO8ZKed7/M4RqqThkhUQP9CM3/PhfSBFZeCUE15+FYoiUsrfim2pIRBS
         pUjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=1NeWt5ks;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id a17si520599iok.0.2019.11.01.21.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 21:06:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=1NeWt5ks;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x942.google.com with SMTP id i13so3508112uaq.7
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 21:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=oE8VqFWYDRjX0QT6fYrzffd6gpasru/ftppGBiCkh2I=;
        b=1NeWt5ksBdJojLOnz9eJaSJeoOn1R6M9/uGvp3X5eVZ2SP9DagoTH9sa7rZP0Lkml2
         JCX63Of4Zo4ZkyhndaKxf3iAQ/TW+26UzlVMTzCHBJzor8yliSaJAUXc+nRwUxVHsMuF
         6Cn3udLacL0IXvM+EAF6wLC7f7X22oxV3tyW+ijQ8F+JSurfnCH1PiUKQN6Mck+7q3L4
         TbZrI3wXqaxQxGMahaWO8oCXnap/tbRrajfyFobd5JCtlaeJ7q0REu8jGkSj+PAPAI5y
         eNPcqCy6fGqRgy1TYqCGVvXYAhDZcPBdXjz/KScnKgYo/Ps5d+ktGsFjoCJQGy8w6Gjk
         dnIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=oE8VqFWYDRjX0QT6fYrzffd6gpasru/ftppGBiCkh2I=;
        b=nCCS0yfq9y96ma+BX12MoY7VvySl3GgHnWpTtkIONr4ocbRvvoT5CJffZ5kun7gHst
         1lnOE04DnzbwtF87w7OtZzwWl8O5mlt0QStm3Ogwx3xRvQv9v/cbq4KX9g6GfG2rVUmh
         K8/FaCvE0zh8frCREntJoFyt6xq9xy+dJ5MyINwV17+6O0sVlFvFcp3To8yM1eM9Xrt8
         6XhEzE87H2W/gGyjgRfIUm6IiE8TQnYOqX0velay5nnz4PyYBLl7I2gVg+GTlw7xhyZd
         +pZmuO6ll7qWldHrZ4JvXqc9y6NE1O2Thm90WikKlms/0nWTSMat/NqJUW2pI0JppK9U
         kZag==
X-Gm-Message-State: APjAAAXnnlxGEgUIn9N6bS6ypyfMLdper10KC1f/i91MLd0T8sDFSI1H
	GYN6WrlGQYqqYr4OD9tzdYwr3g==
X-Received: by 2002:ab0:393:: with SMTP id 19mr7477928uau.58.1572667594159;
        Fri, 01 Nov 2019 21:06:34 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([172.97.41.74])
        by smtp.gmail.com with ESMTPSA id j9sm947322vsm.31.2019.11.01.21.06.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 21:06:33 -0700 (PDT)
Date: Sat, 2 Nov 2019 04:06:32 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH v2 1/2] staging: exfat: Fix parameter alignment issues
Message-ID: <fe316e694ea9c4aa370d3a8166a3680feb342682.1572666556.git.frank@generalsoftwareinc.com>
References: <cover.1572666556.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572666556.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

Fix alignment to match open parenthesis to comply in that way with
the preferred coding style for the linux kernel. Issue found by
checkpatch.

Suggested-by: Julia Lawall <Julia.Lawall@lip6.fr>
Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/exfat/exfat_core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index f4f82aecc05d..b23fbf3ebaa5 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -1503,7 +1503,7 @@ void fat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
 }
 
 void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-		s32 entry, s32 order, s32 num_entries)
+			    s32 entry, s32 order, s32 num_entries)
 {
 	int i;
 	sector_t sector;
@@ -1919,7 +1919,8 @@ s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es)
 
 /* write back some entries in entry set */
 s32 write_partial_entries_in_entry_set(struct super_block *sb,
-	struct entry_set_cache_t *es, struct dentry_t *ep, u32 count)
+				       struct entry_set_cache_t *es,
+				       struct dentry_t *ep, u32 count)
 {
 	s32 ret, byte_offset, off;
 	u32 clu = 0;
-- 
2.17.1



X-GM-THRID: 6466022113438334976
X-Received: by 10.129.74.2 with SMTP id x2mr16060006ywa.26.1505488090108;
        Fri, 15 Sep 2017 08:08:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.142 with SMTP id u14ls7036712iou.25.gmail; Fri, 15 Sep
 2017 08:08:09 -0700 (PDT)
X-Received: by 10.101.66.141 with SMTP id j13mr15785420pgp.0.1505488089311;
        Fri, 15 Sep 2017 08:08:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505488089; cv=none;
        d=google.com; s=arc-20160816;
        b=KXQZeCPLJ0EXAtUwBcDwdwXEVWA2sC45FS89ks65N8CwtT9kgIlxIkAo3TTH5CTlrb
         OSR5ZnarNS+fHV8CIprAGLYm9p6RRHkn5Q8WoFIg+wmfiefG5fX9D+opuRuMKsLs/b+5
         dLNVtc/fQ9yTIb8+5RE5BwgQh3Jz2wxIWKerIMeu950jnW4g/Cdw7rkEcGGDt3YInUV6
         6Fcd2zvugbxomHEUGV/wDhHA2EWozk0DTF/5tM1YfibHZ9dM3cULisAd9TQ2AxKTjadB
         rhy0dT0JoOhqznZdfsvoZvQDqTEwtrOXoo52SZk6gSK40/734mIrWqvCIosWsu7sEBjd
         Oudw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=K1x+hVMcGMQe3Lx5az4Rhz+LGiC66krH5Ben9kwfVsY=;
        b=JoCL3hfEEMuG1Sxivm0tzGbAC8ZUr9y9NMUxj1TluX95k02iHtVMp+xvYJrFKo0j+w
         6AHXq6VVAVVdhjADEM5bvfneCbn5fSLq0vrDvJngiC6bMp0Nl9cJc0aqr2Q979jnFcmj
         IxMHbumaeSNvmav05jOQhkaKXL6YYXIt1SzhMqVf0LnsKqoBErXNRRb7yNtZ+5Kiwppy
         FQz4YXWvUFhT1HunNDYUbHacgE6IakVYHfa+EltbFCP/+FiLK5vlokbkl7rlYknY1ER9
         +Oo11lOqPmZOBNuxDTICHFj4WOkKnyJ53IyHArToOMPsYSo1LZsXWH8xWoM1TAWywo0E
         beDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sEhvfZBq;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id r78si117619pfb.3.2017.09.15.08.08.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 08:08:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sEhvfZBq;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e69so1357145pfg.4
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 08:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=K1x+hVMcGMQe3Lx5az4Rhz+LGiC66krH5Ben9kwfVsY=;
        b=sEhvfZBq7PA/P0cm3TWN3hlpXDO2FQpNwxH+rZtThZJziGQRVbWePy56PJ19Ks8fud
         aE3rlFtXDFOM3PaBgCN1f2Ci7P0wmSbgO4+c6Rq8WGiwj/LidxGDGI2jL1ktZdFShlGg
         X1fgELFrlRstIqbQp+9b6pXkG/5gRhg4hI0VgZURZQrQu0L4Y2PUFXxJFudwkfcY7Tj+
         AIGhkybMqt/md3O2s593uC+OfBrb4rB/GtBeHAiETbCsqLPkBPZ5CUyZEUb7ASuNpo+A
         4jgWbMkhbU+jpyXO1vt/qKS9Oc2q7zX1neiH9InGCr1qGeUSDHKIbC22tkA57SbIn3+l
         C5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=K1x+hVMcGMQe3Lx5az4Rhz+LGiC66krH5Ben9kwfVsY=;
        b=cUUBMmUf5BlcZhk51MkEVyPvXMenalcUgErX/ZE3jlIQRfN4sZ4VNzAte1Jdljz1dK
         8aR0Db/rb7N0W4vrZbuhnbC92N7/0evJj/2uUw59fd0v9bPtCn6qA8ZJo40a3nGxb8+s
         0KdlXtCRpuVL5L9jihpCOPnRB8rAbmnglkmC/omH4DYQMiUarUakWyah1gaSh6gLzDDR
         Wdst0T2HJPvrU1/XNNjJVz92hqlL5JgbXFqZMuOj5ocxTt5GkQrg1KkxiInvuvm4tinh
         KrF88NIx0hMUCBoz14C9IGbyzvY6AjGaaMNmrBL8Ofum66PBu76A3W4xeh7QF/PBN8MY
         EKsg==
X-Gm-Message-State: AHPjjUiZ02z1jjQOUvBtYdatjwdrZ2y3eSQSDwE8NjxUudwpRRgU6bdy
	TU5gDqiQUhPiG3CmylE=
X-Google-Smtp-Source: ADKCNb5b+8nkct5uD2D+PH3T5jKp9aSmjbFASiiHQUxOVig66jXeDdSjT8qLS3Z6IequGMojmgxmHw==
X-Received: by 10.99.127.4 with SMTP id a4mr24556758pgd.124.1505488088721;
        Fri, 15 Sep 2017 08:08:08 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id l25sm2712467pfj.141.2017.09.15.08.08.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 15 Sep 2017 08:08:08 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: dgnc: remove unnecessary comments
Date: Fri, 15 Sep 2017 20:38:00 +0530
Message-Id: <1505488080-7145-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes unnecessary comments. These comments are already
there before the structure definitions.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 764d6fe..1d1fa83 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -162,10 +162,8 @@ struct dgnc_board {
 	unsigned char	vpd[128];
 	unsigned char	serial_num[20];
 
-	/* used to protect the board */
 	spinlock_t	bd_lock;
 
-	/*  Protect poller tasklet and interrupt routine from each other. */
 	spinlock_t	bd_intr_lock;
 
 	uint		state;
@@ -330,7 +328,7 @@ struct channel_t {
 	struct un_t	ch_tun;
 	struct un_t	ch_pun;
 
-	spinlock_t	ch_lock; /* provide for serialization */
+	spinlock_t	ch_lock;
 	wait_queue_head_t ch_flags_wait;
 
 	uint		ch_portnum;
-- 
2.7.4



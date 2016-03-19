X-GM-THRID: 6263740709217501184
X-Received: by 10.129.78.78 with SMTP id c75mr15112720ywb.30.1458390781116;
        Sat, 19 Mar 2016 05:33:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.213 with SMTP id a204ls1405003ioe.99.gmail; Sat, 19
 Mar 2016 05:33:00 -0700 (PDT)
X-Received: by 10.50.143.101 with SMTP id sd5mr3482920igb.4.1458390780787;
        Sat, 19 Mar 2016 05:33:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tu5si2298189pab.2.2016.03.19.05.33.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 05:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n5so21275133pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 05:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Dahi4S1Xwt+68XkEps+OK99vHLqZbg3/A94g3xZFdWY=;
        b=JcV89dfuwDCiNryCJqyaX2Dm53u45SLQMJk7AO7TbuhrhspGfhbCLZ9xa8BeOT8Nnm
         f3NPpo5YAAhPTnJH5W2D5VabU5dcXlrqTUICHVcPY5ik7SgaS+L+/Jyt0j9zzgrrbicR
         G8salNnIAR/49W8oZva/0yGL71aJdve3mqM00iWPPMo1mOh3rhNDkI79bSF+K+KBK8+r
         ukbiSssflwYKNAT+XysI8jdJjVp51ahrmgu19OEN4dYdKzEslfjZNnfuPZXGk+SUxKar
         YNAnmJ9D8ap+g/uUtoE3eQLfpeY6NpbUmgTQsWSXYmDKLkmvMauvPs+EYBzv5Hs+/znc
         fzKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Dahi4S1Xwt+68XkEps+OK99vHLqZbg3/A94g3xZFdWY=;
        b=Oc1m07pRaA3V0ykJLm4emEGdaRjuzYLW+/4JhI4/q87nC8zWme6bvLoa92Zah7P9GU
         SmfABi3WDlW9snObDqK0UBZa/cOVCKlARnN9a2kd0vx8b6YjYlemPZTMjKd+FUHlH+jp
         INsUBmUE4yCX/ZNIfxNSIKEefOgY+Mz6Y1WP1q1fMDnl1GlgFMX49FmKAqwYZ4umncGp
         WphaxWle3V9dGzuQ0Za+NeS4q2geMRVABlmCj6+1HJTwZYVGrqOd3nFUMTEKCwyu/wXO
         F4gJIhNv/6qq5tFraiZ644D9llnCBJ99zeX7JeDLX9pvuI/tq7jxcgvkguFQ3EGQOgWV
         7EmA==
X-Gm-Message-State: AD7BkJJ6kmylpz3V/A2IDC9ze7LshYOAV2OEX8B+NROXE2ZWIDoC8tQ44l9QKDadq6d3HQ==
X-Received: by 10.98.14.68 with SMTP id w65mr31195402pfi.144.1458390780562;
        Sat, 19 Mar 2016 05:33:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.187.189])
        by smtp.gmail.com with ESMTPSA id k88sm27980116pfj.0.2016.03.19.05.32.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 05:32:59 -0700 (PDT)
Date: Sat, 19 Mar 2016 18:02:55 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: Replace sg++ with sg = sg_next(sg)
Message-ID: <20160319123255.GA15492@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

With scatterlist chaining, simply incrementing the array does not
work. sg_next macro was thus introduced to follow the chain links 
when necessary. So replace sg++ with sg_next.

This change was made with the help of the following Coccinelle
semantic patch:
//<smpl>
@@
struct scatterlist *sg;
@@
-sg++
+sg = sg_next(sg)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
index 2323e8d..cd3fde7 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
@@ -704,7 +704,7 @@ kiblnd_setup_rd_iov(lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
 		fragnob = min(fragnob, (int)PAGE_SIZE - page_offset);
 
 		sg_set_page(sg, page, fragnob, page_offset);
-		sg++;
+		sg = sg_next(sg);
 
 		if (offset + fragnob < iov->iov_len) {
 			offset += fragnob;
@@ -748,7 +748,7 @@ kiblnd_setup_rd_kiov(lnet_ni_t *ni, kib_tx_t *tx, kib_rdma_desc_t *rd,
 
 		sg_set_page(sg, kiov->kiov_page, fragnob,
 			    kiov->kiov_offset + offset);
-		sg++;
+		sg = sg_next(sg);
 
 		offset = 0;
 		kiov++;
-- 
1.9.1



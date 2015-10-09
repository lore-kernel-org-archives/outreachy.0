X-GM-THRID: 6203671464357396480
X-Received: by 10.50.17.74 with SMTP id m10mr8405354igd.3.1444404824928;
        Fri, 09 Oct 2015 08:33:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.143 with SMTP id k137ls876760ioe.53.gmail; Fri, 09 Oct
 2015 08:33:44 -0700 (PDT)
X-Received: by 10.107.128.42 with SMTP id b42mr12011903iod.4.1444404824686;
        Fri, 09 Oct 2015 08:33:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si181713pbb.2.2015.10.09.08.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 08:33:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ex6so89987497pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 08:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7YpO5JznqYxOdZA6MZt0Rj8/FzmFucjseWQVZ+eFEN0=;
        b=LcbMZs96Tkd/OD5jw6JM8MwSMOmR8EOw5p6BoteF2s2A3dHReKuAvAgJ40KGq4mfzb
         g8Bw0LrE34riBUIsCJ/xuODeFmPPi5Gb/3r0SnirmjpQ8g7Y0b5DjAmxxHvL8nDNiz1B
         0l2txFEO0BT18SqlREw0KmP4cAQYC8UFWSfYqLn/rI5VYrg/heLrQLuDilCLH9CK6ruT
         2hQ3xpbLc3mVUfRpvAkuqFai6PO1pGaVhPUAdBBGplkvQ1AN4I1ZedAvCBOLNare1qqP
         IJMyeTpXkz3sK5Tjb8nHeNTKqTV3gOvUD5n985vUI2Q9Qba/GhqcYj5M4mgATojqgQwF
         VSmw==
X-Received: by 10.66.230.137 with SMTP id sy9mr16286212pac.154.1444404824565;
        Fri, 09 Oct 2015 08:33:44 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yg2sm3072675pbb.79.2015.10.09.08.33.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 08:33:44 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/4] Staging: rdma: ipath: Use kcalloc instead of kzalloc to allocate array
Date: Fri,  9 Oct 2015 21:03:27 +0530
Message-Id: <1444404809-22880-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
References: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5617DE57.0079,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The advantage of kcalloc is, that will prevent integer overflows which
could result from the multiplication of number of elements and size and
it is also a bit nicer to read.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_init_chip.c | 2 +-
 drivers/staging/rdma/ipath/ipath_qp.c        | 2 +-
 drivers/staging/rdma/ipath/ipath_verbs.c     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_init_chip.c b/drivers/staging/rdma/ipath/ipath_init_chip.c
index e95af81..cec1ebb 100644
--- a/drivers/staging/rdma/ipath/ipath_init_chip.c
+++ b/drivers/staging/rdma/ipath/ipath_init_chip.c
@@ -264,7 +264,7 @@ static int init_chip_first(struct ipath_devdata *dd)
 	 * Allocate full portcnt array, rather than just cfgports, because
 	 * cleanup iterates across all possible ports.
 	 */
-	dd->ipath_pd = kzalloc(sizeof(*dd->ipath_pd) * dd->ipath_portcnt,
+	dd->ipath_pd = kcalloc(dd->ipath_portcnt, sizeof(*dd->ipath_pd),
 			       GFP_KERNEL);
 
 	if (!dd->ipath_pd) {
diff --git a/drivers/staging/rdma/ipath/ipath_qp.c b/drivers/staging/rdma/ipath/ipath_qp.c
index face876..b2c6766 100644
--- a/drivers/staging/rdma/ipath/ipath_qp.c
+++ b/drivers/staging/rdma/ipath/ipath_qp.c
@@ -1027,7 +1027,7 @@ int ipath_init_qp_table(struct ipath_ibdev *idev, int size)
 	idev->qp_table.last = 1;	/* QPN 0 and 1 are special. */
 	idev->qp_table.max = size;
 	idev->qp_table.nmaps = 1;
-	idev->qp_table.table = kzalloc(size * sizeof(*idev->qp_table.table),
+	idev->qp_table.table = kcalloc(size, sizeof(*idev->qp_table.table),
 				       GFP_KERNEL);
 	if (idev->qp_table.table == NULL) {
 		ret = -ENOMEM;
diff --git a/drivers/staging/rdma/ipath/ipath_verbs.c b/drivers/staging/rdma/ipath/ipath_verbs.c
index 17d9dca..40f7f05 100644
--- a/drivers/staging/rdma/ipath/ipath_verbs.c
+++ b/drivers/staging/rdma/ipath/ipath_verbs.c
@@ -2059,7 +2059,7 @@ int ipath_register_ib_device(struct ipath_devdata *dd)
 	 * the LKEY).  The remaining bits act as a generation number or tag.
 	 */
 	idev->lk_table.max = 1 << ib_ipath_lkey_table_size;
-	idev->lk_table.table = kzalloc(idev->lk_table.max *
+	idev->lk_table.table = kcalloc(idev->lk_table.max,
 				       sizeof(*idev->lk_table.table),
 				       GFP_KERNEL);
 	if (idev->lk_table.table == NULL) {
-- 
2.1.4



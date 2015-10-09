X-GM-THRID: 6203671464357396480
X-Received: by 10.182.19.166 with SMTP id g6mr11331893obe.42.1444404822625;
        Fri, 09 Oct 2015 08:33:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.34 with SMTP id a31ls1675889qga.25.gmail; Fri, 09 Oct
 2015 08:33:41 -0700 (PDT)
X-Received: by 10.129.123.85 with SMTP id w82mr11523264ywc.39.1444404821966;
        Fri, 09 Oct 2015 08:33:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si191671pac.2.2015.10.09.08.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 08:33:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so89768614pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 08:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=yGgTnKl7L0ni1mOudgjHwBKkFY7wt860HNZXXf0e3zw=;
        b=m+Zdnc9BxDK7ay99lOk7pISmlJxWKGm0C+eCng0ZTbPvMaEPpSTXLRac3RrKm5g9k9
         ObVDp4fJvylfj+D/+zYNf3wZy7L6lgzp+bMrs3TGpIXXP2hGC/mYcc4gCjNQdtipiTuE
         5Z5IftiMs0HgTdChV05cnYBYQFqlR+g5MDVTOxZrfqgPkIrlGkfCuh5LVmNb6RYPoqq4
         riOq9ldxxITiAWvFRk+b2rCaFdCMo3qwkxqW6XPYMAkTXH1UTpYVSVQ/6B8Ia6QZuZvj
         BtXLUBSHTr3orXdtBYR1TmMbGoMS9h8sCq5DfKonGoLzKwM9LJ3xdKWSsbgPEDErlJ+I
         xAEQ==
X-Received: by 10.66.253.199 with SMTP id ac7mr15852669pad.56.1444404821805;
        Fri, 09 Oct 2015 08:33:41 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id yg2sm3072675pbb.79.2015.10.09.08.33.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 08:33:41 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/4] Staging: rdma: hfi1: Use kcalloc instead of kzalloc to allocate array
Date: Fri,  9 Oct 2015 21:03:26 +0530
Message-Id: <1444404809-22880-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
References: <1444404809-22880-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5617DE54.0097,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

The advantage of kcalloc is, that will prevent integer overflows which
could result from the multiplication of number of elements and size and 
it is also a bit nicer to read.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rdma/hfi1/diag.c      |  5 ++---
 drivers/staging/rdma/hfi1/init.c      | 14 ++++++++------
 drivers/staging/rdma/hfi1/user_sdma.c |  4 ++--
 3 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/diag.c b/drivers/staging/rdma/hfi1/diag.c
index 3e8d5ac..3d025d7 100644
--- a/drivers/staging/rdma/hfi1/diag.c
+++ b/drivers/staging/rdma/hfi1/diag.c
@@ -1159,9 +1159,8 @@ static long hfi1_ioctl(struct file *fp, unsigned int cmd, unsigned long arg)
 				   filter_cmd.opcode, filter_cmd.length,
 				   filter_cmd.value_ptr);
 
-			filter_value = kzalloc(
-						filter_cmd.length * sizeof(u8),
-						GFP_KERNEL);
+			filter_value = kcalloc(filter_cmd.length, sizeof(u8),
+					       GFP_KERNEL);
 			if (!filter_value) {
 				pr_alert("Not enough memory\n");
 				ret = -ENOMEM;
diff --git a/drivers/staging/rdma/hfi1/init.c b/drivers/staging/rdma/hfi1/init.c
index a877eda..84e6213 100644
--- a/drivers/staging/rdma/hfi1/init.c
+++ b/drivers/staging/rdma/hfi1/init.c
@@ -293,12 +293,14 @@ struct hfi1_ctxtdata *hfi1_create_ctxtdata(struct hfi1_pportdata *ppd, u32 ctxt)
 		 * The resulting value will be rounded down to the closest
 		 * multiple of dd->rcv_entries.group_size.
 		 */
-		rcd->egrbufs.buffers = kzalloc(sizeof(*rcd->egrbufs.buffers) *
-					       rcd->egrbufs.count, GFP_KERNEL);
+		rcd->egrbufs.buffers = kcalloc(rcd->egrbufs.count,
+					       sizeof(*rcd->egrbufs.buffers),
+					       GFP_KERNEL);
 		if (!rcd->egrbufs.buffers)
 			goto bail;
-		rcd->egrbufs.rcvtids = kzalloc(sizeof(*rcd->egrbufs.rcvtids) *
-					       rcd->egrbufs.count, GFP_KERNEL);
+		rcd->egrbufs.rcvtids = kcalloc(rcd->egrbufs.count,
+					       sizeof(*rcd->egrbufs.rcvtids),
+					       GFP_KERNEL);
 		if (!rcd->egrbufs.rcvtids)
 			goto bail;
 		rcd->egrbufs.size = eager_buffer_size;
@@ -1050,8 +1052,8 @@ struct hfi1_devdata *hfi1_alloc_devdata(struct pci_dev *pdev, size_t extra)
 	if (!hfi1_cpulist_count) {
 		u32 count = num_online_cpus();
 
-		hfi1_cpulist = kzalloc(BITS_TO_LONGS(count) *
-				      sizeof(long), GFP_KERNEL);
+		hfi1_cpulist = kcalloc(BITS_TO_LONGS(count), sizeof(long),
+				       GFP_KERNEL);
 		if (hfi1_cpulist)
 			hfi1_cpulist_count = count;
 		else
diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
index 6620262..368878f 100644
--- a/drivers/staging/rdma/hfi1/user_sdma.c
+++ b/drivers/staging/rdma/hfi1/user_sdma.c
@@ -1050,8 +1050,8 @@ static int pin_vector_pages(struct user_sdma_request *req,
 	unsigned pinned;
 
 	iovec->npages = num_user_pages(&iovec->iov);
-	iovec->pages = kzalloc(sizeof(*iovec->pages) *
-			       iovec->npages, GFP_KERNEL);
+	iovec->pages = kcalloc(iovec->npages, sizeof(*iovec->pages),
+			       GFP_KERNEL);
 	if (!iovec->pages) {
 		SDMA_DBG(req, "Failed page array alloc");
 		ret = -ENOMEM;
-- 
2.1.4



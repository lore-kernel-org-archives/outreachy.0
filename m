X-GM-THRID: 6212095586717401088
X-Received: by 10.140.134.82 with SMTP id 79mr13682272qhg.0.1446366302095;
        Sun, 01 Nov 2015 01:25:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.231 with SMTP id nr7ls669511obb.13.gmail; Sun, 01 Nov
 2015 01:25:00 -0700 (PDT)
X-Received: by 10.182.113.132 with SMTP id iy4mr13555078obb.28.1446366300751;
        Sun, 01 Nov 2015 01:25:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id fa8si1424085pab.1.2015.11.01.01.25.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padhy1 with SMTP id hy1so110078901pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=bbeujjZVVj/Fsf5gVVpcgBIELcMhfDFp2Bl0tPFCIfU=;
        b=BffEAuGsZZDgLzkuyb5HXAoBUWGWBaIwjK14NK5hXnzBr4Avx7L8EezTZmFL1MZomX
         j6GzkKLE/QXwuhEQ85kIXvPdwBNPFmiXHBR/7nFznGpwFUvOIlHkl3MFDOhlfZgTpvye
         K0ZACYDmOGpekZGKv+9680Sxx3e39ZvXAuwCwbfvYrdyySwppLf+s94G2H4qFIFhuiJp
         mGRf5ThPkfnTo32Dpu+I0Rd7IWX2k5q+SWcx/BJ9eQqEIoMjfqZVpihOaGrvbuTZeLlv
         1CrzgjJgGh/HWn+tEBGdlMzMz+nyDx63U3IHJQPkYCYjthH87JU4F1GQ2FD60i7LkbxD
         O+lA==
X-Received: by 10.66.90.137 with SMTP id bw9mr19222987pab.112.1446366300580;
        Sun, 01 Nov 2015 01:25:00 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id hl2sm17418748pbb.58.2015.11.01.01.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:25:00 -0700 (PDT)
Date: Sun, 1 Nov 2015 13:54:56 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: rdma: hfi1: Remove hfi1_nomsix() wrapper
 function
Message-ID: <e9e769aacb2c1db52a7a1eb523fa2d73a8f6d09c.1446366036.git.amitoj1606@gmail.com>
References: <cover.1446366036.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446366036.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper function hfi1_nomsix() that can be replaced by a single line 
of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c | 2 +-
 drivers/staging/rdma/hfi1/hfi.h  | 1 -
 drivers/staging/rdma/hfi1/pcie.c | 8 --------
 3 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index aa58e59..beac326d 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -8694,7 +8694,7 @@ static void clean_up_interrupts(struct hfi1_devdata *dd)
 	/* turn off interrupts */
 	if (dd->num_msix_entries) {
 		/* MSI-X */
-		hfi1_nomsix(dd);
+		pci_disable_msix(dd->pcidev);
 	} else {
 		/* INTx */
 		disable_intx(dd->pcidev);
diff --git a/drivers/staging/rdma/hfi1/hfi.h b/drivers/staging/rdma/hfi1/hfi.h
index 8ca171b..1f97124 100644
--- a/drivers/staging/rdma/hfi1/hfi.h
+++ b/drivers/staging/rdma/hfi1/hfi.h
@@ -1600,7 +1600,6 @@ void hfi1_pcie_flr(struct hfi1_devdata *);
 int pcie_speeds(struct hfi1_devdata *);
 void request_msix(struct hfi1_devdata *, u32 *, struct hfi1_msix_entry *);
 void hfi1_enable_intx(struct pci_dev *);
-void hfi1_nomsix(struct hfi1_devdata *);
 void restore_pci_variables(struct hfi1_devdata *dd);
 int do_pcie_gen3_transition(struct hfi1_devdata *dd);
 int parse_platform_config(struct hfi1_devdata *dd);
diff --git a/drivers/staging/rdma/hfi1/pcie.c b/drivers/staging/rdma/hfi1/pcie.c
index ac5653c..e6773b3 100644
--- a/drivers/staging/rdma/hfi1/pcie.c
+++ b/drivers/staging/rdma/hfi1/pcie.c
@@ -426,14 +426,6 @@ void request_msix(struct hfi1_devdata *dd, u32 *nent,
 	tune_pcie_caps(dd);
 }
 
-/*
- * Disable MSI-X.
- */
-void hfi1_nomsix(struct hfi1_devdata *dd)
-{
-	pci_disable_msix(dd->pcidev);
-}
-
 void hfi1_enable_intx(struct pci_dev *pdev)
 {
 	/* first, turn on INTx */
-- 
1.9.1



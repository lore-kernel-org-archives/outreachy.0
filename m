X-GM-THRID: 6212095586717401088
X-Received: by 10.66.161.104 with SMTP id xr8mr12939044pab.26.1446371381492;
        Sun, 01 Nov 2015 01:49:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.72 with SMTP id a69ls1051018ioa.108.gmail; Sun, 01 Nov
 2015 01:49:41 -0800 (PST)
X-Received: by 10.68.245.234 with SMTP id xr10mr13751527pbc.7.1446371381218;
        Sun, 01 Nov 2015 01:49:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id el2si1487475pbb.0.2015.11.01.01.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:49:41 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by padec8 with SMTP id ec8so8046959pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Iv/KwCi8+2sGeDobE2Oqw6CTG8JdPn6EbXmMEUqznJI=;
        b=wJl6dEWAKUw+ijeKjAYAPMkJ04s9JXeNrt4TE5oDXggBS/6YrbBhFH4s8iUYPVu+TX
         L0Csom39nZp248eWfe/c67aOJPkQwZfy5ByndpwHC9zBb+uB2otCxfNkfzjIL9xgU0Lz
         Uy4CQ+hmMlv6vf1vMS0qkP2ei2Q7um2HMpVUSW7YarW/+S/vuxsn2+Kn/ivXaGZrCWBf
         0LbVjIDypyfSoMyFGUZMy9PfaZUQhAgjMIlcRmqeuFzmZ7NlNVzG3IS0XNigoMdBFLoi
         7wtlMWClgS+y5xqufhhYLQccjIfdaitBu+RDoKbUgbrwGw4rR2WLz04Op2j3B0Jupxab
         k6Uw==
X-Received: by 10.66.220.100 with SMTP id pv4mr19904565pac.46.1446371381025;
        Sun, 01 Nov 2015 01:49:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id yp9sm17856985pab.1.2015.11.01.01.49.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:49:40 -0800 (PST)
Date: Sun, 1 Nov 2015 15:19:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/3] staging: rdma: hfi1: Remove hfi1_nomsix() wrapper
 function
Message-ID: <20151101094927.GA17573@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes hfi1_nomsix() wrapper function that is used to wrap 
pci_disable_msix() and so substited the wrapper function by a direct call to 
pci_disable_msix().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Improved commit message

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



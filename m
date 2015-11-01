X-GM-THRID: 6212095586717401088
X-Received: by 10.68.253.6 with SMTP id zw6mr13937508pbc.8.1446374677361;
        Sun, 01 Nov 2015 02:44:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.201 with SMTP id d67ls1940415qgd.55.gmail; Sun, 01 Nov
 2015 02:44:36 -0800 (PST)
X-Received: by 10.13.236.135 with SMTP id v129mr15275289ywe.9.1446374676890;
        Sun, 01 Nov 2015 02:44:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id sm2si1383606pab.0.2015.11.01.02.44.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 02:44:36 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv9so122862617pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 02:44:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LynUQDBoTydLtVumHBdPux3orectNtgQ3jecz6RzE8Y=;
        b=mi/6Il75ht64F0ol4dnkKRC3E1JdMXI9Y3rsxKWI/0YU/sfhsxyGG/YmdXltvrsN0K
         2ADodNl/DWGq5xekN/MWvWLDF5lwmr6+WKRIlgcw59WuH0jWTYjWsxCXv2nrNLWbE9Wc
         njmNDuclPYEfnknyTdxRWlkYA9utJfca9ZZCdBIaC/B3Fswy0rXdtsQDVBsEQk1rBKoD
         kOH0JwgFX6QokZqOE4c8n9NC5Zss6wvHvz9T16VW4FhlEdje5n4NluwhWg5BwUDze0aD
         SGEMbyk7UIY8F/c5oCZrnujnjegVpg2bZid6z4YSTieZMHQhZUaCloOYG/fFfzL7OXlY
         OjcQ==
X-Received: by 10.66.136.11 with SMTP id pw11mr20195pab.87.1446374676681;
        Sun, 01 Nov 2015 02:44:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id ku1sm17988846pbc.47.2015.11.01.02.44.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 02:44:36 -0800 (PST)
Date: Sun, 1 Nov 2015 16:14:32 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/3] staging: rdma: hfi1: Remove hfi1_nomsix() wrapper
 function
Message-ID: <e9e769aacb2c1db52a7a1eb523fa2d73a8f6d09c.1446373894.git.amitoj1606@gmail.com>
References: <cover.1446373894.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446373894.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes hfi1_nomsix() wrapper function that is used to wrap
pci_disable_msix() and so substituted the wrapper function by a direct
call to pci_disable_msix().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Improved commit message
Changes in v3:
        -None

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



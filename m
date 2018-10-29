X-GM-THRID: 6617780359505379328
X-Received: by 2002:a7b:c00f:: with SMTP id c15-v6mr1271137wmb.7.1540822060905;
        Mon, 29 Oct 2018 07:07:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:834f:: with SMTP id f76-v6ls192199wmd.22.canary-gmail;
 Mon, 29 Oct 2018 07:07:39 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f/NpL3kbhRaKAc+6eFE6vF+RhgmT7KdJHycRH4+VVuXIKOl0Liv4/ucDx4/iRr5I9ot3Jh
X-Received: by 2002:a1c:2d4b:: with SMTP id t72-v6mr2239062wmt.18.1540822059690;
        Mon, 29 Oct 2018 07:07:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540822059; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kk7oIiiUF6KevgvkKWCoKGiNVZ9bmTVVST6u+hbTAjsi1zcgCyCJnPW5Y72RhFe1dO
         QRLzJnY+toyHiA4mKv8AIyV7R64ET3KAWR31Uvea3HhTpGE8REKdvOQGOoeK+r6woHRJ
         ZpJzuuON4WcIA6Uatshc+AOs0nrIXMlcRwa5716xHs4xlnR09EldBB43TDhRs63BNVzz
         xBcm/T7UL0Ou/CCWkPHe1FCvIMXMzq7XiU3kHMPltBNWrW4ljMA7jsva53wv7h8UVtF2
         a4HIa0D2ssinMKSXRl+vtg/uiYV4Lv1y1lLlUylMRZ5xcDqdMGARXLNBd3OX6R0DLxnY
         X7wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=oOu/1USenraJQhZNzRI8q/uk8rvFdJpj+LOwIbR1TRE=;
        b=O0Nidh0BswbnauTwNiiiFnyZBlQ6k3x6HNCpO9sQochFTGRI/PAEp9cBLhpio6StfA
         K/VCr2IYj5H7TrlVPhNaWrd1tnAvRKsI4b/lRrNzVOLBHZeWuryXCohdiPT7c9qmoiGp
         9ZTG7/Qq7SBrdG5CpcA1rpHnAjWFPJvhsSc4AoHMSeMpyoOr1AZLpttAjazGCEUGyupI
         fQ4JA0wolxEWfJBm7rDXbP0VK9AeVNJpJ6kJpa4dhbE7uG50+8L6NEt47GCfaN5v93Lu
         N11l3+AJO8RQycwPYei36ivTlafmNfTK1Ztd8VRYhkSZRMPHgl01x79uLH/8e4e5EWqh
         twRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=AGt7I0eP;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z129-v6si310078wmc.0.2018.10.29.07.07.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 07:07:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=AGt7I0eP;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540822056; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=OoCJn3AnAuYj2PN4MF9XkQDsY/wGr8/klBcP3kasie9cygCNF+34Pxd0odEtOwcvpuyBrwcnS2KQYLX2yik+BSFS9EtcByXVo7V/AOvXw+kixtMGaFaXCtdPMTxyob6Lo5EOmBRy5z4QeRsVxUi9lOAY1kb5L4m0JK+bgqDdzL8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540822056; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=oOu/1USenraJQhZNzRI8q/uk8rvFdJpj+LOwIbR1TRE=; 
	b=X4hnnb3wVo1/nVXgpjNCGfmB/h1VLHTqAxGJQJmScd3/hpIHoxE6MYSbKo0D4rR9H6BtQ+/GIkiNbFWwKT5YstsRB+IvsJQtenuHdGXGpG6xelD60t2OdOPa2m9+fjZHsLF1d6GyhvWn9Ir2s2hJyYpmUMA2E+shkdt2RC+/sLI=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540822056;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1829; bh=oOu/1USenraJQhZNzRI8q/uk8rvFdJpj+LOwIbR1TRE=;
	b=AGt7I0ePOr6N5mzXJpWAHnzc+RJmg7jKmESjPonhgzsUowlEEUsoJy9AZjJIeisc
	j0FpvGSPJES5JAw1ZWTuOOwTt8ZK+XN/s+rRRuETjxD/OA9Tjytug7LuO5NjB5cabfq
	Y19zrn0oDQFWBDNcn+Jtvw76S62CXOtrA6ehwcEM=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1540822054498602.4043268521312; Mon, 29 Oct 2018 15:07:34 +0100 (CET)
Date: Mon, 29 Oct 2018 14:07:31 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, rspringer@google.com
Subject: [PATCH] staging: gasket Create a memory allocation path
Message-ID: <20181029140731.GA18826@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

toddpoynor@google.com, benchan@chromium.org
Bcc: 
Subject: [PATCH] staging: gasket: Create a memory allocation  error handling
 path
Reply-To: 

Create an error handling path for memory allocation. It avoid repeating
the same assignments and returns the respective ENOMEM.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/gasket/gasket_interrupt.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 1cfbc120f228..cdfb72af1c52 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -348,27 +348,21 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
 					       sizeof(struct msix_entry),
 					       GFP_KERNEL);
 	if (!interrupt_data->msix_entries) {
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_alloc;
 	}
 
 	interrupt_data->eventfd_ctxs = kcalloc(num_interrupts,
 					       sizeof(struct eventfd_ctx *),
 					       GFP_KERNEL);
 	if (!interrupt_data->eventfd_ctxs) {
-		kfree(interrupt_data->msix_entries);
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_alloc;
 	}
 
 	interrupt_data->interrupt_counts = kcalloc(num_interrupts,
 						   sizeof(ulong),
 						   GFP_KERNEL);
 	if (!interrupt_data->interrupt_counts) {
-		kfree(interrupt_data->eventfd_ctxs);
-		kfree(interrupt_data->msix_entries);
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_alloc;
 	}
 
 	switch (interrupt_data->type) {
@@ -402,6 +396,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev, const char *name,
 				    interrupt_sysfs_attrs);
 
 	return 0;
+
+err_alloc:
+	kfree(interrupt_data);
+	kfree(interrupt_data->msix_entries);
+	kfree(interrupt_data->eventfd_ctxs);
+	return -ENOMEM;
 }
 
 static void
-- 
2.19.1




X-GM-THRID: 6660891436007817216
X-Received: by 2002:a17:902:e485:: with SMTP id cj5mr1667005plb.109.1550859640773;
        Fri, 22 Feb 2019 10:20:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:467:: with SMTP id 94ls3491241ple.8.gmail; Fri, 22
 Feb 2019 10:20:40 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYn0naq3DFbfh9NGMMFAq39wmPbaJ0CDNZrdeDJooe8xbAOjVQazpRnEnt3akC1BpCjMLOW
X-Received: by 2002:a17:902:b597:: with SMTP id a23mr1704750pls.41.1550859640029;
        Fri, 22 Feb 2019 10:20:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550859640; cv=none;
        d=google.com; s=arc-20160816;
        b=pPVK3/yGa3dnL6dSEcmRRqTR3AAbnJE38j7egYbZ+McLkpX7lohur0ZHLfxt+s4jna
         Ag0CckXf808UeU96r8oykgfGHDRQamHtwNnP+GhgYzpxKfAG/aRqjDSIvPTtciupDUX9
         Tdhc6s74p1hf+g02ZkbsBnLpwySXVn0fXuuTks5TYy5jHGAyXCx/xO6ffHOd8eZXsS1a
         lncbUKO8rnEMGr13cf0R6IAuOe4Wahlca9tqoNfQA9J9xuyEY2cCJOojx1OnxAfi5L7w
         uHM+54SkgswWH2DdXGjM4qSS6H9GZ0Nj38vu1e4EeUkTZG3sFtkJsBRYKDJ7Vo/vrvzS
         RChw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=l0g3hPwI1w8U67E3VbFUuzAItZwXaNuO/Dh6NauwOxc=;
        b=X3zG01VMgzIJAcIykU8wQEKC+Tva44j+BLve0pzIMrsV0BMhIKbxmOzFAmCnswGwXN
         fkSY85oqbW45+F7+2E5U12xvXgwPAKXNfLWvTH2xzG7CHMw0Nii3pgIfuQe1yckSw9VD
         uB7KbXWyDfyMcplOrDRr8mg8rWqtpChWjzuAsa8O+5G0E2j/X5fu1Pr0SsqmEpQBAp1v
         wvKc9jilbI925xOLoJQ8WrG6DKBKEhBl13c0sWLtgmxTd3Zk8aZdchuuCT3UKDU3+7Ln
         tkBzBeX2nhUzmZl/JtayC/TaQUb4gf9s00CJcf3B7rEdOf0m3iaOs8yMwsZFqizD0tcs
         XVgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="BKzmL/ll";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e130si78473pgc.5.2019.02.22.10.20.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 10:20:40 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="BKzmL/ll";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id q17so1451671pfh.10
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 10:20:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l0g3hPwI1w8U67E3VbFUuzAItZwXaNuO/Dh6NauwOxc=;
        b=BKzmL/llwHVMz+cuvoNwh3AkNt4+lRu51yzOdDQMHLocGTxLx4XtwSoKNy8Je/3gQn
         6ya7GQWkWR94C+pf23L39dKJxopdTfXHiQcoFb3DxgoKDePKPSHUITIEfJmT9RM8OWXk
         8eP+NiUK4WAe1uc9beA85d3Subytoo64YzgC0PmFpWlSCpHVZM8zBJ2rowxv2dUyPQ+H
         E4BqaSL0Qs47TL3RcpPqUt5dZNfVytV9dC4ae7CXRj6vDoloE8slGxEkQ2JMuxoJckdk
         Ze5z4kXbKVcRVPCCz/72GIgVq3w2VSVV2CkhM6bli22K9MdVzTOcQVUqj4HHLCaPXMMV
         62RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l0g3hPwI1w8U67E3VbFUuzAItZwXaNuO/Dh6NauwOxc=;
        b=WKri5pM0DglIrSjLZb3kS6ota9GgxElHSp2DiZ0MVQkzkTXDjxq2NBoIpWSQxMcNqy
         cyjYvc7O1smIhH8H007iMPfDI5yHLR81EpUXFl11ndMV5/JPHRJYDivbyllmQuPqHRex
         urncECOjHhpqY9/30kqiIl6VuH1fLxAypatJsRfCcw5UmMfuhBe4PGEAO1g3gO4F9gCo
         uOZsUNZe1m9cQ82Ew36thmbok3PA50pqRUdqdYjz6jsOrPL/e2FhRAzbirbdqnMu+46o
         +L2XILO/GgAgM4s1nFVIW6suuP6UChDnm3WM9rRG5lVr1h5fpS7bWIddra8XzjUX3GgP
         SGcw==
X-Gm-Message-State: AHQUAubTf+xYXv3HBKK07xfCmNbfTx7o1wM+pUOGQoBVVobnvSrseJeM
	XunASl1WbkE+SdxCdo/QIn4V1hbWZXw=
X-Received: by 2002:a63:535c:: with SMTP id t28mr5275679pgl.128.1550859639699;
        Fri, 22 Feb 2019 10:20:39 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:220e:446e:8101:d9a7:2ee2:e338])
        by smtp.gmail.com with ESMTPSA id z67sm4152383pfi.152.2019.02.22.10.20.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 22 Feb 2019 10:20:39 -0800 (PST)
Date: Fri, 22 Feb 2019 23:50:35 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Bhagyashri Dighole <digholebhagyashri@gmail.com>
Subject: [PATCH] staging: netlogic: Modify coding style alignments
Message-ID: <20190222182035.GA8815@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style alignment issues detected by checkpatch.pl
Match alignments with parenthesis.
Limit lines to 80 characters.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index abf4c71..924a7f8 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -107,8 +107,9 @@ static struct platform_device *gmac_controller2_init(void *gmac0_addr)
 		.dev.platform_data = &ndata1,
 	};
 
-	gmac4_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)), 0xfff);
+	gmac4_addr =
+		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)),
+			0xfff);
 	ndata1.serdes_addr = gmac4_addr;
 	ndata1.pcs_addr	= gmac4_addr;
 	ndata1.mii_addr	= gmac0_addr;
@@ -134,8 +135,9 @@ static void xls_gmac_init(void)
 {
 	int mac;
 	struct platform_device *xlr_net_dev1;
-	void __iomem *gmac0_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
+	void __iomem *gmac0_addr =
+		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)),
+			0xfff);
 
 	static struct xlr_net_data ndata0 = {
 		.rfr_station	= FMN_STNID_GMACRFR_0,
@@ -153,8 +155,9 @@ static void xls_gmac_init(void)
 	ndata0.mii_addr	= gmac0_addr;
 
 	/* Passing GPIO base for serdes init. Only needed on sgmii ports */
-	gpio_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)), 0xfff);
+	gpio_addr =
+		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)),
+			0xfff);
 	ndata0.gpio_addr = gpio_addr;
 	ndata0.cpu_mask = nlm_current_node()->coremask;
 
@@ -214,8 +217,9 @@ static void xlr_gmac_init(void)
 		.id		= 0,
 		.dev.platform_data = &ndata0,
 	};
-	ndata0.mii_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
+	ndata0.mii_addr =
+		ioremap(CPHYSADDR(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)),
+			0xfff);
 
 	ndata0.cpu_mask = nlm_current_node()->coremask;
 
-- 
2.7.4



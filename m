X-GM-THRID: 6614906584085561344
X-Received: by 2002:a1c:d8:: with SMTP id 207-v6mr1252630wma.12.1540152957125;
        Sun, 21 Oct 2018 13:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:208d:: with SMTP id g135-v6ls1246147wmg.20.canary-gmail;
 Sun, 21 Oct 2018 13:15:56 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62IEeJB0gotNV5OtuOXG/mJ5a5MwbR3lGn6+/o5fL2eUefuU/47I/2tONSQeS1ki8sD3obu
X-Received: by 2002:a1c:9c55:: with SMTP id f82-v6mr1266468wme.14.1540152956436;
        Sun, 21 Oct 2018 13:15:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540152956; cv=pass;
        d=google.com; s=arc-20160816;
        b=qa6FxIvGSogks2PcV2rSfdrqo3ECU2+1xwhAKjILDJs77jOZGMHJYURSMoWazFzcd9
         YtMtqfDs9CR7Q8kQKGShjzWzLHnwgACVAf6UU9i4F/jmlisySCEMQeLze/D0RNbZCAtH
         nnOMqszx4WKO7W2JFcNemGNZGKfehnG/d5AMeIfoFAvLyod371EKvxAyN+Od6yAUvvLh
         hLF87W90br9ny8SSWuts5tpkn37opmV3D9HzaSSH5r7aRc0xNZvjKV93exPZn0L3qJQl
         52OwQO9lI564+4S/Iwyj43fvZIzNwpp012VKjIF5u1TuEUHwa3bXLgXSbGu5lKJF9hXJ
         Nh1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5GI1W0wljUh7lapY0LH6woiUoun10459mo12GEFWWNU=;
        b=hjOONWmXeMSxEVYVNnNTVzdyHjSWGNxPL+nBmZhLvns0gIsRQqjrmfgRhyxg3UME6q
         fiWPSDEpyv0Cv0e3v/Amm0w1j/bsS7hL02HzNzvr8kez6U3Q4Rca/XzWwQgESaqf4i5K
         Dhv8LcuoCV/ES46vgz0o2U8knpRbXXqhjnEX4viPYRgr791o7hyOuUmymXF3YZU8SlHl
         lCYQKVyfmLCGIHFOkDk+N4vXeavbLxPNGz0ERsa7beHs4epg573djAFtDUE0b8IW6+oW
         +ks/oEs0reXYMQshinwGlHEHKwSCAK+VhfAQFvxkKxHZQeM/Ju9jgQbxp8aP/3uwX+rj
         2naQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=HkKSExLb;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id d9-v6si68244wrj.2.2018.10.21.13.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 13:15:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=HkKSExLb;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540152955; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=CIsfxy+xt32f1s3Q3jT62NbtgmiVqNzKARB3Zm96xuJfikvcTBXOZBDcY5ggE1P0VzyPOIpe7KGXmd40DySY6Jynq6RDosvvMqe6CkspTOSwtMw/KE69xqEAxc6JT6HzmbkhP0LraxUDumqggj4mk3kfUI9WnxGANca0hsUgUi8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540152955; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=5GI1W0wljUh7lapY0LH6woiUoun10459mo12GEFWWNU=; 
	b=iaBknl//pkNayxqrSQ4j8b3aqRjTYDvmhEyHlT+0XGAPnpJzWYWGs4UY2bywH2aIggHevYjvIm6pzv0EDdvsgH70uRHTKESXoVGmBNCzXvujzoZGEHCB3lsp1Yr46z2hZTCpW4OLHKKgYcDoXoWeVItjRq2wgOCcM5LpEZBQva0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540152955;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2034; bh=5GI1W0wljUh7lapY0LH6woiUoun10459mo12GEFWWNU=;
	b=HkKSExLbNiWV30uFp/x/BPOsQSyAwsr9sbeI2CRu1ao4Op2wMx7EcrkuLkPzxQBh
	rL0U45vwvGhTbm3J24XZytrIug1/qWr/na8ktOeU83BEsN8bQBo0+RjGSIYHXvQoP5f
	svzn6MCx6+bpyBcLzZXixuiyuPlklEn+Dc72hiUg=
Received: from kvasir.local (cpc102380-sgyl38-2-0-cust101.18-2.cable.virginm.net [77.103.16.102]) by mx.zoho.eu
	with SMTPS id 1540152955206129.80418227570362; Sun, 21 Oct 2018 22:15:55 +0200 (CEST)
Date: Sun, 21 Oct 2018 21:15:53 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: netlogic: Cleanup parenetheses
Message-ID: <e7defe7da804d867532182a1fcb387a9f41f9482.1540152794.git.code@wizofe.uk>
References: <cover.1540152794.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540152794.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Cleanup mismatching parentheses.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/netlogic/platform_net.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index abf4c71ee66b..1b1a8a0c9b72 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -107,8 +107,8 @@ static struct platform_device *gmac_controller2_init(void *gmac0_addr)
 		.dev.platform_data = &ndata1,
 	};
 
-	gmac4_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)), 0xfff);
+	gmac5_addr = ioremap(CPHYSADDR
+		(nlm_mmio_base(NETLOGIC_IO_GMAC_4_OFFSET)), 0xfff);
 	ndata1.serdes_addr = gmac4_addr;
 	ndata1.pcs_addr	= gmac4_addr;
 	ndata1.mii_addr	= gmac0_addr;
@@ -134,8 +134,8 @@ static void xls_gmac_init(void)
 {
 	int mac;
 	struct platform_device *xlr_net_dev1;
-	void __iomem *gmac0_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
+	void __iomem *gmac0_addr = ioremap(CPHYSADDR
+		(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
 
 	static struct xlr_net_data ndata0 = {
 		.rfr_station	= FMN_STNID_GMACRFR_0,
@@ -153,8 +153,8 @@ static void xls_gmac_init(void)
 	ndata0.mii_addr	= gmac0_addr;
 
 	/* Passing GPIO base for serdes init. Only needed on sgmii ports */
-	gpio_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)), 0xfff);
+	gpio_addr = ioremap(CPHYSADDR
+		(nlm_mmio_base(NETLOGIC_IO_GPIO_OFFSET)), 0xfff);
 	ndata0.gpio_addr = gpio_addr;
 	ndata0.cpu_mask = nlm_current_node()->coremask;
 
@@ -214,8 +214,8 @@ static void xlr_gmac_init(void)
 		.id		= 0,
 		.dev.platform_data = &ndata0,
 	};
-	ndata0.mii_addr = ioremap(CPHYSADDR(
-		nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
+	ndata0.mii_addr = ioremap(CPHYSADDR
+		(nlm_mmio_base(NETLOGIC_IO_GMAC_0_OFFSET)), 0xfff);
 
 	ndata0.cpu_mask = nlm_current_node()->coremask;
 
-- 
2.19.1




X-GM-THRID: 6610740153497419776
X-Received: by 2002:ac2:4259:: with SMTP id m25-v6mr879907lfl.38.1539182884910;
        Wed, 10 Oct 2018 07:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9204:: with SMTP id k4-v6ls389795ljg.31.gmail; Wed, 10
 Oct 2018 07:48:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV606MoDQwJMggq66lR4+E2xVWuJXa1iK/dY0WDFYvWNMBTSKWhe6l5r+5UTTEE1Uw5ORDbq0
X-Received: by 2002:a2e:7316:: with SMTP id o22-v6mr971850ljc.19.1539182884291;
        Wed, 10 Oct 2018 07:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1539182884; cv=pass;
        d=google.com; s=arc-20160816;
        b=mDaB2ZDzS6IlkaPDA8cisD1xRPHFRe83GNu2OLJCXjbEasXIqV7+Ck1ZcpJd7wZgYH
         rGps05ZXCQULQuUEEbIMUySZRR2a9UHHO0tQIJPq1hxbOVRgK1ikDOAsZdicnAsTR6uq
         naT3E3uyhBB2B7FKwXm1tPS8igSZikhCByTGo0J/oLtK2Jro+wN28bEtuAd7kUunYVyB
         UUaj2f5xYkoYUZoru7bA0miKzM7pU6iP1l7cST86aphZG1F4ncRHCJMiGBpRhXyn7tWp
         qHgVijtByjrutWd41UUZCF/iV2xi14cvTCWSwPkFVmDLuSY8ABx9XrQ4beMFGK0a2T8c
         yVHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kLB9dbgos0yObT3tfi+YyzywB8aJoKhG+zXCQKeNy2E=;
        b=k+pxYF7pV4qx4Rcivw8O+HaWMlCMYUIEwbmpUOC7y8u1zeSgBuKEonrSsG5b5CXdh7
         wMtnwQ+GQuNrWK6qBTwSU73xxcKieCf8lEzxIGmzyIr8i3Lbgust/jeGCkFNXNnnX7St
         doKgjHQJ7uCIZKCYM0cDsPJOj9IlCICdYhDH3BTcTK7uHCyR6DJUDcK7H6yr4fzohe3O
         wiI9z2yn5VP9392iKvcMYCL+cQ8xv2KiLy5NfpHZH5exClQdzfXd5Oz4zSGNSzzNG5P1
         PsQwZ83FUoAPH86TqJq8BmWQbDj26E0iAg/l0KqV1N+VPE5yICC7wF24CN9f7bc4k8DM
         W2+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gHGEAXEI;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id a199-v6si1087191lfa.2.2018.10.10.07.48.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 07:48:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=gHGEAXEI;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1539182879; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=HnnW1/8rzg50NLxumtwxijXVLfNXqL/b3n3NbxA3w/pNAgt2sW9NPlChYBCktRuIIPsGj24dL0SGYzpeb7XdBYrfRM7o4qYiIyX05rj38p80xkxhOF11/kkf/uYoyKU45/QebAycy0QXs1C+Of4wpfZyiCqE13Zc1JnRzlKyVXY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1539182879; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=kLB9dbgos0yObT3tfi+YyzywB8aJoKhG+zXCQKeNy2E=; 
	b=IeGX12nk1PZozRh3DPYx6pNFsB8KeRCN4hr4uV4B/YdbYS8A8VMS2Jhz4O+ewIy9GoBtun+LphHHUFVZ2XgKR+T0V64dCMV9akV/Pp4ny0euwAOA1lYrC/vkUIX8gTJcYKz2NSGFkMGZ2fARHdWcWuRLK5B+bXIxq4YgaklU/wg=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1539182879;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1688; bh=kLB9dbgos0yObT3tfi+YyzywB8aJoKhG+zXCQKeNy2E=;
	b=gHGEAXEIe9yF+FzAze4+QThgkgHfZuif2P/dCHHyAXQd2Pw/MLxmrSVcdi3omDvP
	YpsC3m3+uHBR7qiXR9aSVMfXZ48ui4nFq5INd1kOLW/kilhcmq5Vxll1sNSGPi3Ug7G
	IYYggtYKGgVg6fx5qRGXoOsCLLHbYAyAp6ycE+po=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 15391828773776.610105958816121; Wed, 10 Oct 2018 16:47:57 +0200 (CEST)
Date: Wed, 10 Oct 2018 15:47:56 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: [PATCH 2/3] staging: wilc1000: prefer 'help' in KConfig
Message-ID: <8a2afba747f7567909992196e9d3fb21f7551fa1.1539182155.git.code@wizofe.uk>
References: <cover.1539182155.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1539182155.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Fix for a style warning using the help without the
deprecated help included between dashes.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/wilc1000/Kconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/Kconfig b/drivers/staging/wilc1000/Kconfig
index 73f7fefd3bc3..f9d3ad41c862 100644
--- a/drivers/staging/wilc1000/Kconfig
+++ b/drivers/staging/wilc1000/Kconfig
@@ -1,13 +1,13 @@
 config WILC1000
 	tristate
-	---help---
+	help
 	  This module only support IEEE 802.11n WiFi.
 
 config WILC1000_SDIO
 	tristate "Atmel WILC1000 SDIO (WiFi only)"
 	depends on CFG80211 && INET && MMC
 	select WILC1000
-	---help---
+	help
 	  This module adds support for the SDIO interface of adapters using
 	  WILC1000 chipset. The Atmel WILC1000 SDIO is a full speed interface.
 	  It meets SDIO card specification version 2.0. The interface supports
@@ -21,7 +21,7 @@ config WILC1000_SPI
 	tristate "Atmel WILC1000 SPI (WiFi only)"
 	depends on CFG80211 && INET && SPI
 	select WILC1000
-	---help---
+	help
 	  This module adds support for the SPI interface of adapters using
 	  WILC1000 chipset. The Atmel WILC1000 has a Serial Peripheral
 	  Interface (SPI) that operates as a SPI slave. This SPI interface can
@@ -34,7 +34,7 @@ config WILC1000_HW_OOB_INTR
 	bool "WILC1000 out of band interrupt"
 	depends on WILC1000_SDIO
 	default n
-	---help---
+	help
 	  This option enables out-of-band interrupt support for the WILC1000
 	  chipset. This OOB interrupt is intended to provide a faster interrupt
 	  mechanism for SDIO host controllers that don't support SDIO interrupt.
-- 
2.19.1




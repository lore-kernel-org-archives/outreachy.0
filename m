X-GM-THRID: 6610739859399114752
X-Received: by 2002:a1c:da95:: with SMTP id r143-v6mr65378wmg.6.1539182816286;
        Wed, 10 Oct 2018 07:46:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9aa4:: with SMTP id a33-v6ls1215563wrc.25.gmail; Wed, 10
 Oct 2018 07:46:55 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62acCuS0guUNx+Ie6lqKgoyjWtOTrhuNEOE5gF6xS6ZaYW/F2b/bTZBYX1GmsTxPLVEnS6r
X-Received: by 2002:a5d:4f88:: with SMTP id d8-v6mr60621wru.29.1539182815205;
        Wed, 10 Oct 2018 07:46:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1539182815; cv=pass;
        d=google.com; s=arc-20160816;
        b=kN7aEu7k8nbJq6fc3m4Cx81V3mifBMdE50BiHJo+dc52t+vA5hD99VNmz0drRHqRgK
         TBxlQaRDk9z+JjnuEoiMmmqQVqVH271s011dyYFBCrs8qIKK4GeVu005aO17//UrfT0v
         J3dDXN/viYvfOjoaOtAqx6A2cJ5N/sAlW3VZB+3UBRd8mxLaO0roDQFIodsIx7bbeNa7
         SuGBS5282C6yKo+k5LbxLbl891C+Sl/gWhCsyh84NEmqVOl92AAklO1VBG8AP3cJAPEF
         V/hpXZ4Nzmp675SthgegYA4in6uCIYkXuCd8ip/4JWyFlvEL3POe0rfMhCEKUAUApjWn
         /Xzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6YBr/IsA2ggUhB2M1hsRuj5WaM6kyPjpL9f4/PhD/pc=;
        b=JaS2jWslBGce2WbevvLwwgd4zu+9jWbI5ojAkZXh2/40WOfjFB+xWD1eh5ZT7NnCoy
         5k3Gmd/JskjtkGAl3iqzHakG0LD+ocxQrn/ccEaTofiLScNsssxNFuOqkA7l3KqqPceF
         YblnL6PEig9zMys6PmWtti93Yy6eKxW0gk+0SOYd0NoEZrdSKtXlA0osT+5GaW4KZiNe
         zPjqr6EIKR2xD8ZuYzn7utgi9dKFOHinbrzJ2LkINylgitrC3aWPckeEpUwC+R9bXGRg
         vTbLwfk5iTZ5/lYYwYaSJ84YA85FA1m9NdLcr+SIMQVgZyl217pmjbwQvNghTXbcg5cb
         hlHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FLJXZ8DX;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id l184-v6si728699wmb.1.2018.10.10.07.46.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Oct 2018 07:46:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FLJXZ8DX;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1539182809; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=MKRIHWmBoTl3PQbGX8Em4u02/cej7mtoWArtuugCsg5Mse7hqwlso08TdKifXAWhKcfLE57lS3nwuaAPXAkG7Cyh+35M//sFlOqmmZ3gFrR20XvBQqTR6MszEX06b8ofUnJAqjSBDG+Z+462yALZcV/bbWtM7XYYPfyZ1egWbBM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1539182809; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=6YBr/IsA2ggUhB2M1hsRuj5WaM6kyPjpL9f4/PhD/pc=; 
	b=IzP4zqAoklARj029PUpzw3Jv5oX5d3VE+R2YQDRZ08+C7e0hLt5zDVPcrFSzE9qUveMvmCK9KpXy/u0kC13WcaOAPRMzhM36kuL+OyXgZFSCchdokmfllCneOINXIPvDNt+nMXStNL3hBIz6EOSgCBBOXKPdBo8cuZQCf1rM5s0=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1539182809;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=620; bh=6YBr/IsA2ggUhB2M1hsRuj5WaM6kyPjpL9f4/PhD/pc=;
	b=FLJXZ8DXpca+cSLa17fjhWl2QwLP16lnUHvoqVmUGIdrT3d+8EUaDO35JMtMErjJ
	tfMuNrzumaSY4/9DWplS2hbsloGlgwfIKDHbRpfX+u0UrLazYBmpnE5vz/JG+E96pJS
	NaVYKIIBLGXig9CxEPNJbc2aYbVF62+gmEB5++R4=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 15391828078114.144308637057861; Wed, 10 Oct 2018 16:46:47 +0200 (CEST)
Date: Wed, 10 Oct 2018 15:46:45 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: [PATCH 0/3] staging: wilc1000
Message-ID: <cover.1539182155.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

This is a patchset that fixes all the source related issues 
that were reported by checkpatch.

Ioannis Valasakis (3):
  staging: wilc1000: replace udelay with usleep_range
  staging: wilc1000: prefer 'help' in KConfig
  staging: wilc1000: Change struct members from bool to u8

 drivers/staging/wilc1000/Kconfig              |  8 ++++----
 drivers/staging/wilc1000/coreconfigurator.h   |  4 ++--
 drivers/staging/wilc1000/host_interface.h     |  8 ++++----
 drivers/staging/wilc1000/wilc_wfi_netdevice.h | 10 +++++-----
 drivers/staging/wilc1000/wilc_wlan.c          |  2 +-
 5 files changed, 16 insertions(+), 16 deletions(-)

-- 
2.19.1




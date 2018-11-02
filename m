X-GM-THRID: 6619077441472167936
X-Received: by 2002:adf:eb85:: with SMTP id t5-v6mr984019wrn.32.1541124061260;
        Thu, 01 Nov 2018 19:01:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:85d5:: with SMTP id h204-v6ls306645wmd.19.canary-gmail;
 Thu, 01 Nov 2018 19:01:00 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cgKRSQEc5VSQo3FJvFb9rLwYWgd0XQe2MNUMDtTbksp8xZjZ2o2oApsEaT8PzNQte5GuLO
X-Received: by 2002:a1c:384:: with SMTP id 126-v6mr1015718wmd.9.1541124060288;
        Thu, 01 Nov 2018 19:01:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541124060; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xbaqd+T0MfbL6j37Eg0RbSvN4hts4eUyHq1hQu8eHrbQpBenqplj5uyvqD2mVLQQt7
         6fy2eNzwsSQxkNV/zZ2ld1cnVWKwmTi36+itUDneTT+49nmbjQxV6YlIJDIrIwxgSjQE
         uCGCl6uWv71mhCZznaKYfDs1ThXax0mxVTaTgbjv62Aek+fLZVSyRAxR8hjFWzhnfCHj
         OjMxhr7YAhU88zfgWS0Nl2SGMmAKJKlUQ9Y9FD6dxMpBKCpF0qkeZRlbHCnc4hBwzZt9
         HfR1IK2cKOihYLsraqW/W6tl92s4vSvvZQWE4QtRPO60tAC2s2NL1i4heCfYicIb57au
         uIHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0DiF+CtyXzjbAaAzyDbfqYqMasRPAHO77fL1Ks1KDgE=;
        b=s6b7kMJedTbumjkU/C8pHCGrE0SZhjIMrjblvbO5J+zTM3RIhFWJyZ9KDjqb3qJ9Cn
         um+yFsCnwp5iD3oFq025xrlExSB8beAnvsHxHQ128T7DDVc2QKto80ggiZllbTHeIJP4
         us1mDlh/IgIxjVUJXzfJr29B83NutpSZhSKhUlb4XnaNJLIN+gJGMpc/SE/8wqFZCdHj
         eBxps78tFYl9mgN6QIK15y5Pj9KmfabR8NMfoBv1C93VYuTa7/kWtZvsaWq4kZzZoTMv
         myMYiwSfUIVaUA05jiOQ5Vxq802q4LJJjFjXfRLj9csgXXlAcYAeYrPr0HPPzKmoEXdj
         W1/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="W/oeJyTU";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 191-v6si2547wmv.0.2018.11.01.19.01.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 19:01:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="W/oeJyTU";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541124058; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=N+16kNl+baDm7sKOhaUwB7HgCPDEgKscgbJ5uYXz2FC2Ke67/g2Mtiyt7Mm/f/5y0hCE2bIMMZb/lRtNk+BFgYZa9bNiiY67DBS7qsdQAMX0ZsgqL5tXfgLFbpiUAJ6LOV0bE+cVa0FhLxBWA0UZLKNtm0LtpJPVrXo5aEKqZdM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541124058; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=0DiF+CtyXzjbAaAzyDbfqYqMasRPAHO77fL1Ks1KDgE=; 
	b=GP3/hn9CXlDH5DY3qPcdrxM5tOEOW6dZrJbha8zdV03qSoPC5Sgt+FgKAcAIOKJaBIyB3SOc5TwoSgLF93PKDvSXfmwPzukW+O7LNPtHYBn2wM4E0MMLUoCCOlGmgn8A9RqbuRsAmCtlfC45pAaI//eZwN409GUtSQGC4sqatsY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541124058;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=421; bh=0DiF+CtyXzjbAaAzyDbfqYqMasRPAHO77fL1Ks1KDgE=;
	b=W/oeJyTU3aIZbwdIt6eckGSs4A4OyD6FQ1nFuj88NiL0kfJHzgcAh5k2VQ3s8xYZ
	0aPnGz6A4ctjuAOtVVOE83cRDQk/6ulwenISbnkYbB0JR9fFt1+JKYxHeoVVF3w9omG
	UCsORoNvK/bUAfhxOQhlUbkJadtGriJsbyP8641U=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541124057480704.6499789628691; Fri, 2 Nov 2018 03:00:57 +0100 (CET)
Date: Fri, 2 Nov 2018 02:00:56 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/5] staging: greybus Various stylistic errors
Message-ID: <cover.1541123999.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External


Ioannis Valasakis (5):
  staging: greybus Fix styling, parenthesis matching
  staging: greybus Change comparison to NULL
  staging: greybus Add a blank line after declaration
  staging: greybus Match with open parentheses
  staging: greybus Fix SPDX identifier

 drivers/staging/greybus/control.h | 5 +++--
 drivers/staging/greybus/core.c    | 6 +++---
 2 files changed, 6 insertions(+), 5 deletions(-)

-- 
2.19.1




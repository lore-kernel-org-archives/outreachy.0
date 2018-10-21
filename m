X-GM-THRID: 6614920129411022848
X-Received: by 2002:adf:f8cc:: with SMTP id f12-v6mr219538wrq.2.1540156111287;
        Sun, 21 Oct 2018 14:08:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8b97:: with SMTP id o23-v6ls6800372wra.15.gmail; Sun, 21
 Oct 2018 14:08:30 -0700 (PDT)
X-Google-Smtp-Source: ACcGV602TBjizY7S8ej5R7PcWfVPjYfvDW5Hu8Zf7EgIlkaPUWixJfKHVkvLPuT6g8HNOWoBx2uZ
X-Received: by 2002:adf:81a1:: with SMTP id 30-v6mr3847537wra.13.1540156110337;
        Sun, 21 Oct 2018 14:08:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540156110; cv=pass;
        d=google.com; s=arc-20160816;
        b=DzzSTLJ6xVmYSpHI/RzKYnTv8YHGcK+XD32WrtERyRPTS2Nv4du8mvMFaS6SL/E4XR
         LXpFT1QsoGARjveK9ozJhMXIAEEodxWRzNwNDSw/2FRFPqzQoKYVXCqXjoxy/bc/N9oh
         dJi1O3kFDSIX+5bZNpdfrBM0sWmzyjOw74G/MbnQL6XcEH1JXudfnt1DaQJdylcKku1h
         oJz+8jbG+yOBWwBIqhJX12+uBl2Kt32gvGYigpfjPKD5qvPjmTQS4ngkoBWg6+QEeTbm
         UClGu9axwnnc8+lvQ2pbZHnTGgPfRnUKIdaTldIv87UKQgLuwd4iuXuCn49ojsa3q+hC
         CAQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=1Wckb3nZryhCLYOaR/7dJ71ObcumW1hEwmIhUbR5E0g=;
        b=PpTsy1XdN9kHumU0n4Uw6aAuAqmlQHcqquPNRld8MkAjlpUSYGY7Bixg7gRn6TD4W3
         /bx8nd0USF2s7sHdgoAuEgIvot4iZJC9GR1mCb9zrkTIZZ6UCAO2RhBPtPauyLLMFJbh
         dsWP/voaeios1APTLcurGquTmyWzvkJTscMqUA4AB8DxLszauM9tikmqz9P2T/7lgZXA
         H96NcBI/HZ/6dGZzDLU4bqcGYIMb8AO2YacQuWghMM+BcJE2YfjeHqddacRf1alMLy1l
         XbQueO5pkqpGaO71a6NZ3Qq4czLKxi0bQrfpXvS2Yo+KnF7pPIMzKkXxP/dQBSbKuAjJ
         Od6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CFw3Smgz;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o52.zoho.eu (sender-of-o52.zoho.eu. [31.186.226.248])
        by gmr-mx.google.com with ESMTPS id 204-v6si490394wmw.3.2018.10.21.14.08.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 14:08:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) client-ip=31.186.226.248;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CFw3Smgz;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.248 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540156108; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=T02q4Wp+JC4TCxJQpIuRXtZrrLf38ilNDQseBVHwzmKjLG5MSzhH3L9N0oEv1AiU6LjbXzgaKBLgikyqaGEYvZtLw9RWv747NBpp8WFNYmFOG4hfAtcgZ7uriZAGPDhLgsf+5fZR8PlsVZQS585ifRMhD5lf7KOwHkdVtlzzxjs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540156108; h=Content-Type:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=1Wckb3nZryhCLYOaR/7dJ71ObcumW1hEwmIhUbR5E0g=; 
	b=A4xjcP3V2kcPKbE0foLPE7A5f21y9woNgc1NQoWGqsoFI9oOImxOJo7grsOhLen+55aVss9fdkepy6IHREPUhXHfjHNMaWkeVSMnxewy2T1uxp+jy1iGJPLaRNpJL4Nw5e98bojMtxcVxgVH1HDlk8BT63ufjT+2iY+IBP1C9Zw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540156108;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type; l=296;
	bh=1Wckb3nZryhCLYOaR/7dJ71ObcumW1hEwmIhUbR5E0g=;
	b=CFw3SmgzU3WniKYfVBh38BqPl+9u4sJl7Zz0kNhK1AxTyk0lQwbK5YHtwvjU2AWX
	BDRG7OX8gdbW+etpmpRcxI2dy8DDzToRMCc+bAFbjuQLzEAoG69TAuFH41sYkj3ltCn
	5N1KiXl3GfKXdkcj2N/kmcfizfvcQOKsXKN8Ggsk=
Received: from kvasir.local (cpc102380-sgyl38-2-0-cust101.18-2.cable.virginm.net [77.103.16.102]) by mx.zoho.eu
	with SMTPS id 1540156108653358.54244245503173; Sun, 21 Oct 2018 23:08:28 +0200 (CEST)
Date: Sun, 21 Oct 2018 22:08:27 +0100
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: netlogic
Message-ID: <cover.1540152794.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Ioannis Valasakis (2):
  staging: netlogic: replace old kconfig with new syntax
  staging: netlogic: Cleanup parenetheses

 drivers/staging/netlogic/Kconfig        |  2 +-
 drivers/staging/netlogic/platform_net.c | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.19.1




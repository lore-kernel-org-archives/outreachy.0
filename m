X-GM-THRID: 6620552608364888064
X-Received: by 2002:a5d:5287:: with SMTP id c7-v6mr2391925wrv.14.1541467525860;
        Mon, 05 Nov 2018 17:25:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:93e1:: with SMTP id 88-v6ls4694850wrp.19.gmail; Mon, 05
 Nov 2018 17:25:25 -0800 (PST)
X-Google-Smtp-Source: AJdET5fS6i2vIkuLaf9pVCkjuzEAkj1uU31L6lXUuZU6d+OIUGdypoIu7Ddnwb159ReumkK72/S9
X-Received: by 2002:a5d:4a89:: with SMTP id o9-v6mr33704wrq.32.1541467525232;
        Mon, 05 Nov 2018 17:25:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541467525; cv=pass;
        d=google.com; s=arc-20160816;
        b=anabJ809VfMp45PVCptFaxsNp6pyhYKMRW1CM/lpKjLV17Xo1d9OAvYbEqseQYqfu6
         6phYYclikJ9X+Y3h2tysel49ABAjVLZcMU3Jgzkx93s2e2KbjHOee4WCj+2Dq5oiHg0F
         /Dpp2C06nnKXIhiu0xuzchSKYUWZC034ln3jOs/bRd3wm8z2XEBrML6EpkgiAd6W6st5
         UcCl736bct32ABrDSAxoNgGWl7Gbqq3ENV5KO5u4RcYQamJTMzdD+tZ31kNZq7j2LIvv
         sv5Wb+D3SneiKNZQiuLEfFgAlNhSub1G481HYVU47bzm6wdZVx31Z87vUGAq+hjNpFwj
         lQGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SvXvEr4FRTQzWDB9XnyYVMgqMWvveHOArz+2Codf04c=;
        b=ap7WLG1rzUOfHiEOXhWEYd9T1hpNu1CoFCDBPiyVGDxpPoOkjBFbae+9bo+nl0S9oC
         J/gNgUZBr911Ombxtndlpkl6MvG3CfITgtMOE6xK3Pav37K6Jaq3VH9lnQq7rIaWboYC
         XXKCCEFZCsyi6dwgwVsbYEIjrSjqdjNIRSOYHHCz6GXj7GNB2k4E9fwZgdRRQaon3x7g
         ner5KNglxdhw1jyDEJIFRnJM/+9G/8jdqtpGiSa/lVAnqWIFAg9kf9kb7EJouxK35joN
         x+eawzEBbOFWMqBS3rAdUlTg/O9Ffba3nR2MCOEffTi2mMj+LSmZeDZnjGyvfmfbAl4p
         hcGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CbLnoBy9;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id o9-v6si14137wmh.2.2018.11.05.17.25.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 17:25:25 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=CbLnoBy9;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541467521; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=PBUUSorIH/vwxWjT52XkeeYq9Jv79HBycYpPMEcNQVHPHEPgGc/jf1p43UXg/Nbqe5W1BbkFUIhFgpv89uRJhmbiWBwG0Do5UWPWWwEmexhNIaXMFguVgMogSGOgOSMVRYVu0769UGN40vQtGR6fwihzpP0xB07FLbLZHB6DtYw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541467521; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=SvXvEr4FRTQzWDB9XnyYVMgqMWvveHOArz+2Codf04c=; 
	b=ON+7Hd8L/+RruTHyQsF1b1z2neLNOdJM2CmE0+SijtjMqR2DyhSgmmQhWKDBHfmzXQBo7/+WR26VuvagwJkeHGjRB198zespuztdNJLiOjiHtZ+U/q4z3BREUyOK5A128u5ZMDgab5vpegSnPzk+XAMplf/mhNg4XekclMNfmWI=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541467521;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1002; bh=SvXvEr4FRTQzWDB9XnyYVMgqMWvveHOArz+2Codf04c=;
	b=CbLnoBy9X0do5tiy46xS54HN7j/RkzMgdmmIJQxPs9ONUF3Xs9arhdjFFuSCKCKN
	/6tcz+u0OUcGPxkPpPeDojLBNGICfq9X/pEr8xlxBjVBB96pnn00II5pxIGi8TL+HGc
	agks5HpNoV3J8sm8THt2SBWzu8He9uzdKo5Joxq0=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541467519797197.63026011565364; Tue, 6 Nov 2018 02:25:19 +0100 (CET)
Date: Tue, 6 Nov 2018 01:25:18 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: bcm2048: add SPDX License Identifier
Message-ID: <20181106012518.GA26066@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add missing SPDX License Identifier. Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 1 +
 drivers/staging/media/bcm2048/radio-bcm2048.h | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 874d290f9622..fe87d0a90687 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * drivers/staging/media/radio-bcm2048.c
  *
diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.h b/drivers/staging/media/bcm2048/radio-bcm2048.h
index 4d950c1e2e8b..22887a075257 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.h
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * drivers/staging/media/radio-bcm2048.h
  *
-- 
2.19.1




X-GM-THRID: 6620727945134604288
X-Received: by 2002:a2e:9cc8:: with SMTP id g8-v6mr1156873ljj.29.1541508348384;
        Tue, 06 Nov 2018 04:45:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d05:: with SMTP id t5-v6ls997398lji.23.gmail; Tue, 06
 Nov 2018 04:45:47 -0800 (PST)
X-Google-Smtp-Source: AJdET5cWtV1IH3oLm/f7fBleMD8C/7shI2uqWgA7Msy2Pd9yjf9bqUoKWhWqFNAPRU1w1TG6Ibpk
X-Received: by 2002:a2e:1ce:: with SMTP id f75-v6mr2436263lji.11.1541508347330;
        Tue, 06 Nov 2018 04:45:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541508347; cv=pass;
        d=google.com; s=arc-20160816;
        b=cNA/KlIVaaBIMHZ5fWKjUkdVJ5JXpJBjbd98itgyK/cguM2MEf34WWNfG1xduB6dF7
         B+8PWIGACdqzCJfJlsdPU4cOXpcNZl+I6NpPy3ioTFsxNMlLDIKf1k+ypJzPJD8AO8YV
         z2z3QNfJCwHj1sbIEe73Lqfxm0AopnUQcGKG47KxDIpwtqNxM3S2JVhpFsnVhniT+2iU
         Kw5FcWPzqBqaOxWo4/r0nhb+RIeqVZR/dY2DhSqAaIPnRIeXmfOWWSjc7vCv3s8MtDK9
         giHNxureAWIE77G+KoX69sBytmo0i2M13Jc9JVk2lpcgMw4P6LWfRRHySakCvVJigF58
         MSbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=DDX8ymHyH3tl2S2LOCgYasPjYaVeYUYVgONP7Ls2QXE=;
        b=CdDac4cEmqo64rOMQQFmf1AHfWa1rcUboCQZnMof+KReKC7Mi1uDRIhWA9sKAMsyUT
         NZ7Vc+TGVYlhjTodAgXzIq2LTM2A4I91iZHVlPHWWkXuvT60+WsPX9Rvc6mm9UkiT/aU
         P033WgTdkdzzr1+kI5/gYfR1DyuSrfZF3oS3mdPDYILN+waI0Sq0HM1WZytvgRm0ghD0
         bynFzzZQUP6pYDwo7s9cOGEBctgG6Yn8sJOZhcAPiDdAg874HSaU5D4AUQXsuE3gdWL0
         W/O7RvE0b/Ac6RbKmv+Mm3rGFox7PpuitZU2JsFLpvdCZW3KLHC04yHWyWc0XRyZx0nh
         4Atg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=PiivIckD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id l5-v6si565250ljh.4.2018.11.06.04.45.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 04:45:47 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=PiivIckD;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541508344; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=GtRgmG8diKJOtRhA4EV6BZ5flgUXvZdI/wBN0Ul4oBPuFdFR7Q2+2LSKsHYbpy/YOSYPAiKSGsOfO7aMF95yGP3fT8Ile9slumVMtrkrB85J/H4CzbOcSWV+j/nPO87LlAa/hW5IIktbVh+q/Y7Jhr42qIUBos5J7+78oAK5Wvc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541508344; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=DDX8ymHyH3tl2S2LOCgYasPjYaVeYUYVgONP7Ls2QXE=; 
	b=J2DXDQzkjvymOiGAT0+9vVqSR0Nwb2WiKvm+bRJ1YbDVMA0wWxQ/DKmbzEyVmr0fvtDuzAF2fPOIb4PRv+pDTkWeUUgxWxHjCaIfRX6lIBLjcBU/RqnFI61b45Fg9+vIdm3MvryiWAp5jp5hgWyZlp+C1Jm42ayiwxiLkHwhtyI=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541508344;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=731; bh=DDX8ymHyH3tl2S2LOCgYasPjYaVeYUYVgONP7Ls2QXE=;
	b=PiivIckDpYwY8AJx7a23YGg+a3PWhukEyGdGXqN/auvpyMj0kgbQG6/3ICstQq6v
	9JrFpxwni2dIvG4A7wi6DytHaFRIMPSP7q/Y3vLK2c8ltLba9kYCCe6RyPXiZa9qcID
	0KIrKZyYGqmtmNiNsAnunCpUSV/DENPeXS2i800Q=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541508343766802.9803241724451; Tue, 6 Nov 2018 13:45:43 +0100 (CET)
Date: Tue, 6 Nov 2018 12:45:42 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: tegravde: replace bit assignment with macro
Message-ID: <20181106124542.GA17305@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Replace the bit assignment with the preferred BIT macro. Reported by
checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/media/tegra-vde/uapi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/uapi.h b/drivers/staging/media/tegra-vde/uapi.h
index a50c7bcae057..4bce08a7a54c 100644
--- a/drivers/staging/media/tegra-vde/uapi.h
+++ b/drivers/staging/media/tegra-vde/uapi.h
@@ -13,8 +13,8 @@
 #include <linux/types.h>
 #include <asm/ioctl.h>
 
-#define FLAG_B_FRAME		(1 << 0)
-#define FLAG_REFERENCE		(1 << 1)
+#define FLAG_B_FRAME		BIT(0)
+#define FLAG_REFERENCE		BIT(1)
 
 struct tegra_vde_h264_frame {
 	__s32 y_fd;
-- 
2.19.1




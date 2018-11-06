X-GM-THRID: 6620726648786386944
X-Received: by 2002:a37:2b0d:: with SMTP id r13mr20367762qkh.38.1541508047043;
        Tue, 06 Nov 2018 04:40:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:de11:: with SMTP id h17-v6ls9897029qkj.6.gmail; Tue, 06
 Nov 2018 04:40:46 -0800 (PST)
X-Google-Smtp-Source: AJdET5dxZ3vMUWIlSJlGmE/qmbLuku2TfAyt8sQnsrkq0jouvO0s53BoPFCnmalflejmm0kJYHSx
X-Received: by 2002:a37:a806:: with SMTP id r6mr20611388qke.29.1541508046287;
        Tue, 06 Nov 2018 04:40:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541508046; cv=pass;
        d=google.com; s=arc-20160816;
        b=KP7Rus8/bExaUltecVFn06aV7jir7YC752xoNj8EyLmpWKU5h/MG/jmgBkEDEZiSMM
         WiEQhmxRmM/a7+ogxncWXM+vizZkwYarolcNHh11wDzyiNm9mBvW9tjJipXbWo9yKofw
         z6x4m7uj2esT6zHSfO93ATzAcW0zalniCGSNVlLCRxGAtcHV4yO96J7oL9ecwx2AlFI6
         IE6CtRTtkJaK9fYE+tao5nwzVWbuwxor6xIQt1GM5Xg2Ly8jwZJFT8gO5XjR/ezvV6l4
         uYt7sFn5SlnhA1nTYX/1KEzyFB9EMdXCxEtSHKkelhVVSu/RimGcjw2I/zw51P0WpHGa
         2a/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ph73EDSy1f2UXaQZFbUumoJWhpksRYcqjPVe7muxU7I=;
        b=Y+K9zcv4lcxLeb6JMHB279uLyEBAbEsOsLmArXyvWm2oWTinFtfkhL1U0oYL9eeFp/
         AgGaMo0ZWwaEuUHoIvYxpZ31mxEYLbNwsZWrg2JuNHOga1jx3fG5cP8aIw/2M1rWIntw
         FpVBEKaSew0MQ6NKfv8TBjliThmXYtgAJDhsGfDgbKXa0fE2U14VmqK5CTLy7BH3LwTX
         MZDe803w1mvKgRldBcVdNtwwczqbHacaeYltYxgB8wMy51xC3dSPRxcks8VayCPsqh9h
         stpXa34x9UETs3ynLp4d9k5Qaed/KAib8cWCMzPLpKAwJFzdyHV09ZX0RdrRTK0J5yVD
         k3Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="J/+Xlmax";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id q15-v6si677077qtl.2.2018.11.06.04.40.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Nov 2018 04:40:45 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="J/+Xlmax";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541508041; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=gILrliXRXddZjJjeUO1XLBejsE+vl35k01udJzZnia6QVdyDcwL1UfCG3O49NK1e5dBz+rIqm7Sb8TpkJcRJhyGbRhy3Nl/sBtJuOOkTg1G+iO0yFfIb5sUwrQ95Cds1lixC+nKLvLfTl5Gb2x8FUfGiquADoEL8ZYQUAQwAvDI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541508041; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=ph73EDSy1f2UXaQZFbUumoJWhpksRYcqjPVe7muxU7I=; 
	b=WTSa6ym7Ki9lrt3Hi5bN+HBGsevY079YAI2XihfK3SQnDSldk7sGcCr+GPEMJy2HL2q1E8SfCUvCBqS+rSY+ZInaWGL+Twn7HTqNJFWhZBb81WfA5U5avbD4vSJ8ZyX6LoYAkFsekuaLvObZ8EVLNFf2iWL4pqT2j86Ld+I/W7I=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541508041;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1428; bh=ph73EDSy1f2UXaQZFbUumoJWhpksRYcqjPVe7muxU7I=;
	b=J/+XlmaxVRykR7DMroWFqv1dOHTywm3ijqxBllVO+hiDaEr1T3RXGwYBeoNGPYe2
	FUaKwBJi9N+bBPgXhmaUE+DCH/kGpaTakkqGp6/Bmj2dyKGUlUdpo2n33h2oBHyayUW
	1ZxNjdfurp3WVUaWc5IvI/rGyjq1IoVWAGzg/s/0=
Received: from kvasir.local (88.151.153.114 [88.151.153.114]) by mx.zoho.eu
	with SMTPS id 1541508040885283.3153092085861; Tue, 6 Nov 2018 13:40:40 +0100 (CET)
Date: Tue, 6 Nov 2018 12:40:39 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/2] staging: davinci: add license and remove fsf mail
 address
Message-ID: <cover.1541507973.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Changes in v2:
	- Remove an extra line from the copyright notice per Julia
	  Lawall's suggestion 

Ioannis Valasakis (2):
  staging: davinci: remove FSF mail address from copyright
  staging: davinci: add SPDX License Identifier

 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_isif.c         | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_isif.h         | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 5 +----
 drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 5 +----
 drivers/staging/media/davinci_vpfe/vpfe.h               | 5 +----
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 5 +----
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 5 +----
 drivers/staging/media/davinci_vpfe/vpfe_video.c         | 5 +----
 drivers/staging/media/davinci_vpfe/vpfe_video.h         | 5 +----
 18 files changed, 18 insertions(+), 72 deletions(-)

-- 
2.19.1




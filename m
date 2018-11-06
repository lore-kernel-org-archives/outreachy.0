X-GM-THRID: 6620561568029474816
X-Received: by 2002:adf:e50f:: with SMTP id j15-v6mr980903wrm.5.1541469611357;
        Mon, 05 Nov 2018 18:00:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9d17:: with SMTP id k23-v6ls2206081wre.17.gmail; Mon, 05
 Nov 2018 18:00:10 -0800 (PST)
X-Google-Smtp-Source: AJdET5cZdXAKsOB3YIF8xAm1sjNNL9x6uPBwDriX0XavFB+4ZrUcWOv9RYW7qB+HggSExTZHwttY
X-Received: by 2002:a5d:6b03:: with SMTP id v3-v6mr2379578wrw.28.1541469610579;
        Mon, 05 Nov 2018 18:00:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541469610; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xhe6I70z6J/LcrNzfmrjJ8r80jwdzkzMyUnXAfix0zBA5FYbWoELBVYufO9f3mENgd
         v8kl6xBdWAwa4HQheWkp6HNZ/zVBdxtjcUBmet2eJONsMMXtk632Jmr9yR/jESEBxM0+
         ewObvUFLLSIng0gFOFRBNfIPHKdAkfZaISdm5QbtC0wpss8j7IFEtph+FZ6ifeKwEq3J
         hnlV+p2+A8TVCkUVbQDk/YNNKd4WZqMxQVOHc6lST0Z154lOzhfL3B5NIVebWXV38qMd
         0ylkfRsmmS6Y/aWqX2AORPCnjsoaNik1iZzb1FjoYLrBhR5SbprN8XI8+r6oGAfYgUbk
         Mrhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=t0oJcQ+tzOiC3lgS88/33MzZFEubltmxspc1XCPEUyY=;
        b=sMJErPfePCWrLiEcdas5k6FlnIZgBmtaG02uyV1iFvI9Db+Ear/kE8fjIyaeQNiuYF
         IV/TAEpdv6zMnIaZu+dmd0N1jHukHLfbPt+iMDWteKkmCoK4DP7wwtalCuB6UxY20sbK
         J6g5axmFhd8V0kTgbFgNmLqqqk5a23Tym4Yrf/ycWwkj7q/VpZjTKtfoXA6OAVBdUNrt
         11Od4TMZFx1ddeDB+wjZwjHp56ZGxULdaOD/kSw0hMnJAlll4mWH4mLU+3OkMZ1uBIQe
         9Qwh423vVXToMb0sBilfaBQgptZ88jq6Aq1OVOzdPsz4IHG6G2dlLOJZWtXePek16/1Q
         USbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=XjqQqmdW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 18-v6si266404wrb.2.2018.11.05.18.00.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 18:00:10 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=XjqQqmdW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541469607; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=JQq2nqgE26wGD4+EJ+D78N2FRb8BL5eoxTC/qVQIRYPSIh0irYytdYW8EUYqR4eKMEL1E6wK3xuyS67AJbzNpJx85eSm1wk3FBgn5/5EDX2IJp5uKIvMSinjko4bl/kumDJGJiAJy1EqBgsgoOWM0TNWZbBIxIcRi9L9bU4l91U=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541469607; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=t0oJcQ+tzOiC3lgS88/33MzZFEubltmxspc1XCPEUyY=; 
	b=G03N6M3XfElcIjVNC0OkIJ/cn0x8iWE3kMW99BfIrpW+BJHX6u17lznRjPdl7Z8CD71a2YsLsEaT6ok/NCDBQShXDCD3AbRsVqFLsWB9HywlQhI+qAA5XhDZnldHxIFmx1Ky3scMg39ZZM+Ev0suyv0CWOZgcPFQCAyvuMWlvfs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541469607;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1413; bh=t0oJcQ+tzOiC3lgS88/33MzZFEubltmxspc1XCPEUyY=;
	b=XjqQqmdWvB6iaGyH+xDD4XRlIzsYTKFMHAbccM4Y5xg4WPdOZmwGAYHvXsuwjjMU
	TwoNfLzx7E0WjKpOQm8fPs/iUcZoeaD83FAww9vdb4LIMe053oe9akaK1+0DvgZeZGO
	qAu4ZcjZNb7TVKER7Wag/UHffioJK4LnrBstdyy0=
Received: from kvasir.local (90.252.88.110 [90.252.88.110]) by mx.zoho.eu
	with SMTPS id 1541469606815872.0175765727315; Tue, 6 Nov 2018 03:00:06 +0100 (CET)
Date: Tue, 6 Nov 2018 02:00:05 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 0/2] staging: dacinci: add license and remove fsf mail address
Message-ID: <cover.1541469543.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Add missing SPDX License Identifiers and remove FSF mail address from
the copyright notice.

Ioannis Valasakis (2):
  staging: davinci: add missing SPDX License Identifier
  staging: davinci: remove FSF mail address from copyright

 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h  | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c        | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.h        | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c     | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h     | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c      | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h      | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_isif.c         | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_isif.h         | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h    | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c      | 4 +---
 drivers/staging/media/davinci_vpfe/dm365_resizer.h      | 4 +---
 drivers/staging/media/davinci_vpfe/vpfe.h               | 4 +---
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c    | 4 +---
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h    | 4 +---
 drivers/staging/media/davinci_vpfe/vpfe_video.c         | 4 +---
 drivers/staging/media/davinci_vpfe/vpfe_video.h         | 4 +---
 18 files changed, 18 insertions(+), 54 deletions(-)

-- 
2.19.1




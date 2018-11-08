X-GM-THRID: 6621495393645494272
X-Received: by 2002:a67:6948:: with SMTP id e69mr3860772vsc.25.1541687135672;
        Thu, 08 Nov 2018 06:25:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:80ca:: with SMTP id b193ls299014vsd.0.gmail; Thu, 08 Nov
 2018 06:25:34 -0800 (PST)
X-Google-Smtp-Source: AJdET5cvBRoTvjmPdOsYLos22/WU5cKtqyqlKY64Pfp4t0x4oyIaZIzAc7XbCRkh0KpBz6N1T3PX
X-Received: by 2002:a67:820c:: with SMTP id e12mr3908757vsd.20.1541687134135;
        Thu, 08 Nov 2018 06:25:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541687134; cv=pass;
        d=google.com; s=arc-20160816;
        b=XwcXxUbcl6q+rgTA2uPzulSklnAmAIjBy/LWIFkXeA1gLqq6+RiltaqjcwJk3C4/R7
         XpyyQgl8LBTks0+LUQsBG1V0Hmvx9c+BW4EFhhaiYE/sgQaWamn95p+YAN6iU31gSEZL
         1rwwVFGDtpUOydCh/XzlK5kN0wWawfZaY8mCG0omUxHUE5GiEopOeTun0Etodt7wd2Am
         6DnlMbjmMvuC4NlV5Cx8lDQCzj4wIMy//zRVzTOJgsaNQ2KgVPgDxSNPYCwSdohiyCSG
         bMPd1Ru95OzLTUB/OONHV0xRjrT825ccq8ZpyHuLaxBnR1s7dpz2P04v/qyzFSoXm6bF
         8vFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=;
        b=Zo6W401Ro+5YCnJ0//SSw1jlbucFQOvwZkENx1EB2i1blj7PzqZJ/u88syJub6SR8C
         hMOOEEEkMOR2IXyP+sIH80wHZkLQ6EyodMEPfisj1zPJLtWE8mrA3izNuY5XKj2+faP2
         rf/WrmXGd4w1g5xCd3VY/FH5DWlhncZ3qtITrf9nC/hNzeeMqkcBH/0VsyJtbRV/Kok1
         saprVt3IK/CXLhfEnUaCRbRDwMyPYP8xhVyawRpJXI44DeHqXLcX/mzlSNMooA/q982n
         jT2QPLnAEExZW8kXTERqY7ofG1dsodBby5uhM0Ksa7PFtW/IZJMgxzhPuL4O1vs6pJAQ
         RLzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FrZafIdu;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id p140si36442vkp.5.2018.11.08.06.25.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 06:25:33 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=FrZafIdu;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541687130; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=SOd4L7DHwwdUoFpX5udVRvaei5+q13d/guqV/oTHdLhqpfwuMxjxtg1jS5G0dI+7ewlKST/JpJoyPYnE30RKZZZKp0bCUi4hDjoVASM6vUyUZy78l6bs0HsraU2ntrHdxujJUedAnr/sNnaD4oTMIX+oig2IQg2aOXHbEM5iTXI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541687130; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=; 
	b=iO2LJwtUGFDHYGM9SeJ2cCohUrT7JjBkmXdR4DbKAOfB7fEs06YyjuUAoVgVvGrWd4cyYX/hvA4MCYBD8BXK5BrYh9TLRfPPyL0+M/UwlFWvGNK30r3l3Cn6j9JnBVKI313gKMglDjiIm4z7Ai8Wx7GKJrtklZCmaoW2/fD0p8A=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541687130;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=793; bh=6P3rPGPwlzdFmZTHW7HBblekhpsiSGKobefwAKIJIWw=;
	b=FrZafIdugXSwc/2dxGei/0iDz0CZ7fjZyxbuAwV3mUJ4LDTlc2xXFg5ToVR4BwLR
	/vSN0/cyrp/5wchFMEqRZNLP/HmwswYHB1R1pPIBQ+n7xJ+5Na8Oj/vs9ecmmPkQShw
	8JW/Rzi0f79vr+Ry6UPEgshqY5tw60HxgGt3X8mU=
Received: from kvasir.local (94.117.81.61 [94.117.81.61]) by mx.zoho.eu
	with SMTPS id 1541687128479695.8320989122454; Thu, 8 Nov 2018 15:25:28 +0100 (CET)
Date: Thu, 8 Nov 2018 14:25:25 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2 09/15] staging: greybus: remove space before tab
Message-ID: <cf6f43a964ba5a3a55e7f2631e1eb173bf005597.1541686942.git.code@wizofe.uk>
References: <cover.1541686942.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1541686942.git.code@wizofe.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Remove extra space before a tab character.
Reported by checkpatch.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
 drivers/staging/greybus/uart.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
index 3313cb0b60af..b3bffe91ae99 100644
--- a/drivers/staging/greybus/uart.c
+++ b/drivers/staging/greybus/uart.c
@@ -805,8 +805,8 @@ static const struct tty_operations gb_ops = {
 	.tiocmget =		gb_tty_tiocmget,
 	.tiocmset =		gb_tty_tiocmset,
 	.get_icount =		gb_tty_get_icount,
-	.set_serial = 		set_serial_info,
-	.get_serial = 		get_serial_info,
+	.set_serial =		set_serial_info,
+	.get_serial =		get_serial_info,
 };
 
 static const struct tty_port_operations gb_port_ops = {
-- 
2.19.1




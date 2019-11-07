X-GM-THRID: 6755960127598100480
X-Received: by 2002:a9d:590f:: with SMTP id t15mr3360476oth.118.1573140158838;
        Thu, 07 Nov 2019 07:22:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:1e94:: with SMTP id n20ls1612981otr.12.gmail; Thu,
 07 Nov 2019 07:22:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqydS7KQy0mPoXG9Or83h/xdstHuxCZJTUO7RY6U24BVtflOQqCP0p4FkpJgVXU5KI2usQdG
X-Received: by 2002:a05:6830:551:: with SMTP id l17mr3671941otb.282.1573140157742;
        Thu, 07 Nov 2019 07:22:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573140157; cv=none;
        d=google.com; s=arc-20160816;
        b=NCoy6L2nOUvtGNp6G8+fgzcmn2tymxOgoj5sZEustgWeLe8GMARlr/s5xe1Y2dcBib
         SF6JWkO3BwxGvCGLiHJAAnl+ndvapXvV4ZVpWUJUGIcga+V5sft0mkKdfueCVrLMcRxL
         xRKaOeq5q1nOs8mftlLqYe89IkGoPxbnAqOB355R4yKezdDccI8L8lxqNacpHDnfIEaD
         WNNocdOR0F2me68ENzFtwezuW5UNVUYbhNxIp70HZNZIOdycNDi9QBg375U90zRrAOCX
         kuW8cPGh91qz9leTpsvHdOpw7af8s072oKK4DUdrMD1ggYI6MZdtNduuPb86xz6KIrnl
         qsRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=A/JYZM98DzgOe+5QSqzw8qbwk67JgfV3LKiGMtEDlc0=;
        b=gWgkPFrjlL8RFuLIZoPQqeW70eoISpYV8aMajJZ2yldaZT/m6xTopW6dj4GM1CIx3M
         Bemuiehp75LM35a5DJf6L1Tz61wV4rcm/oGyr2igGpASFRH8pdtNaWqlTQdXpJfDVcI3
         82/EPYVCcprsWYh/k1ImdsDnTzszcs+PGbby65edqed/1e3ZfNF7msgfEFRWuJuvh9z8
         6aliK0tE4kfaG2gVBzaMdLB7HFhAIj7ncBtA88ucjmGaPiRWFuJReYnxIQB5y+uin96B
         1o43stBmmbX5emx7B35ViJj96+jnKq3MwXoJB6JfRbKfMYD55BjkKyF+K9BdwnPUATAU
         t3Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fpfa+WqW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i15si178759otk.5.2019.11.07.07.22.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 07:22:37 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fpfa+WqW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 64E242087E;
	Thu,  7 Nov 2019 15:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1573140156;
	bh=Uw+vBOceBsLok6F6RMiZm/t9PFft2aLEybOEPd7Oj5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fpfa+WqW/Al1UPHcVIn2VB6zYirUHW8r5vGH5A1S7EsTTHSmKyeANPqmOs4ZvKtxr
	 iaL2Nv0cEFIDMniT7DwlV15LuVe4kunqeyjmBz7DqQWCa/B2wngEG/E0SBdVZIDZxV
	 n6Slpb7S+iQpNsrMfjlOqssCO65pDm8w4VpfGnNg=
Date: Thu, 7 Nov 2019 16:22:34 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 04/14] staging: vc04_services: Replace VCHIQ_STATUS_T
 enum typedef with enum vchiq_status
Message-ID: <20191107152234.GA190253@kroah.com>
References: <cover.1572994235.git.jamal.k.shareef@gmail.com>
 <7509cfa679c6d383ad979282f3d33b227d4d7f87.1572994235.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7509cfa679c6d383ad979282f3d33b227d4d7f87.1572994235.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Nov 05, 2019 at 02:55:21PM -0800, Jamal Shareef wrote:
> Replaces VCHIQ_STATUS_T enum typedef with enum vchiq_status to match kernel code style. Issue found by checkpatch.

Please line-wrap your comments properly.  I'll fix this up...



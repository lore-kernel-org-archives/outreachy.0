X-GM-THRID: 6947895612953067520
X-Received: by 2002:a63:144e:: with SMTP id 14mr2179476pgu.53.1617783497796;
        Wed, 07 Apr 2021 01:18:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:348e:: with SMTP id p14ls889608pjb.1.canary-gmail;
 Wed, 07 Apr 2021 01:18:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1u2zkw39Mq2Beb+5cuiDswW5fO/9O3/DmRAVUq5OdHzeIpEp/38GrtaJhAluceK5vpgUv
X-Received: by 2002:a17:903:2306:b029:e7:1c8d:63fc with SMTP id d6-20020a1709032306b02900e71c8d63fcmr1952789plh.35.1617783496676;
        Wed, 07 Apr 2021 01:18:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617783496; cv=none;
        d=google.com; s=arc-20160816;
        b=VBekv90Pse+IMR4wY7FMPLfCHFXIjGYoo8bvI4CnEDOL1kjdoiKtVxVDAdTt+qzwGS
         uRRzrycdQSv1+YjvtCAmnd4+3TOhPGtvZz1MBCLpze6bUEhJI9V1hlhUmdzpnHZsVLR6
         Okitzhyeci9HsYGTc18TCJda60wEn2PfYbh2WhKYC7BvwReJune4+tehlIIP1sWBroa/
         I3rsODtmc7+G9EDFOZhxOJlkrbFQ+Uin258Qt2VQBAx7rLX7J2HZLUlDm6hjbq0Tsi+/
         UQbMghqb3ZyKDJhGxX7ZS6C+GtVZYEpd8f1/kH8oAonDR743XNXqN1rvVGVYAJ59itjI
         CkEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D2hOzoXYLdpUUJ8REXWR73hR0tV0tqPE28ZZHe4xGNg=;
        b=V+0FTUIBahr6hlIwY/3Lul8T6QikLA0k2+hKbUxlSz8yb6pWHYhdf23Uzg1V5DK7Hb
         MhHkrZqN7pQbOTdEtbWvsUdV9oE0QtSUrUfTXfcuaKPJ50r4eRGh+9NN2+Ykh5/Sq4wy
         y+wz710q5iqBAbuR7kx6R+25+KxTNsp1P+mSr+AsU5BUAJ918Y+gbcBymthr44LRfznL
         zkLkoHt7K5xicLokuqH2PhFL1ZpFnsOvD1Ch6AqpzXiy9r+MMAz6b39QcJI0NDjtefuj
         wvvmxdSiKIvHTYBM3r1HAdBNJczp3u/SmBw+4IDbmR7/jfCHNmY9Lg1kVxyi8C//8lvC
         lF3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=bmUKRAUr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t5si1895058pgv.4.2021.04.07.01.18.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 01:18:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=bmUKRAUr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D70FB611AF;
	Wed,  7 Apr 2021 08:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617783496;
	bh=uf8+dE2AP3tAU5ZxCGlJFGZ8FUljPywASKktP/5uv7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bmUKRAUr1LSYH+6TwXqBHM3UUTx0obo9XpWipLPSJMDMNQDgKIJ91xgt2dcJx3Xiy
	 0o2tyP1quRAyFofzMREmbkoP1o31f1bxCTOsXcTd5NgO4NwvLpanKY+2lPtnxY7UKz
	 m2c53lVM7MDF8OWHbofn7EA9OwfF0hObfLDJ0FUc=
Date: Wed, 7 Apr 2021 10:18:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtl8723bs: hal: Remove
 camelcase in Hal8723BReg.h
Message-ID: <YG1qxdRtNIIVK3fX@kroah.com>
References: <20210406160037.27225-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406160037.27225-1-fmdefrancesco@gmail.com>

On Tue, Apr 06, 2021 at 06:00:37PM +0200, Fabio M. De Francesco wrote:
> Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
> are not used anywhere else, therefore this patch does not break the driver.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Patch v3 changes nothing with respect to v2 and v1. It exists only to cc some recipients that were missing in the header of the previous email.
> 
>  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

This patch does not apply to my tree right now.  Can you refresh and
rebase your copy of my branch and rebase it and resend?

thanks,

greg k-h


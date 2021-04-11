X-GM-THRID: 6949544081527668736
X-Received: by 2002:ab0:3b1:: with SMTP id 46mr3578389uau.102.1618123259432;
        Sat, 10 Apr 2021 23:40:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:14ed:: with SMTP id f42ls756617uae.8.gmail; Sat, 10 Apr
 2021 23:40:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkyY2BhKA0YEkwpctaMg8jwJrmqBr3Cp/vtLaU3qQQJ9EsvLWKKexmfXDKzMr919s40WET
X-Received: by 2002:ab0:3b01:: with SMTP id n1mr16971034uaw.17.1618123258667;
        Sat, 10 Apr 2021 23:40:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618123258; cv=none;
        d=google.com; s=arc-20160816;
        b=HXD84gIJxgJ6rpKiHxj+LTW8PFFHECFZ3Ajl2T+p1Xhf4Eb9yCjiKu69mtgL4tJbDn
         V6XEwzFfQuJhQpyJcSt8Pop/shEvXP7bHSnh34nnJfosSDN3atsDSBuYyrKhUeMy5D3h
         tkP4C5rqwcAmEx9npL7aR0RmMr8GEkl70J5KqCL6xS6snKI2nuT+ceL/yjwA8ehxBHqL
         gUOJuqgFC7Tz3eoy5/MXsrWMTqbx+HosL/Gj3ag/tbE6CSk7ioue9mOTbFGadOufT40Z
         L2AOuQZzgApNvA7WPesTyljncJYbYs8hjt65FoNMbpgsAUYaEjW9Qm3t4GDbEVR6hmbH
         CQNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ez2/qmN7ucaZmOhlZErFDvgVp7Q+SCQWNUwCs8UCI/0=;
        b=HbCrbJRkCfZAbmwJ0VorblvBeBSEDPidLRHddM+Q5V+oxMCB2JG0yLOk41LkkTgK88
         7cy+IzD30Y8Md57wFBFhduQrdZVpMXyLh8BLjP3GkM0P5+189exI3P4u+6+teyDp2kMa
         7yQXHKDnevBDgfQdvPDvcNf3ktsvrH7il9nZgxnGeHrVDfptakbRRB9bMlQrJD/mB1ZF
         uTqIETMeK8YTAHPfg1TA/EJv05wGtVHLQ15d3Nx2Tybx2xE44xDQL0dSJlYKMOAmeObp
         apzC+feWC05ogNjRDZaVbOBMVXpvEkR7N6/eTjxCC4ZbkfMcYKbhwnzxuQ0XwrjfDKBB
         oNSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1Ernrul8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p23si548518vkm.1.2021.04.10.23.40.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 23:40:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1Ernrul8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0EC05610A7;
	Sun, 11 Apr 2021 06:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618123257;
	bh=ez2/qmN7ucaZmOhlZErFDvgVp7Q+SCQWNUwCs8UCI/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1Ernrul8z79N88iBRqTlSVtfZcPYCAuMf12yJQfY2+brSaHO/+UyZdMurBDljaRAb
	 x1SPuyU56YBRGpYtrv/YgViZLW57CtN2/pBPOEaTgMefzZ4Jiaj44Rrnl3pHB56df/
	 d6XZg/SfgKaS5OvN8JialWFp5qppar0T6xfyKESo=
Date: Sun, 11 Apr 2021 08:40:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 2/5] staging: rtl8723bs: include:
 Fix misspelled words in comments
Message-ID: <YHKZ99v1FOmDem4L@kroah.com>
References: <20210410150008.5460-1-fmdefrancesco@gmail.com>
 <20210410150008.5460-3-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210410150008.5460-3-fmdefrancesco@gmail.com>

On Sat, Apr 10, 2021 at 05:00:05PM +0200, Fabio M. De Francesco wrote:
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---

I can not take patches without any changelog text at all, sorry.


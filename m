X-GM-THRID: 6947895612953067520
X-Received: by 2002:a17:90a:540c:: with SMTP id z12mr4381068pjh.163.1617718295133;
        Tue, 06 Apr 2021 07:11:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:348e:: with SMTP id p14ls1700661pjb.1.canary-gmail;
 Tue, 06 Apr 2021 07:11:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVemEBCGTDxUxfn0dSntyTYJfOhrgVHoTMNpODe4DXWr8RxFXglrVcyN7KEW65yf1LEuEk
X-Received: by 2002:a17:90a:644f:: with SMTP id y15mr4692410pjm.33.1617718294043;
        Tue, 06 Apr 2021 07:11:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617718294; cv=none;
        d=google.com; s=arc-20160816;
        b=0tHy11uvSnglVgcp8gjjY0ZoR+LGzOrcAlnYyhfR6BMCB914lFBBbH/Tsen+5ZD7CI
         QUjRs8c3bwAhB0vBQ62GBOBFD7htGkiFSMvGXz1B52wEhTCAtKD2Lh/C0NVKg5GHpKpC
         Q75Vi386q7VOipJK7jNZWhoUs/PE0OZkLOwzW3icaI++g/ssszpryeIuZTyQwXSrpL6C
         lmVnoBkF8AYZ2MlwTzc4y1mKE6RgDKVOS5fik/UmUn10kD5wJ3LemK6Tb5PYY9R1DpLT
         RaXr6mtItsLrhCzfBMwA4CG/iQlDVNxFzEqpfrqODXX5hUyYP3HL0AJd7rfUq7R4FuwK
         se8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uLlZSg0bTQsq2EPhR5n8iRMeBpqCGEFWnJtERd7sCKY=;
        b=gNZM9BoxK2CSiDbIsQMy4PhPmSjkC7+tKSc9I76HoUWCf45IJZDc04//iEeJlj2LIX
         Go8w1uAckoFtl5609WniPAVlxqFqRdcWYrc8Sf+PdoF+XPfx0GrDKo1+kgOVwIH+WpfU
         noDsFYjKeVFRTLRWQFzxJ2dhO3hb0+zjCUKHg/5nl9yQecqm2K3Tbr17YY9y7jfwcGM1
         N81GAUu4IFuuRZ9ifHTOO3gMT2CbFSHIJMoxg/9pLCeVNG2xDSG67GvJrwKETc0vObhd
         mbjUvBbRzTEHTfsVj4BpjmzrqLfN0u677ZvGAUf2QRdZwjxaXIui8/HW4er6Z8TNqcPd
         eM7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=D+mea4rv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 145si1536233pfb.0.2021.04.06.07.11.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 07:11:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=D+mea4rv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 05ADC613A7;
	Tue,  6 Apr 2021 14:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617718293;
	bh=wq4U+4ecsCCR/Rbtqkka4myOOcVmx4VEjHscpWZCLPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D+mea4rvGOW13dfwSFP/PbmTlYrG0QRLtZfbmryo9FUxkj2TRNcuQkA6gHgmZGWEY
	 CMa/JCjYkWRj0QLL2QE7qJ6aPs5bPhlQa3/BkkavQcwgXPLE2ca4IHNoFBoYcAR1S4
	 WaeclgvYzwY+u85DZhrQF26NsbEkw2LhGh/OP2zQ=
Date: Tue, 6 Apr 2021 16:11:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: hal: Remove
 camelcase in Hal8723BReg.h
Message-ID: <YGxsExq2fcQvrN99@kroah.com>
References: <20210406130556.1417-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210406130556.1417-1-fmdefrancesco@gmail.com>

On Tue, Apr 06, 2021 at 03:05:56PM +0200, Fabio M. De Francesco wrote:
> Remove camelcase in some symbols defined in Hal8723BReg.h. These symbols
> are not used anywhere else, therefore this patch does not break the driver.
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

If this is "v2", you need to put below the --- line what changed from
v1.

Please fix up and send a v3.

thanks,

greg k-h


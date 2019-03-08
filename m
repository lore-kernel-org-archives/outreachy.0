X-GM-THRID: 6665805280714948608
X-Received: by 2002:a24:2c48:: with SMTP id i69mr12027314iti.12.1552025561994;
        Thu, 07 Mar 2019 22:12:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8c8b:: with SMTP id g11ls3257309ion.4.gmail; Thu, 07 Mar
 2019 22:12:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqxv7Fw81sJbm5vSybAupxqvOk9sijnvnQX+kO7EqL8uO+yq0/h8SXxoL3CMXXexe0rYylid
X-Received: by 2002:a5d:97c6:: with SMTP id k6mr9980159ios.12.1552025561250;
        Thu, 07 Mar 2019 22:12:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552025561; cv=none;
        d=google.com; s=arc-20160816;
        b=s/drzFRA86IPnL4LMTXhBshm23S5/GQUHART4tM23JygSYW7GCFKIMY0+eVd4vnEFl
         CMTenIQefPZRcrcU6NRvYMv3XTPVuqmZxQkaEvOV+ioCFlzDTNciCoTkDRla3C8EGDJT
         hI2X/6lgmlECR7FVBGKBeLlu3xmegAmdKePtJ7GyNSifJ49x+13ZN0f9lRxi2Zml6Lyj
         h6BPW41m1t7GseDvoUci3Vo4HoBi/gjqh9YFjFQ/ip0VvXNGqYxOxDo50guRRLQ/le5m
         rPlaaHW43K7l1SUYhYltLn0TGCFN/hCurr1kbI9QVPf5c2r+mEST8tJbt5NH29D3DaUN
         V0GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LThRwdlopUYRQU3Zd0gpOCKtZIpbRI3INr7obM1sEvU=;
        b=mZIUrySmUVPrQb8NyXGNrAx1dCMpAKgyHLB/OSm4PktdQUHIsdBndzJ/x2zYPAwEHk
         bsxzgfFQZ2yLrSBStx5cztbkIa1kt5FyvO0j8pewqcCJ4kwEVwb9ftb+3vMWEyxhit6i
         ZvAqzY7JcVZqJ5HDfA57oQcr3CMx1I3M0yxmP6VRzki7Nl6ARIStd/6rgO2DCJtR7pqr
         OxfEw0Qb8bjO4gh1TsQwjFE+/5JLJPCuabL57bqFwPjOi40p1vV1b/qGTjPTk51NBVx1
         ROwNcvmKh1Wjve8fGnFJmV6AgGQ5EoxbZyAO8UKlEPDLAW2Qkv8D63GkK/sLGsUjtqW0
         ERbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HQBsvcym;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f19si282354iol.4.2019.03.07.22.12.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 22:12:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HQBsvcym;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF3D720811;
	Fri,  8 Mar 2019 06:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552025560;
	bh=jgbZXoPhh4A3m1o0fx6roQis1X3dTR4pVXACTsYISxA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HQBsvcymMWTTvTpTcLruz7CbCrJhyQg/+PiaCGTiJQVv8MmQKHa2BlhmaqnOMxYz2
	 z30ER2ikaa8VhG9qPu0pbsar4NT5pURuRDqC9Sk9B7ijhDzuCl6YyuRTpEGcUkK6Dw
	 7Q9b44dLl5bK4mvuzlRU+1MymS9tiELayaJPaghs=
Date: Fri, 8 Mar 2019 07:12:37 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: emxx_udc: replace bool with unsigned base type
 to fix  possible alignment warning
Message-ID: <20190308061237.GA32256@kroah.com>
References: <20190308000632.23509-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190308000632.23509-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 08, 2019 at 12:06:32AM +0000, Jules Irenge wrote:
> replace bool with unsigned base type to fix the checkpatch.pl warning
>  Avoid using bool structure members because of possible alignment issues
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/emxx_udc/emxx_udc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
> index b8c3dee5626c..4a610bc90db3 100644
> --- a/drivers/staging/emxx_udc/emxx_udc.h
> +++ b/drivers/staging/emxx_udc/emxx_udc.h
> @@ -528,7 +528,7 @@ struct nbu2ss_req {
>  	struct list_head		queue;
>  
>  	u32			div_len;
> -	bool		dma_flag;
> +	unsigned int		dma_flag;

No, there's no issue with the original code here.  See the archives for
why making this type of change is not always what you want to do.

thanks,

greg k-h


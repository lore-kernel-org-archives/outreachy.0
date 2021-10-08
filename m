X-GM-THRID: 7016473009259020288
X-Received: by 2002:a05:6602:29c6:: with SMTP id z6mr1350239ioq.215.1633671811076;
        Thu, 07 Oct 2021 22:43:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:2cf:: with SMTP id 198ls429405ioc.1.gmail; Thu, 07 Oct
 2021 22:43:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxW3EJ0N6qgVd+L0I1eoNML6OZQqPSiEvaySZdhBopsNTkj6S0aiHBl43ZMJZGV39bW+s1y
X-Received: by 2002:a5d:9492:: with SMTP id v18mr6203089ioj.158.1633671810162;
        Thu, 07 Oct 2021 22:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633671810; cv=none;
        d=google.com; s=arc-20160816;
        b=LoZUwqZrWj3bSvJCKmNo9Djip2MBW92Fnb6sCc+dO6AQcCeeHVBKPXSNIUQShmmDA8
         vUVXEpu0rIv8zLJ7jnJBz5teQ//uOHfPeESGH3fv+ASvf0U+anR7HMrNg1nPDuz132fF
         wRTTMRsHzeGMQRWDXSrV6ryLK9eF9dXBg47DlT1tebUJaJIjOcpywQ8A3/NwAoNlxTlJ
         mNnSEaOWmur0imZxJbyhAfUIfoizbjTFUUG9XW0qc2cL/2Ovz0OSZdEddV0/tBq+Ws0I
         JXF9VrssPZTL3k7bFQupXL9PIMVGAbe7OApdakYy4fVSeuuhyYWKAZxcc8Exoe6R4pL/
         LZIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gAnYGqWexdd9p6WIjPTHMl9IwcjrUTxD7qE9T/d3pSk=;
        b=eYJuVJRUfiCbrCuq4hL7w/ZGQJ2tgGTEuZCtNt5CLIo66mRUcPmGd0yG2BQVX+lL8I
         vxOt+403xTxB6OtfJ5Rc1wAf46rroLVT3q3926od9SW9QcFNsr+8TSFA17hdIDLAf+YV
         ONA2d1cXaZTV20bysi8ZO+2ubVz3rpMEbdM9yuueKupCMBKfYQZdH4PdFFEDt/VfsC50
         f/PMO9v3ciUeU/RtBXrb7oHCvjei0iFV3OayMhn2J87dvnzLpou4aXBt39HOaQ2/9Xfg
         QHXSygbkrAyHkwS8q0vAMx1CDXE3s8G+NZu8pd9hmFXiuKCEYRc/MnBW/llkTrMiGYvK
         JaLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Xyzzd3fq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p184si68565iod.4.2021.10.07.22.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Oct 2021 22:43:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Xyzzd3fq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id E6876610CE;
	Fri,  8 Oct 2021 05:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1633671809;
	bh=B6a3gs4cwWm84Yix/rIdBIdnCtH/pdx+xz+LGB+zIE0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xyzzd3fqTWJHV2gBzl1PjrRB5Uy3k0CohqwpNm3toA636wuEaZ/p6JkCBQruziEEa
	 ciCdSpfKLyGGnCjdiI+t2z764uQCm2SLJZmIKgKMPYjMVmTwoxdngyj8hRC9dSk7DM
	 86XixNZQiVotrf9jrpvAOl5CrgS3zTJKbWiF9z/E=
Date: Fri, 8 Oct 2021 07:43:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <alison.schofield@intel.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Outreachy Patch Restrictions
Message-ID: <YV/afTvmXgyL+sU8@kroah.com>
References: <20211007234651.GA393313@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211007234651.GA393313@alison-desk>

On Thu, Oct 07, 2021 at 04:46:51PM -0700, Alison Schofield wrote:
> 
> Hi Greg,
> 
> We are about to kick off the next contribution period for Outreachy Interns.
> (October 8 - November 5)
> 
> I found this note and would like to know if this restriction still stands?
> 
> >> Please avoid sending patches for the drivers/staging/media directory
> >> as Greg can't pick them in his tree during the contribution period.

For me, yes, this is still true.

> Is there anything else contributors should be aware of for this round?

Not that I know of, good luck!

greg k-h


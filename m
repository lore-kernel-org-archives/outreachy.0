X-GM-THRID: 6668974051336126464
X-Received: by 2002:a5d:914f:: with SMTP id y15mr10796242ioq.18.1552891604422;
        Sun, 17 Mar 2019 23:46:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls5947085ioc.3.gmail; Sun, 17 Mar
 2019 23:46:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqznQMC2QTPidpmYkim2OWkYLc19GwztUJuWW3mlIAqCPtVF8EjuxgMWVyyHhrbO+B+alIB3
X-Received: by 2002:a5d:8141:: with SMTP id f1mr10927620ioo.9.1552891603694;
        Sun, 17 Mar 2019 23:46:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552891603; cv=none;
        d=google.com; s=arc-20160816;
        b=eE7WEGJjt8OV6gEa+FydBTQ7IIjTlpj096Bo50H1IHu8OuOcnxFpUgsyjU66SRVw/Y
         lKlyjDFvBkiZAxdnNETaxJL3WvK4W8jGQOhNrYfE+TOgzjz7orlaRGkuaqRb0pIL6zzp
         LyFHFoTTxTqw+tNmgSCjDt0jG0wwKKlWTX3G+QvU/62iRmSXNDOzVubZfdvDceEo2ebQ
         pIf/D47+KWp0SbJ+QorH5yGaqGCnZqOcR2MU4g0+4kFzvU3PGadIXAltdu2aaQ/A5Vy2
         3D8G+xCKemUxFL3Ogey6TWD+hnJa5z/lQYrFu/x8zAd+c//qCFwoIbJNyn3l+AaE0on/
         /5yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6FSMl9+6urTwUZL+Wda9ZQg9xVJdcMK3IUY42aQo3cQ=;
        b=UZqGSkpRnCcW6gM47JY7xHFk4JtsjqTLBxxzX8KVWul6mM8qAVcicm1VKr6Sqwk1C0
         V4wT3sEbBO6YzOCZuNGORTodoWGhHL0ugYhrDhnrgJTvUz7No/+aWRv+80WmOKuf+olm
         XdxMSMs+v9bHYuVZvEhA+rdb4Rk+jXjtC/gG/EPRtQa5WlHKJFPr7MruJcaCvV/Nxx2M
         RDSE+Ho779dFRDIviXOvyUWzR/YsFQUmhORfXbJtUCljrw1+tYxpnkrDCy1+B6XS4Mg9
         cEbgqrCiVd/5QwZa46O8WZQ+eimWUUdY/G+qBfDJm2Y1uiw5yRFNexDU/3jY5/lxGX5l
         nPcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HrAYOIqj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j2si526396iop.0.2019.03.17.23.46.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 23:46:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=HrAYOIqj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5736920643;
	Mon, 18 Mar 2019 06:46:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552891602;
	bh=7GqxF15G9SNyKQBQTgP6L7tzCaCqjpR2Ioub37a0whM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HrAYOIqjc4YRT1ZBHRX0OHlAwOyHbU6Q5CgteHg0Le+nI4qsqZl27NV+OSaH3cofq
	 arpEU6YKstgrF2DDRKSPlYn8qI3T/5fSIr7NOSH+jxOKWeZEk34YNz76ft5b7BciEc
	 wPTrqYM0JXMThpnYDYzgSNTVh7vmUD1YfoLH2KXk=
Date: Mon, 18 Mar 2019 07:46:40 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/5] Issue suggested by Coccinelle using ret.cocci
Message-ID: <20190318064640.GA28926@kroah.com>
References: <cover.1552858206.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1552858206.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 04:33:53PM -0500, Madhumitha Prabakaran wrote:
> This patchset does tasks as below:
> 1) Drop wrapper functions and change function names
> 2) Change type of variables and return type
> 3) Change values to standard error codes in functions
> 4) Replace NULL comparison with !
> 5) Add missing NULL check for kmalloc
> 
> All these patches are relevant to an issue suggested by Coccinelle using
> ret.cocci.
> 
> Madhumitha Prabakaran (5):
>   Staging: rtl8723bs: Remove wrapper functions and change function names
>   Staging: rtl8723bs: Change type of variables and return type
>   Staging: rtl8723bs:  Change values to standard error codes in
>     functions
>   Staging: rtl8723bs: Replace NULL comparison with !
>   Staging: rtl8723bs: Add missing NULL check for kmalloc

I applied the first two patches, please rebase and redo the remaining
ones.

thanks,

greg k-h


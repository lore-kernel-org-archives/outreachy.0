X-GM-THRID: 6803031575619436544
X-Received: by 2002:a0c:e902:: with SMTP id a2mr6122409qvo.20.1584001220812;
        Thu, 12 Mar 2020 01:20:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:efc2:: with SMTP id a2ls1115563qvt.5.gmail; Thu, 12 Mar
 2020 01:20:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvQ4WCa6H9v8DcQdNqpLfTdvjjRy97fhxTBsQA2MA8gRvTHeSVZeX16DfEdNWENGlR8lDuu
X-Received: by 2002:a0c:db86:: with SMTP id m6mr6060420qvk.116.1584001219496;
        Thu, 12 Mar 2020 01:20:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584001219; cv=none;
        d=google.com; s=arc-20160816;
        b=kQd4scZIzIWbw59osvK4F4Y2Da3smIwC+EWwkUX2Y/1DaXxQAHPox9tJpuWH+iM5Qs
         zgarrym+YEQZ+YIHPJtK6/+r2PRkjV/++aXanSslfrU2qT7sNJEPpZpe2hd92fT0KtPG
         0dWty2Lq+lXdpLfUHjGE3pd3PUCkbrkm7KVXtioTIE9/57QwhoMKlRKZe9lZ7LKfksu1
         xH9YWyqLVXXBJq4kI6KrqtTGRXWUJ4zdc4ipoqPWX5mXConFvFI+KUO3gTawJheP0S1h
         FuulA9plu43oElbTwuedbO1akCXrpQADFC92T23wIVpeNdPGoc+x1sOWQ+url9rysnw0
         AlzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GTl5qG70JrQ0N/dQehdJA/M4gz+NTpiDxVCs0N+8t5Y=;
        b=HCf1TumyxPidmKnmUcj5WJ+ScC1GpFRds+nF0sJLEDavzP9/uWvpxs3Uj8CxYOEZS+
         7Bg93OYhbkKIXd8wAVf/tP5QquHTnYXFTcXD/OCc3ApJajcpT7EaHY63WJc8XBBEI2Tb
         b/M5SzGaQBgjoq3Y+Av8Ke/EyYI4x4ptYvSDiiw/YkHWiFCjdRwvHEmnkzLzK0hhfToL
         ESvO2ud5JltNwcFTyVzsgmm8zU1YY0eWmcFCFiRrPhOwXj9mr8xocnwHHjH0VpoX3XlL
         cFoHp+UQNalHK4sOCAOy+n7Re/mQ5B6sSTN259nHa2KGiuz2coNY7SIGM+mGyF70vV0/
         qtDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qyUWTBM/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y5si247881qkl.6.2020.03.12.01.20.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:20:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="qyUWTBM/";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D420F206EB;
	Thu, 12 Mar 2020 08:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584001218;
	bh=XW605AMFoU+dGDGIONOLdjr828lZXtr5GAZ37B/aFhc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qyUWTBM/N+yX4/rg7LPaH4rPOqnBf+9BbrbCFuwJqfxNkUYG90RkStgVzdSWIE5F9
	 eFu06n+FokNge0HNaoI8AC84TvxuMmsJAGKRHPHTbV2A0T+NralEliIyB9WmG0N28k
	 xodTgJLT0YTJ/RioSOVu13BODJhyFv/OUuEOGPAw=
Date: Thu, 12 Mar 2020 09:20:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: rtl8192u: r8192U_wx: use pr_warn() instead
 of printk()
Message-ID: <20200312082015.GH11746@kroah.com>
References: <20200311191638.27974-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200311191638.27974-1-lu@pplo.net>

On Wed, Mar 11, 2020 at 08:16:38PM +0100, Lourdes Pedrajas wrote:
> printk() is deprecated, use pr_warn() instead, which is a message printing
> function for network devices, defined in include/linux/netdevice.h.
> Issue found by checkpatch.
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
> Changes since v2:
> - Correct the subject line from v1 and use the generic pr_warn() since
>   netdev_warn() expect a pointer to a net device.

As Julia pointed out, this is not correct, you can use netdev_warn()
here.

thanks,

greg k-h


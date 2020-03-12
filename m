X-GM-THRID: 6803294176512311296
X-Received: by 2002:a6b:3c13:: with SMTP id k19mr7448583iob.25.1584016199887;
        Thu, 12 Mar 2020 05:29:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:770b:: with SMTP id g11ls662835jac.5.gmail; Thu, 12 Mar
 2020 05:29:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt8OPtnRg4qrpESEgW5OBmJieJDPhLm5c18vdBif5xTFRxiiVaDT/P+CM76HHxEpZY3rSyM
X-Received: by 2002:a02:ac09:: with SMTP id a9mr7569185jao.128.1584016195425;
        Thu, 12 Mar 2020 05:29:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584016195; cv=none;
        d=google.com; s=arc-20160816;
        b=w2difEb/CTWBJQBgAtRm9c9TxKJMgukKs4B4w1Y8AhAAnGxXSg1Wv2beVCZvmQQVgw
         Vk5kYOjs6DT7uNBwtIdij0fwz2Tq2bC1ECa2ZSwQdRfWv328cocy/bJhNvB22nalFOnJ
         +vUFSrd5tfSvYaEOvQ2x0z+AuD+/Cft9cjVI5ZbxnCBN5qpdWvWR64sp817sVeHHPOFi
         ZCImGiYifofOaN3ZBjmw8r28l3Jd0w5huZL6OY1lV/V+b1xzSv6NRxt82MJYxNslYNLK
         zr4Q0H/ukAc6M+hrqoPiXCNHyaFXFHbPWcDjAi4orZjaK/GXMxt4JVZlhMyA647Jjdz5
         08vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=s3mtx6ViHWMcIGssuD5+n5a73l9sF9bRoQrPaYsPkDo=;
        b=fq3ZPWTXjDgkrNaiKaapCKPNAD8JlD4ZQlt+u9pfcXfpfteWQTOw9qbzOwxCI8ATBT
         DRbVH+l0rPjCwiBs0Tx3KKq7vCpxwzNe8xJSPUuXkwUJovq+5Gq+Vvvn4XP3nM2/1TG/
         zEJnazXqJWB/C+OFEQ3O/3RCpLQEIq0ivdRlplbkR0QNlPDEKGrqL8h/tr6hcdrZMBHK
         0Qqw035let0F+fHqc1CQ6ggkwOng3mFPkjdeDrdVVKYIgjFtuNCRIRJGWEhKCzUjNyvj
         kOxC5PJhDhyUI1+/vWfFZpTk+qojzvNGabLsABUHyl4/bCU83qxqDSb39mISjZDh0ZGC
         cLCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZUoci9S+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a3si26903iog.2.2020.03.12.05.29.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:29:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZUoci9S+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3307F206B1;
	Thu, 12 Mar 2020 12:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584016194;
	bh=YIelxmcz2PSxf/ieGn7VD3iLnBK3FK8V+qFsaF53JNc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZUoci9S+q9i3aZlQKaajMa/EtVcWYsJHeDtfJ1JCVWPgm+DYW3cexreqYC2kzYJ7u
	 1esFKiIElHRqLcO2SEfFOmtfE3UBlJ8lkDx3EYGTDwqGb7bkeNrZTCVjlXub3jgQZF
	 aEF1wv2N7XmDhDnzeV8o1OOptZhzdqrNd5wXSTv8=
Date: Thu, 12 Mar 2020 13:29:52 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Lourdes Pedrajas <lu@pplo.net>
Cc: outreachy-kernel@googlegroups.com, matthias.bgg@gmail.com
Subject: Re: [PATCH] staging: mt7621-dma: mtk-hsdma: make a variable
 non-volatile
Message-ID: <20200312122952.GB260420@kroah.com>
References: <20200312121548.6719-1-lu@pplo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312121548.6719-1-lu@pplo.net>

On Thu, Mar 12, 2020 at 01:15:48PM +0100, Lourdes Pedrajas wrote:
> Change variable declaration volatile unsigned long chan_issued to
> unsigned long chan_issued
> 
> Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst
> 
> Issue found with checkpatch.pl
> 
> Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 20b898954416..e146c5bb5609 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -157,7 +157,7 @@ struct mtk_hsdam_engine {
>  	struct device_dma_parameters dma_parms;
>  	void __iomem *base;
>  	struct tasklet_struct task;
> -	volatile unsigned long chan_issued;
> +	unsigned long chan_issued;

Are you sure this is correct?  Usually a change like this also requires
some kind of lock somewhere to ensure things work properly (not that it
is not working properly today...)

But it's not always as simple as just removing 'volatile', otherwise
that would have been done already.

Please do more work to determine if this is a safe change or not and
write it all up in the changelog.

thanks,

greg k-h


X-GM-THRID: 6946206210186018816
X-Received: by 2002:a2e:7614:: with SMTP id r20mr5812983ljc.80.1617290964671;
        Thu, 01 Apr 2021 08:29:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a48:: with SMTP id k8ls1359629ljj.10.gmail; Thu, 01 Apr
 2021 08:29:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy7/rg6NEkOojOi/yTsOASy/dOKCMuopva5D7XJ9Pxpkh6Pj8xaIMp/N+GC5RODAX/nCKAE
X-Received: by 2002:a2e:7007:: with SMTP id l7mr5771855ljc.436.1617290962934;
        Thu, 01 Apr 2021 08:29:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617290962; cv=none;
        d=google.com; s=arc-20160816;
        b=k357glXQpILMs7vbDvCl5WhKaaPAEfDt9eE9FHxNHJwtvm/rzLqhmTBgxetvzF5PhY
         rSYZ1EQ+zYkgZ14H/I2eFxmLL663Fp/YhDzlgzffvqQ8hMTiVrfkYdRkR1IzcAuLO0pI
         i3jPeTe3Ih2tEhgmiU3Rt74n64zkzBctC4/x1pYhhwLXYt0+ps+rQSB6yRUOBZI89xAJ
         Euqg/pLdRyUewDfpDF9sm77+a7JKcA3p7QpziFzBw/z+lhbdwSjaFRIFKfYFInTDA4FG
         KgW6jm4xTC0sUyHf1053J4AK7dTyswAisi1ioKl4x5VFEAgA97ApQ+feQfVJ9Gj/zKpE
         iqFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Kha/E3uhoOiUrD0C/aeRnYYOJ8L7PhbQTFEePWXTQ9o=;
        b=AOC5dCKugZF1Ev+zx0/vJg4aZ9U3FcRYD34pS7JXYcFsNpuhDnCjFqMH2yn75hfGFb
         cC0tlClJcoMshq0UPypM+cafZ4YYUpY7TtuIR74HqEXh9/bj0dUbtWkPxIB9UYeQma0n
         CbgByK430AIh+L3ie26bHMQJ+KRGp0l8anVB52Xkh3+insvHJDNoV7WQRSNRmjTiSvbv
         gci54vKLpkW+mqsUhp/pmAVYEG4CTywuXY2AnZ1imXWsTlyUK1wQFWB39JaCDaCgJtUa
         JxdkJkWzf3hZVerKuCW9oAGi4rEqWaDYp/AJo4plsQZiZcfX0A2T1Vlh851oYyhPR9ev
         iy7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GiF2UwUH;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id d32si353434lfv.8.2021.04.01.08.29.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 08:29:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GiF2UwUH;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Kha/E3uhoOiUrD0C/aeRnYYOJ8L7PhbQTFEePWXTQ9o=; b=GiF2UwUHIZnHkEkOlcxLLgluR7
	syNox8h+RaBbuIUiOBghBF3CDGQNuaIbRzy7mWDoxwenL11iVarDDi6MmiRxTFuHb4kP13LZvn2f6
	35thsXdGlyCG8MGNauINAug1BzBEFT4pbD4wIwaSunIPgfbfA8chATkAqldy2DO/PybrFImdLg0wO
	mNCslbxOAuh01cjc+scg0jSBhcVB/IKtD58/f7a4sI5WIyiXdtrZHuStvqjyjgZ+eAffpU+zYNZVS
	Hu1zZPxQtOxOmhNtAXhJ8AFMfHi/hVJ78H7v36FIrf0oQO/kkb9wcbdYgR1IsDDx2zA9fDFxDwcsV
	kRF2tr4g==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lRzFU-006IH7-5h; Thu, 01 Apr 2021 15:28:46 +0000
Date: Thu, 1 Apr 2021 16:28:44 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: media: omap4iss: Ending
 line with argument
Message-ID: <20210401152844.GF351017@casper.infradead.org>
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
 <441d27060ff6477d0ad418f41e194b96373c1f7f.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <441d27060ff6477d0ad418f41e194b96373c1f7f.1617287509.git.martinsdecarvalhobeatriz@gmail.com>

On Thu, Apr 01, 2021 at 04:07:38PM +0100, Beatriz Martins de Carvalho wrote:
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index dae9073e7d3c..e8f724dbf810 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -559,9 +559,10 @@ static int iss_reset(struct iss_device *iss)
>  	iss_reg_set(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
>  		    ISS_HL_SYSCONFIG_SOFTRESET);
>  
> -	timeout = iss_poll_condition_timeout(
> -		!(iss_reg_read(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
> -		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
> +	timeout = iss_poll_condition_timeout(!(iss_reg_read(iss,
> +							    OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG)
> +							    & ISS_HL_SYSCONFIG_SOFTRESET),
> +							    1000, 10, 100);

This is not a readability improvment.  I would factor it out into its
own function.



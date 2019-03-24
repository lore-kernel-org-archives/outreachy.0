X-GM-THRID: 6671224625234444288
X-Received: by 2002:a9f:2c8f:: with SMTP id w15mr10551450uaj.27.1553417612211;
        Sun, 24 Mar 2019 01:53:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2743:: with SMTP id a61ls2255328uaa.0.gmail; Sun, 24 Mar
 2019 01:53:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFgRKopqhyWQ8tCYTA/SSsphocJm153ZAVt1ul1hhIqPZiBY3m8or92NY+J5CQv/8JtZAW
X-Received: by 2002:a9f:2f1a:: with SMTP id x26mr6632725uaj.20.1553417611590;
        Sun, 24 Mar 2019 01:53:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553417611; cv=none;
        d=google.com; s=arc-20160816;
        b=zvx+LkpEn86g8UkUV13bW1Cc88Ef/uzEyozKdrfl3pszG4PU7inDEZxY5jer7m2/eq
         fiSuZ16g0bM8UB8m+8+jLjQYpPd3BtFOfwZGy8zO6Nm7WdPjpf1zzA7CaKYABu+V78TN
         1ydt6pVYyCEzYwjTTTqpqJSAoEDhqL1jkWOKfo0f3GTBS67xwDuSl6XeoOfHu+Ri5mTa
         4VQBDeiS836KE1juoT2Lw0xJflQRAUnSZ187d7oMS1wIYvp3SP8B9INed08yRYaURxrQ
         JzoYqyjeS+4f0JBfxC7BRwB82JE9Jzpx719wqiEd3f2xLglJzjE26Box8eyH8obwhAoA
         0Sgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZeToxulrH4+aRgfvFxfQDOx3HFK0Wjs/ggpIG9/j79I=;
        b=PTrfODtsqB+0TlSJRNRSvwSKk251Ta/YlcflNGQp00PUK6BwVWveWcTCVwAZ9EdAdr
         RbnfCjHSyqlG//FxUVGoNQgzyXCcC+zbBIJ6WzzG3mxnI2bpBe938m5LZPoZTs4IK8uQ
         Ejw+toiVDglrWLuZY7WSU0nkrZrClrVgy7Ee+ixHNM2sM6MttHkqNW/3S6m59m5hZU1E
         t5FBAHoPAc1+YTvUB7zEDImk+dNOtwu0acMNddLxjetaIdHP1iGRAKuYSDExXQ+1TWgN
         OZf19CWspe+8rJZ9JobYgIZD/AI4lUVdn5DymmCHKtcd06svvO9oNUf3m5rC/G9BAB8O
         V0Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KX6rfZFJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l18si634998vke.3.2019.03.24.01.53.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 01:53:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KX6rfZFJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [89.248.140.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 17CD52147A;
	Sun, 24 Mar 2019 08:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553417610;
	bh=h3SpTxanAbiXs+Qyxg+2eEboPVf4hpO3TQNe41/GL74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KX6rfZFJ4zmMvB6G4ywk3ZG+7f8wj6wNpFydXXB329sbVHJCJ7/233I/NIqRSfpPs
	 myVLYykIlI7h38tDwjKx4nO6hp0/te7qZVcpv9WXzmyCStcMkq/9Vp81d2nbFo32wV
	 JPUJWSbIoMV2R4dOWR1754IB109pguUErh7LMZgA=
Date: Sun, 24 Mar 2019 09:53:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 5/5] staging: rtl8723bs: core: Remove return variable
 in rtw_io.c
Message-ID: <20190324085328.GA21171@kroah.com>
References: <20190322143827.24480-1-nishka.dasgupta@yahoo.com>
 <20190322143827.24480-6-nishka.dasgupta@yahoo.com>
 <20190324084946.GA17494@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190324084946.GA17494@kroah.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 24, 2019 at 09:49:46AM +0100, Greg KH wrote:
> On Fri, Mar 22, 2019 at 08:08:27PM +0530, Nishka Dasgupta wrote:
> > Remove unnecessary local return variable in rtw_io.c. Issue found with
> > Coccinelle using ret.cocci.
> > 
> > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > ---
> > Changes in v2:
> > - Remove trailing whitespace.
> > 
> >  drivers/staging/rtl8723bs/core/rtw_io.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
> > index d341069097e2..985eaa49ad3c 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_io.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_io.c
> > @@ -45,8 +45,7 @@ u8 _rtw_read8(struct adapter *adapter, u32 addr)
> >  
> >  	_read8 = pintfhdl->io_ops._read8;
> >  
> > -	r_val = _read8(pintfhdl, addr);
> > -	return r_val;
> > +	return _read8(pintfhdl, addr);
> 
> This did not give you a build warning when you applied it?  Odd, let me
> check...

Yes, this adds a build warning, so I can not take this patch.

Always test-build your patches.

thanks,

greg k-h


X-GM-THRID: 6755712048500310016
X-Received: by 2002:a1f:5787:: with SMTP id l129mr13178797vkb.41.1572938429813;
        Mon, 04 Nov 2019 23:20:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:3239:: with SMTP id x25ls997295vsf.4.gmail; Mon, 04
 Nov 2019 23:20:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqyFzhmQXu6K+VFTs8MLREJFD9dVzmHUtcjBly7BxLT0TcnECjph2Un1dDA2mCht3cmO0Rnc
X-Received: by 2002:a67:1285:: with SMTP id 127mr7564338vss.187.1572938428606;
        Mon, 04 Nov 2019 23:20:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572938428; cv=none;
        d=google.com; s=arc-20160816;
        b=xElx6Qr1WFnqwUGce3oiIxg6J2G4EXXjQGT0VlN1+dSCrNIV/rfq6mT/aDA7rkWdAh
         ixlKO3zWXGYpcaYyNsRxH5ks4XPwf7Ovgu5yqhluno4N0QlqS3ly70H1Nar6rZYid/I0
         vRLAnLgd5heA0wE/cYMkJorIdkTVefT7xAwGdCM6E27d/bdrQJ5WAppaVqDUEhhs3FG2
         kqopJnBxD9t//0++e5o5vERzimiCRfqsT1FkmMhDWnnrCG5dUBYkIdlswSRncbZrM3vk
         Kwz53CvWO1XeYK3swsO7g9yhze1iSYgb1ScHFh1xy74aaDAOwxF6X3/y4pzwPkbOBZPR
         BR9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HJIhUpHVmqACecJNKnOBO5vp71bhbQDTxrwik9IHwHE=;
        b=in5r6KA9H4CA4WwAVgN4m/ifocGzJfPHesTDzLBbZCjlhP/6qXQlIQvBVo/mqmeqr2
         vSIT5lvxySd6XqVd1uyRCPd7t75mFA1JupnjtF97gCN58zcWYrrxwihCHgUeQOVwMLbO
         QXH3j/XuPKXEAPvQAdHoYzOuwFPENDgvQEQ6yPuRLnlbfuEEE78jU5g3phbCnH3H2qFs
         laHsan0ldrY7cNgNEpxvZ5PGmxDu2oV/5gAgcJGYeFI8B1yLpipLYYC5o2Pr7HFn0rgv
         7pZ5zH50Vd8Mp4aBAXU0CZuacAPgYbWVYOjsJmC2HC135A1gROPiqD3lSzW9xh/fRphD
         gvEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1X0NR2MU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si80383uan.1.2019.11.04.23.20.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 23:20:28 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1X0NR2MU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (host6-102.lan-isdn.imaginet.fr [195.68.6.102])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DE0D921929;
	Tue,  5 Nov 2019 07:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572938427;
	bh=HJIhUpHVmqACecJNKnOBO5vp71bhbQDTxrwik9IHwHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1X0NR2MUheyrBA/jm+psmConmQcWoYl3LQN893pMgdGowbdo7Is/LPgI/N5+Bs9Kp
	 U+X8X99BFs+oq/zw4p78SAfuUxDRJ758RzNZk+6nJQdIO+XW7GVRYjBeHqU4TYBY7H
	 L4EHKVYeM7uLtT2GofXkSJJ/p8YxRfufkkMsXQcY=
Date: Tue, 5 Nov 2019 08:20:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Cc: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: wfx: Modify return statement.
Message-ID: <20191105072024.GA2587462@kroah.com>
References: <1572936777-105285-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1572936777-105285-1-git-send-email-nachukannan@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Nov 04, 2019 at 10:52:57PM -0800, Nachammai Karuppiah wrote:
> Remove return variable and return the expression. Issue found using
> coccinelle.

This says _what_ the patch does, but not _why_ you want to do this.

Also the subject is very odd...

thanks,

greg k-h


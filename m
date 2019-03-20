X-GM-THRID: 6670195041552564224
X-Received: by 2002:a17:902:4ac2:: with SMTP id q2mr7294776plh.112.1553064449837;
        Tue, 19 Mar 2019 23:47:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:65c9:: with SMTP id y9ls614103pgv.4.gmail; Tue, 19 Mar
 2019 23:47:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7fFN/ttvWCx7HzhlwTXFv3EXrtVe+Ooh/dOXEtC6eqUnwMqwaudtcVKzCHRCZKceaAYwr
X-Received: by 2002:a63:541a:: with SMTP id i26mr8475094pgb.45.1553064449029;
        Tue, 19 Mar 2019 23:47:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553064449; cv=none;
        d=google.com; s=arc-20160816;
        b=rFlXgFW7H8a5Xu0RKCe/zt7V15uyzXGDSmjZUEEe2S90GHicIzMefUogMOElWaHDQJ
         OePODA27iz0aPDvD9Kj7kMpBQAXdcRSXOXNFkQFiZSWPjn9mzvARQVS22tIkIWYGVsmU
         7gFu3f9i9/2A+SXcvy1ziZ+JOt+dvpzTaAFTvAmDRTQ8EKkk0KgXCGEoXvFRCdP09t8s
         wt0V7B+aQ/5xtpVbBk97BlrcxZyBLZ54m0+Gz7UbaURpDciT+cQc2uoLjWNcgKrdzUVM
         p9HuCWvzqAbAzGVHEBJfR9/TAb8jXwLvLyJKWtCGvC/9o9Uc8hs2x08JEmSRRvATZ94E
         K6UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VzOmsWyO8qECkbsvxOcH0GwD+GPSSCQU0kqnQ1CRneg=;
        b=wnNU4fMhgaVHqkczKVuYsg5ieZGk32zCN3lfEagg79pJnSvD1V2iACQvRjoNTyYnrw
         gnONSmpHws0Jd3nN8oHZ0HeaC4MclJGocPfh9knmzVM3Jh/KkDN7tLVPd+yw7GrdR5Zs
         vc7/JLzeL+ggWHkyGKNgX6OhRj+FrxxiSmXXqr3JYt9qSNBi7snd6cVmM+4qtDAQgfYf
         pdwMt/jnIKc0UwRhMG68vXaoYuNXqwAq9rd+HFVm1fpWEAQ2+UTVRtoz/rVL+pMgGIA7
         Q+GrcPkBZjrARsTgPey66Xbiu4smaX4THYPpvDLEr5SJtxKZizIB1F+I2uac+jAoUJbt
         pF2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pB6lPAYF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c12si45625pfc.2.2019.03.19.23.47.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 23:47:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pB6lPAYF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 348052184D;
	Wed, 20 Mar 2019 06:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553064448;
	bh=RpQwQn22fkcsy7j5Hn+GYCgeAynKKFd9F9ceM9n9ud8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pB6lPAYF3dseHvMioBLTRowV6cxe2XeVz8V8ScVraAi+t7qaJOuVJtLXIurHjnwgd
	 cMb68dY+QZhYhBNXFKhZJOAFnJQ1SkhkZedX6rlfR3ISuqlQsbrKcXhjbsySGbqGZi
	 0Sk9HDTkK8cOnDmaGYhin35y/GcwC+d2KuQ9eLaM=
Date: Wed, 20 Mar 2019 07:47:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, johan@kernel.org,
	elder@kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Remove parentheses
 around variable
Message-ID: <20190320064724.GA11556@kroah.com>
References: <20190319200308.10710-1-nishka.dasgupta@yahoo.com>
 <alpine.DEB.2.21.1903192104300.2460@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903192104300.2460@hadrien>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 09:06:04PM +0100, Julia Lawall wrote:
> This didn't arrive with a From line that corresponds to your SOB.  You may
> need to put From: Nishka Dasgupta <nishka.dasgupta@yahoo.com> at the
> beginning of your log message (after the subject line) if you aren't able
> to have the message come through with a proper From line.

Odd, it looks correct to me.

And you are top-posting :)

thanks,

greg k-h


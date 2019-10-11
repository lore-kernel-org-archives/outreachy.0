X-GM-THRID: 6746031998697996288
X-Received: by 2002:aca:afd4:: with SMTP id y203mr12121314oie.34.1570795641907;
        Fri, 11 Oct 2019 05:07:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:ed43:: with SMTP id l64ls1366002oih.3.gmail; Fri, 11 Oct
 2019 05:07:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx6aFsIE9pg/p+emHZzOgPwMSAIbcN5ynIakWGg9mlyprA2fWtg+Ep7QJKM4DtPpTZp7B0H
X-Received: by 2002:aca:180e:: with SMTP id h14mr12039666oih.142.1570795640993;
        Fri, 11 Oct 2019 05:07:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570795640; cv=none;
        d=google.com; s=arc-20160816;
        b=H5T8bOKHPx0BAZBbhBUXYN/6n3ET2yFdSUTyo8luM9q1mDG9Ca8dxSQo2dtJ39voGO
         rhD4WQUYL9ArNMaixZTzdgHnw8Az3xZ2L6ln752W3Gp8AX4f3fu/J/HfgX8ZueTBx1QA
         3zh8+5492CukeTwWzDRDzHmG28zHx/J5Msya39d2gR4gLzhNLx3Bl6vfROQqbAY3fgUR
         DocVTLc+1Bab3B3C/st26h4aA07vj5PbG2I/k8Fu7PqBaR8A2wYIVW3ht41AdjhyUr6l
         Ev6NY9ZDqdisD75njkKo7Ga5LIev5w+Z0Ni5JMmSPC5NNvMnMZ9x25P4JdGC9LBxx7lC
         fpiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uHhWbLnXpL0gYDPhrp3usccl5NhGUfUhmLnSegqx9ek=;
        b=V7m0vtS9V3GSHbnCwMNZgX+VtmPDej1g1Iao3nZnka9KxJxOtdWuhVabJESaF4e9/6
         lcc3usfEuvGzeoZ4+CouaURtPNWW3jqGV1PugUoPl49SgvPprLUzNmuYPRnqLiFpiwpb
         +tI2wIilmowO4n2PccXvzkIGyUMrrPVhqPYOSDRg3BNfNdocBvvY+13mpiQCfT6+3zHM
         6o1ziOObhTdbRHrEOx1aaOEaqfcTTdoKerDYewEF5JEWZgSpK1t/BDag6ST60RtxbkhN
         YiBSMYzSpAiq/O9IpPDCihXJL2A6IQJ39af/ySbvc+q/V0KZ0nPsoO4oEtZKXfbv7r2x
         9zDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=StRBtloy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k61si27236otc.1.2019.10.11.05.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 05:07:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=StRBtloy;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8858F214E0;
	Fri, 11 Oct 2019 12:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570795640;
	bh=luSFrTkBXjevkpaPvjpFIgRDMR8A/l9LbZkUpNdfjqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=StRBtloyZl+V2nooPzdDNkLeY8Q4RNnUXngMumOm1NmCO/jAbLVdStLemjlsMRsaR
	 6PJ+fO0t/wk6xuELos57cHKMIchR/bo8EXVkZKNHfLrg1GUu9jJLZCkH4mGUn03jsz
	 iUahYDmgI9vAejsgc4bHuUrEh+kFy7k+pe8MwwTo=
Date: Fri, 11 Oct 2019 14:07:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Wambui Karuga <wambui.karugax@gmail.com>, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191011120717.GA1143018@kroah.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
 <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
 <20191011105404.GA4774@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011105404.GA4774@kadam>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 01:54:04PM +0300, Dan Carpenter wrote:
> On Thu, Oct 10, 2019 at 04:15:29PM +0300, Wambui Karuga wrote:
> >  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
> > -	if (psetauthparm == NULL) {
> > -		kfree(pcmd);
> > +	if (!psetauthparm) {
> > +		kfree((unsigned char *)pcmd);
> 
> This new cast is unnecessary and weird.

Ah, I missed that, good catch.  I'll go drop this patch now.

Wambui, please fix up and resend.

thanks

greg k-h


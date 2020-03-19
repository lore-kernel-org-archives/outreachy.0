X-GM-THRID: 6805826308521590784
X-Received: by 2002:a05:6102:2042:: with SMTP id q2mr1163096vsr.10.1584606965464;
        Thu, 19 Mar 2020 01:36:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:13f3:: with SMTP id n48ls12741uae.1.gmail; Thu, 19 Mar
 2020 01:36:04 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vufxPuWp6UdDCKXz+KsGjV2VOAY9GEErROUpCmAQk0iN6r93LXeeXf0uFc/A//vakt785TO
X-Received: by 2002:ab0:65d3:: with SMTP id n19mr990715uaq.48.1584606964250;
        Thu, 19 Mar 2020 01:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584606964; cv=none;
        d=google.com; s=arc-20160816;
        b=z3CbTAZmfeTxrARKx9DUp4a2Wu1Yd3cUhx5RxO9L8rY5cyJ2kkOubjIj49uATMJvXD
         +tvRgAtql7e5gompBkKPBbocYFsccc2dMiHoOAHrcD74a7UoqEnLJQuHpTTMpsYDHhPD
         hLZjsr0MCkHyleSaHsHS+bHMJ6I/U4lZjraXw/m26eZEQnfTvi0gthakaba42QTU0EJX
         GpZbdYPSHsx/jUfLLcep8WuPZd6B+5/e+DeygB5HyP7bck9KJBaDUnT9X67tJrAgW+so
         F8hgJPpNc9FGHiah3EHDUgAoq9znuEgqYdFX+3rCLvjmEzWiTBeMhvbNZ7aSHFuXQkxX
         WevA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=90rUg2sTEO21jRtMmugx06+BPJCTz6iKdebhOkAXKNU=;
        b=sv4iHqp7oMaR2xNVmwNt7Y3QANpf+LKvVLc35efyIZVxPzfir9xwhfFUV0xrhRsaDy
         8y7TESkpcZww2DgHmI5c7/cD5yC27oxvklvWvE/EdJwjw9TYMbXbqWCX6Xd9Wsmon0EE
         HC7562du2WpIBd5XEg2Ipo3HKHIkOVZew6PteGYZmVL5CSai1fWlF7gUrBcAZKjOfb0Z
         sNIuBeZLVTdwhpKmumj7ABeosoI2KBgde5WjZMxao/Rk/dFZ7i4MLi5/leDtIdjzsyg6
         s7N5AT7xzeGHPn/qSQ1w6649qXf5oxg6leMYMWnv0B1IHHbTgZqvEgnC1JXw8sF8a0IN
         RNVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H2pQarUC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c3si69477uam.1.2020.03.19.01.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:36:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=H2pQarUC;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9945920724;
	Thu, 19 Mar 2020 08:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584606963;
	bh=cEvx3sM8LiUbD51ya+fKK0SGCbzEApmOF5l8pL4a1ZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H2pQarUCV+XzzlbXhmqq20Ce3A0JDLy1lrvuPXgUox6GF0QXrvS5xaFBurrE1HX6L
	 phwZsGGiuGvatxzhg0IDxDyMmDl5XCVfC2m60pXeSD/NTlKSHCgBxw394c+eNgnT3S
	 P4JW/W3zoytLXRyBvsMFdn0tSfB4hR9SCHujzAFY=
Date: Thu, 19 Mar 2020 09:36:00 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319083600.GA3490824@kroah.com>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
 <20200319082249.GC1723@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319082249.GC1723@tulip.local>

On Thu, Mar 19, 2020 at 01:52:54PM +0530, R Veera Kumar wrote:
> On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > Hi,
> > > 
> > > I posted patches on Saturday. But I did not got a msg from Greg
> > > about they being accepted. Yesterday Greg posted that he has
> > > seen all outreachy patches upto now. And if we do not get reply's
> > > for the patches we should resend. So I resent it yesterday.
> > 
> > What specific patches did you submit that you did not get a response on?
> > I do not see any, but I might have missed some.  What is the message id
> > or subject lines?
> > 
> > thanks,
> > 
> > greg k-h
> >
> 
> They are:
> 
> Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
> Message-Id: <20200317233020.575-1-vkor@vkten.in>
> 
> Subject: [RESEND PATCH] staging: rtl8188eu: include: Correct a typo in a comment
> Message-Id: <20200317233845.894-1-vkor@vkten.in>
> 
> Subject: [RESEND PATCH] staging: rtl8192u: ieee80211: Correct a typo in a comment
> Message-Id: <20200317234252.1128-1-vkor@vkten.in>
> 
> Subject: [RESEND PATCH] staging: rtl8712: Correct a typo in a comment
> Message-Id: <20200317234701.1383-1-vkor@vkten.in>
> 
> Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
> Message-Id: <20200317235413.1656-1-vkor@vkten.in>

I do not see any of these patches in my system at all.

I would suggest resending all patches that you have that I have not
applied as I am currently caught up on all pending outreachy patches.

thanks,

greg k-h


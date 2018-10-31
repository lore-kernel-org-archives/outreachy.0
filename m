X-GM-THRID: 6618627943350403072
X-Received: by 2002:a2e:7f1d:: with SMTP id a29-v6mr398123ljd.5.1541021100103;
        Wed, 31 Oct 2018 14:25:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4309:: with SMTP id l9-v6ls876920lfh.5.gmail; Wed, 31
 Oct 2018 14:24:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cLueKgIGmg8lPFxv8NpBNFiZjy5DBg2Qjte36/alWGryTdvI3+Z9aF+ZUshBHCLGfbqIuO
X-Received: by 2002:a19:ed08:: with SMTP id y8mr437576lfy.10.1541021099385;
        Wed, 31 Oct 2018 14:24:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541021099; cv=pass;
        d=google.com; s=arc-20160816;
        b=J504Eh8z+HrIR/pJ/enMSIKgvA1+Dp8byVecdakgj3mN00UcR/ivq9W6oTyZp7+8b+
         Ghd+7Rhdc8xWpj0g0k+kw9L0HyZfcS/V1tod8j4p+I+mYTPonCiVa9qg/RRV6LBoKZeq
         aUQLg/yyGWnn8y9zXc4i/AnbkGWwUtTPsyeQOMUtqIdfTiPoc3DrMxlJ9gMLGkpZZKOw
         i1WuDapzc7WjeG5479BfPpgGzdpqxMKuy9W9ZQdKJzPPEmNXkbtHUILx9b06z0nWq8ei
         5gm+exFjqKk/8JBMNBQwYfUMcCBYVywx9s4lPpmnOZqK5eXbBbF4JHfl/9XSwFoie50q
         G8jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Vt3AJmjm4rCaB2Z3GeGGkGrUTtDm/EJolJaALLGpPsA=;
        b=E6JKexxeI5hAtUIInM/ord59273MkyVliIAsgwT/mKS4gleBBok0Y+vUpBHvqIlNzv
         Fcj+CCGfpZ1k8oqAVfgKWCROqrlXpUwHTgMTll9Gk+fA+V0OcTiOmoMwmROtNOxkOBqF
         gABqQwQPnp2oXo574+anfujEgjI7NcsutG1TLgGvxd/W3jAoedJUuK1SyNxu2OK4vZfM
         U2+CpoY49qh617CD3aKDDINGBv+tFuZ9AfYZJ9FH09dVRVPJXUXJah+OVbVYLSHop09v
         R9h9IgDomBRFqCO3bL/+1UezASXG+jijqRMsIA2V4wuOCsuiHzuw4rqccNmWiXgoUfum
         bhBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=I2B3bDMW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z13-v6si796804ljb.4.2018.10.31.14.24.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:24:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=I2B3bDMW;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541021093; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=eOva9bBiSkDDGAd2safJ1CvexiG2Ub+m19DVmaT5PT8ivl+0fumWvT9i5GJHOgMK4Us/KDtxbi4H75EXSg7lW0vBsHYDyFn1PHIrKrg2FoHMM4RacSy9vonhYz4inyzNuMkyVfSp+ur60WQbSfpqYUAao4WlBoyUzJ1a2vNZa08=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541021093; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Vt3AJmjm4rCaB2Z3GeGGkGrUTtDm/EJolJaALLGpPsA=; 
	b=PpZPW/w0TcUfqp3Vta5XAWsSGAizJRZT27fASdtkkaMd9V3fh1pB9XFTbPxqLFM5w4iJUvXaMAja4MUMvCP+EvQL7HRE0dOHXjlt5OVPMkwlmDpBMOSBQqlOpod8JbJVydJgoZOt+nW5qooKdLSLX8visnZNevrrUQaRY1q9rAE=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541021093;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2010; bh=Vt3AJmjm4rCaB2Z3GeGGkGrUTtDm/EJolJaALLGpPsA=;
	b=I2B3bDMW6Mo3zsomLDf+VAG8pzToEs88Dp16i/g/nlUpvMAWxDVFdb3IRdSHUW4/
	3eGCgJLgUUKDqAmYuetsZOoTjd4XW8kSetPZuq2XYhpN/CYnpiqzkkfVHMRfUJrNVyi
	WcetxbUejCJw5RMmU9gdfkSbFkfxEhLsremKpuc4=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 15410210924081022.721178966953; Wed, 31 Oct 2018 22:24:52 +0100 (CET)
Date: Wed, 31 Oct 2018 21:24:51 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Sasha Levin <sashal@kernel.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org, sasha.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATH v3] staging: gasket: Create a memory
 allocation error handling path
Message-ID: <20181031212451.GA10228@kvasir.local>
References: <20181031205636.GA13583@kvasir.local>
 <alpine.DEB.2.21.1810312158190.2391@hadrien>
 <20181031211626.GW194472@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181031211626.GW194472@sasha-vm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Wed, Oct 31, 2018 at 05:16:26PM -0400, Sasha Levin wrote:
> On Wed, Oct 31, 2018 at 09:58:58PM +0100, Julia Lawall wrote:
> > 
> > 
> > On Wed, 31 Oct 2018, Ioannis Valasakis wrote:
> > 
> > > Create an error handling path for memory allocation. It avoids repeating
> > > the same assignments and returns the respective ENOMEM.
> > 
> > I think you are again making a patch based on your previous patch.  You
> > need to undo everything to get back to the state of Greg's tree.
> 
> An easy way to deal with the situation you're in now is to use git's
> interactive rebase. Interactive rebase lets you merge ("squash") two
> or more commits together, so you can merge all your commits on top of
> Greg's tree into a single commit.
Thank you Sasha for your helpful comment. I tried already with git's
rebase option but that made it a bit complicated as apparently the
source tree had many changes (even one of the memory allocations was
totally removed!)

That's why I just removed my commits and did a fresh git checkout master
&& git pull. Apparently thousands of changes can happen at very specific
times of the day :) 

Is there an 'automatic way' to do often git pulls, so you are sure you
are working on the latest source tree?

Best
Ioannis

> 
> To use that, try: "git rebase -i HEAD~5". The number "5" stands for the
> amount of commits to go back; if you have more than that feel free to
> change this number to a more appropriate one.
> 
> Once you've done that, you will see an editor window with lines in the
> form of:
> 
> 	pick [commit hash] [commit subject]
> 	[...]
> 
> You can merge a commit with a previous commit by changing "pick" into
> "fixup", and then saving and closing the editor.
> 
> For example:
> 
> 	pick 11111111 "my first commit"
> 	fixup 22222222 "my second commit"
> 	pick 33333333 "my third commit"
> 
> Using the above, git will merge the second commit into the first, and
> leave the third one as it is.
> 
> --
> Thanks,
> Sasha



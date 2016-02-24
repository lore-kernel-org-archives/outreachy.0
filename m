X-GM-THRID: 6252686947225960448
X-Received: by 10.194.239.163 with SMTP id vt3mr460866wjc.3.1456332442207;
        Wed, 24 Feb 2016 08:47:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.14.79 with SMTP id 76ls902624wmo.49.canary; Wed, 24 Feb
 2016 08:47:21 -0800 (PST)
X-Received: by 10.28.45.151 with SMTP id t145mr2790866wmt.6.1456332441765;
        Wed, 24 Feb 2016 08:47:21 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x233.google.com (mail-wm0-x233.google.com. [2a00:1450:400c:c09::233])
        by gmr-mx.google.com with ESMTPS id w128si1365979wmd.0.2016.02.24.08.47.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 08:47:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) client-ip=2a00:1450:400c:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::233 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x233.google.com with SMTP id g62so280738619wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 08:47:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nnRG0pn3fhzdJoicFeZf4n7lhrWECyHOGWfDQvGsBR0=;
        b=M824s+vZoBFhmJDly5dyS8JXaKot7LmIb8CTEG/C/7LVm0AEwI0AqpXdqeH0RP5kJ7
         luJA3mrdEdkc3tuS+MxOJKWWP18FYGq79rdyD5nsYhfUshjFJPITK5pStiaINGrMZFK5
         uqkSp7oxJ9f3Jyu7j1OCfFGnqCGM4TX9dkn7pSSyLd9rtNSUu5uNnJB1vGXma7omYin/
         Two80gosltiyderLDMKStCsPKptTmjlc6lgVlZVeewh3DkfcOVJlIUSBkQHYpNFfRprn
         r/kg+b6nzNEw/888adwJYwrLPPNIIeE21WJ7SWLUR0sYMFif+Ofr1/5yMzNFbqGgvu0B
         RQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nnRG0pn3fhzdJoicFeZf4n7lhrWECyHOGWfDQvGsBR0=;
        b=lm0T010h4Mddkajm0Ie6qiUFnUm6QwFl2bJqDwJ0HCCPLnasdRbcRgB0rTsW26pEsw
         LWMoubf9kAPA45pZzqSuZTxjitJcbrtnXq3fmE8gucF7rv38mo+pQuU0KpwYeOTK5F2D
         RX1DbyTVkgN5BAPYcroX1GM8yG+FKRy1+jDCnf/N82/XEh+b4MfGag+/oHrm+8nnr0Cu
         p8GIu1lZ9J7deBVmaDTl/biAMbFaqt/lqjAThlf9sfrhcsIjXFmULssMPV4dbdFwxGey
         ko7FJAhMN0RERmzMgNXJofopM4YcyGrQYBN0uGFD6mEVmZI+Vzbv8fgdNj2VkPCqIWOG
         xUag==
X-Gm-Message-State: AG10YOTTrvmIQTDVgNYLP8h7r+kVo89i/aSz60mrS3iG7q5Us2nUzhlqxRH7BQBNTHU2sA==
X-Received: by 10.28.21.21 with SMTP id 21mr23674618wmv.38.1456332441610;
        Wed, 24 Feb 2016 08:47:21 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([213.143.50.70])
        by smtp.gmail.com with ESMTPSA id fv6sm3860189wjc.12.2016.02.24.08.47.19
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 08:47:20 -0800 (PST)
Date: Wed, 24 Feb 2016 17:47:17 +0100
From: Laura Garcia <nevola@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Return zero
 pointer after failed kmalloc
Message-ID: <20160224164715.GA3058@sonyv>
References: <20160218173839.GA9157@sonyv>
 <alpine.DEB.2.02.1602232139060.2040@localhost6.localdomain6>
 <20160223223647.GA4772@sonyv>
 <alpine.DEB.2.02.1602241020130.2149@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1602241020130.2149@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Feb 24, 2016 at 10:23:09AM +0100, Julia Lawall wrote:
> 
> 
> On Tue, 23 Feb 2016, Laura Garcia wrote:
> 
> > On Tue, Feb 23, 2016 at 09:42:04PM +0100, Julia Lawall wrote:
> > > 
> > > 
> > > On Thu, 18 Feb 2016, Laura Garcia Liebana wrote:
> > > 
> > > > Return a ZERO_SIZE_PTR in the xlr_config_spill function if the
> > > > kmalloc returns an invalid value. This change prevents a possible
> > > > segmentation fault as the invalid pointer is fed into PTR_ALIGN macro.
> > > > 
> > > > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > > > ---
> > > >  drivers/staging/netlogic/xlr_net.c | 4 +++-
> > > >  1 file changed, 3 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> > > > index 98e74d7..0015847 100644
> > > > --- a/drivers/staging/netlogic/xlr_net.c
> > > > +++ b/drivers/staging/netlogic/xlr_net.c
> > > > @@ -437,8 +437,10 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
> > > >  	base = priv->base_addr;
> > > >  	spill_size = size;
> > > >  	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
> > > > -	if (!spill)
> > > > +	if (!spill) {
> > > >  		pr_err("Unable to allocate memory for spill area!\n");
> > > > +		return ZERO_SIZE_PTR;
> > > 
> > > Why did you choose this as the return value, rather than NULL?  Is there a 
> > > way that the first argument to kmalloc can be 0?  Also, the containing 
> > > function, xlr_config_spill, is called in a number of places where the 
> > > results is stored in a structure field with no error checking.  Have you 
> > > traced through the code to see if it is appropriate to store and invalid 
> > > pointer in these fields?  At the moment, the crash will at least happen 
> > > near the location of the faulty assignment.  It could get harder to debug, 
> > > if the bad value will propagate through structure fields to other parts of 
> > > the driver.
> > > 
> > > julia
> > > 
> > > > +	}
> > > >  
> > > >  	spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
> > > >  	phys_addr = virt_to_phys(spill);
> > > > -- 
> > > > 2.7.0
> > > > 
> > > > -- 
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160218173839.GA9157%40sonyv.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > > 
> 
> > I guessed that it was the best way to return an invalid pointer after a 
> > kmalloc. Doesn't seem that the structure where the function return is 
> > stored is called anymore. So I believe that returning a NULL will be 
> > safe in this case.
> 
> I'm not sure to understand the second sentence.  Is the kmalloc useless?  
> To my recollection, the result of the function is stored in several 
> structure fields.  Are these structure fields never used?
>

Exactly, these structure fields seem that are never used.

> Also, when you reply to a comment, could you put your reply just under the 
> comment, with blank lines around it?  Otherwise, the reply is hard to 
> find.
> 

Ok, got it.

thanks.

> thanks,
> julia
>




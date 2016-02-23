X-GM-THRID: 6252686947225960448
X-Received: by 10.28.63.19 with SMTP id m19mr2215726wma.0.1456267016477;
        Tue, 23 Feb 2016 14:36:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.148.215 with SMTP id w206ls732428wmd.4.canary; Tue, 23 Feb
 2016 14:36:55 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr4438762wjc.6.1456267015951;
        Tue, 23 Feb 2016 14:36:55 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id h73si18413wme.0.2016.02.23.14.36.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 14:36:55 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id g62so245331101wme.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 14:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=WDxW/E0aOknUMFVeotcedExOj3d0x3NWLeoCe5JeISQ=;
        b=YilOa6ougRUDCzAYtdwGkEbMKNrvjhg4VC2nvTrtlpsVsl4J98PxzvMpm7h1R91Z6q
         RMlHC4KDNm7l1Lyrps9vKJGWZsY7rFk1gD+44I+z6PfH+xfjo7mUgdenB1tZIXTTuww4
         K0Z4kPW9n8153N88390iF9Di/y3CK4UJRSSEgxnMmz2785udQqiC0s3iOxN2XeTGdNNR
         ovSoBy9pWEFmjTZEAR534HnPJu0FV31JB2uvZ0tPYM0gM2oGSX9uAEsZtmYCioIy3xAp
         32iwUD+h+ogWJHL1tu1wXqSC54MUw7gZ4AyR6mk/5dSMdWm0XfBnif/dxsMrejPpZ7ob
         fvBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=WDxW/E0aOknUMFVeotcedExOj3d0x3NWLeoCe5JeISQ=;
        b=hvKaxaT7jGdORmw6WYNdGWI6dyKhSm8/LkAbM5l0H2BYYXnqQZh5rKyP0BVD1aEJjw
         BwIb1HoR+SRj2Vtixp0x2jlRqISsOOhh2I0rXWVeRWqgmv1hmwV0gOKeDMfai7H57MAW
         k4vCKbK0FyL/PT+AV4pszrejw2qd4jOYyDQCTBo3prPOgWqEXVO+hXkp+WnG7znSLTwN
         xkd/VFTbQarnia5gJzuDQ2/zAdtMMOwnpBuimX9nuY5O5FK/eIUHADrUm/5+f5d24TWX
         nMIrTjhtFU7XjhLjhiurvlConEGBwHsTjSfETr15qlhlZfd3ZUUzGL2MhjDCweTRL1pd
         afLA==
X-Gm-Message-State: AG10YOTr5CkALdhlzhKjHLipd9ZubXqlv8DAxrw5JxblbTvvk6wbzxiVAtZlzGphzsWvgQ==
X-Received: by 10.194.61.169 with SMTP id q9mr35740136wjr.77.1456267015792;
        Tue, 23 Feb 2016 14:36:55 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([90.174.2.77])
        by smtp.gmail.com with ESMTPSA id ys9sm10861681wjc.35.2016.02.23.14.36.53
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 14:36:54 -0800 (PST)
Date: Tue, 23 Feb 2016 23:36:51 +0100
From: Laura Garcia <nevola@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Return zero
 pointer after failed kmalloc
Message-ID: <20160223223647.GA4772@sonyv>
References: <20160218173839.GA9157@sonyv>
 <alpine.DEB.2.02.1602232139060.2040@localhost6.localdomain6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1602232139060.2040@localhost6.localdomain6>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Tue, Feb 23, 2016 at 09:42:04PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 18 Feb 2016, Laura Garcia Liebana wrote:
> 
> > Return a ZERO_SIZE_PTR in the xlr_config_spill function if the
> > kmalloc returns an invalid value. This change prevents a possible
> > segmentation fault as the invalid pointer is fed into PTR_ALIGN macro.
> > 
> > Signed-off-by: Laura Garcia Liebana <nevola@gmail.com>
> > ---
> >  drivers/staging/netlogic/xlr_net.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
> > index 98e74d7..0015847 100644
> > --- a/drivers/staging/netlogic/xlr_net.c
> > +++ b/drivers/staging/netlogic/xlr_net.c
> > @@ -437,8 +437,10 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
> >  	base = priv->base_addr;
> >  	spill_size = size;
> >  	spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
> > -	if (!spill)
> > +	if (!spill) {
> >  		pr_err("Unable to allocate memory for spill area!\n");
> > +		return ZERO_SIZE_PTR;
> 
> Why did you choose this as the return value, rather than NULL?  Is there a 
> way that the first argument to kmalloc can be 0?  Also, the containing 
> function, xlr_config_spill, is called in a number of places where the 
> results is stored in a structure field with no error checking.  Have you 
> traced through the code to see if it is appropriate to store and invalid 
> pointer in these fields?  At the moment, the crash will at least happen 
> near the location of the faulty assignment.  It could get harder to debug, 
> if the bad value will propagate through structure fields to other parts of 
> the driver.
> 
> julia
> 
> > +	}
> >  
> >  	spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
> >  	phys_addr = virt_to_phys(spill);
> > -- 
> > 2.7.0
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160218173839.GA9157%40sonyv.
> > For more options, visit https://groups.google.com/d/optout.
> > 
I guessed that it was the best way to return an invalid pointer after a kmalloc. Doesn't seem that the structure where the function return is stored is called anymore. So I believe that returning a NULL will be safe in this case.



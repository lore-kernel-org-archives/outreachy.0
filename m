X-GM-THRID: 6468338986973659136
X-Received: by 10.31.107.141 with SMTP id k13mr5180622vki.79.1506030432649;
        Thu, 21 Sep 2017 14:47:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.10.147 with SMTP id 141ls1120344qkk.12.gmail; Thu, 21 Sep
 2017 14:47:12 -0700 (PDT)
X-Received: by 10.55.17.10 with SMTP id b10mr5053669qkh.54.1506030432014;
        Thu, 21 Sep 2017 14:47:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506030431; cv=none;
        d=google.com; s=arc-20160816;
        b=f5DXacQxPOLOWca3kOwGB7o6MmttNlwQQws790UUQQ9GeVkNQx2lgAu5wsv1smQHHL
         W6r/B63bMKxhOCE39MeYId+zBxVRTw/h1F7UzDRXt8cQ1PM5H/xgl+q1zahE2H7VQ1TB
         DxplCOfHwantXgADyjqVAoNgvcCuM/FKd7w5nZD7BkktuclXI71I/ofwrKq3BLOXxgRw
         B8OcRZ/GcQUPPOqdW+TXtwmjcwu6W/0zIeOf3EQrvg3aD+OfkX7N7mOqUHVK3LDr782u
         D8OBlpPFZg70Eu4zsMbNRRXNTB6pT7tLO8UMGNNSkDnLBz5RZIRcr0zkW4BaJCKHZ6MR
         cgig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=/Ct3hCMVFTBL3XkCJGszz4Zi06v6EWhNy2KOlg3EXNA=;
        b=hl5M2qU7tv/UKqxQDl4CJKZbMk6mDKUecJpnzI9V2x8OtwYFq1FBccqEv+OHw1dlKZ
         wyrRAGzJuim+EMcAFiXsEiW9j8yu6x0Ld7Ej7g+pieIB4beNcgt9yLRD6RPU3ipiXBHN
         PJCrWcDxdve12qZQSPzYaD2X35tDmv7UAQiczqtCrNrhw/o9Lsi7S4EwwVJm9I1FlT8L
         SDGL9SX6FxfTzZsHpZ8FAqU0pFaFYIFtgjwWb87Bi153DvHw5AXVXbuj8SljXd53Bv4f
         TPXMxPwFmpL8KikuXwy1VGbS1Em0Mzm8CbuJ9RrBXmy2SPZ/EM8B8F3NAJRqHVLLzCZf
         UvEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KrlIUx4V;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id k76si252886pfb.5.2017.09.21.14.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 14:47:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KrlIUx4V;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v5so4092413pgn.4
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 14:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/Ct3hCMVFTBL3XkCJGszz4Zi06v6EWhNy2KOlg3EXNA=;
        b=KrlIUx4VYW8EaUh77Pc/Q8ylanCViAgovtWXgZTT3goarXRwOIxL4Hi8sCJvpENj53
         Ae/l3+N8arkbzF2OjHf5tyQRyAt+fTbHXdmDJYBaQLhjL1SDL/JYA67aLRyxeziN3iBE
         eUiOojTaijn0MkiHOhUxBPlWnzo8+psotMa7U2wbddOhBT/ElzqUQ5N5KEDxov0XJvRV
         AK6iw+W5xpaPD1darEToP41+MPXQQTkVwLzVGp0mbP4rT1Sdp5uiyP9GV7ycmQBT977F
         /DQKSaCx4AeUXMQxFOyockcJJ8wWw7iAk18WPIy0Ei3aom9PEGJcynhExHOPzvTcgrML
         s+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/Ct3hCMVFTBL3XkCJGszz4Zi06v6EWhNy2KOlg3EXNA=;
        b=CM8X1dr1ZHAeUEtmrYqEqm1bLsn4yFE7tdUCAXg832GzHSPUubVKhbCmgTwXqXpV8C
         nAvozlnUbiYMzj9pybJDDESeuRdbgpYnVzBXRagysMSXH+6B0acO18rH0teydEntPUI7
         +89VbGJkU2mqS+Oj2P7fhiW3qnVpK12wEAFzcgjZRAolfCJvvWV3OKAfPg+0GwHtPtgj
         ffg+l/5pReKojceNGF2lqbwd4VE26soMFau6kGs7FuQM4SMP/jwZlOxAT2ONKZG2I/N2
         wT/jydD82LiFwZ9u5n/dGdJV95hREaG91Fs9+Cq99qVnAtzNwXUnBxlfaOGCTEq/FKNt
         hQUg==
X-Gm-Message-State: AHPjjUhD/f6+aTPm2qoVZMF2GQGVchSEE4YvlscSBRyI+1Ywu4YP7h/6
	XSty68vLbgNnnU8NyCgONrw=
X-Google-Smtp-Source: AOwi7QCE9MxkdCkFjDHz2udswaWxDW+2Pn6RWHEEglW2q1WS1vQnJb8PW4Yet8qm7+sSPnGy7EBSLg==
X-Received: by 10.98.26.201 with SMTP id a192mr6936339pfa.311.1506030431746;
        Thu, 21 Sep 2017 14:47:11 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id 28sm3850518pfl.14.2017.09.21.14.47.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 14:47:10 -0700 (PDT)
Date: Thu, 21 Sep 2017 15:47:07 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] drm: Remove obsolete "This is
 gross" comment
Message-ID: <20170921214707.GA22325@Haneen>
References: <20170921210424.GA21951@Haneen>
 <alpine.DEB.2.20.1709212316310.2857@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709212316310.2857@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 21, 2017 at 11:16:44PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 21 Sep 2017, Haneen Mohammed wrote:
> 
> > Remove obsolete comment which was initially added in 2008 to annotate
> > that idr_find() was used before idr_remove() since idr_remove() didn't
> > use to return feedback. The comment now is irrelevant with
> > commit f6cd7daecff5 ("drm: Release driver references to handle before
> > making it available again").
> 
> Why did you send it again?
> 
> julia
> 

I forgot to include the dri-devel mailing list for the first patch.

Haneen

> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_gem.c | 9 ---------
> >  1 file changed, 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > index c55f338..b9bddaa 100644
> > --- a/drivers/gpu/drm/drm_gem.c
> > +++ b/drivers/gpu/drm/drm_gem.c
> > @@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
> >  {
> >  	struct drm_gem_object *obj;
> >
> > -	/* This is gross. The idr system doesn't let us try a delete and
> > -	 * return an error code.  It just spews if you fail at deleting.
> > -	 * So, we have to grab a lock around finding the object and then
> > -	 * doing the delete on it and dropping the refcount, or the user
> > -	 * could race us to double-decrement the refcount and cause a
> > -	 * use-after-free later.  Given the frequency of our handle lookups,
> > -	 * we may want to use ida for number allocation and a hash table
> > -	 * for the pointers, anyway.
> > -	 */
> >  	spin_lock(&filp->table_lock);
> >
> >  	/* Check if we currently have a reference on the object */
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921210424.GA21951%40Haneen.
> > For more options, visit https://groups.google.com/d/optout.
> >


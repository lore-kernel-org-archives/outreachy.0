X-GM-THRID: 6468338986973659136
X-Received: by 10.176.70.89 with SMTP id z25mr318782uab.49.1506132464807;
        Fri, 22 Sep 2017 19:07:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.10.147 with SMTP id 141ls2160361qkk.12.gmail; Fri, 22 Sep
 2017 19:07:44 -0700 (PDT)
X-Received: by 10.55.157.72 with SMTP id g69mr229418qke.28.1506132464099;
        Fri, 22 Sep 2017 19:07:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506132464; cv=none;
        d=google.com; s=arc-20160816;
        b=rXM7JSu/XfDWyfJb+enIDCMQ/YJZnwYaSj1BgvGGQJdsxDE2I+f6tAywjanO2mJSqA
         hxfGjId25M5AHWkIxvjwSPUufEBW5Vxlo3ANjNzI1lo1dB5R6leEXmd1JKT8RariS5BB
         vsxMtIu9kJeZNAJpTBjV+Oc/2YAZJ6rKTZdgt/CfU97S09OGUnv8gp2WPJP/Zplovw0L
         SkDujGsweYWwjex/UjqwIMIaTRBK36GhAXcMpT41io0XxZHNUI4u6nC18Z+LXASF2R8S
         5whNuIEZSrgLDRDES3Xz5gfZhKJG61z0P6SqhkvwKliR0MFpsjwOOtcS0BNKq02seDLM
         dwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=mWrghvxRauILJ37lL9bFVXl1FvzTN0wpcVXahnNP8qU=;
        b=jNPd1DifVb7Z6MgrLebO2dF9y7V2rJ0kX1DLyrmzZSxUN6K18T/9drWVK/qFBKkr6o
         N5A6LJlLaTiGy/daKEk994xYXZf21SVxuUGbX3wYdEkefNeCUTD+ssONIInvx1XsNokW
         A6Zed7ZIiRGBCPRhRnMA2n4GQoxk5HHq6f4N6VT5cz1G2NPKCWXJe7PVU5wNmxy77Qgo
         91CreVFRnATNLv9cxpWWEsPaMGMdI04vGSBTHQrtboXPrqmYmtOYw9MIRUDFq5cQzUyQ
         Iu2tMLT2bKI40y7scY2cObp4RHlI3GEckF2IT9r3F18jZd/8J7ieTlheNRlpbQCrAKrL
         0RcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H1T5Ht6j;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id a17si97806pfk.15.2017.09.22.19.07.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 19:07:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H1T5Ht6j;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id h4so1167447pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 19:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mWrghvxRauILJ37lL9bFVXl1FvzTN0wpcVXahnNP8qU=;
        b=H1T5Ht6jpfOEiQcTbrxuLw7rsm36yJH/ivDylbUoVWndmF5D0YuNIRV9hXGW9vTAhH
         oA2FNAgh1s/dKFrgDYZSt5Kls0jVczokxk0BzPnw2rD+Zqjm2tharQyhpXJMWmWwneLn
         lXZwcPKBFJTaxepy3qlN01puyEegc9wkGOofI1dVfE0QPNyOvjOgs9KMRTqNWF6K7IsD
         MqNLq+KTQCa6Piew7kfAASui8xSdCfkIJIThyWPswUrO56goW/0i9C0UQnFk57Mr97j9
         FJzHEeNoy+NPm/PjbbYLPiHO/juSwINPgn++lNoH52gVMcjAu0aYnfk6YeUJXtOb6dS6
         3z1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mWrghvxRauILJ37lL9bFVXl1FvzTN0wpcVXahnNP8qU=;
        b=GzARwDVfVthrXatlrInILpx9/o0e2NJGIGNwN2c5FPRdST1ua/Aa3zBe9Hj6fdbTMi
         mhYcGWTsX9Aferkc/1cg13Pz5MRgztC8BffHArBU0ch2V25CbLlv6NUdzqkvmxMIBXyw
         2rwn8BbR5lq4Dxt9pR3HNTbs/LtvmOw6a7GVbNKJZrXwJXtYPbYu/qWpYgPNh5C445Am
         DyqczAKlKcSV2myod9mZFvAKPSe/vDYvuivqrOe+bIzs5qUPn/N07e72LxLz4STFWnmv
         4UUkdIHX6x5wanw2UaQgL/yign/+7lWsqC89xZIfI0I3atHVRAtaq4YYfHlGDyULDqWi
         CZHQ==
X-Gm-Message-State: AHPjjUjYj50MVFQVQOeb0u6EsmTnkRfMDLQesn2HHWpDydYYo6mlzTS1
	k6apRVj+RxKp37Za1TJ/8qk=
X-Google-Smtp-Source: AOwi7QCLtYt/4UOCaE6KMmy33innCZGLFXykwhPoMDRsxalkYD1i4jft9e6w4O0Z/djMTBIPv4PK9Q==
X-Received: by 10.84.132.4 with SMTP id 4mr826647ple.449.1506132463830;
        Fri, 22 Sep 2017 19:07:43 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id t81sm1264568pfg.154.2017.09.22.19.07.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 19:07:42 -0700 (PDT)
Date: Fri, 22 Sep 2017 20:07:40 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH] drm: Remove obsolete "This is
 gross" comment
Message-ID: <20170923020740.GA7431@Haneen>
References: <20170921210424.GA21951@Haneen>
 <alpine.DEB.2.20.1709212316310.2857@hadrien>
 <20170921214707.GA22325@Haneen>
 <alpine.DEB.2.20.1709220758480.2019@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1709220758480.2019@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Sep 22, 2017 at 07:59:36AM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 21 Sep 2017, Haneen Mohammed wrote:
> 
> > On Thu, Sep 21, 2017 at 11:16:44PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Thu, 21 Sep 2017, Haneen Mohammed wrote:
> > >
> > > > Remove obsolete comment which was initially added in 2008 to annotate
> > > > that idr_find() was used before idr_remove() since idr_remove() didn't
> > > > use to return feedback. The comment now is irrelevant with
> > > > commit f6cd7daecff5 ("drm: Release driver references to handle before
> > > > making it available again").
> > >
> > > Why did you send it again?
> > >
> > > julia
> > >
> >
> > I forgot to include the dri-devel mailing list for the first patch.
> 
> OK, it should have been a v2 with a comment about what changed.  Even if
> it is not a technical issue, it saves people wondering about what
> happened.
> 
> julia

I see. I thought only if I introduced a change to the patch I should make
a new version. Thank you, I will take this into account next time!

-Haneen

> 
> >
> > Haneen
> >
> > > >
> > > > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/drm_gem.c | 9 ---------
> > > >  1 file changed, 9 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> > > > index c55f338..b9bddaa 100644
> > > > --- a/drivers/gpu/drm/drm_gem.c
> > > > +++ b/drivers/gpu/drm/drm_gem.c
> > > > @@ -282,15 +282,6 @@ drm_gem_handle_delete(struct drm_file *filp, u32 handle)
> > > >  {
> > > >  	struct drm_gem_object *obj;
> > > >
> > > > -	/* This is gross. The idr system doesn't let us try a delete and
> > > > -	 * return an error code.  It just spews if you fail at deleting.
> > > > -	 * So, we have to grab a lock around finding the object and then
> > > > -	 * doing the delete on it and dropping the refcount, or the user
> > > > -	 * could race us to double-decrement the refcount and cause a
> > > > -	 * use-after-free later.  Given the frequency of our handle lookups,
> > > > -	 * we may want to use ida for number allocation and a hash table
> > > > -	 * for the pointers, anyway.
> > > > -	 */
> > > >  	spin_lock(&filp->table_lock);
> > > >
> > > >  	/* Check if we currently have a reference on the object */
> > > > --
> > > > 2.7.4
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921210424.GA21951%40Haneen.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170921214707.GA22325%40Haneen.
> > For more options, visit https://groups.google.com/d/optout.
> >


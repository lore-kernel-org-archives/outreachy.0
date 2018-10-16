X-GM-THRID: 6612898342094503936
X-Received: by 2002:a50:ba57:: with SMTP id 23-v6mr5104950eds.7.1539693465497;
        Tue, 16 Oct 2018 05:37:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9970:: with SMTP id l45-v6ls8475705edb.9.gmail; Tue, 16
 Oct 2018 05:37:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61eRpu4ER1WgwLs8/dcorP3RLMHLVf5OwXgGN4qWAEY7CJie5kGGOqx8QOD+FZfUtYeTZzj
X-Received: by 2002:a50:a550:: with SMTP id z16-v6mr5106404edb.12.1539693464392;
        Tue, 16 Oct 2018 05:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539693464; cv=none;
        d=google.com; s=arc-20160816;
        b=kqlhXg6XBJBlyqEPof6gJsrnHfALYhx3pGITVwvbEKxfIH/eW2ZuiB5lm+MJFi+1HR
         +h87784Cd0vBiW8X2UQrXT+hlzKY5NpzHzw3n+tHKFNA6T5rYqcxXEZhW3y63i/SQ+ah
         6kwO25hr2L5HJ4AsTEKEOsXwt7YrRcO9wYwkS22jWZjDMUfxNTyTvnk3RLstyyO5Dw9z
         6AedZPGJsQ1k0xDQsOXgSK8+pGKLtNvXjXBwOXnHRLYA0Dj2QD1P8UMXAyKRDAVEIMmF
         PFEMpdXQsYssi9Xj150U1/u7pH4p3Gi43ELViBaXMg0H95bhY44AzGw1c327xmvsv8rX
         P45Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=4OZ+nFkCP+OZ+hRduxtHg76wiasGfzqEvFS8NknmPOE=;
        b=KutU3IOOij31bsxICo4Js7OFFYQ/jDfqJmuV3pGvGB75/ZdqcsRk5TGONfz9vjg7Eq
         VVymIgKZMHf4RKYScOuBed25jvZJdD/EYEHIgA1xpDcHtJz/m+gRFHrYrszNskgp38I3
         FmoCEzNHkmLJZNJTOZIG51GKcOWqUl9071QTqftNhjj9HE6u0HirogC3TwlFK4A8Rl+x
         hziwT5GLVc/YQWuxFPlWRf5MrhkyLOKEfkfzt0tBs4hXz6aCiw+cxmWou3zsrnf9WU4n
         k0etUxnJhovrXGjVBxw1ObnoCTfArRGfvfeV9OVgmAvKsChKl/Q6PNDuLDs0EdtDcKE0
         JXBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="Xhxk/YIb";
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id cj24-v6si453671ejb.1.2018.10.16.05.37.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 05:37:44 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b="Xhxk/YIb";
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x544.google.com with SMTP id r1-v6so21161059edd.7
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Oct 2018 05:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4OZ+nFkCP+OZ+hRduxtHg76wiasGfzqEvFS8NknmPOE=;
        b=Xhxk/YIbESI8iNPTP/38BIypOp0TOEZ4ShaabccQxpSd8/cWHd3u7oTznx19QDxEU9
         jOihJUlnYtraTsZ2Jj9nSaWffpLU81vUH/8aq9U9KuYYLCK8HtaiugPlJ03qmDV78X6M
         Tt0egMaj8LAxyOUe35HjrfhyzKdJHGfjO7xjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=4OZ+nFkCP+OZ+hRduxtHg76wiasGfzqEvFS8NknmPOE=;
        b=KUZ20WnzDivMQSSczUNSm2FJQbwL1wA/GiPhPIrikhbWJ/tl/KKQObpFEvQCp4uQ1x
         ZiIPfTDKNiiu/wrwjie/aiZcctWKS9e6xtAfgbbVnJNAly/6p4pbax9JqHghX8ADb+VW
         8sG/m4qELqFJaz5lEfpvIXjzl5ERL6PhYgRri60/sxeBr9LWF5F37fLQ1AZqwPqhV2qi
         7t6RJKwh8Da7g447R7ppyH83IjCJYG6fa3v490/yUvhROkTmEEjvdyf9cwrg37rWaG4x
         fZ6HqE0RPo/7E27mn6hMjXOgGG9Wc4X9PVAdUZ1kBsy3aaASQj5U8len2SqASSzPxRD7
         ip2w==
X-Gm-Message-State: ABuFfoiqTDK04LOl9hxgeRvudgWfaxIUVZVfBifywPwGejn5zjZvxs8F
	3ciEE64hJdcy5p0MG78alE7Jnw==
X-Received: by 2002:a17:906:5f8b:: with SMTP id a11-v6mr23444491eju.10.1539693464006;
        Tue, 16 Oct 2018 05:37:44 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id c11-v6sm2914534ejr.6.2018.10.16.05.37.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 16 Oct 2018 05:37:43 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 16 Oct 2018 14:37:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Mamta Shukla <mamtashukla555@gmail.com>,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org,
	daniel.vetter@ffwll.ch, gustavo@padovan.org,
	maarten.lankhorst@linux.intel.com, sean@poorly.run,
	airlied@linux.ie
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: Shift * to be adjacent to
 pointer name
Message-ID: <20181016123741.GX31561@phenom.ffwll.local>
References: <20181015212644.GA28579@armorer>
 <alpine.DEB.2.20.1810161228530.3512@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1810161228530.3512@hadrien>
X-Operating-System: Linux phenom 4.14.0-1-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Oct 16, 2018 at 12:30:16PM +0200, Julia Lawall wrote:
> 
> 
> On Tue, 16 Oct 2018, Mamta Shukla wrote:
> 
> > Shift * to be adjacent to pointer name to follow Linux coding style.
> > Issue found with checkpatch.pl
> > ERROR: "foo * bar" should be "foo *bar"
> 
> The patch looks OK, but at this point, you know how to send a patch, so it
> would be better to focus on changes that are more complex than whitespace
> issues.

Can't hurt to test-drive patch submission to a non-outreachy mailing list
with something simple :-)

Thanks for your patch, applied to drm-misc-next (for 4.21/5.1 most
likely).
-Daniel

> 
> julia
> 
> 
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_memory.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_memory.c b/drivers/gpu/drm/drm_memory.c
> > index d69e4fc..40c4349 100644
> > --- a/drivers/gpu/drm/drm_memory.c
> > +++ b/drivers/gpu/drm/drm_memory.c
> > @@ -51,7 +51,7 @@
> >  #endif
> >
> >  static void *agp_remap(unsigned long offset, unsigned long size,
> > -		       struct drm_device * dev)
> > +		       struct drm_device *dev)
> >  {
> >  	unsigned long i, num_pages =
> >  	    PAGE_ALIGN(size) / PAGE_SIZE;
> > @@ -94,26 +94,26 @@ static void *agp_remap(unsigned long offset, unsigned long size,
> >  }
> >
> >  /** Wrapper around agp_free_memory() */
> > -void drm_free_agp(struct agp_memory * handle, int pages)
> > +void drm_free_agp(struct agp_memory *handle, int pages)
> >  {
> >  	agp_free_memory(handle);
> >  }
> >
> >  /** Wrapper around agp_bind_memory() */
> > -int drm_bind_agp(struct agp_memory * handle, unsigned int start)
> > +int drm_bind_agp(struct agp_memory *handle, unsigned int start)
> >  {
> >  	return agp_bind_memory(handle, start);
> >  }
> >
> >  /** Wrapper around agp_unbind_memory() */
> > -int drm_unbind_agp(struct agp_memory * handle)
> > +int drm_unbind_agp(struct agp_memory *handle)
> >  {
> >  	return agp_unbind_memory(handle);
> >  }
> >
> >  #else /*  CONFIG_AGP  */
> >  static inline void *agp_remap(unsigned long offset, unsigned long size,
> > -			      struct drm_device * dev)
> > +			      struct drm_device *dev)
> >  {
> >  	return NULL;
> >  }
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181015212644.GA28579%40armorer.
> > For more options, visit https://groups.google.com/d/optout.
> >

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


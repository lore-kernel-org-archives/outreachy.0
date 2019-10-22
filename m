X-GM-THRID: 6749590937101402112
X-Received: by 2002:a2e:85cf:: with SMTP id h15mr1141175ljj.109.1571735970885;
        Tue, 22 Oct 2019 02:19:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d44:: with SMTP id y4ls1920162ljj.4.gmail; Tue, 22 Oct
 2019 02:19:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzoc1FUi5xEvepP/VJj2laAkTNae9R0HzQSfguylrO6LeqArhStlZi3FwEgJa8XRl2Yz5ky
X-Received: by 2002:a05:651c:209:: with SMTP id y9mr17594917ljn.134.1571735969554;
        Tue, 22 Oct 2019 02:19:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571735969; cv=none;
        d=google.com; s=arc-20160816;
        b=VgbqH3XVbJICw3sCy3dYz4AjvYvn3LHwD/2G8orGmZzafe0cmkKUk7xQmEP6N5VM7l
         zNPLUIvHvqCYdBjRBsL5vnDRnIe0N2U+saPYszrn1ZlIkxsr5zQTd7xLpmCAIwiTs72s
         dP0nk5oI42o5AEYneFKA7032UOUaPRHuGMk9b2v8IY1mdIeo/TtI8fBmyiaaAgS3/vtI
         UfiO5bWCnZPBzHwXKlhFPyuWNCKhatbDcBjEB88JnCQTc7zXdBx1Mr1rBxEQtQ5SmQ+Y
         G/PonnDZUESlTub1mwdUQkKeGxSzHxnIdkFQ8VZLsppGd6zxLw2UZsatMWybvVUAuhgD
         wC4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=r4xbJW3grSnf4M8N0nCJmNaFSFrCKReYewNpwqEWw1I=;
        b=CaM8HHs0IJQFPHqlUjW8gw3yi++1KhXT05P5sEjL3qsclIKVvgykjPFdHqRu5quQAw
         JESmG6JMY2quurJz47CSp+N3isVbBjW7UIrL+Mhg6N/bs759t3XG0qq/nGxcP5uZdnY3
         to6Li7/xlEi6wPb8a+V120CASaOPmUtDnfiQ1tuWAdDmfIvGYq6fz9IefM85s6S9+Maz
         GQrK9fKALnXBQzc42QBoFBVyIcmStuB7Z7lAF0v5aNOZM++Copf+PMh/6pb3BbTa8ntM
         jdd1PFwdDr/1ZtL+5YtNxFNG5RDHrLlalQcPEfsWD0rO5VWj54jAXpYzm0wiWv+azm6G
         VfNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=FGtqiS09;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id d3si911992lfq.1.2019.10.22.02.19.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Oct 2019 02:19:29 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=FGtqiS09;
       spf=neutral (google.com: 2a00:1450:4864:20::342 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm1-x342.google.com with SMTP id p7so16340000wmp.4
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Oct 2019 02:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=r4xbJW3grSnf4M8N0nCJmNaFSFrCKReYewNpwqEWw1I=;
        b=FGtqiS090+TGQJD//gAwTtX63ZcmUhqxCYUaSFDoCb3SG+hfsQ9BXYvIbAERWpV26E
         nvExslmfOp0xqb3UqiZUKTt6ZSazb5UOFbbRjLRGwF6wSP8CUZtMhsDdovh16u6N1Zqq
         tZH+AlYUfkMvQfCtL+XfwoYcRRTylo6Xi42JE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=r4xbJW3grSnf4M8N0nCJmNaFSFrCKReYewNpwqEWw1I=;
        b=B6ugaEbprwj/m8VZNL5GaVgYH+m4Q1DlPG384gmS9oAgTYBoC1zZnVZ1eN9CJhzUE3
         pFXoiq3hiTK4TMsKbDUtgMmgjUdwO79Vg2xHfhU5N1i3VQuhr/pnjXEswQSzrUQFxAdF
         iDkc67jImMytXMZQkIYwTXZivVAuN4mk7GUA+9fKycMgslyXw6dXja2DeLmKusAdn1j0
         tWGJyPIAICbG6wDpeaCDfYnbD9yUOZYLYtagZeORNiSthpJ3EDVutLsAAKkMaDDqAt+U
         5hGN+BuujvAe1Xcllh7/7S4IMziZoKvbg7qR5rHdxnBnfuiItpciKFcQGGRBbd/xEe7F
         nmgw==
X-Gm-Message-State: APjAAAVyh3AwoNi5bpNx1CPdiRmKo8WnGf2cQjTXeXZhb3ynvafelUwG
	uX+1tvEt6KKuIGs/y3vj5fIwXA==
X-Received: by 2002:a05:600c:214a:: with SMTP id v10mr1953407wml.69.1571735968600;
        Tue, 22 Oct 2019 02:19:28 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net. [212.51.149.96])
        by smtp.gmail.com with ESMTPSA id a4sm17019422wmm.10.2019.10.22.02.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2019 02:19:27 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 22 Oct 2019 11:19:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Wambui Karuga <wambui@karuga.xyz>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, airlied@linux.ie, daniel@ffwll.ch,
	sean@poorly.run, mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	outreachy-kernel@googlegroups.com,
	Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] drm: remove unnecessary return
 variable
Message-ID: <20191022091925.GD11828@phenom.ffwll.local>
Mail-Followup-To: Julia Lawall <julia.lawall@lip6.fr>,
	Wambui Karuga <wambui@karuga.xyz>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, airlied@linux.ie, sean@poorly.run,
	mripard@kernel.org, maarten.lankhorst@linux.intel.com,
	outreachy-kernel@googlegroups.com,
	Wambui Karuga <wambui.karugax@gmail.com>
References: <20191019071840.16877-1-wambui@karuga.xyz>
 <alpine.DEB.2.21.1910192102410.5888@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910192102410.5888@hadrien>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Oct 19, 2019 at 09:04:31PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 19 Oct 2019, Wambui Karuga wrote:
> 
> > From: Wambui Karuga <wambui.karugax@gmail.com>
> >
> > Remove unnecessary variable `ret` in drm_dp_atomic_find_vcpi_slots()
> > only used to hold the function return value and have the function
> > return the value directly.
> 
> This patch applies for me, but with a huge offset.  What tree are you
> using?

For drm patches best practices is to base patches either on linux-next or
the drm-tip tree we have here:

https://cgit.freedesktop.org/drm-tip

drm moves quickly, so need to be on top of the latest version.

> Also, Greg won't apply this, because it's not targeting staging.  Is this
> for a specific outreachy project?

Yup it's for dri-devel, just applied it.

Thanks for the patch, nice cleanup!

Cheers, Daniel

> 
> julia
> 
> 
> > Issue found by coccinelle:
> > @@
> > local idexpression ret;
> > expression e;
> > @@
> >
> > -ret =
> > +return
> >      e;
> > -return ret;
> >
> > Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> > ---
> >  drivers/gpu/drm/drm_dp_mst_topology.c | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
> > index 9cccc5e63309..b854a422a523 100644
> > --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> > +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> > @@ -3540,7 +3540,7 @@ int drm_dp_atomic_find_vcpi_slots(struct drm_atomic_state *state,
> >  {
> >  	struct drm_dp_mst_topology_state *topology_state;
> >  	struct drm_dp_vcpi_allocation *pos, *vcpi = NULL;
> > -	int prev_slots, req_slots, ret;
> > +	int prev_slots, req_slots;
> >
> >  	topology_state = drm_atomic_get_mst_topology_state(state, mgr);
> >  	if (IS_ERR(topology_state))
> > @@ -3587,8 +3587,7 @@ int drm_dp_atomic_find_vcpi_slots(struct drm_atomic_state *state,
> >  	}
> >  	vcpi->vcpi = req_slots;
> >
> > -	ret = req_slots;
> > -	return ret;
> > +	return req_slots;
> >  }
> >  EXPORT_SYMBOL(drm_dp_atomic_find_vcpi_slots);
> >
> > --
> > 2.23.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191019071840.16877-1-wambui%40karuga.xyz.
> >

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


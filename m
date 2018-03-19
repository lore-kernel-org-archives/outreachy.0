X-GM-THRID: 6534517780926955520
X-Received: by 10.223.164.28 with SMTP id d28mr1070502wra.6.1521468788437;
        Mon, 19 Mar 2018 07:13:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.201.145 with SMTP id f17ls3589824wrh.5.gmail; Mon, 19 Mar
 2018 07:13:07 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvXZXrY8pLpdAaf/psqgWNjOW4VNMBLrd6KREu/r7eQOMm1vxNFXs3HowVBPyQriib3mDdY
X-Received: by 10.223.156.204 with SMTP id h12mr1070578wre.13.1521468787321;
        Mon, 19 Mar 2018 07:13:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521468787; cv=none;
        d=google.com; s=arc-20160816;
        b=hmm9UD7tq26RlUxUvxhlJZ12S6cflJWgUGDGYOnKRgZPtJHz5umUpi91LMFMq64JoK
         Nz+Wdjxro7R8So0t6+QVhxsWQJXychfYPNy8HklehmRShJLOEKLmAAmWKOXhuWU/WzAK
         ethyzrUj9PHEbEQABKzzZYQyL01l50K6ghcNK8RqMwbhMmJwF5Sev7kdY6ptfcO8RKDp
         jnk2cpacRBSExvoVi6DUnvvl5hbtM3iMre3wuDUmiSpMm7v14SDvFkF9oIjo/h2Gzp7r
         xwIpWvtGFvz7KzZWeIscrFWKJc4/Q93MCHfWI+eKOKVl5Q6cJOV58QptTa4tR7x9FCmx
         U9tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature:arc-authentication-results;
        bh=ErkHpsCZwuNJAcBMGqsubnJQStBFZDyIcUzZotoleXM=;
        b=xbk0s+zzOhj2/PR4Wno5i0WrwHRF4xs6akoHVEp6yRpQBQk7WE6ml3sl/ccbwhPCdK
         cz8EYzrFZ4luc76rvKlB4Bu/LtLtOgYjv/uYqMhJ56UMo11C2cfZaOMkSdf/5t4YA61P
         6fLsjJuNWGu7vIyouVM8ZmBWxk4K+oZaORGH2VZS5SZrOaOgO+4YaMXqVwqrWyHV2tzS
         mz5dJs/gQKafzyskHb/IGeUbMQhofKxczvmMsallvIZCivA6wlGL9hzw5HFYadHQcs7i
         7Z7cSLbNXXKfA4fs7x5nKB6i7aqWeb7QBfBdeZugCZNiMd7VbwZFDgB0XKuv2NSN1hQC
         mufw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=J05XW8L3;
       spf=neutral (google.com: 2a00:1450:400c:c09::236 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x236.google.com (mail-wm0-x236.google.com. [2a00:1450:400c:c09::236])
        by gmr-mx.google.com with ESMTPS id 90si5447wrl.1.2018.03.19.07.13.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Mar 2018 07:13:07 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::236 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=J05XW8L3;
       spf=neutral (google.com: 2a00:1450:400c:c09::236 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x236.google.com with SMTP id l16so6638351wmh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Mar 2018 07:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=ErkHpsCZwuNJAcBMGqsubnJQStBFZDyIcUzZotoleXM=;
        b=J05XW8L3SwAAubFWOZqI2lHjzzZfLiYvW2gHsqCrj0QThUdicx7Cm8aFBqax67wSuS
         hVkNIvpgNjOStlEmiKiCM6iCrxwZZTNIBIbrO3XoEDVycWiQofbhv9/JO+gWnb3rDN46
         nbX8QrNzmOjb0QP6Qw6IAuhyHTAiPqsWS85NA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=ErkHpsCZwuNJAcBMGqsubnJQStBFZDyIcUzZotoleXM=;
        b=sQaJv4a+Qd8S6WvL8yN1xKRj7I/3eDwPdaVix3t3Uj9s3/QFvLMZyzkPSBLSr2E1bG
         JU7NXYYNSg7Tf5K70PClocSzPFbfAhjPGraQeRM/AOiegVV6Pv3FTBUowZFy0GWW9G9a
         SkJ/PRLu96wjrU5rrYmDOuxFnv/nRVRKnGaiIzbTt0L46yUqZVqhZfOqItbhps1D5Hju
         OlcbIYN2meJJxoiQeq/rb0GaQlqeC0LiZwzQ3+aRIV0sq3IiWdItWzVqpXk7H4EJlQiV
         hdy7HIq3P24e+a2YfwJZ3afxSPb+v3AsJYAWIsbTkvgeefPlHMczUGgX9UuK3D8nqCQ+
         zScQ==
X-Gm-Message-State: AElRT7FA/Z8m0JOkS7kt9dc3OGmkaetsTWC9O3CxS+VjQ2jUWXu8TUUP
	htmOkuhN2vj8clRNUMLGx3MKjA==
X-Received: by 10.80.184.9 with SMTP id j9mr10212755ede.272.1521468786909;
        Mon, 19 Mar 2018 07:13:06 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id m5sm247066edb.97.2018.03.19.07.13.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 19 Mar 2018 07:13:06 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 19 Mar 2018 15:13:04 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: daniel.vetter@intel.com, Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	Ben Skeggs <bskeggs@redhat.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] gpu: drm: Use list_{next/prev}_entry
 instead of list_entry
Message-ID: <20180319141304.GP14155@phenom.ffwll.local>
Mail-Followup-To: Arushi Singhal <arushisinghal19971997@gmail.com>,
	daniel.vetter@intel.com, Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	Ben Skeggs <bskeggs@redhat.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
References: <20180319050530.GA25589@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180319050530.GA25589@seema-Inspiron-15-3567>
X-Operating-System: Linux phenom 4.15.0-1-amd64 
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 19, 2018 at 10:35:30AM +0530, Arushi Singhal wrote:
> This patch replace list_entry with list_{next/prev}_entry as it makes
> the code more clear to read.
> Done using coccinelle:
> 
> @@
> expression e1;
> identifier e3;
> type t;
> @@
> (
> - list_entry(e1->e3.next,t,e3)
> + list_next_entry(e1,e3)
> |
> - list_entry(e1->e3.prev,t,e3)
> + list_prev_entry(e1,e3)
> )
> 
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>

Thanks for your patch. Looks correct, but for merge technical reasons can
you please split it into 2 patches? One for drm_lease.c, with a drm/lease:
prefix, and one for the nouveau driver change, with a nouveau: prefix.
Both patches need to be submitted to slightly different sets of
maintainers too, pls consult scripts/get_maintainers.pl

Thanks, Daniel

> ---
>  drivers/gpu/drm/drm_lease.c                    | 2 +-
>  drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_lease.c b/drivers/gpu/drm/drm_lease.c
> index 1402c0e..4dcfb5f 100644
> --- a/drivers/gpu/drm/drm_lease.c
> +++ b/drivers/gpu/drm/drm_lease.c
> @@ -340,7 +340,7 @@ static void _drm_lease_revoke(struct drm_master *top)
>  				break;
>  
>  			/* Over */
> -			master = list_entry(master->lessee_list.next, struct drm_master, lessee_list);
> +			master = list_next_entry(master, lessee_list);
>  		}
>  	}
>  }
> diff --git a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> index e4c8d31..81c3567 100644
> --- a/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> +++ b/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c
> @@ -134,7 +134,7 @@ nvkm_cstate_find_best(struct nvkm_clk *clk, struct nvkm_pstate *pstate,
>  			       nvkm_volt_map(volt, volt->max2_id, clk->temp));
>  
>  	for (cstate = start; &cstate->head != &pstate->list;
> -	     cstate = list_entry(cstate->head.prev, typeof(*cstate), head)) {
> +	     cstate = list_prev_entry(cstate, head)) {
>  		if (nvkm_cstate_valid(clk, cstate, max_volt, clk->temp))
>  			break;
>  	}
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180319050530.GA25589%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


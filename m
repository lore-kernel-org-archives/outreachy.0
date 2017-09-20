X-GM-THRID: 6465542343215808512
X-Received: by 10.36.92.8 with SMTP id q8mr562728itb.56.1505929193684;
        Wed, 20 Sep 2017 10:39:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.185.88 with SMTP id v24ls217505pgo.16.gmail; Wed, 20 Sep
 2017 10:39:52 -0700 (PDT)
X-Received: by 10.98.61.71 with SMTP id k68mr1538142pfa.21.1505929192666;
        Wed, 20 Sep 2017 10:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505929192; cv=none;
        d=google.com; s=arc-20160816;
        b=fldEOCZswGs6ORp8oAtDQvGH5T5WOEBBWyejSREkQ9O7EztVQwyIqCbWuOLraOSunx
         5QhcI7GShCNxFreXqq6kVJg2VSNC8aSivHzjC3+maE1rrdQBMyekW1pC1V3PYNTgZJLj
         +0i/cjht19zmfCSG5cmtjubiDbtb3IRkGrDAbZbBNKnsLak1dse06uj7++NGa7yJQMAj
         1tib1SDWWzLxuoJB8L/KwCwM8/C4ED5dfC9dvrh3HNzQ/1tzqI9QqlgD0uKO5GryqK0f
         3Feuq6M+iQ3mxxAr0Xo3Xh2CIor99H/SOeStAb9qO+UvTPZbXTiKmaqplW0B/D6a7t15
         aJVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=3g/sj6N9/uKf9saOIeMgyO7S4NJ19upI/Ng65MuOyMY=;
        b=TVnyCOCHOAxE4EAEJ9HJ+B0lEjczHktpBOtsVUl3dKzD4IwwcRrw1gund8/XqqQbFE
         X7vry6JE46wCtbzvP9vmYVkSjoisCcP17hNzactYTmEX+Izwkn37nVcuDcEsAsiYckuN
         MuIOYlMemAY2OmOIDnWkx4MqkQue//6gu7adWLxiKZa9dXuQFldiUuaHYy5KpHPJCycl
         Ht2t9WeSL/RTEhUMXYAkifPj/4NddgOKQGvUpQuZriKxN5bWMQgYcizZ5VQ+bbmL0X9N
         +J0t1VkRvdkPd6KNfRyB1MUya77fQOZbrzfiPRHs/hZsJU0+mQabeTdlsz/PiZjMRDM6
         OpnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lZ0Z3iz5;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-pg0-x22e.google.com (mail-pg0-x22e.google.com. [2607:f8b0:400e:c05::22e])
        by gmr-mx.google.com with ESMTPS id f189si601744pfa.1.2017.09.20.10.39.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 10:39:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400e:c05::22e as permitted sender) client-ip=2607:f8b0:400e:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lZ0Z3iz5;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-pg0-x22e.google.com with SMTP id 7so2060229pgd.13
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 10:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3g/sj6N9/uKf9saOIeMgyO7S4NJ19upI/Ng65MuOyMY=;
        b=lZ0Z3iz5psqJwydur76KdUPm6YB8p4+SfdNRXZT+BQpt35xcTmmmDBrHOl2QmJ5+mR
         qlFzb73obqdwX7tGUunxJjt3Dx6FEGheBdcGg7Dj7uATBsvDOnPqr3pHhdnrb/CmwuIe
         5yfcd68Ee9isvRYZf46Hr2WQGjyULTPb+KPFM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3g/sj6N9/uKf9saOIeMgyO7S4NJ19upI/Ng65MuOyMY=;
        b=pbOrzlKUEcynBn25qe8Ms8hZ/KN6QOc+ThcOLA0MFIdS5qbJ2Lf9ncpD2+WmpmWRwG
         K2Mymzln7CUsq4sK+Jome5UXZv3Rd++2kUCewPd2OYjCtWV1cHJk68DjSrlq9Zt9z9D3
         SXawuEKEX3o8htepyOAuxi+IT9f43sBHouEw+kFjezuHyBVmiTX36G1EKiU61Eh3K9zm
         7xAHF+cy1ULCIHVKwRqV7WvxRNWQsfgYRRZIHZDtt0tbaaA2kuT8ZlJ+Ssb+UxwZauyV
         8m+dH4r4nkdv/EXHmL8fI3lcmR0JTZw5t7SwWppNX3PXg/yIAoPnZA9pqqlUmkRY5Ezi
         e66g==
X-Gm-Message-State: AHPjjUiC9HZ58U+lkjvTAjK4cO5tQFLp4oHC6cKLW3ciyFncgZ8ofqpW
	gsDAmmzjIKaDU+5xQW6li0rv3w==
X-Google-Smtp-Source: AOwi7QDwlnZ+vyI/2hPcewiZPDWTyj9bn72xHLItaK5wamByPB9M0zVBRkTfElZQq0sDrrfVPXYErw==
X-Received: by 10.98.79.65 with SMTP id d62mr2986093pfb.324.1505929192438;
        Wed, 20 Sep 2017 10:39:52 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1000:2104:c840:c7e4:30d:a239])
        by smtp.gmail.com with ESMTPSA id o17sm8803577pfa.22.2017.09.20.10.39.51
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 10:39:51 -0700 (PDT)
Date: Wed, 20 Sep 2017 10:39:50 -0700
From: Sean Paul <seanpaul@chromium.org>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Jani Nikula <jani.nikula@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: Re: [Outreachy kernel] [PATCH v3 0/4] drm/agpsupport: Code cleanup
Message-ID: <20170920173950.kxbvtmk7vecww7bj@art_vandelay>
References: <cover.1505376068.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505376068.git.meghana.madhyastha@gmail.com>
User-Agent: NeoMutt/20170306-97-7656f1-dirty (1.8.0)

On Thu, Sep 14, 2017 at 01:36:17PM +0530, Meghana Madhyastha wrote:
> Removes checkpath.pl errors and warnings.
> 
> Changes in v3:
>  -Change commit title prefix from drm to drm/agpsupport
>  -Split the commit "Move EXPORT_SYMBOL so that it immediately follows its
>      function" into two commits. Removing the extra blank line is 
>      now a separate commit.
>  -Included merging conditionals in "Remove assignment in if condition"
>      in the commit message
> 
> Meghana Madhyastha (4):
>   drm/agpsupport: Replace "foo * bar" with "foo *bar"
>   drm/agpsupport: Remove assignment in if condition
>   drm/agpsupport: Move EXPORT_SYMBOL so that it immediately follows its
>     function
>   drm/agpsupport: Remove extra blank line

Hi Meghana,
Thanks for your patches! I've applied them to drm-misc-next.

Apologies it took a bit longer than it should have to apply them, I've been
traveling the past two weeks.

Sean

> 
>  drivers/gpu/drm/drm_agpsupport.c | 45 ++++++++++++++++++++--------------------
>  1 file changed, 23 insertions(+), 22 deletions(-)
> 
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505376068.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Sean Paul, Software Engineer, Google / Chromium OS


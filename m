X-GM-THRID: 6469789511840694272
X-Received: by 10.129.73.204 with SMTP id w195mr6228389ywa.19.1506417642623;
        Tue, 26 Sep 2017 02:20:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.194.11 with SMTP id s11ls6749750oif.19.gmail; Tue, 26 Sep
 2017 02:20:41 -0700 (PDT)
X-Received: by 10.202.206.7 with SMTP id e7mr5696324oig.70.1506417641812;
        Tue, 26 Sep 2017 02:20:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506417641; cv=none;
        d=google.com; s=arc-20160816;
        b=A2H0saqa/VT6JX0AzwlSPvUStISl1B/H7nnt3OtC32e8BaM42Wj7lW38sGSjyBKpPT
         +2sRTRLFWkFYkwuimMZfo3UU+SE3r70HUerA+14uCR06SflpAS9I6ewxSdzOaMaIKwDZ
         yn7uSXfni63j96P9HWUuy+j5CZu/67OBZ8ZwrlpRQzv759VdeZ9QAkk6uCDfUppfKk6H
         kWslzH5yYXrjkDcg2Cgy/7QprvxRYqWgBEH9BAphcNcbtlcqKxyvcLsIa47iPLTwi8Gj
         zhrfikjAB9Grshicp+eIMRKm7beEiBvULS9fAnKAK1pU4KxvfjeQ8oPwdBf9WXM9xnHV
         tjKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=EQjgmE9sL5ro3DM+uxIZ7awWZLKyoZ3ojm+4DelgHP0=;
        b=yd78m3n+Dp7vhOXRc59mCfZa/C21Elkmylgyw/KOtAmWMvhi/Qm2XDJOPD/KtGQVLf
         DPpkOhOmQVGrArnkUswA/93uhqA4EuLuwh6yqbOsLt5BDgZpwv3sLnMmq80VznAck98F
         HvDJF9LvNlLUxFPrglGlhIHQ9vMs7fs3xnUc2aHECtWXTwWAN6jeCgCMaj9Em22Sjmhg
         f21vBJWXpIbXG+bksfUotfD62SSPXBuXjVC4sNj7IUaA/5osZS0apnSQd0yA0lw8QjWu
         ISoPMzCgDY3/lYJEtz3xGNecvRKplpNfjVP28hweWMqg1sjNjWcJMx7zpGrF1e/z1X2X
         mtlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C5mo0ECR;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-it0-x233.google.com (mail-it0-x233.google.com. [2607:f8b0:4001:c0b::233])
        by gmr-mx.google.com with ESMTPS id g186si408430ywc.29.2017.09.26.02.20.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 02:20:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) client-ip=2607:f8b0:4001:c0b::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C5mo0ECR;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::233 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x233.google.com with SMTP id x15so2340944itb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 02:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EQjgmE9sL5ro3DM+uxIZ7awWZLKyoZ3ojm+4DelgHP0=;
        b=C5mo0ECRVTNq/FEYvM1m3GZ95Wf/xWlSEjHpxl0fWh1vrFavg/Wwxmdas45ZX80zc0
         8fM2719x/zddth9g1rW2/ikcsXFMvb1CXRvxOjOVJITlD4dMoPL14D3VdXzNAYhO4kHp
         DhwnMj+T07At5R9evl+nA2o3v0mKJSY6hd+MB74ycUL91vOqG21XA3m//3C15yhmfaH6
         T2jqmdwrCH+GEUvk4nIldMyAfXghXZKgRm84Oar86frjdweAya4N99n7XRKdBjDi6THj
         iH2joeRDF/ccPXWozATXY1i84cFwu46KtOxgW9mE5+JRftVX3oBWQcJVXOK6AXl7JOtL
         xgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EQjgmE9sL5ro3DM+uxIZ7awWZLKyoZ3ojm+4DelgHP0=;
        b=r2oyjNurtSRPRea3BDPAsalph2NI8e942Z33NusHLKuRJuf6tZZg8odHnxZhgINQZs
         t3YZbPu7tM77bvJSnR1z4TmKgvtx65D6k1SEBQF/0h5XggSJ8lk9A8ZgQ3ChTKttqLwG
         uRnL5KS1yKTCcETa+loH6uOcybhlCmhbch1RpO4qFnn2yyKupFO9+WtMtrtvkd8ZCcdb
         x6X2olB0IRNkYmde7gvVzpHqfvlgk5mU494drAn8zbaHnFT9fXHTeAiO93vytn2B6HSR
         hfz9zbdct3YqhhLX4usHEkvjiGS8lr7dJw2rOE4kmd7/IT1MIveddUzOTALQQWsIJwuy
         3VcQ==
X-Gm-Message-State: AHPjjUgrio6/OtPda3H4R57nTf0U3Tn5zC+JBexQejK43WUpIZvccsoN
	1iNtkssNNCG768ny0LIySiw=
X-Google-Smtp-Source: AOwi7QB+gndyuI0CSjV4i+/1JkVUAOQ6lUwse8kGvjujYREXUnq0U0F0xgh/LX2wNwjrthgs+0N1OQ==
X-Received: by 10.36.202.2 with SMTP id k2mr4778613itg.60.1506417641508;
        Tue, 26 Sep 2017 02:20:41 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([27.59.63.252])
        by smtp.gmail.com with ESMTPSA id q187sm85070iof.26.2017.09.26.02.20.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 02:20:41 -0700 (PDT)
Date: Tue, 26 Sep 2017 14:50:32 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniel Vetter <daniel.vetter@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] drm/gem: use new idr deletion interface to cleanup
 drm_gem_handle_delete()
Message-ID: <20170926092032.GA14610@aishwarya>
References: <20170925184728.GA8861@aishwarya>
 <150641713210.12806.16416549985820505069@mail.alporthouse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <150641713210.12806.16416549985820505069@mail.alporthouse.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 26, 2017 at 10:12:12AM +0100, Chris Wilson wrote:
> Quoting Aishwarya Pant (2017-09-25 19:47:28)
> > The IDR deletion interface now returns the deleted entry or NULL if it was not
> > present. So we don't have to do the extra work of checking if we have a
> > reference on the drm_gem_object, this can be handled by checking the return
> > value from idr_remove() and the extra locks can be dropped.
> > 
> > Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
> 
> This reintroduces the bug were the idr entry is available for reuse
> before the drivers have had the change to release their resources. So a
> new handle may be reused that is then hooked up to the old private data.
> See commit f6cd7daecff558fab2c45d15283d3e52f688342d
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Fri Apr 15 12:55:08 2016 +0100
> 
>     drm: Release driver references to handle before making it available again

Thanks, this makes sense now.

> -Chris


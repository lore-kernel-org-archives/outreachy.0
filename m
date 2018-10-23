X-GM-THRID: 6613801848773017600
X-Received: by 2002:a50:e70e:: with SMTP id a14-v6mr662247edn.11.1540303200000;
        Tue, 23 Oct 2018 07:00:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:69c5:: with SMTP id g5-v6ls745115ejs.0.gmail; Tue,
 23 Oct 2018 06:59:59 -0700 (PDT)
X-Google-Smtp-Source: ACcGV617/QFnMFGjenmIWMGTXNIl/aY1G739LXzxHQfKsoPim5KAk902SY6Ht8/Al7qld01UeY7H
X-Received: by 2002:a17:906:28cf:: with SMTP id p15-v6mr1524336ejd.11.1540303199121;
        Tue, 23 Oct 2018 06:59:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540303199; cv=none;
        d=google.com; s=arc-20160816;
        b=PGo7PZdt7JN0B3tp0tIjRtRIBUlY/Q0YqHf+Qv+CSpnm87ZXP9u6FHBFhqjTwdzlJz
         YPJutP4PI7gjoJEOMr7w3Jvj+8gsajf7mwMq69Tts77GZ7QOjHGY5yoNkdkPTDU/xQe8
         ne81BkAOlqlgRjUX7uT6Pp1BY4+CN+znw4+9y7PkN8YhbnCAdYlVxBE0RjOCI4+kNrEp
         gfEgPynUgzPSFKCnug/J8bpCqY0md5utddsII+e8H9NRNHLqwS6W5PKvFM51oTLyfJx8
         1mMnyzQkZo4C2hevqopGNuqwJV7yyPNhCY1YekQf7ZtZ1uMkVUtQ02/45F5toOTul5IV
         c9+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=LwlRnl0/QG/aVJevax8uBR8wuTqYjIor10ZhMv1IVu0=;
        b=YKdokKDP7xJgjeZD/vtAxAhliuOxoBT5FNupI+uZ52Geyu0EGlt3YkRDQreTYu54HX
         3zkItxk689gBonpEZf/5aPOJMizDBsCAh+xGKy30iDTQ99mr7DafsLTjKdIeJPR8jPbT
         HFQnlEtr3hnwJf+EnfQ9lpuqeCTKZ8aRywCdSu4Xvw/N4COmykt/zAI48mH8rWsL8DqB
         popiWeiTBXkxB+dzguIPOJcTIgKn5La+4AKKwx5JMvfTBhePdKfcmB822x3KwJzkVWOZ
         DxMEcEPHsQn9dm6oOZcKzBsd17OLH0Q9FDkF6PF6OwKGg5KnV8vaAyQk/KBxFOCENx4m
         6n1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=O1b2WUU1;
       spf=neutral (google.com: 2a00:1450:4864:20::543 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id l47-v6si47552edc.2.2018.10.23.06.59.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 06:59:59 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::543 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=O1b2WUU1;
       spf=neutral (google.com: 2a00:1450:4864:20::543 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x543.google.com with SMTP id z21-v6so1710778edb.11
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 06:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=LwlRnl0/QG/aVJevax8uBR8wuTqYjIor10ZhMv1IVu0=;
        b=O1b2WUU1y2LkfNsHS0nput3ImUUYg3aEYzVPyU6pSve1c5084snJQhRFxndTcAgLJ9
         Xi1xWFmXsqbWQ+a3zA2mMvc1/ZJyIaSSPFit6b7NjQ1KbG/aNMxgQGnghIoANHzdug88
         abVb2fi66NaBmuoyAYg/r2T8ChmlUNVd8L1DI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=LwlRnl0/QG/aVJevax8uBR8wuTqYjIor10ZhMv1IVu0=;
        b=QUOF9bjjD/BL/ebHxsOU3sjRT8lt1TSJMpOcuaGtt9Xe8T8S38zujb5Rh5Idm2DAtX
         uPwoppptPc0VNRjA5qCam/Vls/+eddHkarErtglTwC7l+SkO80oI+28q9dNhda6D81ei
         bmYHh+IKahnyv9aBxaBaks2x++yhtah77JLBao+HXNzhhiz953DOXuDEQZZXjvRWJe2/
         hStHyCkq3Ak4y0IxnS4+kXDpjuQVty/AT9tAmKEr4GS6Wz5V14aC7Shp5XhhArqEb9DI
         4g9MqUFNNGv4ttna+aKIg9yXzd5uPe7S8QQ7GW4a5QBmYOoTN/sZR0BFqjq1jcbCNO9G
         +m+g==
X-Gm-Message-State: AGRZ1gJTcVBStsA6V1Cv1mAFPKoFgMKGmoTM2ymbk4946VD4gXkIxtpv
	KtcVWV7GEbp3ZT4UbW1MG8uV5Z0NXJc=
X-Received: by 2002:aa7:d4c9:: with SMTP id t9-v6mr4212141edr.256.1540303198906;
        Tue, 23 Oct 2018 06:59:58 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id b16-v6sm527310edt.70.2018.10.23.06.59.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 06:59:58 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 23 Oct 2018 15:59:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sean Paul <sean@poorly.run>
Cc: Mamta Shukla <mamtashukla555@gmail.com>,
	outreachy-kernel@googlegroups.com, Dave Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH DRM] drm: msm: adreno: Use PTR_ERR_OR_ZERO rather than
 if(IS_ERR(...)) +PTR_ERR
Message-ID: <20181023135955.GV324@phenom.ffwll.local>
References: <20181018204815.GA23390@armorer>
 <CAMavQKLZu7nKpYb0N45dNZhm2L9bC6LNf87hSHpOrzYrAPK6eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMavQKLZu7nKpYb0N45dNZhm2L9bC6LNf87hSHpOrzYrAPK6eQ@mail.gmail.com>
X-Operating-System: Linux phenom 4.18.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Oct 23, 2018 at 08:54:36AM -0400, Sean Paul wrote:
> On Thu, Oct 18, 2018 at 7:11 PM Mamta Shukla <mamtashukla555@gmail.com> wrote:
> >
> > Use PTR_ERR_OR_ZERO rather than if(IS_ERR(...)) + PTR_ERR because its
> > better to have inlined function rather than code-opened implementation.
> >
> > Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> 
> Reviewed-by: Sean Paul <sean@poorly.run>

Applied to drm-misc-next so Julia can easily spot them all. Thanks for
patch&review.
-Daniel
> 
> > ---
> >  drivers/gpu/drm/msm/adreno/a5xx_gpu.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > index 6a68493..b751b76 100644
> > --- a/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > +++ b/drivers/gpu/drm/msm/adreno/a5xx_gpu.c
> > @@ -1222,10 +1222,7 @@ static int a5xx_crashdumper_init(struct msm_gpu *gpu,
> >                 SZ_1M, MSM_BO_UNCACHED, gpu->aspace,
> >                 &dumper->bo, &dumper->iova);
> >
> > -       if (IS_ERR(dumper->ptr))
> > -               return PTR_ERR(dumper->ptr);
> > -
> > -       return 0;
> > +       return PTR_ERR_OR_ZERO(dumper->ptr);
> >  }
> >
> >  static void a5xx_crashdumper_free(struct msm_gpu *gpu,
> > --
> > 1.9.1
> >
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch


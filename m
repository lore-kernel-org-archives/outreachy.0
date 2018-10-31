X-GM-THRID: 6618628196583604224
X-Received: by 2002:a0c:93ae:: with SMTP id f43mr3543707qvf.42.1541020781339;
        Wed, 31 Oct 2018 14:19:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1013:: with SMTP id z19-v6ls69777qti.12.gmail; Wed, 31
 Oct 2018 14:19:40 -0700 (PDT)
X-Google-Smtp-Source: AJdET5eGLuavtEAICMH3nvEBZxR+xL/+gBemyLe0JAJCX4ywrfcPi4845iShUBxpbN+xZMp92qP/
X-Received: by 2002:ac8:538a:: with SMTP id x10-v6mr3645754qtp.28.1541020780829;
        Wed, 31 Oct 2018 14:19:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541020780; cv=none;
        d=google.com; s=arc-20160816;
        b=xNAH8YqsNtedJq8nl43r727wSNUc0ZVaunYR0AJEI9pMcCstrOvoyaAgY29iIw+Iun
         UIqjUiNxmiD4A/NEQBXY+GttC9dQCxIUtPC+DYSPVKpJ4yyHlIlLP4db4kb7YkYYWgxL
         TpMu+as1SVPMJtjDiDItueWQtedQsk4qFQAt1bUOigWTWHdgNY18Od6Zz49in3Bhodbw
         zbAaPxvz6KLfc2GW0d9CMAJyBWKD58GSXxAOOt7B3P6PSbP+/b8KvpFV3YAyPwOH4ar3
         glCETa+lEdrmjBZONwCRCIs7+LCEIDfvDdejpFF5xIgeTDtZ/omWqVnlvKoG6XJfvLRN
         0LeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lnoZe0licA3l5VchVC+4/SA4A7KvJ1BVcxteA867W/o=;
        b=uweMOXp0wb6S0a6MpsYneqFEYUgIxCZMkduVn+H1cYHY5Ms0+LtSj6OGicEtD0frTf
         lieY4ke6EITwfh69K+PLjuoYBjmjNwXqB9mNdh9Jca6FBhxUbgL/4lY4saYBmsgHbmTW
         k/ir1LhXcxugV8s4ZUer7YCooP0xUTG+gdKIgLXLLAcBN+NJ3qA3s4mbs8dgBfhOx/GA
         KZr/dQbilDl8Q1SzUKEmWqb+wLWLY7h80hxZ/U6mZzcaB+1AhST1536xxi8X4Ez2toYP
         JaXuoPGkuzbJTh/4vToqCYdGDCNaGMR9HQ7GbHSgV+th3sr8MZgY11Lq8SN+aH76Z9ix
         zZuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hOvXzhrc;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id k8-v6si1477819qkg.3.2018.10.31.14.19.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:19:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hOvXzhrc;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id o89so11089821qko.0
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 14:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=lnoZe0licA3l5VchVC+4/SA4A7KvJ1BVcxteA867W/o=;
        b=hOvXzhrcIRE2HvxMftQeCRcbp4Rx2bPqqqviEfoweYi0yCKE5zb3IZXsrixFesW/kA
         GMEUVpyJ3bBD3mKCkcv2XyMODk/392nRjVZp3Unjj9Qz3IhtoJ04Uo8++Vhao0tPOOv5
         SkAYMVO0nqQBWw+2k0qMYyNeNOsEW5alHg2G7sjqQbumJ5XU9StU2iLfOWGKExDxzMle
         dg6oRHhMGABzJbxzU5HYScjPGYWb8drRoCby4fXOVfuIeIfFps5FfIWQmUeX5kkvVTAZ
         /hK/DTRo3g0ApMaQoAl9HRWg2J41UuP/u2SrwsPDPpCIr2vuVjKN+4HBkkvMHPGBHFG0
         qweQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=lnoZe0licA3l5VchVC+4/SA4A7KvJ1BVcxteA867W/o=;
        b=k+/wbVGipEo6g26o1ibehiHTEeAx6paTOrcZou8N4H5b3vilBYFAnC6ei4mop/blFD
         xp17ZaES0b70XtoQHsAFUYGGIvxpL02KYyFA09NcM8Fw1xaiZ7cOz9siBIFffySCzU6K
         JrS2F/JKMH4pOfbL+Nc+DGVyUHPhc9D7gn4yv3MjmoGy9Ph1Z/WyW5xCsqprSmguLt/I
         dDt5Y5RAIBK/zIXTu+pp/sjt8CxbW4dCfQvQXdjSk/s/d9Jh6tFuIjrTvD6lkevZHzox
         bY01c2q4NkuKeXl83brYwN6hwTRpxPJGA3J7B35QCqs5XiTMJezILEcKzOlGjzhd9tZT
         R49Q==
X-Gm-Message-State: AGRZ1gLFsFobULQ5/ZaHYHjQNT2pZVzuCKJYsRezm/kdpuPgwLVIHxs3
	fs18HnmX2GVcHUuMxXfHzAX94w4nCII=
X-Received: by 2002:a37:a315:: with SMTP id m21mr4043718qke.152.1541020780430;
        Wed, 31 Oct 2018 14:19:40 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id d124-v6sm17701246qkf.85.2018.10.31.14.19.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 31 Oct 2018 14:19:39 -0700 (PDT)
Date: Wed, 31 Oct 2018 18:19:35 -0300
From: Shayenne Moura <shayenneluzmoura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: Rename crtc_idr as object_idr to
 KMS cleanups
Message-ID: <20181031211935.p2pxr7fh26m5dc7v@smtp.gmail.com>
References: <20181031205737.cingeaqget7hkbs6@smtp.gmail.com>
 <alpine.DEB.2.21.1810312200520.2391@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810312200520.2391@hadrien>
User-Agent: NeoMutt/20171215

On 10/31, Julia Lawall wrote:
> 
> 
> On Wed, 31 Oct 2018, Shayenne da Luz Moura wrote:
> 
> > Rename 'drm_mode_config.crtc_idr' as 'drm_mode_config.object_idr',
> > as proposed in the task description in TODO list for KMS cleanups.
> 
> Is object_idr a field that already exists?  If so, "Rename" is not the
> best choice of words.  It should be something like "use the object_idr
> field instead of the crtc_idr field" and then explain why.  "task
> description in TODO list for KMS cleanups" isn't very helpful to
> understand why the change should be made.
>
> julia

Hi Julia,

Thank you for your review!

This patch is to solve this TODO task:
 drm_mode_config.crtc_idr is misnamed, since it contains all KMS object. 
 Should be renamed to drm_mode_config.object_idr.

Do you think I need to use this description in my commit message?

Best,
Shayenne


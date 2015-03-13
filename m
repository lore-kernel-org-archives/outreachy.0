X-GM-THRID: 8122735263744
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,53aa5d5d19924edc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.231.139 with SMTP id b133mr50083977qhc.1.1426275770802;
        Fri, 13 Mar 2015 12:42:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.131.199 with SMTP id oo7ls691126obb.46.gmail; Fri, 13 Mar
 2015 12:42:50 -0700 (PDT)
X-Received: by 10.182.126.12 with SMTP id mu12mr53893877obb.13.1426275770575;
        Fri, 13 Mar 2015 12:42:50 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x22e.google.com (mail-qc0-x22e.google.com. [2607:f8b0:400d:c01::22e])
        by gmr-mx.google.com with ESMTPS id e5si412546qcg.1.2015.03.13.12.42.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:42:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) client-ip=2607:f8b0:400d:c01::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::22e as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x22e.google.com with SMTP id l6so29208788qcy.10
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=06nrVuOhXbg8PgpR31I0qSNWd84JGXwEbVHLjvUM4ik=;
        b=YxIPqXnHPkCfJDn9vpmhDos6a2WQV2uCsiWd6zCceTG17lxMWOgsjYSvmUQxanCBh6
         FkKH4pLoWcZf1R6bdGGYJlsHcSUFzfWcfTVFatHkJ1Fxfdmew7//HcepZZiviw3PZ9/9
         BguyUOvE2qlIfDaNDCUeyYViUzgdT/nsf9EuHGuW0Wz6pMmHFoAM//OvoxuyNwcY9mGP
         bcz9d0CzuRuv10wBYf8dflLlqXZF9qsApHO725zUFFglqHnV1zL2b5pLSbW887LZ3coP
         fj4/spxWf2oYlAkmRCbwDZ9IIiKsEG5Ty+aKFPnhmFa9chQYtg2g4ahyVy577GrLF6qi
         1WAQ==
X-Received: by 10.140.96.87 with SMTP id j81mr60265025qge.92.1426275770477;
        Fri, 13 Mar 2015 12:42:50 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id g21sm2024973qhc.35.2015.03.13.12.42.49
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:42:49 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <55033DB8.7020202@gmail.com>
Date: Fri, 13 Mar 2015 15:42:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Cristina Opriceana <cristina.opriceana@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] Bool tests don't need comparisons
References: <cover.1426273386.git.cristina.opriceana@gmail.com>
In-Reply-To: <cover.1426273386.git.cristina.opriceana@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/13/15 15:17, Cristina Opriceana wrote:
> This patchset removes explicit comparisons involving bool variables.
> Warnings detected by coccinelle.
> 
> Cristina Opriceana (3):
>   Staging: rtl8188eu: Bool tests don't need comparisons
>   Staging: rtl8192e: Bool tests don't need comparisons
>   Staging: rtl8192u: Bool tests don't need comparisons
> 
>  drivers/staging/rtl8188eu/hal/rf_cfg.c             |  2 +-
>  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c         | 40 +++++++++++-----------
>  .../staging/rtl8192u/ieee80211/rtl819x_TSProc.c    |  5 ++-
>  drivers/staging/rtl8192u/r8192U_core.c             |  2 +-
>  drivers/staging/rtl8192u/r819xU_firmware.c         |  6 ++--
>  drivers/staging/rtl8192u/r819xU_phy.c              |  2 +-
>  6 files changed, 28 insertions(+), 29 deletions(-)
> 

The patches looks fine, and so do the commit messages.

In general when patching different drivers, I prefer to have different
patch sets posted for it, as it allows the individual driver maintainers
to process them.

Cheers,
Jes



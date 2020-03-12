X-GM-THRID: 6803293292760924160
X-Received: by 2002:a2e:89c7:: with SMTP id c7mr5810618ljk.265.1584030288010;
        Thu, 12 Mar 2020 09:24:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8647:: with SMTP id i7ls1245609ljj.11.gmail; Thu, 12 Mar
 2020 09:24:46 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtggH7pHsCDmcWGgB339Me7OaHdX1V68u+aC1UvgbXoa2AlYtXU+Gl8H+Rpb+YE8HfmMhAN
X-Received: by 2002:a2e:a556:: with SMTP id e22mr5631069ljn.130.1584030286593;
        Thu, 12 Mar 2020 09:24:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584030286; cv=none;
        d=google.com; s=arc-20160816;
        b=dRbiz3p+YwoqYbL3pVwpvsVeAw/ukpq4o/ueoIyMOfEGADhUkzbvSFDwQ0Gzjs/Fp1
         Dd/R59iSDwAcMWzJGcoH3GNjalvyXxEX/4R5n+Uns4w/6I2see7DYfzf2wv8ccbXqA7k
         mmMrdSOeFmdImEDGapysLJF7L62uY6H1s4sdKm8LS/H5dDE4W04NjOTJ/noWc/9qw1g5
         Wd2R28WMZGin5ow2TEDmo599I5ISjpCxs/bbZpohIH7NS7ZKlPbNPnV2BzLujbxXr8nk
         77V9HetI/6l+b96R5EA2bPE7HqvVnl3iQbE/Nie4lrlCbAb1DSQ1wqFyz/2oZBdR0XDP
         kiwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+JCpDvElp+CrGqi6bK+MtYLYcCCjK4ef59nffCUwhAQ=;
        b=jmxwrvtIDYm/0+7aSUwQ1N6WcO5lyaWhpY4MlMSknZMpcH8nuwq3Yfp0e1/14GrSbI
         lCCELvv4ywXUs0tPABh15R5rYyyl8vNw+xTaJKruBgfg5zSc0q+dbC1r8zQgVmbRPH3i
         sTya7EzVEN9qzcxFFeiRDd6AlcwN2awT5R3nThALAZPaag7NQjslOoqAE7GYzfVqt8eQ
         UHuSJ+aDwsq4Kd3JmKsRPOdYEWNDzn49FUR1rpgqEka3D/TLEjOpd39A24vBaIHrQXdK
         wC64IpuogdfKaO1mcJ9BEIZVqeEzHWDQKTaVCz4ZUAlORFWacl714O4z4smi03xrhnmX
         FG1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=RGieFGZZ;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u8si273073lfu.3.2020.03.12.09.24.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 09:24:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=RGieFGZZ;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id m3so7047456wmi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 09:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+JCpDvElp+CrGqi6bK+MtYLYcCCjK4ef59nffCUwhAQ=;
        b=RGieFGZZ9olyrM3/eNFkMgARXMXwDxEF1FLB3JSYK+812qn1Vvt/d661ke1GsneZk3
         dj6d4LR09/q92fxWsJ/MxDsaW3+kUAVSDf8yz46U0JY7Jzwoznv3YNKWK7o6dZdzUOmA
         PzEy0yvjz1QZB02waSfYN2YOlX1aI/A6HyY9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+JCpDvElp+CrGqi6bK+MtYLYcCCjK4ef59nffCUwhAQ=;
        b=W5gPM3u2lppRMWwAvmFIjtEuz3VEHni4mCnxstzckqzjSz5hFr3o9rkwYjCG/cl727
         7rwOJtewGIurXoerz/PQBcTVwaeBsaQIFEtE23C6luuGcMNjAQOSJWQgD2pHKTlnRiFB
         yVpDdAUphwZ699gVPh48VdVB9W0I2+tSM0AzOha5TJaFFVz3z7canr45BUQofeJER1yX
         DMuWM2U71mdJRLnzDPXiCYB5VAp99YKUI3QZNxMT2/FyXhe0TOaCt110EMNI2GAdL/NK
         m78SwsnGV4ngkUbStW4Pet7soKPONnjc7P+rY0hYzRiD14eTQByWm+V/Qsk/nXXbXAHN
         OOKQ==
X-Gm-Message-State: ANhLgQ2mc/Zx2lqadSyJXIlIQDfVAQ909dyy/gGDZchN9MWs7u+0KqEu
	/4HIbReb4DDRJFjSzHpBUiCHng==
X-Received: by 2002:a1c:196:: with SMTP id 144mr5739533wmb.100.1584030285877;
        Thu, 12 Mar 2020 09:24:45 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id 98sm14845560wrm.64.2020.03.12.09.24.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 12 Mar 2020 09:24:45 -0700 (PDT)
Date: Thu, 12 Mar 2020 17:24:42 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	vireshk@kernel.org, johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: i2c: remove unused
 pointers
Message-ID: <20200312162442.GB6485@supernova>
References: <20200312121222.6609-1-lu@pplo.net>
 <20200312134202.729e9b8b@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312134202.729e9b8b@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 12, 2020 at 01:42:02PM +0100, Stefano Brivio wrote:
> On Thu, 12 Mar 2020 13:12:22 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > Suggested-by: Johan Hovold <johan@kernel.org>
> 
> This might be a pet peeve of mine, I'm quite sure I've seen similar
> observations by others (on netdev?) but I can't find related messages
> right now: I think it's nice to reflect a temporal or causal ordering
> here.
> 
> That is, Johan suggested it, and you made the change, so Suggested-by:
> should come first. It helps following the logic, especially with
> growing numbers of tags.
> 
> What I personally do, and this is totally subject to taste (hence not
> documented or formalised), is:
> 
> 1. Reported-by/Suggested-by: (if any)
> 2. Fixes: (if any)
> 3. Co-authored-by: (if any)
> 4. Signed-off-by:
> 5. Reviewed-by/Acked-by: (if I'm carrying any before they are added by
>    the maintainer)
> 
> -- 
> Stefano
> 
I will follow your advice for the ordering, thank you, Stefano!

Lourdes.


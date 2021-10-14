X-GM-THRID: 7018941118564794368
X-Received: by 2002:a05:6512:ad0:: with SMTP id n16mr6067359lfu.315.1634233653213;
        Thu, 14 Oct 2021 10:47:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3994:: with SMTP id j20ls689062lfu.3.gmail; Thu, 14
 Oct 2021 10:47:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwo6HMEcDztrY9ltWd8fGmvItjgZUtd6fJuafYpb1j0xtO/k5Ewp3XM8mDOstbqgg5uXDoU
X-Received: by 2002:a05:6512:747:: with SMTP id c7mr6665782lfs.432.1634233651690;
        Thu, 14 Oct 2021 10:47:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634233651; cv=none;
        d=google.com; s=arc-20160816;
        b=gBSQ84LdD61Cb7LyED7i+grEpnZRLulmGkcmCgBveTrIQMlBaI5sB/C0swdBFuZ98i
         IQu3vqj4cv5Fmm15jissBtC4owyRISGUUfNmysy3ob7InWrT7ZJHSYuiB/gE/Lzuc43O
         r9fDw+1fhwFHMGKZvTq4fy3DhUhyFrb3Ejvkf8dzr6WI8EowjFIJjKnPhInbZH1ryaoA
         TCUgGunGBYkMQ62KWYugVGpkcIimUFCycFxiR51+5Dz4dVHC/jJlc0DdGgEDOEvSDg11
         KOTD63h4OcCfr0sZITCugAMdjhmfkdfC0UCjEx2cWkjMDYQMvqIXzSMlCCKW/a7gUjPU
         q+kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=muHUXBtEtExL3KorA5sEMOXCfw7wJcrnkw/I8HPRn5o=;
        b=cOs/Go9OYyDq0YZhHMMy2OVasuIkISbnQLFzke6PYyr6OkadQk4mRtERdeX95Y9wl2
         hLGUariJcySCohZax6FaR5TuJz78VGa7JA/HECOBBZ6rEQten1tO4olsQHToGeVVjt9f
         gAdDIrlPCd7rKQP/8d+ykT1SU0c+Jgc52GNXJe+aTHMx3D19PSVqke5e749sOGc+b2Mw
         0Hq0qdh1EwhOmPSlMNgEQ313CbYq8e//rqj6LrdP3pJd/gXLQFzZgYaE55Lvb6BloCXG
         EcpU329Bbv159OS4chpZ8HAV3wXXKPAxFzaQROCQ1aA0cA8jKHvwTgyRxhTzNAErn0EA
         10Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lUJVg1rN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id d19si201697lfa.0.2021.10.14.10.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 10:47:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lUJVg1rN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x329.google.com with SMTP id y16-20020a05600c17d000b0030db7a51ee2so84127wmo.0
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Oct 2021 10:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=muHUXBtEtExL3KorA5sEMOXCfw7wJcrnkw/I8HPRn5o=;
        b=lUJVg1rNhn2tW50GT116srhJGSyUGL8SHarqdbSQWqos8yvrec8U3hB0fuj84rWxxh
         xv8Y0Iv+DIJ7v3mpg5ypjbO1XhBm4IGR8ROctdKvMPGoIFkkAK7ROFZrr1btOZI7I+qa
         pR4wmHTAgsu1oMHHDlgdN33nPK2SHB38x5QmX9mGA9fl5ckyT4tRMU/VeiXg0EH+441G
         Cg2xrba9eOgxFN0jxE0nmm3Jo0AxWTwOTBQJQ4QlsKrMelv4BecA3zSHABxHhN3fl7ss
         pIDp2az5qr4tIL+rukqGNQoRWVawTzpQ6cIDDXyFSuU1/Z+xLstVZYcezTVKPF4wwDV5
         +BKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=muHUXBtEtExL3KorA5sEMOXCfw7wJcrnkw/I8HPRn5o=;
        b=LlS7yqK5z/5EBuNfztXwUovYpdb+No7O4D9xFXe2NPr9xdJApGc6PEev9U9zuLxoXo
         Fi0NvIaMCgzLwZdLJ8abPF9+kWaSH6rbhsyT0hUqf5wHrUM1OKxIAwQ4rcBP9LCGFxQN
         KSj4Tt2OcUlmV0d72sMnNP8JXJX2ywNQ/zhwBM02xvVKP64TOdNP9dB1DdgdrJ5Z0ih9
         6AcWnJ9BIDaOt3fcN1jY8xdIzdkj7gDFNSu4r/v4y4EcXGs5NcnpZXL17vjad+hKQZ/W
         4NH5MMRUeSQyP63+Gc1Jx/EayZ4lXoAPQ1sRRLixSBG1GzK9aet2QNbcwVgBSjM4zeyj
         hVfQ==
X-Gm-Message-State: AOAM533E2QAMxyR3yInJM5sJ1LdnmxiDHlkvkSCA3oKjW3fzBvblcuWq
	2bzpYefy9ifzjmO1wEwGkUw=
X-Received: by 2002:a7b:c193:: with SMTP id y19mr5088100wmi.27.1634233651219;
        Thu, 14 Oct 2021 10:47:31 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id a81sm3063204wmd.30.2021.10.14.10.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Oct 2021 10:47:30 -0700 (PDT)
Message-ID: <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>
Subject: Re: [PATCH] staging: vt6655: Rename byPreambleType field
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
	julia.lawall@inria.fr
Date: Thu, 14 Oct 2021 18:47:29 +0100
In-Reply-To: <YWhOfPhVRBrH3gz8@kroah.com>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
	 <YWhOfPhVRBrH3gz8@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi,

On Thu, 2021-10-14 at 17:36 +0200, Greg KH wrote:
> On Thu, Oct 14, 2021 at 04:15:43PM +0100, Karolina Drobnik wrote:
> > Drop Hungarian notation prefix in `byPreambleType` member of
> > struct vnt_private. Change it to use snake case.
> >
> > Fix issue detected by checkpatch.pl:
> >   CHECK: Avoid CamelCase: <byPreambleType>
> >
> > Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> > ---
> >  drivers/staging/vt6655/baseband.c    | 10 +++---
> >  drivers/staging/vt6655/baseband.h    |  2 +-
> >  drivers/staging/vt6655/device.h      |  2 +-
> >  drivers/staging/vt6655/device_main.c |  8 ++---
> >  drivers/staging/vt6655/rxtx.c        | 50
> > ++++++++++++++--------------
> >  5 files changed, 36 insertions(+), 36 deletions(-)
> >
> > diff --git a/drivers/staging/vt6655/baseband.c
> > b/drivers/staging/vt6655/baseband.c
> > index 0bae35af6e0f..69739de927be 100644
> > --- a/drivers/staging/vt6655/baseband.c
> > +++ b/drivers/staging/vt6655/baseband.c
> > @@ -1691,8 +1691,8 @@ static const unsigned short
> > awc_frame_time[MAX_RATE] = {
> >   *
> >   * Parameters:
> >   *  In:
> > - *      by_preamble_type  - Preamble Type
> > - *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B,
> > PK_TYPE_11GB, PK_TYPE_11GA
> > + *      preamble_type     - Preamble Type
> > + *      by_pkt_type       - PK_TYPE_11A, PK_TYPE_11B,
> > PK_TYPE_11GB, PK_TYPE_11GA
>
> This is not described in your changelog as something you did.  Are
> you sure you are not mixing up different changes in one patch?

I added whitespace in `by_pkt_type` line to align hyphens after the
name change. Should I mention it in the description or just revert it?


Thanks,
Karolina



X-GM-THRID: 6660473635314073600
X-Received: by 2002:a37:984:: with SMTP id 126mr21555984qkj.3.1550765141905;
        Thu, 21 Feb 2019 08:05:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9dcf:: with SMTP id p15ls1302712qvf.2.gmail; Thu, 21 Feb
 2019 08:05:41 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZxrI3oHyQRpmLHVRCi9aBnQosv51fmE5S2Y88Rk2sIQEWeC2COkLEiOMH2b2ivG5XRfSKb
X-Received: by 2002:a0c:9188:: with SMTP id n8mr22400432qvn.3.1550765141338;
        Thu, 21 Feb 2019 08:05:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550765141; cv=none;
        d=google.com; s=arc-20160816;
        b=uL3P8/UAuUYtMrrO8pEsz9gWd+/1dHZhnztz6od5Ei79bxY8fUE4EujO9BavAzERkI
         N8PBG/jj9wZ0sm7/Xi60/nIuIpSqoJubo8jeH6Gcs8X66bBhf/M7DqjMs4MOx8A/PzyB
         mtCNTSYqAPSXBXiqZ2TniG8ba35CH3ECGF2VepF7yBgWcd/+A4r9TL1y3NVFNVqlxGKL
         XrnqPXmnZrE22gCQg8jLzwsg/QeUZR59Y21fn81MfgDgzVuwXHSkWgT5MHMNWmGGb9dh
         UV/TkgBNnhzxkplbLjkMurybF1oQVgt72LzortEmusibW3KR2aD0q+iJX8ljqD0odAki
         yQ8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=A9VM1PWICemRKjXjPEfs8XbDAUrPmdjYimTVY3M2gVs=;
        b=ZLWTXvxCEMhu1plReNjARxZAo7M4B+jn+nroxZy22Am9ReYdkBEKq40XtEE5hF8m5J
         livAgYBDROuyuuZYyGHNaCkhzGJQRKW+ZkRAhM27X+15NK68StWWjJ0s30IuIvYgS1z0
         zdLo8yuaz2J5x71/h3eOZCY56RhgTS1Rk4VwTON3kiRjrhON5GiRQaL+73cLCLQ0XFkJ
         j7B0oRv1Q3+VgxFTSmLHgZlvaDwXGHOmlMTX9IQUy3D3QxCXF8Wm2lvAnxF2t4/oi0Jm
         IJ9aJwiqynL1PEyW2GLR8kUXxgDStMcy5kTXDKtcZ6Hx30TKFwZ3zs2zkVDIsxBms52A
         3YpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MlH2Gtmd;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-oi1-x231.google.com (mail-oi1-x231.google.com. [2607:f8b0:4864:20::231])
        by gmr-mx.google.com with ESMTPS id d124si1242185qka.5.2019.02.21.08.05.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 08:05:41 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) client-ip=2607:f8b0:4864:20::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MlH2Gtmd;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::231 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x231.google.com with SMTP id x187so1793507oia.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Feb 2019 08:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A9VM1PWICemRKjXjPEfs8XbDAUrPmdjYimTVY3M2gVs=;
        b=MlH2GtmdkapTXfWP8cxyg1BvyKkCEP2sLOhm4UJMFK4mtki96Rv0kNeNYAoXjMAhVx
         uBbI/bhDlPlewgjuM6cvp772wPxdSWFj85s/d9XAxJHTnFfkUOxd9QUsnj9rmTFMsN08
         vnGp1GE2OnH421GilCkoHOqUN8b2lyc9UC9LbaCFPezu7Kc6e6EEBmvP5Gs6TyHYOcAF
         yMEp04QOvnbe0xjs9l18k1KTmH/EekncLt+WQ1Ts1oiG9Ln97BlIY8Eml1xzGj7fYgev
         ROwpCOyqZmxVdMsU6Fb1twbDxtJ4UGTLytx+5/HZXB/Kb9CHmeI2AvK6qRaTTzElO5bp
         UrLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A9VM1PWICemRKjXjPEfs8XbDAUrPmdjYimTVY3M2gVs=;
        b=fxYFItm2Rd22FMPcC5J+iuFquoBcpvGDPSxKxfV45U6BesVIBXwk0p+QKjmVDNoffU
         lh7+ZB3GFLJDm118gVf6R9TEhiDTnD3L4iKY7tdHPtG0jR4jAip8kK0XfVxyE82s8k4o
         cUCplTw7iXQXAar4bP5BkCMIUFJC808IXVvZRA3h2Br3mXvHJEXm44psNmaFSsz74Uea
         aH3a+ny2EBAgn6Kgk6i38Bnd1Oz6YcqosESoJ5rEkAd9RCpb0ppAhzlF+DOqb6+tJtQ0
         Zywg1esEdgFr1LT8XeUkamvJ8ztuPczkI3FBujU+EbDTef0ssz6SmRQEl7E5Lv+RfAsI
         9NwQ==
X-Gm-Message-State: AHQUAuZDHwLW0Bpg7TJY9W47ECubhcmXAZyVOCCutTE6Ma/9Ekj+5Q/s
	t4nDsvefW/q6at+7bOUGh+QTT6dMPaoa6ijLIzNBkmei
X-Received: by 2002:aca:b683:: with SMTP id g125mr10219946oif.17.1550765140803;
 Thu, 21 Feb 2019 08:05:40 -0800 (PST)
MIME-Version: 1.0
References: <20190221151918.GA1764@bhanusree-MacBookAir> <20190221160127.GC23121@kroah.com>
In-Reply-To: <20190221160127.GC23121@kroah.com>
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Date: Thu, 21 Feb 2019 21:35:29 +0530
Message-ID: <CAB0Mk-Nt58V4_bGqFiDD5RyHEU68Azfk=1qCM-QqSiQEihr05g@mail.gmail.com>
Subject: Re: [PATCH 0/3] Staging: fbtft: Fix Various Checkpatch issues
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Feb 2019 at 21:31, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Feb 21, 2019 at 08:49:18PM +0530, Bhanusree Pola wrote:
> > This series cleans the following checkpatch.pl issues:
> >
> > CHECK: Extra blank line not required before closing brace '}'
> > WARNING:EXPORT_SYMBOL(foo); should follow its function/variable
> > WARNING:line over 80 characters
> >
> > Bhanusree Pola (3):
> >   Staging: fbtft: Remove extra blank line before '}'
> >   Staging: fbtf: Declare Exprot symbols immediately
> >   Staging: fbtft: Fix line over 80 characters warning
> >
> >  drivers/staging/fbtft/fbtft-core.c | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
>
> Your patches are not "threaded", like I asked for last time.  How are
> you sending these out?  git send-email should do it automatically.
>
i'm sending each patch separately using mutt.


X-GM-THRID: 6747357864452423680
X-Received: by 2002:a50:da0f:: with SMTP id z15mr24811790edj.137.1570993340133;
        Sun, 13 Oct 2019 12:02:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a5c2:: with SMTP id b2ls2923466edc.3.gmail; Sun, 13 Oct
 2019 12:02:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1ZVt4oGlFhi2oFOF/NGTnnBgNdj6kmHXg65gSLb3eJecfxj+FIUoaC97uTBf+s2wX/4ex
X-Received: by 2002:aa7:d753:: with SMTP id a19mr25406603eds.80.1570993339242;
        Sun, 13 Oct 2019 12:02:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570993339; cv=none;
        d=google.com; s=arc-20160816;
        b=qNUeQ5iKyQh4H5EeeV5SyAmsCBWAfK757K9gcIykTsSpPMB/RxeghpY1kSd0LSepy2
         37MgVfekQqEBpSA/bfzU/WhZZkOP+IMGGUAXSDmUvCwroSZhK5tAP32xT63bpXhXjB1H
         lSwQfuE+dhsEqnJFUrGrxsvSv/1pvlhYDN8Onw4F3V/jcMZdyADy2JSdt9anAHiICfk+
         99WPynl1iXsvVRmrIlFwyDb5CMxoKRC4eWkGeJzItw0Eh2J3AK1hz2PuFq2XOAmefzTA
         6MkheXCcjx2HT8+yzsi0BgXAyCVaYoPuUGRZBPdjEaPbYFbmsKASdd3GUyTX2wybXC1P
         A8WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=PxCXXBhA2C4YLbbTIZsjjSPm4uyCjLfswHazHo9DGq8=;
        b=vh/G4jUgh9GJepYLQbXT8BkgLc3g2Q7zDo/n8AU4tby3GBcOdbtI8+xMEKVfksQJbh
         sQpHBUyiHJifAN07iUcdlsvt8IH5992QnAk2X5QHaSAXpcD5g6vJRTd1CKMq7BBUE7Ph
         vGF5cTSSKAXPkz9+SWzVAixYrGpU5EVfosRb+PkXD5LOjkYSB/A3g3zJM0dFH1JUjkrp
         2SgO475BzKB/dIIos7V+b/z0G2v5gBLE+/9cKV4CtoEVZECTgbhrPWezVxRSggLXvz4n
         pTgZb28fuu3Kc81wjXosTXXLRuET7pOBQ49Edo1WeNCGFSEW5ibtgRqbsGsdR3KYF8KM
         +OcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pmiduzxg;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a27si706993ejg.1.2019.10.13.12.02.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 12:02:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Pmiduzxg;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id h4so17179500wrv.7
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Oct 2019 12:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=PxCXXBhA2C4YLbbTIZsjjSPm4uyCjLfswHazHo9DGq8=;
        b=PmiduzxgZfYZ4Y4miFLkBY+Tvs4U8DF0tCoOdP6wlSkN/AU0MkesEU1lPjXphgh6lI
         noVBN680XLK9ZWCPkAFIR0BYJ/DUjzyOmf5H+9Fyv0hdDDCUNBdrK15k/APgabD1a0bZ
         Fj2wih9jCXW9zok/Oja5/1BCrCkjxiIQBYyq35bzaMjis57OIJn1T8b4UKuII8elh92p
         rzn3YMGVArTbuIu86t/iu4/fAgGxUI0DIBi/8lZ5KgiqI6th8FDG1D6ncWkwW3nb4KKR
         MBI9biz7oh1SxCMyZnqC4lGoGphiyZlMis+EUj+hnWq1TjcfP6KBjzN8ZHRlaR5Hc5ho
         RlrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=PxCXXBhA2C4YLbbTIZsjjSPm4uyCjLfswHazHo9DGq8=;
        b=jkQgh1of4lTdxBit4p0IO1m7jx3UmYdeaFg9Kt2FOFPdSOr8JeYaerHjw2oaNc04gd
         EcenyJUbgzi5DXBZKNqjG9UgoYJd70vttvVurIPLgMi7fTBkJUMKRmhyCV5BqohRldil
         GS4wR0KioISPnxNKDVZ8NlMDTLkDC6/QwPE26Nkycf6Q/hMv5OvGPYY7gE5YDaM5f67X
         pe6KOKhExMq8flek/RdsuimST3QlsLAON6tOYNDHZJteO/AHcX5OURdF71PbT7kx+Tj3
         16ThqlLz48/feuvYCQvV/WC626/1kPgTfTz1bzk/P/BYiFVmydmIwjanMA2KiVSJmPfw
         /jCA==
X-Gm-Message-State: APjAAAWkHSCoL8LyXAXE9CPUuoJMS403wCk5u7RHHuvppsbG3alNPaF/
	FwvkYcNtcHd7LqeZs+jKhQ==
X-Received: by 2002:adf:f983:: with SMTP id f3mr22369431wrr.169.1570993338769;
        Sun, 13 Oct 2019 12:02:18 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.gmail.com with ESMTPSA id s1sm23055438wrg.80.2019.10.13.12.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 12:02:18 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Sun, 13 Oct 2019 20:02:04 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net, 
    linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
    daniela.mormocea@gmail.com, dave.stevenson@raspberrypi.org, 
    hverkuil-cisco@xs4all.nl, mchehab+samsung@kernel.org, 
    bcm-kernel-feedback-list@broadcom.com, sbranden@broadcom.com, 
    rjui@broadcom.com, f.fainelli@gmail.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: vc04_services: fix lines
 ending with open parenthesis
In-Reply-To: <alpine.DEB.2.21.1910132040140.2565@hadrien>
Message-ID: <alpine.LFD.2.21.1910131951160.13450@ninjahub.org>
References: <20191013183420.13785-1-jbi.octave@gmail.com> <alpine.DEB.2.21.1910132040140.2565@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 13 Oct 2019, Julia Lawall wrote:

> 
> 
> On Sun, 13 Oct 2019, Jules Irenge wrote:
> 
> > Fix lines ending with open parenthesis. Issue detected by checkpatch tool.
> > In the process, change driver functions name in the multiple files from:
> > vchiq_mmal_port_parameter_set to vmp_prmtr_set
> > vchiq_mmal_component_disable to vm_cmpnt_disable
> > vchiq_mmal_port_connect_tunnel to vmp_cnnct_tunnel
> > vchiq_mmal_component_enable to vm_cmpnt_enable
> 
> You should say why you change the names.
> 
> As far as I can see, there is no change to the actual function
> definitions, so the code can't compile.  Perhaps that comes later in the
> series, but the elements of the series have to be ordered such that
> compilation is possible after each patch.
> 
> julia
> 

Thanks for the feedback, I am updating it and will be compiling  
each point.
Jules






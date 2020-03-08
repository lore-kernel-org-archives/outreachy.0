X-GM-THRID: 6801918498465382400
X-Received: by 2002:a50:cddc:: with SMTP id h28mr13716709edj.127.1583696350224;
        Sun, 08 Mar 2020 12:39:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:8557:: with SMTP id h23ls4747626ejy.10.gmail; Sun,
 08 Mar 2020 12:39:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvrG1ATiWrzyd3YyNSH0gZr6VIxKYKh3MCUnUMUstf0yFpmt4ebEfJ3ewfZaRr5HBYhbuJn
X-Received: by 2002:a17:906:278e:: with SMTP id j14mr12413420ejc.124.1583696348681;
        Sun, 08 Mar 2020 12:39:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583696348; cv=none;
        d=google.com; s=arc-20160816;
        b=nulYykcGbpkka0tAQ3I6IBT4Y6+FYKoFLY3mpc68tDiRu814/eHiAAYDMAqvVbxsNA
         UwvEss/wQQAhwQ2GNFa2j9agxYjaMSzdnUoJ/QhZjI3GTLkkO3WIh5SCOFTKVfEz7U4G
         +Y2dVHwAYpc6M+e2ncb45zfMj83QIYGK8jOzXEs3cbXNXyPKBuFJpk0gefDfHp1PxLPS
         8obPg6LGEOsuIYOFsPbXQBYy7ML96jf6vr7fpA6Yvx6LKZOgBWWD4bhTrKVgt4CX+BAs
         eDmbOaFoHyCAA7iIRwv0Cmhnmy5VlWhLfRCF6R17bC1qleljsFXFWRvv6cFnnODkxgdm
         aSgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MnhwrwyFFPD6GYGXHmG/Eim7vy79Fi34wIpZ1wYjrQ4=;
        b=WQ+qWsY/I2TMHl0/4ERrbfPm2id0ZphnPXIKEDI4HWB8XLCTeqSJuGHu5DMwZP4rL1
         OVlh9L90DtAAScd5zTmSuHYrgRvfFf0HjAOsS+JAnbdz5WMVmctgPCbJm++a4FtC/Gsv
         pDz6+5UXA67HqWLiMC3hz98I2mWkx7OYEqiUWnpszRDWuuWEOUdDPXGW+mdVQGIP6hCu
         m85tgIc0Jhyk34oVYqQSTDoG77Lla0fh86arpIv7PiorYzoSVg7kIR2dUKXpvLRImkkV
         wkrsbZs0ZPbt4tMqfRoXJR4DT7KvGTh9FZl1e+/sAXBuq92y/wy98way2vwJvo7vqL6g
         01NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l21si223532edq.4.2020.03.08.12.39.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 12:39:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,530,1574118000"; 
   d="scan'208";a="439382320"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 20:39:08 +0100
Date: Sun, 8 Mar 2020 20:39:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: vt6655: remove line over 80
 characters
In-Reply-To: <20200308191732.6367-1-payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003082036150.2400@hadrien>
References: <20200308191732.6367-1-payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Payal Kshirsagar wrote:

> Fix line over 80 characters.

The change is fine. However, the patch should be sent to more people.
Search for get_maintainer in the tutorial.

>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/vt6655/mac.h | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
> index c7888c4e96f2..eb56e16637f6 100644
> --- a/drivers/staging/vt6655/mac.h
> +++ b/drivers/staging/vt6655/mac.h
> @@ -884,9 +884,11 @@ bool MACbIsIntDisable(struct vnt_private *priv);
>  void MACvSetShortRetryLimit(struct vnt_private *priv,
>  			    unsigned char byRetryLimit);
>
> -void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
> +void MACvSetLongRetryLimit(struct vnt_private *priv,
> +			   unsigned char byRetryLimit);
>
> -void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
> +void MACvSetLoopbackMode(struct vnt_private *priv,
> +			 unsigned char byLoopbackMode);
>
>  void MACvSaveContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
>  void MACvRestoreContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
> @@ -913,7 +915,8 @@ void MACvSetCurrSyncDescAddrEx(struct vnt_private *priv,
>  void MACvSetCurrATIMDescAddrEx(struct vnt_private *priv,
>  			       u32 curr_desc_addr);
>  void MACvTimer0MicroSDelay(struct vnt_private *priv, unsigned int uDelay);
> -void MACvOneShotTimer1MicroSec(struct vnt_private *priv, unsigned int uDelayTime);
> +void MACvOneShotTimer1MicroSec(struct vnt_private *priv,
> +			       unsigned int uDelayTime);

If you want to work more on this file, you could improve the naming of
variables.  This code is starting variables with p when the variable has a
pointer type and u when the variable has an unsigned type.  The kernel
doesn't follow that convention.  Also, camel case should not be used.
This uDelayTime should be delay_time.

These are actually function prototypes.  So you would change both the
function prototype shown here and the definition, which is probably in
some .c file.

julia


X-GM-THRID: 6664742734726692864
X-Received: by 2002:a1c:4087:: with SMTP id n129mr202601wma.13.1551771213034;
        Mon, 04 Mar 2019 23:33:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d04e:: with SMTP id h75ls207335wmg.0.gmail; Mon, 04 Mar
 2019 23:33:32 -0800 (PST)
X-Google-Smtp-Source: APXvYqzx/YN2Uj/tdzssh+UISUxZj5NCHuBB8z7b/91b3buFLlaOLWFA3D0HQiNKhMULL0Lmqxfy
X-Received: by 2002:a7b:c40e:: with SMTP id k14mr187195wmi.12.1551771212363;
        Mon, 04 Mar 2019 23:33:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551771212; cv=none;
        d=google.com; s=arc-20160816;
        b=Opb9e0bKRurXT4UgyWUA0S5DBSxwpI8HLzLPDvCxoj6ffrMrKAM55Ldp5sw+PXM/iz
         d0D8Gfqnu08W2iwL1oo5BN2sbJGzDS1hqxJoC+ySe2kaJYL8XflbatQwNgdJN8zgwMY0
         Ofon+tT7o1d9H5ovxVEjq2YzPbJgbea6dbojAIIBlJJuyT0Sbq1BumqyCgE0YKAw83DF
         bLzrja6O/KHZRoLY+SE7cbjzRkTULnkLg9FnzNWCLFvZ4Hfo5TRrePT/PMu6DQOjtoTq
         edrmxR6j1znrPkdQndwh/4W/ug8udtRerP3i4cSuDxqxkuMGK+es64/qto4B0GVNNdf4
         SWWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iXsRbCGcev68rMcOZuPIwhvVujqQapD6m4DFFovx2A8=;
        b=Oa56W4mdT5k1EgZ6l13mAxR8ztCvItq07UGUlS89MkfL0QFDOJ+15VLtUbkn/PtV5O
         eBG6odIbkwxOEb2gEVKmBbZGet0ZRn6rUIw2CjiPK2eFgY3vmY3syoO9ZGA+eOaRzlhd
         NRt12ka+K/VPRA5CScNeBxrt/GVW8fzHW3AM+KaC/wMlVs+QM4MPlGgWuNurOalzlvFA
         xFxdDlVYhPhw5fWTXGPPCCrElMDZqVFxywXjNgdBvTLkvZG+v/wj4ZeCYgSkfo6agp3N
         /6UHMJa+U4f955NMAO1a91cIhAgFh+TsvQzxXOk8hwuw+3L1ByQ4BnCxRFiN3+74bak3
         59pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r15si401079wmc.4.2019.03.04.23.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:33:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,443,1544482800"; 
   d="scan'208";a="371924945"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 08:33:31 +0100
Date: Tue, 5 Mar 2019 08:33:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: Larry Finger <Larry.Finger@lwfinger.net>, 
    Florian Schilhabel <florian.c.schilhabel@googlemail.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: r8712u: Replace '--help--'
 with 'help'
In-Reply-To: <20190305032535.osg6wtrk2v4x6nfo@debian.etsai.site>
Message-ID: <alpine.DEB.2.21.1903050832240.2551@hadrien>
References: <20190305032535.osg6wtrk2v4x6nfo@debian.etsai.site>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Mar 2019, Wentao Cai wrote:

> This patch replace '--help--' in Kconfig to silence checkpatch.pl
> warning:
> WARNING: prefer 'help' over '---help---' for new help texts

Actually, you also indented the subsequent text.  That is what hits the
eye first whenone looks at the patch, so it could be good to mention it.
I didn't see the help change in the first hunk at first glance, so I
thought you had included some extraneous change in the patch.

julia

>
> Signed-off-by: Wentao Cai <etsai042@gmail.com>
> ---
>  drivers/staging/rtl8712/Kconfig | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
> index f160eee52f09..622ad14f232c 100644
> --- a/drivers/staging/rtl8712/Kconfig
> +++ b/drivers/staging/rtl8712/Kconfig
> @@ -4,14 +4,14 @@ config R8712U
>  	select WIRELESS_EXT
>  	select WEXT_PRIV
>  	select FW_LOADER
> -	---help---
> -	This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
> -	If built as a module, it will be called r8712u.
> +	help
> +	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
> +	    If built as a module, it will be called r8712u.
>
>  config R8712_TX_AGGR
>  	bool "Realtek RTL8712U Transmit Aggregation code"
>  	depends on R8712U && BROKEN
> -	---help---
> -	This option provides transmit aggregation for the Realtek RTL8712 USB device.
> +	help
> +	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
>
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190305032535.osg6wtrk2v4x6nfo%40debian.etsai.site.
> For more options, visit https://groups.google.com/d/optout.
>


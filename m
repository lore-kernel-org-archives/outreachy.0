X-GM-THRID: 6668974051336126464
X-Received: by 2002:a1c:9689:: with SMTP id y131mr618585wmd.6.1552804447574;
        Sat, 16 Mar 2019 23:34:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b641:: with SMTP id g62ls1604908wmf.11.canary-gmail;
 Sat, 16 Mar 2019 23:34:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwUlEL12KU+csACVkf33IdPF8MP+rtxdIk9hKUdJvtGUAHSPIPvGayBrRctB83xX1h34G+q
X-Received: by 2002:a1c:358a:: with SMTP id c132mr618653wma.23.1552804446869;
        Sat, 16 Mar 2019 23:34:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552804446; cv=none;
        d=google.com; s=arc-20160816;
        b=lir0HZFnsF1u0azmQbQrw77UIhWUDc6yvzysPJ72LcoUnHbxQ3CgiJxywj5QuyTWAC
         PZUe2iQowDIXM58pOvj+V/VckqsmViDI5HQvFf+A1pGDWUG8jmZwUnJ/EhO0uFWAHugb
         skBgD+JcaKnwD3U3/fPfRW3iOo/c4Yzl6+OeMzwB+8976splHcwGE0PJZNzA69m20E3w
         8nuG83vx3Q8bvkTss5b6XZebX5WFcv+x6mn1sSu8zOOj4CoFFpLBPQvONojz3RUknx6D
         +VKlqA/qlDjZL7q4zZruSGI5c/zpLTzOJicSRMeVqjhjQbzW/zfVLMagpzf+95Hwi77H
         BW3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=f17rgTj2mEHbzNFkjlvS+yUR86ZBBty+1ukXwXETKog=;
        b=QfH570ngrYNNeO3eWtD/XrGwtaQRGrk2Y+tXuzT5Vy9WHqOUzD//DoUL2kZM4k4zdk
         V+fq99l7g5vgLGM8SSFe+2HIp2StTC5WvtPg+I0pP9/dMaF5fiKK6PomLtZFOPCqePVz
         X0dYC11dtq7Wv2lU+IigpiKm5dD3EliHafuUQJo6YpogXvj9+/vutCj3XCNgWlh3EAXu
         8FRuFIND8aZIYbcJuAagQ6Ks0idgGmc4CMzQX11DmJiR9uB7bOuLmmrHg0klKK047WpF
         824C2Nwabc7h++oho8P9OC+gPnQG79uUtvhSbRMHygFUzs0BgUEcfxf3BuaHhfASFDBg
         o4tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si253939wmf.4.2019.03.16.23.34.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:34:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,488,1544482800"; 
   d="scan'208";a="299664672"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 07:34:06 +0100
Date: Sun, 17 Mar 2019 07:34:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/7] Staging: rtl8723bs: Remove
 unnecessary function declarations
In-Reply-To: <a439f2d4d1f6a2ab47306bbcb7794379554979fc.1552782299.git.madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1903170733280.2588@hadrien>
References: <cover.1552782299.git.madhumithabiw@gmail.com> <a439f2d4d1f6a2ab47306bbcb7794379554979fc.1552782299.git.madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Madhumitha Prabakaran wrote:

> Remove unnecessary function declarations, as it is never used in a
> kernel tree.

I suspect that there is no build issue here, but still it would make more
sense to make this change in the same patch where you remove the function
definition.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/include/cmd_osdep.h | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/include/cmd_osdep.h b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> index 0749936df032..6940d86e93cf 100644
> --- a/drivers/staging/rtl8723bs/include/cmd_osdep.h
> +++ b/drivers/staging/rtl8723bs/include/cmd_osdep.h
> @@ -7,9 +7,6 @@
>  #ifndef __CMD_OSDEP_H_
>  #define __CMD_OSDEP_H_
>
> -
> -extern sint _rtw_init_cmd_priv (struct	cmd_priv *pcmdpriv);
> -extern sint _rtw_init_evt_priv(struct evt_priv *pevtpriv);
>  extern void _rtw_free_evt_priv (struct	evt_priv *pevtpriv);
>  extern void _rtw_free_cmd_priv (struct	cmd_priv *pcmdpriv);
>  extern sint _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a439f2d4d1f6a2ab47306bbcb7794379554979fc.1552782299.git.madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


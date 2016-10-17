X-GM-THRID: 6342321503270338560
X-Received: by 10.129.123.4 with SMTP id w4mr7445024ywc.111.1476696378621;
        Mon, 17 Oct 2016 02:26:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.144 with SMTP id 16ls9905331otm.7.gmail; Mon, 17 Oct
 2016 02:26:18 -0700 (PDT)
X-Received: by 10.157.14.38 with SMTP id c35mr6786338otc.38.1476696378321;
        Mon, 17 Oct 2016 02:26:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si3775541vkd.0.2016.10.17.02.26.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 02:26:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,357,1473112800"; 
   d="scan'208";a="241040025"
Received: from laptop-147-210-128-79.labri.fr ([147.210.128.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2016 11:26:11 +0200
Date: Mon, 17 Oct 2016 11:26:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elizabeth Ferdman <gnudevliz@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: constify
 local structure
In-Reply-To: <20161017064620.GA21653@localhost>
Message-ID: <alpine.DEB.2.20.1610171124120.1921@hadrien>
References: <20161017064620.GA21653@localhost>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 16 Oct 2016, Elizabeth Ferdman wrote:

> Constify the static struct RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.
>
> The only other instance was one of its properties being assigned to a
> variable:
> Index2G = RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE.Index2G;
>
> Therefore this is a good candidate for constification.
>
> Running size did not show any difference:
> Before/After:
> text    data     bss     dec     hex filename
> 44122     408    2974   47504    b990

This is not a good sign.  It suggests that you have not actually compiled
the lines of code that you changed.

It is a little bit strange that a structure is declared to only contain
the number 3.

I wonder if something else is going on?

julia

>
> Lastly, break up the long line to fix the checkpatch warning and conform
> to kernel coding style.
>
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index fb13df5..c94700c 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -133,7 +133,9 @@ static struct rt_channel_plan_map	RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
>  	{0x03},	/* 0x41, RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G */
>  };
>
> -static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03}; /* use the combination for max channel numbers */
> +static const struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {
> +	0x03
> +}; /* use the combination for max channel numbers */
>
>  /*
>   * Search the @param channel_num in given @param channel_set
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161017064620.GA21653%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>


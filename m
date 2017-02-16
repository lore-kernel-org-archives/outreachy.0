X-GM-THRID: 6387759904016302080
X-Received: by 10.223.162.155 with SMTP id s27mr234157wra.7.1487275028400;
        Thu, 16 Feb 2017 11:57:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.32.230 with SMTP id g99ls77306lji.37.gmail; Thu, 16 Feb
 2017 11:57:07 -0800 (PST)
X-Received: by 10.25.210.76 with SMTP id j73mr444641lfg.15.1487275027107;
        Thu, 16 Feb 2017 11:57:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si90928wmn.2.2017.02.16.11.57.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 11:57:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,169,1484002800"; 
   d="scan'208";a="213497055"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 20:57:06 +0100
Date: Thu, 16 Feb 2017 20:57:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: remove space before
 tab
In-Reply-To: <1487266115-3900-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702162056410.2121@hadrien>
References: <1487266115-3900-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 16 Feb 2017, Gargi Sharma wrote:

> remove the space before the tab to fix the the checkpatch issue,
> no spaces before tabs.

It's nicer to start a sentence with a capital letter.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2mib.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
> index 4c3d394..28df1f3 100644
> --- a/drivers/staging/wlan-ng/prism2mib.c
> +++ b/drivers/staging/wlan-ng/prism2mib.c
> @@ -745,7 +745,7 @@ static int prism2mib_priv(struct mibrec *mib,
>   *	pstr		wlan message data
>   *
>   * Returns:
> - * 	Nothing
> + *	Nothing
>   *
>   */
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487266115-3900-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


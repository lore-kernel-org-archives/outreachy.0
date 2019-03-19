X-GM-THRID: 6670193586677481472
X-Received: by 2002:a2e:c41:: with SMTP id o1mr1517633ljd.19.1553026523967;
        Tue, 19 Mar 2019 13:15:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:41c5:: with SMTP id d5ls12457lfi.1.gmail; Tue, 19 Mar
 2019 13:15:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzFI0fweGJvvLyTvxhda3b/s9DzaiZKHPMs9MaYGksgb+nDghC/Ev0kpw1lZIfUpa1YYWOj
X-Received: by 2002:ac2:5463:: with SMTP id e3mr1369313lfn.6.1553026520032;
        Tue, 19 Mar 2019 13:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553026520; cv=none;
        d=google.com; s=arc-20160816;
        b=p9naIQ14U2U8H0zHXC7zVQ10X4frT6xleBF30lbJK328KIFuJKcdGhu2wxsaHSoSiu
         JWHMp2B6p77ymfopxquUqBBPyOYn1u52ZZXXXMnUlzinD8MysdjJoh7z0mlDUdhIFr5j
         xTKmtHfxy1+TvV2nx/5MYsTq/RhbgCV6P76/4K6kA2iW5G/ViGbTv9aza4ByelUAXm5d
         1RGs5mz2i1BEg6PJm2t3ucb3NDY0zXN6f3mb+B4PWex7hL2g7FBRLTN67hoEbIsFDb/V
         +dxZfnovRnmPIh5rQ23MZ9hCfxPTIMcU/Vn378iyvhBAFryDcgwH/36IWWqhCyLNHzj7
         s3Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Js2fFzupOg78p++4pYbURCtdRwcBHQfhxjeI343gioA=;
        b=nYy8YsVYBiCeLq7SsP6HC4DVNqfvWL/Vl9Pl8+XkNAcnyGbA2LzjSSU5F0RRZyFcW7
         LXwAY6l3me9Plb5u4g5S5wWAeRxEOjf8Y54mswf2allCtgR6MgDubS/Gr3pBeQYtGFnv
         h+GJUgwHc/wAD7UExBWPQx7QnKkzz8d9vNWBEs4zRTsD8IiNyCW0wzoYyX2giNtHFlRk
         wuqpHM1f5Y7Qrp+IjdRcw6R8ku12+0IRVbfMHg9ag/WI8IpEsAqdxSbSHgsxZeO+weyg
         ZchjJRvwsbQp4xbJKuFCVQXd22rR396/PF+ENs4M7SdcJqQ/eXmi6gLqUXWCVz3M3gyo
         lyWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y13si478532lfg.4.2019.03.19.13.15.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 13:15:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300010043"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 21:15:19 +0100
Date: Tue, 19 Mar 2019 21:15:18 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    ajay.kathat@microchip.com, adham.abozaeid@microchip.com
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: wilc1000: Remove return
 variable
In-Reply-To: <10fe1f5ac83e327337735300199b81a9b1230423.1553025265.git.nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192114550.2460@hadrien>
References: <cover.1553025265.git.nishka.dasgupta@yahoo.com> <10fe1f5ac83e327337735300199b81a9b1230423.1553025265.git.nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove return variable. Issue found with Coccinelle using ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

This one is particularly nice :)

> ---
>  drivers/staging/wilc1000/host_interface.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index cd4d9bd789fd..9b9997e3ecf9 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1401,8 +1401,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
>  		conn_info->req_ies_len = ies_len;
>  		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
>  		if (!conn_info->req_ies) {
> -			result = -ENOMEM;
> -			return result;
> +			return -ENOMEM;
>  		}
>  	}
>
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/10fe1f5ac83e327337735300199b81a9b1230423.1553025265.git.nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>


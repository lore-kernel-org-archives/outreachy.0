X-GM-THRID: 6394976013217955840
X-Received: by 10.46.92.131 with SMTP id q125mr786780ljb.15.1488956837694;
        Tue, 07 Mar 2017 23:07:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.22.4 with SMTP id w4ls265769ljd.22.gmail; Tue, 07 Mar 2017
 23:07:17 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr770379ljb.25.1488956837192;
        Tue, 07 Mar 2017 23:07:17 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si581885wma.0.2017.03.07.23.07.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 23:07:17 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,262,1486422000"; 
   d="scan'208";a="215965863"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 08:07:16 +0100
Date: Wed, 8 Mar 2017 08:07:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Aditya Shankar <aditya.shankar@microchip.com>, 
    Ganesh Krishna <ganesh.krishna@microchip.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Remove useless
 cast.
In-Reply-To: <58bf84cc.0f7c630a.ae1eb.86c4@mx.google.com>
Message-ID: <alpine.DEB.2.20.1703080806500.2108@hadrien>
References: <58bf84cc.0f7c630a.ae1eb.86c4@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Varsha Rao wrote:

> Variable ip_addr is already declared as pointer to u8. Again explicit type
> casting of ip_addr to u8, is not required. Hence this patch removes it
> by using the following coccinelle script.
>
> @@
> type T;
> T *ptr,p;
> @@
> (
> - (T *)(&p)
> + &p
> |
> - (T *)ptr
> + ptr
> |
> - (T *)(ptr)
> + ptr
> |
> - (T)(p)
> + p
> )
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/wilc1000/host_interface.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 2429c85..b14b3ae 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -385,7 +385,7 @@ static void handle_set_ip_address(struct wilc_vif *vif, u8 *ip_addr, u8 idx)
>
>  	wid.id = (u16)WID_IP_ADDRESS;
>  	wid.type = WID_STR;
> -	wid.val = (u8 *)ip_addr;
> +	wid.val = ip_addr;
>  	wid.size = IP_ALEN;
>
>  	ret = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58bf84cc.0f7c630a.ae1eb.86c4%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>


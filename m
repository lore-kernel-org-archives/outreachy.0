X-GM-THRID: 10405450612736
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fe26ccfebc7720db
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.180.74 with SMTP id dm10mr7646575lbc.11.1427740403665;
        Mon, 30 Mar 2015 11:33:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.23.193 with SMTP id ic1ls612364wid.10.canary; Mon, 30 Mar
 2015 11:33:23 -0700 (PDT)
X-Received: by 10.194.11.70 with SMTP id o6mr8920619wjb.6.1427740403341;
        Mon, 30 Mar 2015 11:33:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c8si864403wiw.1.2015.03.30.11.33.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 30 Mar 2015 11:33:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,495,1422918000"; 
   d="scan'208";a="130778814"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Mar 2015 20:33:22 +0200
Date: Mon, 30 Mar 2015 20:33:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rts5208: Fix if-else brace
 indent
In-Reply-To: <20150330173952.GA32369@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1503302032190.2080@localhost6.localdomain6>
References: <20150330173952.GA32369@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 30 Mar 2015, Amitoj Kaur Chawla wrote:

> Fixed brace '{' position after if header. Problem found using checkpatch.pl
> WARNING: suspect code indent for conditional statements (16, 16)
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rts5208/ms.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
> index 4c38ff9..a8515d0 100644
> --- a/drivers/staging/rts5208/ms.c
> +++ b/drivers/staging/rts5208/ms.c
> @@ -914,9 +914,8 @@ static int ms_read_attribute_info(struct rtsx_chip *chip)
>  		if ((buf[cur_addr_off + 8] == 0x10) ||
>  			(buf[cur_addr_off + 8] == 0x13))
>  #else
> -		if (buf[cur_addr_off + 8] == 0x10)
> +		if (buf[cur_addr_off + 8] == 0x10) {
>  #endif
> -		{

Are you sure this is correct?  The { has moved from outside an ifdef into 
an ifdef branch.

julia

>  			sys_info_addr = ((u32)buf[cur_addr_off + 0] << 24) |
>  				((u32)buf[cur_addr_off + 1] << 16) |
>  				((u32)buf[cur_addr_off + 2] << 8) |
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150330173952.GA32369%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 


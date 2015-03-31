X-GM-THRID: 10518770221056
X-Received: by 10.112.180.74 with SMTP id dm10mr8846393lbc.11.1427829019699;
        Tue, 31 Mar 2015 12:10:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.91.103 with SMTP id cd7ls914363wib.47.gmail; Tue, 31 Mar
 2015 12:10:19 -0700 (PDT)
X-Received: by 10.194.53.225 with SMTP id e1mr10114086wjp.4.1427829019336;
        Tue, 31 Mar 2015 12:10:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id na10si845457wic.0.2015.03.31.12.10.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 31 Mar 2015 12:10:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,502,1422918000"; 
   d="scan'208";a="107827544"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 31 Mar 2015 21:10:18 +0200
Date: Tue, 31 Mar 2015 21:10:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Remove zero-testing
 pointer typed value
In-Reply-To: <20150331190408.GA30198@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.02.1503312109160.2115@localhost6.localdomain6>
References: <20150331190408.GA30198@amitoj-Inspiron-3542>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 1 Apr 2015, Amitoj Kaur Chawla wrote:

> Removes variable comparison with 0 by using !. Done using following coccinelle script.
> 
> @ disable is_zero,isnt_zero @
> expression *E;
> expression E1,f;
> @@
> 
> E = f(...)
> <...
> (
> - E == 0
> + !E    
> |
> - E != 0
> + E
> |
> - 0 == E
> + !E
> |
> - 0 != E
> + E
> )
> ...>
> ?E = E1
> 
> @ disable is_zero,isnt_zero @
> expression *E;
> @@
> 
> (
>   E == 
> - 0
> + NULL  
> |
>   E !=
> - 0
> + NULL  
> |
> - 0
> + NULL
>   == E
> |
> - 0
> + NULL
>   != E
> )
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_security.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
> index a178c23..654435f 100644
> --- a/drivers/staging/rtl8712/rtl871x_security.c
> +++ b/drivers/staging/rtl8712/rtl871x_security.c
> @@ -153,7 +153,7 @@ static u32 getcrc32(u8 *buf, u32 len)
>  	u8 *p;
>  	u32  crc;
>  
> -	if (bcrc32initialized == 0)
> +	if (!bcrc32initialized)
>  		crc32_init();
>  	crc = 0xffffffff; /* preload shift register, per CRC-32 spec */
>  	for (p = buf; len > 0; ++p, --len)
> @@ -882,7 +882,7 @@ static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext)
>  	for (i = 0; i < 16; i++)
>  		round_key[i] = key[i];
>  	for (round = 0; round < 11; round++) {
> -		if (round == 0) {
> +		if (!round) {

I'm not sure that it is a good idea in this case.  round is 0, 1, 2, etc.  
It makes sense to test for the value being 0, just like it is later tested 
for being 10.

julia

>  			xor_128(round_key, data, ciphertext);
>  			next_key(round_key, round);
>  		} else if (round == 10) {
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150331190408.GA30198%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
> 


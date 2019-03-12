X-GM-THRID: 6667559870599790592
X-Received: by 2002:a2e:5d5a:: with SMTP id r87mr2154406ljb.3.1552413170135;
        Tue, 12 Mar 2019 10:52:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:92cf:: with SMTP id k15ls2583525ljh.6.gmail; Tue, 12 Mar
 2019 10:52:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxt53Vu75M2CY9RMzt2rgAIzLnSVeV4dn2ms99Upt4+4Z/ulZNvUH5i2g8rJ35bZMuVTkha
X-Received: by 2002:a2e:4784:: with SMTP id u126mr2268452lja.22.1552413168986;
        Tue, 12 Mar 2019 10:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552413168; cv=none;
        d=google.com; s=arc-20160816;
        b=pktQlQWOeHHy+EFDuusN1vggm8T1hmE4tDIPcUiQRhcOfL/uH9AA4z0Uu0lh5BXg0L
         hxFydfAMOHClHZ4B+295j23eAZaQXzQYp5tNns/vbYxZ/WXr+t+/pQrf/evM20i7gAGE
         bZOeSu+tX9vo4wKCu5Mg3atObJtT1wBX8lO8VZmanpVKsZ3oYLfG5Ernynxx4QNz1mV4
         bF/pWy/r90TBgoYYNM6I0V6T3kgkhHsjyDUWjzcwBpgwyfa5flOzuUHzc9UnALkAr0K6
         vcfUqD1Hz7iZ3WmTIr+atxNFhF027+lopLL6WzoeVTkmNc6MhQZn4FSryzORa7dlfThb
         atfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qg5C/qwnD7Ut0/9a4m3a1Yal89svi3ud6xHnS6iaVvU=;
        b=PSHg5jLTiQ+yprfonW/9g3M0DvXGLHR4lQ+PNkJKVB2y+Z/01AjYtfumGtsCgmptYf
         LlkOkigq2bntNBIOfKtMwGF8qX2VaA+/GlgWTWPn/+0wl2ydjFs0G+09Xr9BZdS/5ngh
         0MRrwQKdt74famOuVuGpkZHQQ6PsWdibpWN1Mxbis6alCWQu0nENNp15je+emqjc6BPC
         GI3vPUXRjK9VB3kNtdLDvOk+ByYiC0rbfCENKrAbZdMcuM4D8LhwVOeDCeuV38fFXfmG
         WX+FCmHKxxLXfopo5TcEN84Zr4WUhAHVH+LKVUAhg1qvBMUZNlV/d6YHTuLvYdJjnwkl
         xoCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s66si158382lje.3.2019.03.12.10.52.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 10:52:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="299025774"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 18:52:47 +0100
Date: Tue, 12 Mar 2019 18:52:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: w.d.hubbs@gmail.com, chris@the-brannons.com, kirk@reisers.ca, 
    samuel.thibault@ens-lyon.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove an unnecessary
 initialization in function
In-Reply-To: <20190312173730.23281-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.20.1903121850370.4097@hadrien>
References: <20190312173730.23281-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Mar 2019, Madhumitha Prabakaran wrote:

> Remove an unnecessary initialization of local variable dt_stat in function.
> Issue suggested by Coccinelle using ret.cocci.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/speakup/speakup_decpc.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> index 459ee0c0bd57..3ad49bb93829 100644
> --- a/drivers/staging/speakup/speakup_decpc.c
> +++ b/drivers/staging/speakup/speakup_decpc.c
> @@ -233,9 +233,8 @@ static struct spk_synth synth_dec_pc = {
>
>  static int dt_getstatus(void)
>  {
> -	dt_stat = inb_p(speakup_info.port_tts) |
> -		 (inb_p(speakup_info.port_tts + 1) << 8);
> -	return dt_stat;
> +	return inb_p(speakup_info.port_tts) |
> +	       (inb_p(speakup_info.port_tts + 1) << 8);

This doesn't look correct, because dt_stat is not declared in this
function.  Did you get this result from the semantic patch that is at:

https://kernelnewbies.org/JuliaLawall

That says "local idexpression ret;", so it should only report on the case
where the variable is declared in the same function.

julia

>  }
>
>  static void dt_sendcmd(u_int cmd)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312173730.23281-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


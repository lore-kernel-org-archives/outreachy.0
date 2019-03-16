X-GM-THRID: 6668964143803924480
X-Received: by 2002:a50:aa70:: with SMTP id p45mr1016312edc.6.1552739637861;
        Sat, 16 Mar 2019 05:33:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:18b2:: with SMTP id c18ls2357944ejf.1.gmail; Sat, 16
 Mar 2019 05:33:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPxhhMSguxRgUE1V/ddLpgcGw91EhuPPF6oke8kVAOmVVdqScoyOol47h83W+rE4y120MH
X-Received: by 2002:a17:906:3744:: with SMTP id e4mr918032ejc.3.1552739637066;
        Sat, 16 Mar 2019 05:33:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552739637; cv=none;
        d=google.com; s=arc-20160816;
        b=RofRZDUNCoH0bplFHDV9dAAFE5j++b6eeUp0H3817K279aAwRXcdiv6YSe/TDxa7F/
         KLUz7UduRLMZoIs6AFCXVpqVaL4deKqLCTOxVSUm4E87PhkJNlV3u5/zKHydzsRtQdMp
         NsXMn2dQ0gKRzG7yDcYw9Fq2zHUGi9Xrl8SfZ4NU8DGreWAbXbUUabgBAZl5j1dDe5/8
         SiuANwMD85uGrpt5C6XuPDBIt4jBLhXrrbcfHpXPtKCJShQHveudfhitE9scI58S6jBz
         AP9FXZBr/n4n/eY+Oxq+qqwLhaNR2GheF1YzMewksNg7uJVpvh0zFavpnBPDFbOIAV9M
         ifGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=L95NIhxE9PAlNPPqmJ0ml08b/u+FghfJgDlOToIqkBc=;
        b=lgICGVegvuTIaEuWJ+USDS8xrPdERSOU94tBYhD8yXHp3VS58yYyY337TmL1wqoh56
         1KnIwDUQJ5+QNu80HgGkpxxRkNqx10KzgTO1ulQT+01mE7r594u+9+tW9dLBuOrCk1kg
         yg4O406lhyZm9QOqDPOfpaE8F131FOEL3NfXyDCwEDEj/1kntU3prE4lNVtOeeodzydz
         ZY6v31ohQVWMUegipjQA/C03Q5gIumtqc7OYzAc+VKnLQu41kiwFXBaDqyjNZAspTeyQ
         jEgifRukTDQHItUVnOkJ8xU74i2jDvjK860sTWGpLGhdg2lHYjr7Ao1HsqLCX1139kAF
         ++9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p25si85418eju.1.2019.03.16.05.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:33:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="373996168"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 13:33:56 +0100
Date: Sat, 16 Mar 2019 13:33:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: char * array
 declaration as static const
In-Reply-To: <1552739192-32372-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161332140.2487@hadrien>
References: <1552739192-32372-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Payal Kshirsagar wrote:

> char * array declaration might be better as static const

Why, in this particular case?

The commit log message should be inthe imperative.  It should explain what
you have done and why.  It should not just copy a checkpatch message.

In the original code there is no space after the *.  The changed code
should be that way as well.

julia

>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/audio_manager_module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
> index 2bfd804..6ef7381 100644
> --- a/drivers/staging/greybus/audio_manager_module.c
> +++ b/drivers/staging/greybus/audio_manager_module.c
> @@ -158,7 +158,7 @@ static void send_add_uevent(struct gb_audio_manager_module *module)
>  	char ip_devices_string[64];
>  	char op_devices_string[64];
>
> -	char *envp[] = {
> +	static const char * const envp[] = {
>  		name_string,
>  		vid_string,
>  		pid_string,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552739192-32372-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


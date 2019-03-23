X-GM-THRID: 6671634495141052416
X-Received: by 2002:adf:b64e:: with SMTP id i14mr10844789wre.10.1553361279732;
        Sat, 23 Mar 2019 10:14:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fc51:: with SMTP id e17ls2674341wrs.15.gmail; Sat, 23
 Mar 2019 10:14:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZ8meflGe5MyjSwWoIN8cLfOxs/Kd71wWPFO2qnp1dTcZKmDdxv1iQi3etzRFDaFd8tG0d
X-Received: by 2002:a5d:5703:: with SMTP id a3mr11132370wrv.175.1553361278955;
        Sat, 23 Mar 2019 10:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553361278; cv=none;
        d=google.com; s=arc-20160816;
        b=J1CNJoRzCZZtZ+09pTO3QTlzhgdS3k+ZFlRR8crO8Im+I0nsmzxgXlJlmuUfNOqUXT
         tynU6Gtz6kOBt/XH/kGrEGtA+SQ6toJ0N5ir649Ggaa6N5Q+oWg4Pz37/UT+/tbTkY0a
         h/lpKHlctZC2rbxjBIydf7QsKfqxnrv7pL1rODNpNxpIb46nFt9KGlat+gMZskou8QLN
         uAk2VGzlK87iCxmTk1XuYVFDe5u+tpPup+jJLEbJX8c6JUGDrqvYDR7Ca2DSqreYWTzz
         HkrvqoOyc/oPvabcTq60x0RFm5Qg9HVloefM1G3jPGJ6fYtH21ibtErzTTfQ1Wif0kLq
         kOSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=l78gbiiwkctsT9JzsrdWxteXpQv2XAnFHiaQYJXYIPI=;
        b=KElhlzrMRxZjsp69wATIqXCY2zi1ykD9FIQNhwg8SFUpFjedCZ2JXHyfFG/1HVIl+u
         lPSvdg/0kSKZzcAqU1DJ2cj5px4u/J8UNaCSd8/2VQkV0V8zIiudB4t+fVFQHtoKvU/B
         UJ8v+8NOHPtmYVZnDJk6qiaJ717rGSwOptJTJf/sOOOc29iupmZMOM+Wnkh+4UfO5s2w
         EdrbbT3Qd6NyRgu2BoCxXZs18cy5RAADDxvuucQQZWMlEqRp0tiTdF5xxpElkNCueL/j
         ZHlkRyDY8lmUi8VLe8y1jKqQgWSWMb8ytsvNg9M6xRv2TT9BfYEPEfQsJm/ieHaMCdwj
         RKNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n5si684715wrj.0.2019.03.23.10.14.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 10:14:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="300491457"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2019 18:14:38 +0100
Date: Sat, 23 Mar 2019 18:14:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8712: change type
 variables
In-Reply-To: <1553360936-3525-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903231813540.5660@hadrien>
References: <1553360936-3525-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 23 Mar 2019, Payal Kshirsagar wrote:

> Change the type of variable tempu8 to u8.

You need to make your patches against Greg's tree, and not against the
previous patches that you made.  The previous one was not correct, so Greg
will just discard it.

julia

>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> Changes in v2:
> 	-Making the variable type temu8 of type u8.
>
>  drivers/staging/rtl8712/rtl8712_efuse.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
> index dde1255..4e2764f 100644
> --- a/drivers/staging/rtl8712/rtl8712_efuse.c
> +++ b/drivers/staging/rtl8712/rtl8712_efuse.c
> @@ -25,7 +25,7 @@ static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
>
>  static void efuse_reg_ctrl(struct _adapter *padapter, bool power_on)
>  {
> -	bool tmpu8 = 0;
> +	u8 tmpu8 = 0;
>
>  	if (power_on) {
>  		/* -----------------e-fuse pwr & clk reg ctrl ---------------
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553360936-3525-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


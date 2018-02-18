X-GM-THRID: 6523837369429262336
X-Received: by 10.80.202.201 with SMTP id f9mr3295099edi.12.1518956937920;
        Sun, 18 Feb 2018 04:28:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.158.236 with SMTP id a99ls3027098edf.7.gmail; Sun, 18 Feb
 2018 04:28:56 -0800 (PST)
X-Google-Smtp-Source: AH8x226PaxmXJCfjcA5KdGetujrobvRrwzr627hMpBPuMgr4NFSXIrbwJF7OjvyS78ZbvPFlemEb
X-Received: by 10.80.202.11 with SMTP id d11mr3289796edi.9.1518956936298;
        Sun, 18 Feb 2018 04:28:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518956936; cv=none;
        d=google.com; s=arc-20160816;
        b=ImzACNseuIjc3CqprjrtnV9kazHB70HyYPUdNfFm4bwK0Q1+/72BEDEd2CsUh5laLM
         KucJjaTFe4Z1pQh1h8cD/ApnYJMOJbGtekbsz6KVx6NZoO7/aVf/yH4yj814vEt2Z6L0
         2PMFQzKJnUx/2VMbaP8kNO6Zi67sTRPBpkD4RFDMnE1pmPstUMfZZ/Qp4eEKVR+l8Lz5
         W+Vmb8FB1x3b2y8D+KMSAVpHiM7zofN9YqE3FieikQuz+/1CrOr7n1smBbHUHINSqFKX
         WBAl701CJHkeUEyEY9Aa02TZAJ6eA4GPb6ubj4HbhyqvcrVIsT81tFe2i+l6Z4LYMQXR
         zTpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=qwgqVDREbJHj2RXZxOY33nieLirXD8/+qjOuUyY43lM=;
        b=dQtF/P5Fcp0phb7OGvW0aQoMiBfx+4Abjlq9gyz31VunFI49mTRuzzE26+Fc3R7V+M
         GGdvkwZWZ5ao5Q82ioyDio08sfFwxQkv0Qb1RkB1UwreT9t/xYPn+5g/mTgwBxlOOWwl
         667KYWW4LwYTvkRay9sAnHyRS96CGYllmWBRyfM6CwW7dSaIrjwF0hJrLAUOUizxAyCI
         fgXVoBp+a2Lq3TB3mHFHd3eH1R9QWQq8TA9cGOXioDDmr8/4oCNOpz3CiP2U12BtMia/
         vfXPnkaviLT7DWV8yTHHhL+1mBKXvb3usLRwHHbngBh1PpvDKJBzON0tJr82ZOaBRmSv
         2GTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n22si165151edb.5.2018.02.18.04.28.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 04:28:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,530,1511823600"; 
   d="scan'208";a="314116259"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 13:28:55 +0100
Date: Sun, 18 Feb 2018 13:28:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, aditya.shankar@microchip.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations:
 Fixed a coding style issue
In-Reply-To: <1518949244-48499-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802181324090.2777@hadrien>
References: <1518949244-48499-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 18 Feb 2018, Santha Meena Ramamoorthy wrote:

> Fixed the checkpatch warning "braces {} are not necessary for single
> statement blocks"

Thank you for your patch.

The change is fine, but the subject line and commit message could be
improved.  For the subject line, there are two parts: where the change is
and what is done.  For the where the change is part, there is no
algorithm.  You need to see what others have done on this file.  You can
do that by saying git log --oneline on the file name.  Typically, the
actual file name is not included.

Then for describing what is done, the word "fix" is not very helpful.  It
doesn't indicate how the fix was done.  In this case you could say Remove
unneeded braces.

Then in the commit message you can provide more information about what you
have done and why.  In this case, it could be something like "Remove
braces around a single-statement block to conform to the Linux kernel
coding style.  Problem found using checkpatch."

Please send a v2.

julia

>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 621810d..df04bf80 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -287,9 +287,8 @@ static void remove_network_from_shadow(struct timer_list *unused)
>  		}
>  	}
>
> -	if (last_scanned_cnt != 0) {
> +	if (last_scanned_cnt != 0)
>  		mod_timer(&hAgingTimer, jiffies + msecs_to_jiffies(AGING_TIME));
> -	}
>  }
>
>  static void clear_duringIP(struct timer_list *unused)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1518949244-48499-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


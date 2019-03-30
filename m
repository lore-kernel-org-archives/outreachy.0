X-GM-THRID: 6673442126229929984
X-Received: by 2002:a17:906:3086:: with SMTP id 6mr1237751ejv.16.1553960422413;
        Sat, 30 Mar 2019 08:40:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:8ebb:: with SMTP id w56ls1460065edw.2.gmail; Sat, 30 Mar
 2019 08:40:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqykDmJHTpw4qVkg0eZq4wPjghpyW+6PyjOtEik8YZ6QxxBqQZK1QEdBWHLgJSTSmAYvWOyI
X-Received: by 2002:a50:dac9:: with SMTP id s9mr2899298edj.5.1553960421724;
        Sat, 30 Mar 2019 08:40:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553960421; cv=none;
        d=google.com; s=arc-20160816;
        b=LYm6W/fxKzA7B3KmhaOKXrUhDja+FM6tnUBRuQSeUfsCmtlyyNGeDP5/ce6plaK8wJ
         g7FQks1LHPw8CdeOFNcPH2bfsi8qG3j0NbsW3M5CzIyh9SF9JyHwFmCi3weM+JjeN5EQ
         gR51LTey9bUQaveLtY7BJbQ7Mf8xe0giwlfdsuErJD++5qyGGqQmDihcPCco+UZJ47rT
         za+MYfZgAj8xX6TVkoiBkaZ3+t2XkYAO3g7DSlVq4tQd1ll89po0dFSHOeKQxhgDsrCu
         Kc1R3GR0dS8U8TVdhO0JqUihENo58H0IMpfw4tKc3upjmkU7IHATqzh7/bH5W5pEx8aa
         fwgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iZlx1F+6Wb+YcCa3q/qvNdYxsWtR6vI4isCJ1xhHDPU=;
        b=Me5Qby811hZ8OvKudvxh8cLocUrDmqVNpzwRNDhzl4Qq1eXdO8ML57VqMiuKvDJMRK
         S0+epqSYTAJIYTmBiAII9VblL/VzKn087bXO1u7ZleNYHSNj0BDj01E3k0qvjd5rpUFA
         VA6R5nqT1NHP1qmd4X8/QzCC8ug/V/rFYjFhX8caNKL8P/KlD3FqKzz++vnzCRYDhgYl
         q8Y+ioIHFv/5TSTg6yQasb7Yn0Z+87Gg+iaRIrSiCWoTS+Zl57FtlV61/eu5kIKWtUX2
         epC7PPYUkgcK8J08Y3gehG1ydxFn7hM5KqRbYZJvUFfV02eYd+mNiFdkKnZHVwXJtVLi
         4Niw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w13si102387edb.1.2019.03.30.08.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 08:40:21 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376468720"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 16:40:21 +0100
Date: Sat, 30 Mar 2019 16:40:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 8/8 v2] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Remove unnecessary parentheses
In-Reply-To: <1553959881-8361-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903301638410.2608@hadrien>
References: <1553959881-8361-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle.
> Remove unnecessary parentheses around an expression.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
> Changes in v2:
> 	-Patch made separated one(this patch) to remove unnecessary parentheses and another to fix the indentation issue.

This patch seems to adjust the indentation too.

If this is the last patch of the series, and doesn't update the
indentation, what will be the number of the patch that does update the
indentation?

And have you resent all the other patches in the series?  Perhaps I just
haven't received them yet.

julia

>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 8fb03ef..7ca7d0c 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>          if (pPMK->cmd == IW_PMKSA_ADD) {
>                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
>                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> -                    return(intReturn);
> +		    return intReturn;
>                  else
>                      intReturn = true;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553959881-8361-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


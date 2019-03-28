X-GM-THRID: 6673442126229929984
X-Received: by 2002:a17:906:4aca:: with SMTP id u10mr789542ejt.3.1553783229837;
        Thu, 28 Mar 2019 07:27:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4009:: with SMTP id v9ls2076676ejj.9.gmail; Thu, 28
 Mar 2019 07:27:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxGYDUUbZotOS29vtOU9RBkKA6C9z4S5XS1Fi7nwIexbTH5Ro1pr5WBMjBdHSVk2B2lCEKN
X-Received: by 2002:a17:906:48c2:: with SMTP id d2mr1783309ejt.2.1553783228991;
        Thu, 28 Mar 2019 07:27:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553783228; cv=none;
        d=google.com; s=arc-20160816;
        b=JfLIUZhSiuzwHKoQ11qezsmyu2/Aj0/MusRfgDy3VDeWCmNfcruXNftsD1lL5fczBc
         eY1wSQBXeXYi0S5UVZkuk1skV5oSawFJEWXwtXRuA9YVvEH7aKzAM/SI+tFwNZesaClT
         wC7P9o4qAY6nakiscEVEcackN894IsOlrRP009qNT6B0b/mDP7eV/C8zRitrY5MhYJix
         mXayNhzxVIB1sPv53BdVnxQX5gaq6QiOeBwrPH/p9/+tNZAvYrD/2oKgX/fBgEF4TFfs
         e2LR1DQM/fjmH+RCGsCMbzmDqKNdPjq5vMhROOU+bbbZ33JI6luuQmcjxJIhdTs12AhP
         b2tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TwTKTSDkEZLdUM+e4afOf+WzIpWx9C275VFrcB6bBss=;
        b=FcF59+jw9kR4tqV4yVe02QjUIs8GWB01zXCkkSzhuxJxrodaFzat/0q8IvvBHYV8qF
         CPFxZ1xfBOfOJ0g420CRfPXDA28JBTJLx27mtPOUtOEm/sg+SOboVhh6kVsdZtJ4y2ER
         KXrjNEJMoX7GRL8ohBLnnJICBJoOuYhgo3zk8f4281lDDi1sbPKC5gDzr75nXZyY/P9O
         4BcdB5PF7v7Kv/l2yqWIUnYGju7opEC3Sva0ZaMGqr6J2F8C++5U6phEqrThdE5BLHE5
         YVViX8Rsjt1He8H2CXRcdkkAWnnfI7ZwaOJIU2jorm8Y/RE6fJEcnydh2uPjFX7Nb4xM
         h9SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id jt16si875423ejb.0.2019.03.28.07.27.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 07:27:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,280,1549926000"; 
   d="scan'208";a="376182852"
Received: from unknown (HELO hadrien) ([195.167.213.123])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 15:26:56 +0100
Date: Thu, 28 Mar 2019 15:26:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary
 parentheses
In-Reply-To: <1553781808-10349-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281525280.2438@hadrien>
References: <1553781808-10349-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Mar 2019, Payal Kshirsagar wrote:

> Challenge suggested by coccinelle
>
> This patch removes unnecessary parentheses while returning a value.
> Using following semantic patch:
>
> @@
> local idexpression id;
> @@
>
> - return(id);
> + return id;
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.c>
> ---
> diff -u -p a/os_dep/ioctl_linux.c b/os_dep/ioctl_linux.c
> --- a/os_dep/ioctl_linux.c
> +++ b/os_dep/ioctl_linux.c
> @@ -961,7 +961,7 @@ static int rtw_wx_set_pmkid(struct net_d
>          if (pPMK->cmd == IW_PMKSA_ADD) {
>                  DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
>                  if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> -                    return(intReturn);
> +                    return intReturn;
>                  else
>                      intReturn = true;
>
> @@ -1489,7 +1489,7 @@ exit:
>  	DBG_871X("DBG_IOCTL %s:%d return %d\n", __func__, __LINE__, ret);
>  	#endif
>
> -	return ret ;
> +	return ret;

There are two kinds of change: one drops parentheses and one drops a
space.  Both are good, but they should be in two separate patches.

The second one is because Coccinelle implicitly ignores parentheses,
unless you tell it not to, so it actually matches and repretty prints all
returns.  In the second case it caused a change.

julia

>
>  }
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1553781808-10349-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


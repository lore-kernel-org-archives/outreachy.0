X-GM-THRID: 6611156296380973056
X-Received: by 2002:a2e:1ce:: with SMTP id f75-v6mr179150lji.11.1539343380212;
        Fri, 12 Oct 2018 04:23:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c44c:: with SMTP id u73-v6ls444348lff.54.gmail; Fri, 12
 Oct 2018 04:22:59 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60H7ZGf0gLwpNFwcA+ZR8e0wfElDPRSTOxKGCCjyaQMFEriHlMbW98SIBs4vmOwXyIJQUHa
X-Received: by 2002:a19:1612:: with SMTP id m18-v6mr178023lfi.11.1539343379088;
        Fri, 12 Oct 2018 04:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539343379; cv=none;
        d=google.com; s=arc-20160816;
        b=siIAe+G6uoB+RlXSggLe2l9oCZeSjkFy028k8D39Y22ZRQu93qb7wZR52uPc05Fv7j
         TBNk1Mz5jd+ft6Ua89S5ZqCozrvpVSuGiCIgt2Aaj8DxumxBJyrZUMSMqxSBbFjnQhu4
         E2xtWZoy6e1bNR0c5Dd+yI2YGKNyZ16L0PpOKu7j7DgAu5ym24VkO23alvzwBdFhXb8P
         a/OKL8mLiM+AHerBvP36DB542pjlhIlobWnlfHbDk34HjWYjndOgD+q5WlJKFML+H7Fd
         K0/dvkfj50H6QXn8UivNwC8Vx6mFirGTq8zk7omMVBvTdlNPsOyPZevgvabbzUMuHOf3
         l/sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XI1vJOierVD2LAMmSxB5FFEksIEajL2vSHu9aGDDV5I=;
        b=Czv3MyDiK53UXki6w322klRPy21RJn8bfvxGe3yk5iZ5ETOLzx5zuhLlPw5dqbulBm
         6Ei1fE+LtO4G++YE2n5yN5KIv5x0akaHk/zuOhVu2+0L+bEANgt2dJyq7yEN9Bf0q+1g
         UOaSIJAblzKRma8ojyL4f3dLJHg1SgdMYVYIS3uuD4sVX3o0yQOPdLNvuA0YQUAASg8L
         M18cpx06BwwdIj1yjdRl0Vkv8yctU31X5CeKbkVWPKSru6q3HERcvA1X+yhpPUZN+TTA
         4Ku5JYKvU/kII1uzJdgxQqbQM2ngrPqAMq014LnL0zfdg5/MSpxLtnCR3HdwUdnRnb/O
         4Z7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y66-v6si29302lje.0.2018.10.12.04.22.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Oct 2018 04:22:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,371,1534802400"; 
   d="scan'208";a="281896459"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2018 13:22:57 +0200
Date: Fri, 12 Oct 2018 13:22:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: os_dep: Shift
 * to be adjacent to pointer name
In-Reply-To: <deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555@gmail.com>
Message-ID: <alpine.DEB.2.20.1810121321340.4366@hadrien>
References: <cover.1539278377.git.mamtashukla555@gmail.com> <deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 12 Oct 2018, Mamta Shukla wrote:

> Shift * to be adjacent to pointer name to follow Linux coding style.
> Issue found with checkpatch.pl
> ERROR: "foo * bar" should be "foo *bar"
>
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ACKed-by: Larry Finger <Larry....@lwfinger.net>

You should put the full email address here.  And it should be Acked-by.

This is a v2, so you should say that in the subject line and explain what
you changed.  Did Greg already take the others in the series?

julia

> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 243394e..28bfdbd 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -528,8 +528,8 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
>  	}
>
>  	if (padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) { /*  802_1x */
> -		struct sta_info * psta,*pbcmc_sta;
> -		struct sta_priv * pstapriv = &padapter->stapriv;
> +		struct sta_info *psta, *pbcmc_sta;
> +		struct sta_priv *pstapriv = &padapter->stapriv;
>
>  		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_MP_STATE) == true) { /* sta mode */
>  			psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6948700002249080832
X-Received: by 2002:a05:6402:6ca:: with SMTP id n10mr9836041edy.312.1617870613770;
        Thu, 08 Apr 2021 01:30:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls6308320edb.3.gmail; Thu,
 08 Apr 2021 01:30:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyev71sybPUtGWpZnQs6ApH6MHY5vMbTjyHiWQK8gqorXmm4pSmBed8ivArkwLGit+NK84c
X-Received: by 2002:aa7:c7c5:: with SMTP id o5mr9680589eds.31.1617870612245;
        Thu, 08 Apr 2021 01:30:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617870612; cv=none;
        d=google.com; s=arc-20160816;
        b=gPFHeq6yyMYLTVK8cU+zVHLCOmUBqB1qVcS6ibzafWLUSToPFKtfslUoYA6n5u3op0
         igZP0evH1RLE8Kr7Cug51RR6zYzEt0XlliyZzToGivbwP+zDRyKoPeyVfLUjcms4uPcW
         SllzD+YkrN3yw3Vduve0BrZBQBLRN5FfwYvhLAKjM6DLjrGn6RkyzSKv5ty0I0bg5oDn
         g2cZ9uJ/IDdfFuWwvH9oDtn4HwYwespY093bmqkdt7TYtZycTpQbb/lYPwv4bBMJwFok
         RxRGVvI+A7e7YdUSwyVtFBQPlUs/Th9Tgzmuu1znue7ovdrf400xJzeAv+jjtAZeJTsT
         13mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=0ufCmZ4599ULE68pn6csiu7vvRyKIDAhKkDBsjFMoBg=;
        b=cWaTl8Te6Lee1e6mm+h7A2kcCzhAEZU04rsd8QWAU85CaxPLkvUk6g89PECn/VfJ/I
         I5Y2OsUlGmd3HYhyFFIfeLxz6jebe5GOl5jdGDcHMxeiqcVY9VZtpOT36aowpuOsNcKT
         Z8r2KvRHWx8ZJgl0xVrMetU0dcQ1cyNgVbWpBfRuFUH4x1hItGnkloLoDsVyswxcdgKR
         K5dgPGOhQ8Jpe4r6W/C3iXOea+fdfv6gXCNmlOzf61OAAoDCqvSm4nNW6o7GuxHQumTn
         MBvMnZ1UqAZwRaeqNqD4wFIs0TxKT0AXAmrMUY2yYR3uXOKVaYHHUnNxZF3KGaarbcQF
         w1+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y16si500871edq.2.2021.04.08.01.30.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:30:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AAevAdamIDo+F1C89bdmhHNmfatTpDfIk3DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwusiykJ0guSPcpy0WXBgb9OyoHKWbW3vT+dpU7OAqU4uKZwXttG?=
 =?us-ascii?q?u2IIwK1+KLqAHIITH09eJWyM5bHJRWNduYNzJHsfo=3D?=
X-IronPort-AV: E=Sophos;i="5.82,205,1613430000"; 
   d="scan'208";a="502143081"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Apr 2021 10:30:10 +0200
Date: Thu, 8 Apr 2021 10:30:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: added spaces around
 '+'
In-Reply-To: <YG690ZIRdCEcjoM6@kali>
Message-ID: <alpine.DEB.2.22.394.2104081027100.3155@hadrien>
References: <YG690ZIRdCEcjoM6@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line should be in the imperative, so "add" instead of "added".

On Thu, 8 Apr 2021, Mitali Borkar wrote:

> Clean up Check:spaces preferred around that '+' (ctx:VxV)
> Reported by checkpatch

Please try to rephrase to explain what you did and why.  "Clean up" kind
of states what the goal is, but your opinion about what is a clean up
might be different than someone else's.  It's also not necessary to cite
the checkpatch warning exactly.

julia

>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/rtl8712/wlan_bssdef.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/wlan_bssdef.h b/drivers/staging/rtl8712/wlan_bssdef.h
> index b54ccaacc527..ec3749813728 100644
> --- a/drivers/staging/rtl8712/wlan_bssdef.h
> +++ b/drivers/staging/rtl8712/wlan_bssdef.h
> @@ -176,7 +176,7 @@ struct NDIS_802_11_WEP {
>  #define MIC_CHECK_TIME	60000000
>
>  #ifndef Ndis802_11APMode
> -#define Ndis802_11APMode (Ndis802_11InfrastructureMax+1)
> +#define Ndis802_11APMode (Ndis802_11InfrastructureMax + 1)
>  #endif
>
>  struct	wlan_network {
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YG690ZIRdCEcjoM6%40kali.
>


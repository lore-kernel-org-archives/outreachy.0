X-GM-THRID: 2443269111808
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7951813c0c2f2922
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.131.106 with SMTP id ol10mr755163lbb.20.1424617095961;
        Sun, 22 Feb 2015 06:58:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.199 with SMTP id x7ls468046lae.0.gmail; Sun, 22 Feb
 2015 06:58:15 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr740430lal.3.1424617095543;
        Sun, 22 Feb 2015 06:58:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id cl5si491607wib.3.2015.02.22.06.58.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 06:58:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,625,1418079600"; 
   d="scan'208";a="122875489"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 15:58:15 +0100
Date: Sun, 22 Feb 2015 15:58:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8192u: Fix grammar
 in a sentence.
In-Reply-To: <5dad611e0dedf5372436692626ef440fe777f072.1424616108.git.ksenija.stanojevic@gmail.com>
Message-ID: <alpine.DEB.2.10.1502221557280.2612@hadrien>
References: <cover.1424616108.git.ksenija.stanojevic@gmail.com> <5dad611e0dedf5372436692626ef440fe777f072.1424616108.git.ksenija.stanojevic@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Ksenija Stanojevic wrote:

> Write always instead of awalys.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> index f25ff0e..38b6fba 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
> @@ -239,7 +239,7 @@ static int debug = \
>  			 /* IEEE80211_DL_REORDER| */
>  			 /* IEEE80211_DL_TRACE  | */
>  			 /* IEEE80211_DL_DATA	| */
> -			    IEEE80211_DL_ERR /* awayls open this
> +			    IEEE80211_DL_ERR /* always open this
>  					       * flags to show error out */

The stars should be lined up in a multiline patch.

julia

>  			    ;
>  static struct proc_dir_entry *ieee80211_proc;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5dad611e0dedf5372436692626ef440fe777f072.1424616108.git.ksenija.stanojevic%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


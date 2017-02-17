X-GM-THRID: 6387984774735069184
X-Received: by 10.46.69.7 with SMTP id s7mr653122lja.18.1487322612744;
        Fri, 17 Feb 2017 01:10:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.28.81 with SMTP id c78ls187139lfc.50.gmail; Fri, 17 Feb
 2017 01:10:11 -0800 (PST)
X-Received: by 10.46.83.76 with SMTP id t12mr707069ljd.26.1487322611878;
        Fri, 17 Feb 2017 01:10:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si46310wmg.3.2017.02.17.01.10.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 01:10:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,171,1484002800"; 
   d="scan'208";a="213544728"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 10:10:11 +0100
Date: Fri, 17 Feb 2017 10:10:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Remove
 typedef to the tx_pending_t structure
In-Reply-To: <20170217080309.GA13492@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.20.1702171008130.3109@hadrien>
References: <20170217080309.GA13492@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, sayli karnik wrote:

> Using typedef for a structure type is not suggested in Linux kernel
> coding style guidelines. So remove typedef from structure tx_pending_t.
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
> Grepped to ensure no other usage of the typedef variable.
> The driver does not use the typdef variable anywhere, it declares using a
> structure variable when required.
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> index 0d24705..7de3a78 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> @@ -1456,10 +1456,10 @@ enum ieee80211_state {
>
>
>
> -typedef struct tx_pending_t{
> +struct tx_pending_t {
>  	int frag;
>  	struct ieee80211_txb *txb;
> -}tx_pending_t;
> +};

Was anyone using the typedef?  Normally, a typedef is used elsewhere and
when you remove the typedef, you need to update the users as well.

Also, it is normally only typedefs that have names that end in _t.  So it
would be better to change the type name to struct tx_pending.

>  typedef struct _bandwidth_autoswitch {
>  	long threshold_20Mhzto40Mhz;

You can work on this one also.

julia

> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170217080309.GA13492%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>


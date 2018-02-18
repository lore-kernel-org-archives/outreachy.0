X-GM-THRID: 6524019409148706816
X-Received: by 10.80.146.139 with SMTP id k11mr3565127eda.4.1518991960933;
        Sun, 18 Feb 2018 14:12:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.158.236 with SMTP id a99ls3342195edf.7.gmail; Sun, 18 Feb
 2018 14:12:39 -0800 (PST)
X-Google-Smtp-Source: AH8x227mV+Nr0seDkZabpfRkesm1Tlh/a3oVc4T+xhj6JuQOqSFnY4hDRFxIx+mPh1/ceEaEWGBJ
X-Received: by 10.80.149.230 with SMTP id x35mr2173781eda.3.1518991959063;
        Sun, 18 Feb 2018 14:12:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518991959; cv=none;
        d=google.com; s=arc-20160816;
        b=T2qPuRnueUiMGcePFTA6YWjKSXANgFFGsTIxkiFHSboVw3iqigGPN0/RcwWSsskGX8
         qOTy5oBebSWyPXsc6PQ0fb+zqtyke6h/vmlme4KLffqh6Z/gJE9Huw3796nJxiV91dNv
         POt0tzDd82Akmhfq1rhnBog0d5WioElVmrFDC0K4Np1BPCb5IrYmAsmbfZID4d3EdNph
         QNIJIbmLzplkCwqZOBWDGdcPR2INPp4ZS0ezMb20FxAKlcDKi3KPJixRFicBvI2sLWyc
         RdFwGiy9ClPh2A5HgEoMkO7GRfQhHRQn4R35cAyJNp8xU5av9fXgzXzYG4lLrDARzF2o
         v83A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=jJWgfEumh2qViY5+3rvFnMRDoTjJrXtIyyJpIaMAxHU=;
        b=NAI2JsYgvf8hs5HVCQBA7LTYjcDpDpqRUYC1sBK10rIl4mbrZSMjJFS1foGJBrO2Df
         ksjts6nXOyvuaY0GHeYLk9GA3oQ4YRFFAt3NmS6anZmbzHc6bsSaWI3DenJqM2OwBnyq
         KGZfojD6jcTgmVdde8SVjKkKV3ytgRSQZ0udbkVbEqzLo0SDq+g51uh0YbkGEYcIoRT/
         sPsAIqEo+G/Y9Y3UKsgcI0zXKaj6hU5U/3FVfy7+TcIL6ZCJ13TNbgWL31fD0ua61qIH
         XKdbH3C9CU953JUkC8VJWxRDaXoc4pWnj7hcmLX7Hqj7kRri9cqHR5vFuVXnxRDMfA1V
         7Yzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q24si12645edb.4.2018.02.18.14.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 14:12:39 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,532,1511823600"; 
   d="scan'208";a="314154221"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 23:12:25 +0100
Date: Sun, 18 Feb 2018 23:12:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
cc: gregkh@linuxfoundation.org, aditya.shankar@microchip.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: wilc1000: remove unnecessary
 braces
In-Reply-To: <1518991620-3340-1-git-send-email-santhameena13@gmail.com>
Message-ID: <alpine.DEB.2.20.1802182312120.2777@hadrien>
References: <1518991620-3340-1-git-send-email-santhameena13@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Santha Meena Ramamoorthy wrote:

> Remove braces around a single statement block to conform to the Linux
> kernel coding style.
>
> Problem found using checkpatch.
>
> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v2:
>   - Make the subject line more clearer.
>   - Remove file name from subject line.
>   - Make the commit message more clearer.
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1518991620-3340-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 1851894267904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6fd1f02eee315fcc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr301238wia.7.1424533325955;
        Sat, 21 Feb 2015 07:42:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls332646lad.87.gmail; Sat, 21 Feb
 2015 07:42:05 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr338542lal.3.1424533325650;
        Sat, 21 Feb 2015 07:42:05 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si329395wib.2.2015.02.21.07.42.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:42:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="122807858"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:42:05 +0100
Date: Sat, 21 Feb 2015 16:41:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: core: Add blank
 line
In-Reply-To: <1424529496-16682-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211641450.2480@hadrien>
References: <1424529496-16682-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1819500710-1424533319=:2480"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1819500710-1424533319=:2480
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> It should be noted that to be added to the blank line after per
> overtrick.

I don't understand "overtrick".

julia

> This warning found with checkpatch.pl
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> index 076d38c..cfc404f 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> @@ -284,6 +284,7 @@ exit:
>  static void pwr_state_check_handler(void *FunctionContext)
>  {
>  	struct adapter *padapter = FunctionContext;
> +
>  	rtw_ps_cmd(padapter);
>  }
>
> @@ -548,8 +549,10 @@ void rtw_init_pwrctrl_priv(struct adapter *padapter)
>  }
>
>  inline void rtw_set_ips_deny(struct adapter *padapter, u32 ms)
> +
>  {
>  	struct pwrctrl_priv *pwrpriv = &padapter->pwrctrlpriv;
> +
>  	pwrpriv->ips_deny_time = jiffies + msecs_to_jiffies(ms);
>  }
>
> @@ -573,6 +576,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
>
>  {
>  	u32 start = jiffies;
> +
>  	if (pwrpriv->ps_processing) {
>  		DBG_88E("%s wait ps_processing...\n", __func__);
>  		while (pwrpriv->ps_processing && rtw_get_passing_time_ms(start) <= 3000)
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424529496-16682-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-1819500710-1424533319=:2480--


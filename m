X-GM-THRID: 1940237844480
X-Received: by 10.112.126.194 with SMTP id na2mr12661lbb.18.1424533416885;
        Sat, 21 Feb 2015 07:43:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.134 with SMTP id dc6ls332719lad.87.gmail; Sat, 21 Feb
 2015 07:43:36 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr332247lbj.23.1424533416604;
        Sat, 21 Feb 2015 07:43:36 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si317986wib.3.2015.02.21.07.43.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 07:43:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,620,1418079600"; 
   d="scan'208";a="100857649"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 16:43:36 +0100
Date: Sat, 21 Feb 2015 16:43:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 25/25] Staging: rtl8188eu: core:
 Deleted unnecessary parentheses
In-Reply-To: <1424529990-17074-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.10.1502211642130.2480@hadrien>
References: <1424529990-17074-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-581666818-1424533410=:2480"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-581666818-1424533410=:2480
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> Deleted unnecessary parentheses.Because unnecessary use of parentheses should be avoided.

You comment should also respect the 80 character limit.

Also, favor the imperative.  See http://kernelnewbies.org/PatchPhilosophy:

In patch descriptions and in the subject, it is common and preferable to
use present-tense, imperative language. Write as if you are telling git
what to do with your patch.

And remember to put a space after punctuation.

julia

> This warning found with checkpatch.pl
>
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_pwrctrl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> index cfc404f..62ed07b 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
> @@ -307,7 +307,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
>  			pslv = PS_STATE_S3;
>  	}
>
> -	if ((pwrpriv->rpwm == pslv)) {
> +	if (pwrpriv->rpwm == pslv) {
>  		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
>  			 ("%s: Already set rpwm[0x%02X], new=0x%02X!\n", __func__, pwrpriv->rpwm, pslv));
>  		return;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424529990-17074-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-581666818-1424533410=:2480--


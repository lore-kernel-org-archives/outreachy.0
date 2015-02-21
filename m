X-GM-THRID: 2053825888256
X-Received: by 10.112.131.106 with SMTP id ol10mr475742lbb.20.1424556909669;
        Sat, 21 Feb 2015 14:15:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.98 with SMTP id v2ls377689lal.104.gmail; Sat, 21 Feb
 2015 14:15:07 -0800 (PST)
X-Received: by 10.112.35.135 with SMTP id h7mr453253lbj.23.1424556907915;
        Sat, 21 Feb 2015 14:15:07 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i7si384494wif.0.2015.02.21.14.15.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 14:15:07 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,621,1418079600"; 
   d="scan'208";a="122827270"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Feb 2015 23:15:07 +0100
Date: Sat, 21 Feb 2015 23:15:06 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: hal: Deleted
 space
In-Reply-To: <1424548489-21304-1-git-send-email-haticeerturk27@gmail.com>
Message-ID: <alpine.DEB.2.02.1502212312550.2296@localhost6.localdomain6>
References: <1424548489-21304-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1295259320-1424556907=:2296"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1295259320-1424556907=:2296
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Feb 2015, Hatice ERTÜRK wrote:

> Deleted spaces before ','.Because it is prohibited by the kernel coding
> style.

Remember to use the imperative, as though you were telling git what to do 
(see http://kernelnewbies.org/PatchPhilosophy).  So it would be "Delete 
spaces, not Deleted spaces.  Also remember to put a space after the 
period.

julia

> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  drivers/staging/rtl8188eu/hal/usb_halinit.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> index 14650e9..0078468 100644
> --- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
> +++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
> @@ -1796,7 +1796,7 @@ static void SetHwReg8188EU(struct adapter *Adapter, u8 variable, u8 *val)
>  		}
>  		break;
>  	case HW_VAR_H2C_MEDIA_STATUS_RPT:
> -		rtl8188e_set_FwMediaStatus_cmd(Adapter , (*(__le16 *)val));
> +		rtl8188e_set_FwMediaStatus_cmd(Adapter, (*(__le16 *)val));
>  		break;
>  	case HW_VAR_BCN_VALID:
>  		/* BCN_VALID, BIT16 of REG_TDECTRL = BIT0 of REG_TDECTRL+2, write 1 to clear, Clear by sw */
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424548489-21304-1-git-send-email-haticeerturk27%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
--8323328-1295259320-1424556907=:2296--


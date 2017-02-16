X-GM-THRID: 6387647463261470720
X-Received: by 10.46.20.27 with SMTP id u27mr149561ljd.4.1487240392849;
        Thu, 16 Feb 2017 02:19:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.141 with SMTP id c13ls44965ljd.11.gmail; Thu, 16 Feb
 2017 02:19:51 -0800 (PST)
X-Received: by 10.46.20.72 with SMTP id 8mr144046lju.19.1487240391806;
        Thu, 16 Feb 2017 02:19:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q4si510062wma.3.2017.02.16.02.19.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 02:19:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,168,1484002800"; 
   d="scan'208";a="213421723"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Feb 2017 11:19:48 +0100
Date: Thu, 16 Feb 2017 11:19:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: add blank line
 after declaration
In-Reply-To: <1487239937-26115-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702161117310.3091@hadrien>
References: <1487239937-26115-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 16 Feb 2017, Gargi Sharma wrote:

> add blank line after struct declaration to fix the checkpatch issue, add
> blank line after declarations.

This does not look right.  The code before and the code after are all
declarations.  I think that checkpatch is misinterpreting the code.  This
warning is normally targeted at local variables in functions.

The code is fine as is.

julia

> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index 5f1851c..f199847 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -1175,6 +1175,7 @@ struct hfa384x_usbctlx {
>  	enum ctlx_state state;	/* Tracks running state */
>
>  	struct completion done;
> +
>  	volatile int reapable;	/* Food for the reaper task */
>
>  	ctlx_cmdcb_t cmdcb;	/* Async command callback */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487239937-26115-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


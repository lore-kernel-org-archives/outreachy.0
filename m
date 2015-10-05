X-GM-THRID: 6202253257836855296
X-Received: by 10.112.54.197 with SMTP id l5mr5534971lbp.21.1444077106946;
        Mon, 05 Oct 2015 13:31:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.207 with SMTP id f198ls531006lff.31.gmail; Mon, 05 Oct
 2015 13:31:45 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr5598967lbc.23.1444077105199;
        Mon, 05 Oct 2015 13:31:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w4si400785wiz.0.2015.10.05.13.31.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 13:31:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,640,1437429600"; 
   d="scan'208";a="181210724"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2015 22:31:43 +0200
Date: Mon, 5 Oct 2015 21:31:35 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: usleep_range is
 preferred over udelay
In-Reply-To: <20151005195012.GA21881@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1510052131070.2608@hadrien>
References: <20151005195012.GA21881@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 6 Oct 2015, Amitoj Kaur Chawla wrote:

> Fix checkpatch.pl issue: "CHECK: usleep_range is preferred over udelay;
> see Documentation/timers/timers-howto.txt".
> Replace `udelay()` with a call to `usleep_range()` with a reasonable upper limit.

What is the definition of reasonable?  Do maybe other similar drivers use
these values?

julia

>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rtl8712/hal_init.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 469c566..897dc77 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -237,7 +237,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
>  		i = 5;
>  		tmp16 = r8712_read16(padapter, TCR);
>  		while (((tmp16 & _EMEM_CODE_DONE) == 0) && (i > 0)) {
> -			udelay(10);
> +			usleep_range(10, 1000);
>  			tmp16 = r8712_read16(padapter, TCR);
>  			i--;
>  		}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151005195012.GA21881%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>


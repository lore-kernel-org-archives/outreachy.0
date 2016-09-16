X-GM-THRID: 6330756111319171072
X-Received: by 10.194.104.230 with SMTP id gh6mr2062479wjb.7.1474004494031;
        Thu, 15 Sep 2016 22:41:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.27.67 with SMTP id b64ls583110wmb.7.canary; Thu, 15 Sep
 2016 22:41:33 -0700 (PDT)
X-Received: by 10.194.119.196 with SMTP id kw4mr2068193wjb.1.1474004493595;
        Thu, 15 Sep 2016 22:41:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w79si381985wmw.0.2016.09.15.22.41.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 22:41:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,343,1470693600"; 
   d="scan'208";a="237038127"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 16 Sep 2016 07:41:09 +0200
Date: Fri, 16 Sep 2016 07:41:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 3/8] staging: wlan-ng: add spaces
 around >>
In-Reply-To: <2aa356783543963ae0896dea62b2297687c46b32.1473993585.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609160740210.3122@hadrien>
References: <cover.1473993585.git.gs051095@gmail.com> <2aa356783543963ae0896dea62b2297687c46b32.1473993585.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 16 Sep 2016, Gargi Sharma wrote:

> add spaces around >> to fix the checkpatch issue, spaces preferred
> around that '>>'.
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/wlan-ng/hfa384x.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
> index e466883..d4b1dbf 100644
> --- a/drivers/staging/wlan-ng/hfa384x.h
> +++ b/drivers/staging/wlan-ng/hfa384x.h
> @@ -121,7 +121,7 @@
>
>  /* Make CMD format offset and page from a 32-bit flat address */
>  #define		HFA384x_ADDR_CMD_MKPAGE(f) \
> -		((u16)((((u32)(f)) & HFA384x_ADDR_FLAT_CMD_PAGE_MASK)>>16))
> +		((u16)((((u32)(f)) & HFA384x_ADDR_FLAT_CMD_PAGE_MASK) >> 16))
>  #define		HFA384x_ADDR_CMD_MKOFF(f) \
>  		((u16)(((u32)(f)) & HFA384x_ADDR_FLAT_CMD_OFF_MASK))

This code really looks ugly, with the name of the macro to the right of
the definition of the macro.  You can fix all of the macro definitions in
the file.

julia

>
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2aa356783543963ae0896dea62b2297687c46b32.1473993585.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


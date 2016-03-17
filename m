X-GM-THRID: 6263088426063495168
X-Received: by 10.28.24.14 with SMTP id 14mr4784693wmy.1.1458239794386;
        Thu, 17 Mar 2016 11:36:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.184.197 with SMTP id i188ls30842wmf.27.gmail; Thu, 17 Mar
 2016 11:36:33 -0700 (PDT)
X-Received: by 10.194.239.163 with SMTP id vt3mr1651409wjc.3.1458239793657;
        Thu, 17 Mar 2016 11:36:33 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c140si1450313wmh.1.2016.03.17.11.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 11:36:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,350,1454972400"; 
   d="scan'208";a="169239851"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Mar 2016 19:36:33 +0100
Date: Thu, 17 Mar 2016 19:36:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: i4l: Add paranthesis to
 complex macro.
In-Reply-To: <8ea64620333b0c695ab3e67bbfd2949d2a071f2e.1458213062.git.bankarsandhya512@gmail.com>
Message-ID: <alpine.DEB.2.10.1603171935140.2526@hadrien>
References: <cover.1458213061.git.bankarsandhya512@gmail.com> <8ea64620333b0c695ab3e67bbfd2949d2a071f2e.1458213062.git.bankarsandhya512@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 17 Mar 2016, Sandhya Bankar wrote:

> Add paranthesis to complex macro.

From the subject line, it looks like you are performing this change on all
of i4l, but in another patch the subject line mentions the same kind of
change, but ona subdirectory.  Also, paranthesis -> parentheses.

julia

>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/i4l/pcbit/layer2.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/i4l/pcbit/layer2.h b/drivers/staging/i4l/pcbit/layer2.h
> index be1327b..6b9063e 100644
> --- a/drivers/staging/i4l/pcbit/layer2.h
> +++ b/drivers/staging/i4l/pcbit/layer2.h
> @@ -109,7 +109,7 @@
>  #define SCHED_READ    0x01
>  #define SCHED_WRITE   0x02
>
> -#define SET_RUN_TIMEOUT 2 * HZ /* 2 seconds */
> +#define SET_RUN_TIMEOUT (2 * HZ) /* 2 seconds */
>
>  struct frame_buf {
>  	ulong msg;
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8ea64620333b0c695ab3e67bbfd2949d2a071f2e.1458213062.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6396343645329424384
X-Received: by 10.46.77.69 with SMTP id a66mr4511282ljb.11.1489265252301;
        Sat, 11 Mar 2017 12:47:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls1317096ljd.25.gmail; Sat, 11 Mar
 2017 12:47:31 -0800 (PST)
X-Received: by 10.46.22.16 with SMTP id w16mr258281ljd.18.1489265251797;
        Sat, 11 Mar 2017 12:47:31 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i76si294794wmh.1.2017.03.11.12.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 12:47:31 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,148,1486422000"; 
   d="scan'208";a="216405499"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 21:47:30 +0100
Date: Sat, 11 Mar 2017 21:47:30 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, arve@android.com, riandrews@android.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: Replace strcpy with
 strlcpy
In-Reply-To: <20170311204001.GA13301@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1703112147110.2270@hadrien>
References: <20170311204001.GA13301@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, simran singhal wrote:

> Replace strcpy with strlcpy as strcpy does not check for buffer
> overflow.
> This is found using Flawfinder.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 7cbad0d..eb2f4ef 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
>  	if (unlikely(asma->file))
>  		ret = -EINVAL;
>  	else
> -		strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
> +		strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
> +			sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));

There is a parenthesis in the wrong place.

julia

>
>  	mutex_unlock(&ashmem_mutex);
>  	return ret;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311204001.GA13301%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>


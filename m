X-GM-THRID: 6396343645329424384
X-Received: by 10.25.150.2 with SMTP id y2mr3500570lfd.21.1489267402198;
        Sat, 11 Mar 2017 13:23:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.163.204 with SMTP id m195ls189659lfe.0.gmail; Sat, 11 Mar
 2017 13:23:21 -0800 (PST)
X-Received: by 10.46.1.12 with SMTP id 12mr4688760ljb.30.1489267401661;
        Sat, 11 Mar 2017 13:23:21 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si315266wma.0.2017.03.11.13.23.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 13:23:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,148,1486422000"; 
   d="scan'208";a="216406656"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 22:23:20 +0100
Date: Sat, 11 Mar 2017 22:23:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: gregkh@linuxfoundation.org, arve@android.com, riandrews@android.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: android: Replace strcpy
 with strlcpy
In-Reply-To: <20170311211725.GA12884@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1703112221270.2270@hadrien>
References: <20170311211725.GA12884@singhal-Inspiron-5558>
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
>
>  v2:
>    -Correcting the place of the parenthesis
>
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

This appears to be the old patch.

Actually, looking closer, I don't think this is right at all.  There seems
to be a goal of leaving some space at the beginning of asma->name.  So the
amount of space available for local_name would be computed using a
subtraction, not an addition.

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311211725.GA12884%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>


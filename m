X-GM-THRID: 6392973595050508288
X-Received: by 10.46.69.7 with SMTP id s7mr2187755lja.18.1488480656221;
        Thu, 02 Mar 2017 10:50:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls819715ljd.15.gmail; Thu, 02 Mar
 2017 10:50:55 -0800 (PST)
X-Received: by 10.46.77.69 with SMTP id a66mr2331596ljb.11.1488480655491;
        Thu, 02 Mar 2017 10:50:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si862276wmn.2.2017.03.02.10.50.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 10:50:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,232,1484002800"; 
   d="scan'208";a="215364611"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2017 19:50:54 +0100
Date: Thu, 2 Mar 2017 19:50:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] staging:cxd2099:Add struct
 mutex definition
In-Reply-To: <20170302184231.3428-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703021949100.3414@hadrien>
References: <20170302184231.3428-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 2 Mar 2017, Tamara Diaconita wrote:

> Added the struct mutex definition (A mutex is a mutual exclusion lock
> used to protect data from concurrent access) to fix the following
> checkpath.pl issue: CHECK: struct mutex definition without comment.
>
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/media/cxd2099/cxd2099.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
> index b26f28d..001bffe 100644
> --- a/drivers/staging/media/cxd2099/cxd2099.c
> +++ b/drivers/staging/media/cxd2099/cxd2099.c
> @@ -54,6 +54,7 @@ struct cxd {
>  	int    amem_read;
>
>  	int    cammode;
> +	/* use a mutex to protect data from concurrent access */

This is the definition of what a mutex does.  What data in particular
needs to be protected?  The comment could be just protect XXX.  It should
be possible to put the comment to the right of the declaration.  You can
see other examples of such comments by searching for spinlock_t or mutex
in the kernel.

julia

>  	struct mutex lock;
>  };
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170302184231.3428-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


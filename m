X-GM-THRID: 6810919292495724544
X-Received: by 2002:a05:6402:755:: with SMTP id p21mr1457656edy.252.1585811492615;
        Thu, 02 Apr 2020 00:11:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:68d8:: with SMTP id y24ls1493854ejr.9.gmail; Thu, 02
 Apr 2020 00:11:31 -0700 (PDT)
X-Google-Smtp-Source: APiQypKnHxh+dcgvr6Q2YUjhv6sx0SlUi6OMD+gmPQ7pesyIWh5RmXw1dlN1uaZhOIxj7BqzojAz
X-Received: by 2002:a17:906:5644:: with SMTP id v4mr1864926ejr.114.1585811491325;
        Thu, 02 Apr 2020 00:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585811491; cv=none;
        d=google.com; s=arc-20160816;
        b=bp33TqdJ7CzaxnOsvD7/wC/dJbUWwhPwnp35TWzKa1aqmIyQdg9K6hwRVAPUH2Svpo
         hqixQPu3SQZBrQdd3zQ5cLFW89b128IeHutElJVnpWuwTiIQtPqEawVi5vuprAFXzX3q
         tPYawnzmVHW9x0xKd6s2GSLDoAXH/UaGCY3zlLeNMs5s2DLEaTm6xpm8M4Z63WlKWgvy
         6u265tOu0jqtjQMrcXIBoZOy3AHFbxiKztr3qijk6wspI3gUQiQFQ0+lHA+A57u4eQIO
         PnFnaPumqfowLUKELNppU76rXqkEB/VpjWDxIiaK6otyWOYON2IL28uM6Z8ZNW5fcUCJ
         qphg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=PM5peiuN7IqVJGyliwHBY149Un/ktxM0jfVmIU9ZF/s=;
        b=R19bH39tB2zstrrudNK85KL3zMCoAlW8hMYODKiiTTi5MWpQ68CVBqRkO8NujT31HB
         3Ex3OE2fOJlJVt1h4G0b6AAH2TtRzgoC4vUMyMmm5hOrid5yf2SN6X0PboqluRhSns0l
         xtLm/49NzFbJfIikH7/S1lYtSFyXoeV7aqCYC2OGmlGKQlNMdfVnF3BXAueFf4hAEpJJ
         uV6AOp2nC0/TL+mi8gNh97rQldONbihjF3Fn4fThj9CxIaS8/Pv7kohK2YsVYSU1qOcm
         +gyhZBPpe/TUMBMv3On7Ahg+8CqVa7TxHcajaOjtuBI4KgkZCrKHOcxpBlK2Hzh4eWCk
         2b8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id be1si206013edb.3.2020.04.02.00.11.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 00:11:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,334,1580770800"; 
   d="scan'208";a="443452906"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 09:11:30 +0200
Date: Thu, 2 Apr 2020 09:11:30 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>, 
    Sumit Semwal <sumit.semwal@linaro.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    =?ISO-8859-15?Q?Arve_Hj=F8nnev=E5g?= <arve@android.com>, 
    Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
    Joel Fernandes <joel@joelfernandes.org>, 
    Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org, 
    dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: Fix parenthesis
 alignment
In-Reply-To: <20200402012515.429329-1-jbwyatt4@gmail.com>
Message-ID: <alpine.DEB.2.21.2004020910570.3014@hadrien>
References: <20200402012515.429329-1-jbwyatt4@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 1 Apr 2020, John B. Wyatt IV wrote:

> Fix 2 parenthesis alignment issues.

Please try to find a way to describe what you have done that doesn't
involve the word "Fix".  What have you done and why?

julia


>
> Reported by checkpatch.
>
> Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> ---
>  drivers/staging/android/ion/ion_page_pool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
> index f85ec5b16b65..0198b886d906 100644
> --- a/drivers/staging/android/ion/ion_page_pool.c
> +++ b/drivers/staging/android/ion/ion_page_pool.c
> @@ -37,7 +37,7 @@ static void ion_page_pool_add(struct ion_page_pool *pool, struct page *page)
>  	}
>
>  	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
> -							1 << pool->order);
> +			    1 << pool->order);
>  	mutex_unlock(&pool->mutex);
>  }
>
> @@ -57,7 +57,7 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
>
>  	list_del(&page->lru);
>  	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
> -							-(1 << pool->order));
> +			    -(1 << pool->order));
>  	return page;
>  }
>
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200402012515.429329-1-jbwyatt4%40gmail.com.
>


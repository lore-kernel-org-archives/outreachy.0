X-GM-THRID: 6751365568986611712
X-Received: by 2002:adf:ea85:: with SMTP id s5mr5661279wrm.18.1572065027931;
        Fri, 25 Oct 2019 21:43:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:efce:: with SMTP id i14ls7258453wrp.10.gmail; Fri, 25
 Oct 2019 21:43:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxhwm5vOUCXac8WFdHkmybkMCVvujS9hLMOgN92mbS7ydUTXUHckEGhtuR7MEaQZdHDbZmp
X-Received: by 2002:a5d:5690:: with SMTP id f16mr6349384wrv.380.1572065026678;
        Fri, 25 Oct 2019 21:43:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572065026; cv=none;
        d=google.com; s=arc-20160816;
        b=g+M1DyDefCeoLZA89rqpFRF5asHWEnxhz5EH9xMT3JsAcF51L9Df2hcnznJGst6JlB
         G+AK6sD/GtkNDB+OEWA4T4eEaDEocW7AqCwqWgPTB0l/MQBmQ3XWK4J3JVBHjK8UyT58
         So4phiGeWSuHBgVrK+SAEFZLnCH8VGgY3wEmdMDeGmMSNt0NoRSj/bWW/tnGxn6ak/Lr
         Ic2y07sZbWKNTJMzE4PkNqjJcGc1V8VVnqdyGubFlxXfYHDI+wOOj5gpbkY0vSsq1IM/
         Ekh2IiNkx1UsCCJ7i/r1UNnwVUQmGVxJm9efIBvBU+iVXiZuAhW9g1EWFPkTdDoeaSok
         Nkdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ep7HOrtwVYOlRSrJgM+FZVfzyD12swss//VOja4VzQo=;
        b=oqedLoEkfi6iDMLhpB9Yb7tdMrXQ2EmoPJvdQbbZSJWheYLaT6+jZmuo9QYcoyrbhB
         UDHk0Mu97akloqjvTdzPeqJFEJmI3//oEyorCetCBoREYKOmMTXd234eJrmK5JnTG6U9
         7vjczmt1PFqO2Eh5Wo5lmHkpHW3jFHOqZdyaSHKLoNbYDQ1FOs163iBCIS8cClNSykJW
         +feLrnixvZzdKhzAnqnPMtcrRoP6qLIWFmqsvYqDZwusUtuAyeXmLlUlECfe71adbA2g
         Yk22uWQa24/RmpsY4ZyisvbEhyjMLigeGcLTzOHx7C3J6GXwCctT9sNuezgZDJKwRxfi
         +ysg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p15si241643wrj.0.2019.10.25.21.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 21:43:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,230,1569276000"; 
   d="scan'208";a="408354430"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Oct 2019 06:43:46 +0200
Date: Sat, 26 Oct 2019 06:43:46 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
cc: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>, 
    Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging: gasket: Fix lines
 ending with a '('
In-Reply-To: <20191025232935.GA813@cristiane-Inspiron-5420>
Message-ID: <alpine.DEB.2.21.1910260642250.2559@hadrien>
References: <20191025232935.GA813@cristiane-Inspiron-5420>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 25 Oct 2019, Cristiane Naves wrote:

> Fix lines ending with a '('. Issue found by checkpatch.

You sent another patch on this file (the one I acked) and they are notin a
series, so Greg won't know how to apply them.  Please collect the whole
thing again, and either put both changes in the same patch, or send a
series with the different changes on this file.  You could put v2, so that
Greg knows to ignore your other changes on the file.

julia

>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/gasket/gasket_ioctl.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
> index d1b3e9a..e3047d3 100644
> --- a/drivers/staging/gasket/gasket_ioctl.c
> +++ b/drivers/staging/gasket/gasket_ioctl.c
> @@ -54,9 +54,9 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
>  	ibuf.size = gasket_page_table_num_entries(
>  		gasket_dev->page_table[ibuf.page_table_index]);
>
> -	trace_gasket_ioctl_page_table_data(
> -		ibuf.page_table_index, ibuf.size, ibuf.host_address,
> -		ibuf.device_address);
> +	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> +					   ibuf.host_address,
> +					   ibuf.device_address);
>
>  	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
>  		return -EFAULT;
> @@ -101,9 +101,9 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
>  	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
>  		return -EFAULT;
>
> -	trace_gasket_ioctl_page_table_data(
> -		ibuf.page_table_index, ibuf.size, ibuf.host_address,
> -		ibuf.device_address);
> +	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
> +					   ibuf.host_address,
> +					   ibuf.device_address);
>
>  	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
>  		return -EFAULT;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191025232935.GA813%40cristiane-Inspiron-5420.
>


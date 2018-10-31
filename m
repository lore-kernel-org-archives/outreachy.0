X-GM-THRID: 6618634579794198528
X-Received: by 2002:a2e:84d6:: with SMTP id q22-v6mr475614ljh.18.1541021376248;
        Wed, 31 Oct 2018 14:29:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9e96:: with SMTP id f22-v6ls70192ljk.0.gmail; Wed, 31
 Oct 2018 14:29:35 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cHJmH1CNbgdHoi2CpsdFyV7pP0G5ND3tgA1LlYfQbDykjptsdvQWiu51kpeluNdtlf9egT
X-Received: by 2002:a2e:9e95:: with SMTP id f21-v6mr3166ljk.4.1541021375387;
        Wed, 31 Oct 2018 14:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541021375; cv=none;
        d=google.com; s=arc-20160816;
        b=CL+qVPXMMNoCzoE3jXj1ApZvOFuAOX97sq6ClnHq8KqGs+2/ny6XordY9INmlRNkzu
         /LrcuGl2l+0d/7FnN4bE296C/id53G77rlEy3XBGiF2k53vRZ/XH9UzT357Nr2mJz39s
         wKjtfGz8kz6Vi4VVcjvSmqZ6PDTrcL6FvEWDBBuC9/dA3P2MQem9SrUEumjjRd01NRdN
         j8oL5NkzmlM5j8snKerMepttUbd1AULS3YGD5BOLhVPWxWy9BB2P2w0c2pJMDjUl5NNa
         dkLDMcqTCvEk++MwdqfDMwW97CoCVQRnpK94KqibCd7kXtvQrPMAcZWTLITBLfDvbPxp
         mQrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=IAhC5CUrFgc7uUIiq4pk/4S0phwrvLz3xzSLPuZd5QI=;
        b=qolcMfIOfkyYoxcLVRJAejBiCn6BgqNmPVyA0VUh6p8yyk1JQOS8EIRKO1lGkjCUx/
         Wdx6pmU+hOdUMSMW/E2EyXntY9P3svNWocJkBh6atiW+Wi/QZNkiXuuKs+HJ8CrsMGO0
         mOj6beqn2MfZRYR3ZCCFRjpfpkG9KvCACGSWJWmv5E796QRiwJ10jsffwXwDNmqyOS5s
         isqqvl5wJsP5UDEW5LW+p7Mflr6uh4Eabhst1fGSfKjsV5Pdprvh1dGgGrXhooLiTC0e
         lnxHb0inbDShXUkZ4e1k9DwV5QsuJTJdJNllJ/JHPcfmk0RoAhXeVPOZDEORhvKQrOLi
         THuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 73-v6si729723ljc.5.2018.10.31.14.29.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:29:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,449,1534802400"; 
   d="scan'208";a="283990708"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 22:29:33 +0100
Date: Wed, 31 Oct 2018 22:29:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    sasha.levin@microsoft.com
Subject: Re: [Outreachy kernel] [PATCH v4] staging: gasket: Create a free
 memory error path
In-Reply-To: <20181031212220.GA24472@kvasir.local>
Message-ID: <alpine.DEB.2.21.1810312229220.5416@hadrien>
References: <20181031212220.GA24472@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Ioannis Valasakis wrote:

> Create an error handling path for memory allocation. It avoids repeating
> the same assignments and returns the respective ENOMEM.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
> Changes in v4:
> 	- Rebase against gregkh staging source tree
> 	- Modified the error handling paths to correctly free the
> 	  respective memory
>
> drivers/staging/gasket/gasket_interrupt.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index 49d47afad64f..721d590e7c34 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -340,17 +340,14 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
>  					       sizeof(struct eventfd_ctx *),
>  					       GFP_KERNEL);
>  	if (!interrupt_data->eventfd_ctxs) {
> -		kfree(interrupt_data);
> -		return -ENOMEM;
> +		goto err_free_ctxs;
>  	}
>
>  	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
>  						   sizeof(ulong),
>  						   GFP_KERNEL);
>  	if (!interrupt_data->interrupt_counts) {
> -		kfree(interrupt_data->eventfd_ctxs);
> -		kfree(interrupt_data);
> -		return -ENOMEM;
> +		goto err_free_all;

Does this label exist?

julia

>  	}
>
>  	switch (interrupt_data->type) {
> @@ -379,6 +376,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
>  				    interrupt_sysfs_attrs);
>
>  	return 0;
> +
> +err_free_counts:
> +	kfree(interrupt_data->eventfd_ctxs);
> +err_free_ctxs:
> +	kfree(interrupt_data);
> +	return -ENOMEM;
>  }
>
>  static void
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031212220.GA24472%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>


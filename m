X-GM-THRID: 6465902781475586048
X-Received: by 10.25.115.131 with SMTP id h3mr73896lfk.44.1505460569715;
        Fri, 15 Sep 2017 00:29:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.143.66 with SMTP id r63ls160385wmd.7.canary-gmail; Fri, 15
 Sep 2017 00:29:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCEWIOPROokST71j7DFR8Y84r1pd5eAx+Tu46gbjujt5LYn3cnk0iEs+SGKRrSjbRXlK5u+
X-Received: by 10.28.72.135 with SMTP id v129mr232817wma.14.1505460568545;
        Fri, 15 Sep 2017 00:29:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505460568; cv=none;
        d=google.com; s=arc-20160816;
        b=hu9J+oiOYSpINE9As2W57YcqFo9o/bMKpGan50pls9I22O4Nh/Qw5/5vBXOTe3H3Gk
         uPPY0tpS8PyPWu5+P+BFeZUCqZWhpHY8ju221abDRpeMbsRMc6bpeO+vEfpQ0uYTt3kk
         g9dYMZvHp4oY+yL66C35ZUUJ91dXVCaV6gSPq3bENN/bM6As6ZutA/aLfP4jvnPJO42g
         sdiZNWKPQwT+3PAmnmoZQbS3dQofA9JjNX0jAIBAFJ1iCYKU4r8JYbx7q5UqOELIHrd/
         HivaW0+HeJOsF0Fjkfn1We4ucSRN8D3W7vNdSYqTs2bMlrt8TtE52i0j2CQF7ALrv1A8
         YRiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=udaRCJsmNtSzW7MPrSQoQH5gpqb3yy4Dg+TxF/eDhus=;
        b=hFtBuasCDFl0765yY99k7vLSq8lJ3nS+DNx8w8s/dUjDtOxS4EEmhPELPVM0BjplZK
         KXnhmqhoMQt+Noi7mNTnBH4zHXIzLWZCZpizIbV/wyn+e2xJEnNaSKXaDqrVi9W/oIh1
         4xaXvhXikcLvrkGjY8ITGDOFl9YaAk3cJpsX4uwZNhHhVkgWshpHhwVwR1ZBmRhRD/ip
         c+1nm0XgMie9zQZapUhCScnlO//EKNoLSnvG0k8Qg3BMSKRTaBwxtmN9bIU6zpuhgSxo
         lqEzGt0gTogIIgHtM3HmDCpB2KqKd3oBCVT0Cj3GB+UREJpE/s5i2C/JdqlqR1ARuoSA
         UaiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c142si193755wmh.3.2017.09.15.00.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:29:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,396,1500933600"; 
   d="scan'208";a="291195186"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Sep 2017 09:29:28 +0200
Date: Fri, 15 Sep 2017 09:29:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: About handling dma_mapping_error result after dma_map_*
In-Reply-To: <20170915072502.GA11238@Haneen>
Message-ID: <alpine.DEB.2.20.1709150927570.2287@hadrien>
References: <20170915072502.GA11238@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Haneen Mohammed wrote:

> Hello,
>
> I have a question about handling dma_mapping_error result. Is it enough
> to add a warning after it? Because I have found two missing
> dma_mapping_error in the drm/via driver but I wasn't sure how to handle
> the return value if an error was found. Below is the code mentioned:

Intuitively, I think you need to get out of the function and report
failure to the call site.  It's like kmalloc.  If you don't get the memory
you need, there is not much you can do afterwards.  But see what the drm
people say before embarking on what would be a somewhat complex change.
Perhaps there is some reason why it cannot fail.

julia

>
> ---
>  drivers/gpu/drm/via/via_dmablit.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/via/via_dmablit.c b/drivers/gpu/drm/via/via_dmablit.c
> index 98aae98..5c11756 100644
> --- a/drivers/gpu/drm/via/via_dmablit.c
> +++ b/drivers/gpu/drm/via/via_dmablit.c
> @@ -132,12 +132,19 @@ via_map_blit_for_device(struct pci_dev *pdev,
>  								VIA_PFN(first_addr)],
>  						     VIA_PGOFF(cur_mem), remaining_len,
>  						     vsg->direction);
> +				if (dma_mapping_error(&pdev->dev,
> +						      desc_ptr->mem_addr))
> +					dev_warn(&pdev->dev, "DMA mapping failed\n");
> +
>  				desc_ptr->dev_addr = cur_fb;
>
>  				desc_ptr->size = remaining_len;
>  				desc_ptr->next = (uint32_t) next;
>  				next = dma_map_single(&pdev->dev, desc_ptr, sizeof(*desc_ptr),
>  						      DMA_TO_DEVICE);
> +				if (dma_mapping_error(&pdev->dev,
> +						      next))
> +					dev_warn(&pdev->dev, "DMA mapping failed\n");
>  				desc_ptr++;
>  				if (++num_descriptors_this_page >= vsg->descriptors_per_page) {
>  					num_descriptors_this_page = 0;
> --
> 2.7.4
>
> Thank you!
> Haneen
>


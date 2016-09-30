X-GM-THRID: 6336162776541560832
X-Received: by 10.25.33.10 with SMTP id h10mr602343lfh.10.1475256936113;
        Fri, 30 Sep 2016 10:35:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.26.129 with SMTP id a123ls378881wma.15.gmail; Fri, 30 Sep
 2016 10:35:34 -0700 (PDT)
X-Received: by 10.28.198.2 with SMTP id w2mr364787wmf.3.1475256934405;
        Fri, 30 Sep 2016 10:35:34 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si432414wmr.2.2016.09.30.10.35.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 10:35:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,273,1473112800"; 
   d="scan'208";a="238958014"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Sep 2016 19:35:33 +0200
Date: Fri, 30 Sep 2016 19:35:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Anchal Jain <anchalj109@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    arve@android.com, riandrews@android.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: android: ion: Replace
 structure with the *pointer of structure in kzalloc
In-Reply-To: <2d05b9d8c7873fa3e04438f4deabadc372e132df.1475252219.git.anchalj109@gmail.com>
Message-ID: <alpine.DEB.2.10.1609301932430.3399@hadrien>
References: <cover.1475252219.git.anchalj109@gmail.com> <2d05b9d8c7873fa3e04438f4deabadc372e132df.1475252219.git.anchalj109@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 30 Sep 2016, Anchal Jain wrote:

> Replace structure with the *pointer of stucture in kzalloc
> Use pointer instead of structure to save memory and run faster because it
> doesn't have to duplicate the data.

The explanation is not correct.  The argument of sizeof is not evaluated.
The compiler just checks the type, and replaces the sizeof call with the
size of the type.

Look at Documentation/CodingStyle for the proper reason why the form *x
may be preferred.

>
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/android/ion/ion.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
> index 7ff2a7e..5f94aee 100644
> --- a/drivers/staging/android/ion/ion.c
> +++ b/drivers/staging/android/ion/ion.c
> @@ -184,7 +184,7 @@ static struct ion_buffer *ion_buffer_create(struct ion_heap *heap,
>  	struct scatterlist *sg;
>  	int i, ret;
>
> -	buffer = kzalloc(sizeof(struct ion_buffer), GFP_KERNEL);
> +	buffer = kzalloc(sizeof(*ion_buffer_create), GFP_KERNEL);

This is not correct.  ion_buffer_create is a function that returns a value
of type struct ion_buffer.  I'm a bit surprised that this would compile,
but in any case it would not give the same size as the size of the
structure.

Check the subsequent changes accordingly.

julia

>  	if (!buffer)
>  		return ERR_PTR(-ENOMEM);
>
> @@ -341,7 +341,7 @@ static struct ion_handle *ion_handle_create(struct ion_client *client,
>  {
>  	struct ion_handle *handle;
>
> -	handle = kzalloc(sizeof(struct ion_handle), GFP_KERNEL);
> +	handle = kzalloc(sizeof(*handle), GFP_KERNEL);
>  	if (!handle)
>  		return ERR_PTR(-ENOMEM);
>  	kref_init(&handle->ref);
> @@ -802,7 +802,7 @@ struct ion_client *ion_client_create(struct ion_device *dev,
>  	}
>  	task_unlock(current->group_leader);
>
> -	client = kzalloc(sizeof(struct ion_client), GFP_KERNEL);
> +	client = kzalloc(sizeof(*ion_client_create), GFP_KERNEL);
>  	if (!client)
>  		goto err_put_task_struct;
>
> @@ -1010,7 +1010,7 @@ static void ion_vm_open(struct vm_area_struct *vma)
>  	struct ion_buffer *buffer = vma->vm_private_data;
>  	struct ion_vma_list *vma_list;
>
> -	vma_list = kmalloc(sizeof(struct ion_vma_list), GFP_KERNEL);
> +	vma_list = kmalloc(sizeof(*vma_list), GFP_KERNEL);
>  	if (!vma_list)
>  		return;
>  	vma_list->vma = vma;
> @@ -1621,7 +1621,7 @@ struct ion_device *ion_device_create(long (*custom_ioctl)
>  	struct ion_device *idev;
>  	int ret;
>
> -	idev = kzalloc(sizeof(struct ion_device), GFP_KERNEL);
> +	idev = kzalloc(sizeof(*ion_device_create), GFP_KERNEL);
>  	if (!idev)
>  		return ERR_PTR(-ENOMEM);
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/2d05b9d8c7873fa3e04438f4deabadc372e132df.1475252219.git.anchalj109%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6743623075363815424
X-Received: by 2002:a19:3805:: with SMTP id f5mr15961934lfa.173.1570513549515;
        Mon, 07 Oct 2019 22:45:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls294710ljb.2.gmail; Mon, 07 Oct
 2019 22:45:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwT7une8VeLxGy0PT/vqWaemDm0pKdC5eFRxcx7Q6oMeNqpxEtKoAANpXIc38iKZzPz44nK
X-Received: by 2002:a2e:9118:: with SMTP id m24mr1303788ljg.95.1570513548547;
        Mon, 07 Oct 2019 22:45:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570513548; cv=none;
        d=google.com; s=arc-20160816;
        b=u76cfsrVPYD5FLlwgnrJDtatZbfoQXm40hG7y99t9XIzn1/XOuesePZz742cHpimns
         NJaThh1BHH6fu0qE3fyq/QcrvLxnGtfF+wussbM35sVLl0PBieWprXlPXQpcR9O/Fnsg
         AQW73ralAXDcmfl6jih1oE557MOetblrqNIZEGgXO2dJhrcUK2DiG/Qv1mj8rSyvr00J
         Y2b3GqkiXLm/NkkQWmo9yi+gZkYkyrooi/xbcMFZbGCZ9KaFF3HYyrJJMJb+4yeCdqeI
         fvnlzVdiLBr4/2ebfsrGK3HN2/LBh8OXBBQJb+QQb9oyrEUGgqtAB2Rtu0AZ1JabWhBQ
         skTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OrqSeTxHl+7szcCFCG0UJNy7gntoFut0zY9EkeTtAMA=;
        b=l/BnEsNy1SmnCzt9X6GY3teR+c4xl9XwLqMYqCu3OiuGtXNvWgwsOfrbGxuYKHQq1w
         FDNfWyhwQwNFAl88J1dogK9ZJg20dcHSV/joXNpX+qz+ejNXy5eEoLOATBEtZ/uPXMg+
         afgIr3z0nOY2/ujQRIeu/gq8LYdbdKuzqO7uqNQRjgODa+Z7mre8MXuqHOqPHXiLAjkD
         u+pH77Edckhk1pRsG328UdTT3JFHZ9YQL15o/0t2HnIuUVrv4mE+n5drcY3A34guDVMS
         roSzIg3tj7amQd8Zpzg55FKEWJYEoJs/REAVuQ2unvevkgTZLX+Kj97n3Wfg+Bxmp+QS
         nAnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h6si961563lfc.3.2019.10.07.22.45.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 22:45:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,269,1566856800"; 
   d="scan'208";a="321940414"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 07:45:46 +0200
Date: Tue, 8 Oct 2019 07:45:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vc04_services: Avoid NULL
 comparison
In-Reply-To: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910080745260.2638@hadrien>
References: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 7 Oct 2019, Nachammai Karuppiah wrote:

> Remove NULL comparison. Issue found using checkpatch.pl

This introduces compiler warnings, which you should try very hard not to
do.

julia

>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
>
> ---
>
> Changes in V2
>    - Remove all NULL comparisons in vc04_services/interface directory.
> ---
>  .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--
>  .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 28 +++++++++++-----------
>  .../vc04_services/interface/vchiq_arm/vchiq_core.c |  4 ++--
>  .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  2 +-
>  4 files changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index 8dc730c..7cdb21e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -526,11 +526,11 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
>  			return NULL;
>  		}
>
> -		WARN_ON(g_free_fragments == NULL);
> +		WARN_ON(!g_free_fragments);
>
>  		down(&g_free_fragments_mutex);
>  		fragments = g_free_fragments;
> -		WARN_ON(fragments == NULL);
> +		WARN_ON(!fragments);
>  		g_free_fragments = *(char **) g_free_fragments;
>  		up(&g_free_fragments_mutex);
>  		pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index b1595b1..b930148 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -826,8 +826,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>  		/* Remove all services */
>  		i = 0;
> -		while ((service = next_service_by_instance(instance->state,
> -			instance, &i)) != NULL) {
> +		while (service = next_service_by_instance(instance->state,
> +			instance, &i)) {
>  			status = vchiq_remove_service(service->handle);
>  			unlock_service(service);
>  			if (status != VCHIQ_SUCCESS)
> @@ -907,7 +907,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  				&args.params, srvstate,
>  				instance, user_service_free);
>
> -		if (service != NULL) {
> +		if (service) {
>  			user_service->service = service;
>  			user_service->userdata = userdata;
>  			user_service->instance = instance;
> @@ -988,7 +988,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
>
>  		service = find_service_for_instance(instance, handle);
> -		if (service != NULL) {
> +		if (service) {
>  			status = (cmd == VCHIQ_IOC_USE_SERVICE)	?
>  				vchiq_use_service_internal(service) :
>  				vchiq_release_service_internal(service);
> @@ -1021,7 +1021,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>  		service = find_service_for_instance(instance, args.handle);
>
> -		if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
> +		if (service && (args.count <= MAX_ELEMENTS)) {
>  			/* Copy elements into kernel space */
>  			struct vchiq_element elements[MAX_ELEMENTS];
>
> @@ -1343,11 +1343,11 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		spin_unlock(&msg_queue_spinlock);
>
>  		complete(&user_service->remove_event);
> -		if (header == NULL)
> +		if (!header)
>  			ret = -ENOTCONN;
>  		else if (header->size <= args.bufsize) {
>  			/* Copy to user space if msgbuf is not NULL */
> -			if ((args.buf == NULL) ||
> +			if (!args.buf ||
>  				(copy_to_user((void __user *)args.buf,
>  				header->data,
>  				header->size) == 0)) {
> @@ -1426,7 +1426,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
>
>  		service = find_closed_service_for_instance(instance, handle);
> -		if (service != NULL) {
> +		if (service) {
>  			struct user_service *user_service =
>  				(struct user_service *)service->base.userdata;
>  			close_delivered(user_service);
> @@ -2223,13 +2223,13 @@ struct vchiq_state *
>  vchiq_get_state(void)
>  {
>
> -	if (g_state.remote == NULL)
> +	if (!g_state.remote)
>  		printk(KERN_ERR "%s: g_state.remote == NULL\n", __func__);
>  	else if (g_state.remote->initialised != 1)
>  		printk(KERN_NOTICE "%s: g_state.remote->initialised != 1 (%d)\n",
>  			__func__, g_state.remote->initialised);
>
> -	return ((g_state.remote != NULL) &&
> +	return (g_state.remote &&
>  		(g_state.remote->initialised == 1)) ? &g_state : NULL;
>  }
>
> @@ -2923,8 +2923,8 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
>  	int use_count = 0, i;
>
>  	i = 0;
> -	while ((service = next_service_by_instance(instance->state,
> -		instance, &i)) != NULL) {
> +	while (service = next_service_by_instance(instance->state,
> +		instance, &i)) {
>  		use_count += service->service_use_count;
>  		unlock_service(service);
>  	}
> @@ -2950,8 +2950,8 @@ vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
>  	int i;
>
>  	i = 0;
> -	while ((service = next_service_by_instance(instance->state,
> -		instance, &i)) != NULL) {
> +	while (service = next_service_by_instance(instance->state,
> +		instance, &i)) {
>  		service->trace = trace;
>  		unlock_service(service);
>  	}
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 56a23a2..4c375cd 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -542,7 +542,7 @@ reserve_space(struct vchiq_state *state, size_t space, int is_blocking)
>  	if (space > slot_space) {
>  		struct vchiq_header *header;
>  		/* Fill the remaining space with padding */
> -		WARN_ON(state->tx_data == NULL);
> +		WARN_ON(!state->tx_data);
>  		header = (struct vchiq_header *)
>  			(state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
>  		header->msgid = VCHIQ_MSGID_PADDING;
> @@ -3578,7 +3578,7 @@ void vchiq_log_dump_mem(const char *label, u32 addr, const void *void_mem,
>  		}
>  		*s++ = '\0';
>
> -		if ((label != NULL) && (*label != '\0'))
> +		if (label && (*label != '\0'))
>  			vchiq_log_trace(VCHIQ_LOG_TRACE,
>  				"%s: %08x: %s", label, addr, line_buf);
>  		else
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 17a4f2c..10be23e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
>  		}
>  	}
>
> -	return (service != NULL) ? 0 : -1;
> +	return service ? 0 : -1;
>  }
>  EXPORT_SYMBOL(vchi_service_open);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570487369-35454-1-git-send-email-nachukannan%40gmail.com.
>


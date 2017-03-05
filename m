X-GM-THRID: 6393736323263365120
X-Received: by 10.25.199.212 with SMTP id x203mr1515588lff.9.1488730206865;
        Sun, 05 Mar 2017 08:10:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.3 with SMTP id i3ls1325429ljb.9.gmail; Sun, 05 Mar 2017
 08:10:06 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr1719236ljb.25.1488730206188;
        Sun, 05 Mar 2017 08:10:06 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b186si837317wme.1.2017.03.05.08.10.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 08:10:06 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,248,1484002800"; 
   d="scan'208";a="215628663"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2017 17:10:05 +0100
Date: Sun, 5 Mar 2017 17:09:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: swarren@wwwdotorg.org, lee@kernel.org, eric@anholt.net, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services: Refactor
 conditionals
In-Reply-To: <ba8881d259df889680ddc99f1a531bf198f42069.1488657258.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703051709230.3052@hadrien>
References: <cover.1488657258.git.narcisaanamaria12@gmail.com> <ba8881d259df889680ddc99f1a531bf198f42069.1488657258.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 4 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Refactor conditionals to reduce one level of indentation and improve
> code readability.

Indeed the normal situation is to use conditionals to use failure, not
success.  So this is an improvement in that respect as well.

julia

>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  .../vc04_services/interface/vchiq_arm/vchiq_core.c | 222 ++++++++++-----------
>  1 file changed, 109 insertions(+), 113 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index d9622e8..dc9f85c2 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -2574,129 +2574,125 @@ static const char *msg_type_str(unsigned int msg_type)
>  	VCHIQ_INSTANCE_T instance, VCHIQ_USERDATA_TERM_T userdata_term)
>  {
>  	VCHIQ_SERVICE_T *service;
> +	VCHIQ_SERVICE_T **pservice = NULL;
> +	VCHIQ_SERVICE_QUOTA_T *service_quota;
> +	int i;
>
>  	service = kmalloc(sizeof(VCHIQ_SERVICE_T), GFP_KERNEL);
> -	if (service) {
> -		service->base.fourcc   = params->fourcc;
> -		service->base.callback = params->callback;
> -		service->base.userdata = params->userdata;
> -		service->handle        = VCHIQ_SERVICE_HANDLE_INVALID;
> -		service->ref_count     = 1;
> -		service->srvstate      = VCHIQ_SRVSTATE_FREE;
> -		service->userdata_term = userdata_term;
> -		service->localport     = VCHIQ_PORT_FREE;
> -		service->remoteport    = VCHIQ_PORT_FREE;
> -
> -		service->public_fourcc = (srvstate == VCHIQ_SRVSTATE_OPENING) ?
> -			VCHIQ_FOURCC_INVALID : params->fourcc;
> -		service->client_id     = 0;
> -		service->auto_close    = 1;
> -		service->sync          = 0;
> -		service->closing       = 0;
> -		service->trace         = 0;
> -		atomic_set(&service->poll_flags, 0);
> -		service->version       = params->version;
> -		service->version_min   = params->version_min;
> -		service->state         = state;
> -		service->instance      = instance;
> -		service->service_use_count = 0;
> -		init_bulk_queue(&service->bulk_tx);
> -		init_bulk_queue(&service->bulk_rx);
> -		sema_init(&service->remove_event, 0);
> -		sema_init(&service->bulk_remove_event, 0);
> -		mutex_init(&service->bulk_mutex);
> -		memset(&service->stats, 0, sizeof(service->stats));
> -	}
> -
> -	if (service) {
> -		VCHIQ_SERVICE_T **pservice = NULL;
> -		int i;
> -
> -		/* Although it is perfectly possible to use service_spinlock
> -		** to protect the creation of services, it is overkill as it
> -		** disables interrupts while the array is searched.
> -		** The only danger is of another thread trying to create a
> -		** service - service deletion is safe.
> -		** Therefore it is preferable to use state->mutex which,
> -		** although slower to claim, doesn't block interrupts while
> -		** it is held.
> -		*/
> -
> -		mutex_lock(&state->mutex);
> -
> -		/* Prepare to use a previously unused service */
> -		if (state->unused_service < VCHIQ_MAX_SERVICES)
> -			pservice = &state->services[state->unused_service];
> -
> -		if (srvstate == VCHIQ_SRVSTATE_OPENING) {
> -			for (i = 0; i < state->unused_service; i++) {
> -				VCHIQ_SERVICE_T *srv = state->services[i];
> -
> -				if (!srv) {
> -					pservice = &state->services[i];
> -					break;
> -				}
> +	if (!service)
> +		return service;
> +
> +	service->base.fourcc   = params->fourcc;
> +	service->base.callback = params->callback;
> +	service->base.userdata = params->userdata;
> +	service->handle        = VCHIQ_SERVICE_HANDLE_INVALID;
> +	service->ref_count     = 1;
> +	service->srvstate      = VCHIQ_SRVSTATE_FREE;
> +	service->userdata_term = userdata_term;
> +	service->localport     = VCHIQ_PORT_FREE;
> +	service->remoteport    = VCHIQ_PORT_FREE;
> +
> +	service->public_fourcc = (srvstate == VCHIQ_SRVSTATE_OPENING) ?
> +		VCHIQ_FOURCC_INVALID : params->fourcc;
> +	service->client_id     = 0;
> +	service->auto_close    = 1;
> +	service->sync          = 0;
> +	service->closing       = 0;
> +	service->trace         = 0;
> +	atomic_set(&service->poll_flags, 0);
> +	service->version       = params->version;
> +	service->version_min   = params->version_min;
> +	service->state         = state;
> +	service->instance      = instance;
> +	service->service_use_count = 0;
> +	init_bulk_queue(&service->bulk_tx);
> +	init_bulk_queue(&service->bulk_rx);
> +	sema_init(&service->remove_event, 0);
> +	sema_init(&service->bulk_remove_event, 0);
> +	mutex_init(&service->bulk_mutex);
> +	memset(&service->stats, 0, sizeof(service->stats));
> +
> +	/* Although it is perfectly possible to use service_spinlock
> +	** to protect the creation of services, it is overkill as it
> +	** disables interrupts while the array is searched.
> +	** The only danger is of another thread trying to create a
> +	** service - service deletion is safe.
> +	** Therefore it is preferable to use state->mutex which,
> +	** although slower to claim, doesn't block interrupts while
> +	** it is held.
> +	*/
> +
> +	mutex_lock(&state->mutex);
> +
> +	/* Prepare to use a previously unused service */
> +	if (state->unused_service < VCHIQ_MAX_SERVICES)
> +		pservice = &state->services[state->unused_service];
> +
> +	if (srvstate == VCHIQ_SRVSTATE_OPENING) {
> +		for (i = 0; i < state->unused_service; i++) {
> +			VCHIQ_SERVICE_T *srv = state->services[i];
> +
> +			if (!srv) {
> +				pservice = &state->services[i];
> +				break;
>  			}
> -		} else {
> -			for (i = (state->unused_service - 1); i >= 0; i--) {
> -				VCHIQ_SERVICE_T *srv = state->services[i];
> -
> -				if (!srv)
> -					pservice = &state->services[i];
> -				else if ((srv->public_fourcc == params->fourcc)
> -					&& ((srv->instance != instance) ||
> -					(srv->base.callback !=
> -					params->callback))) {
> -					/* There is another server using this
> -					** fourcc which doesn't match. */
> -					pservice = NULL;
> -					break;
> -				}
> +		}
> +	} else {
> +		for (i = (state->unused_service - 1); i >= 0; i--) {
> +			VCHIQ_SERVICE_T *srv = state->services[i];
> +
> +			if (!srv)
> +				pservice = &state->services[i];
> +			else if ((srv->public_fourcc == params->fourcc)
> +				&& ((srv->instance != instance) ||
> +				(srv->base.callback !=
> +				params->callback))) {
> +				/* There is another server using this
> +				** fourcc which doesn't match. */
> +				pservice = NULL;
> +				break;
>  			}
>  		}
> +	}
>
> -		if (pservice) {
> -			service->localport = (pservice - state->services);
> -			if (!handle_seq)
> -				handle_seq = VCHIQ_MAX_STATES *
> -					 VCHIQ_MAX_SERVICES;
> -			service->handle = handle_seq |
> -				(state->id * VCHIQ_MAX_SERVICES) |
> -				service->localport;
> -			handle_seq += VCHIQ_MAX_STATES * VCHIQ_MAX_SERVICES;
> -			*pservice = service;
> -			if (pservice == &state->services[state->unused_service])
> -				state->unused_service++;
> -		}
> +	if (pservice) {
> +		service->localport = (pservice - state->services);
> +		if (!handle_seq)
> +			handle_seq = VCHIQ_MAX_STATES *
> +				 VCHIQ_MAX_SERVICES;
> +		service->handle = handle_seq |
> +			(state->id * VCHIQ_MAX_SERVICES) |
> +			service->localport;
> +		handle_seq += VCHIQ_MAX_STATES * VCHIQ_MAX_SERVICES;
> +		*pservice = service;
> +		if (pservice == &state->services[state->unused_service])
> +			state->unused_service++;
> +	}
>
> -		mutex_unlock(&state->mutex);
> +	mutex_unlock(&state->mutex);
>
> -		if (!pservice) {
> -			kfree(service);
> -			service = NULL;
> -		}
> +	if (!pservice) {
> +		kfree(service);
> +		service = NULL;
>  	}
>
> -	if (service) {
> -		VCHIQ_SERVICE_QUOTA_T *service_quota =
> -			&state->service_quotas[service->localport];
> -		service_quota->slot_quota = state->default_slot_quota;
> -		service_quota->message_quota = state->default_message_quota;
> -		if (service_quota->slot_use_count == 0)
> -			service_quota->previous_tx_index =
> -				SLOT_QUEUE_INDEX_FROM_POS(state->local_tx_pos)
> -				- 1;
> -
> -		/* Bring this service online */
> -		vchiq_set_service_state(service, srvstate);
> -
> -		vchiq_log_info(vchiq_core_msg_log_level,
> -			"%s Service %c%c%c%c SrcPort:%d",
> -			(srvstate == VCHIQ_SRVSTATE_OPENING)
> -			? "Open" : "Add",
> -			VCHIQ_FOURCC_AS_4CHARS(params->fourcc),
> -			service->localport);
> -	}
> +	service_quota = &state->service_quotas[service->localport];
> +	service_quota->slot_quota = state->default_slot_quota;
> +	service_quota->message_quota = state->default_message_quota;
> +	if (service_quota->slot_use_count == 0)
> +		service_quota->previous_tx_index =
> +			SLOT_QUEUE_INDEX_FROM_POS(state->local_tx_pos)
> +			- 1;
> +
> +	/* Bring this service online */
> +	vchiq_set_service_state(service, srvstate);
> +
> +	vchiq_log_info(vchiq_core_msg_log_level,
> +		"%s Service %c%c%c%c SrcPort:%d",
> +		(srvstate == VCHIQ_SRVSTATE_OPENING)
> +		? "Open" : "Add",
> +		VCHIQ_FOURCC_AS_4CHARS(params->fourcc),
> +		service->localport);
>
>  	/* Don't unlock the service - leave it with a ref_count of 1. */
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ba8881d259df889680ddc99f1a531bf198f42069.1488657258.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


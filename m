X-GM-THRID: 6468311343549120512
X-Received: by 10.223.168.41 with SMTP id l38mr765497wrc.24.1506066463204;
        Fri, 22 Sep 2017 00:47:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.22 with SMTP id n22ls1200080lja.6.gmail; Fri, 22 Sep
 2017 00:47:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBMl+B3QgSe0mZnlFYvMgLImf4Awoelsq76WkcRRvIFsFc/zUrmKmVLq1SC0hqFhZkQXV7K
X-Received: by 10.25.225.195 with SMTP id l64mr773688lfk.16.1506066461675;
        Fri, 22 Sep 2017 00:47:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506066461; cv=none;
        d=google.com; s=arc-20160816;
        b=oQ/GPftFaxhVzhF4iQafnllFK4WfoLJRmvBJqtjOZcmUWk9RcCW1EOw2C38t+ciZFJ
         HIU9nv766au5VQb0V+TPEtTV8BYx0OFolUiGXiKtV34iRpvlfNGG4X2c4jL/lnTI8Z8n
         +1g960yC5P3NZFCrvt1VYENLh0OdesLtkeJuCbTeyhOHFxqtoZiLpHnbAEmwSBMMggp0
         /bbEzSjjPo+hFrB3KlU4phA+7BfUHUQJa5gkj2YD7ytcOeAcYC+4b/7vtGbUn8T+C8h6
         eJmiCBeR7AEiPHsRO+BVFXmil/1SWL8pYEmXZDcmAcxIFoWyABDR0M1fPA5Wr789ZD7y
         1RZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ykBUYxVX6o1osZx+nydTLW7pRHw+dIV+cXgIPvq4Ofc=;
        b=nb3Hmfzs7kRmfaap6u11RdmdfmP4NMQyzDD30QUpfie+omMXruaw73rbJtHcI4gqOY
         eweg473Cmv1oVxWAT7LM9SFangjRSg3slISsEJ9Maq9Wp2a/3eJ/Jc10rNumZp6nbEBG
         JfAUSFDROq8Jl3jeyJiw+jGTCicwFy7wc7CqY2wYIDfzwZXKVwBcGnXBnDMC5gxDGBIO
         Y6ocmag6tBzqVSEnb4g7iY/KZAYFDQ+jAqQgM3+EH+eyaJH0sDVef4QXrxyjWf4IoVkk
         B5xMU6GkBbezVLfaAAwTzq7O7cMttCh1xyaySWnwdiRUriuGci4QhsqJoZM1REQTUrmA
         K85A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d82si243121wmd.1.2017.09.22.00.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 00:47:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,427,1500933600"; 
   d="scan'208";a="238360142"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Sep 2017 09:47:40 +0200
Date: Fri, 22 Sep 2017 09:47:40 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vc04_services: Remove
 typedef struct
In-Reply-To: <1506065823-22769-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709220947040.2024@hadrien>
References: <1506065823-22769-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Sep 2017, Harsha Sharma wrote:

> Remove typedef from struct as linux-kernel coding style tends to
> avoid using typedefs
>
> Done using following coccinelle semantic patch
>
> @r1@
> type T;
> @@
>
> typedef struct { ... } T;
>
> @script:python c1@
> T2;
> T << r1.T;
> @@
> if T[-2:] =="_t" or T[-2:] == "_T":
>         coccinelle.T2 = T[:-2];
> else:
>         coccinelle.T2 = T;
>
> print T, coccinelle.T2
>
> @r2@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
> struct
> + T2
> { ... }
> -T
> ;
>
> @r3@
> type r1.T;
> identifier c1.T2;
> @@
> -T
> +struct T2
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v2:
>  -Convert structure name to lowercase
>
>  .../vc04_services/interface/vchiq_arm/vchiq_shim.c | 44 +++++++++++-----------
>  1 file changed, 22 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 8af95fc..2c09d5e 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -41,14 +41,14 @@
>
>  #define vchiq_status_to_vchi(status) ((int32_t)status)
>
> -typedef struct {
> +struct shim_service {
>  	VCHIQ_SERVICE_HANDLE_T handle;
>
>  	VCHIU_QUEUE_T queue;
>
>  	VCHI_CALLBACK_T callback;
>  	void *callback_param;
> -} SHIM_SERVICE_T;
> +};
>
>  /* ----------------------------------------------------------------------
>   * return pointer to the mphi message driver function table
> @@ -99,7 +99,7 @@ int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
>  	uint32_t *msg_size,
>  	VCHI_FLAGS_T flags)
>  {
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_HEADER_T *header;
>
>  	WARN_ON((flags != VCHI_FLAGS_NONE) &&
> @@ -131,7 +131,7 @@ int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
>   ***********************************************************/
>  int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
>  {
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_HEADER_T *header;
>
>  	header = vchiu_queue_pop(&service->queue);
> @@ -163,7 +163,7 @@ int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
>  	void *context,
>  	uint32_t data_size)
>  {
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_STATUS_T status;
>
>  	while (1) {
> @@ -262,7 +262,7 @@ int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
>  	VCHI_FLAGS_T flags,
>  	void *bulk_handle)
>  {
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_BULK_MODE_T mode;
>  	VCHIQ_STATUS_T status;
>
> @@ -322,7 +322,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>  	VCHI_FLAGS_T flags,
>  	void *bulk_handle)
>  {
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_BULK_MODE_T mode;
>  	VCHIQ_STATUS_T status;
>
> @@ -384,7 +384,7 @@ int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
>  	uint32_t *actual_msg_size,
>  	VCHI_FLAGS_T flags)
>  {
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_HEADER_T *header;
>
>  	WARN_ON((flags != VCHI_FLAGS_NONE) &&
> @@ -458,7 +458,7 @@ int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
>  	VCHI_FLAGS_T flags,
>  	VCHI_HELD_MSG_T *message_handle)
>  {
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_HEADER_T *header;
>
>  	WARN_ON((flags != VCHI_FLAGS_NONE) &&
> @@ -579,8 +579,8 @@ int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
>  static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
>  	VCHIQ_HEADER_T *header, VCHIQ_SERVICE_HANDLE_T handle, void *bulk_user)
>  {
> -	SHIM_SERVICE_T *service =
> -		(SHIM_SERVICE_T *)VCHIQ_GET_SERVICE_USERDATA(handle);
> +	struct shim_service *service =
> +		(struct shim_service *)VCHIQ_GET_SERVICE_USERDATA(handle);
>
>  	if (!service->callback)
>  		goto release;
> @@ -637,10 +637,10 @@ static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
>  	return VCHIQ_SUCCESS;
>  }
>
> -static SHIM_SERVICE_T *service_alloc(VCHIQ_INSTANCE_T instance,
> +static struct shim_service *service_alloc(VCHIQ_INSTANCE_T instance,
>  	SERVICE_CREATION_T *setup)
>  {
> -	SHIM_SERVICE_T *service = kzalloc(sizeof(SHIM_SERVICE_T), GFP_KERNEL);
> +	struct shim_service *service = kzalloc(sizeof(struct shim_service), GFP_KERNEL);
>
>  	(void)instance;
>
> @@ -657,7 +657,7 @@ static SHIM_SERVICE_T *service_alloc(VCHIQ_INSTANCE_T instance,
>  	return service;
>  }
>
> -static void service_free(SHIM_SERVICE_T *service)
> +static void service_free(struct shim_service *service)
>  {
>  	if (service) {
>  		vchiu_queue_delete(&service->queue);
> @@ -670,7 +670,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
>  	VCHI_SERVICE_HANDLE_T *handle)
>  {
>  	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> -	SHIM_SERVICE_T *service = service_alloc(instance, setup);
> +	struct shim_service *service = service_alloc(instance, setup);
>
>  	*handle = (VCHI_SERVICE_HANDLE_T)service;
>
> @@ -703,7 +703,7 @@ int32_t vchi_service_create(VCHI_INSTANCE_T instance_handle,
>  	VCHI_SERVICE_HANDLE_T *handle)
>  {
>  	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> -	SHIM_SERVICE_T *service = service_alloc(instance, setup);
> +	struct shim_service *service = service_alloc(instance, setup);
>
>  	*handle = (VCHI_SERVICE_HANDLE_T)service;
>
> @@ -733,7 +733,7 @@ int32_t vchi_service_create(VCHI_INSTANCE_T instance_handle,
>  int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
>  {
>  	int32_t ret = -1;
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>
>  	if (service) {
>  		VCHIQ_STATUS_T status = vchiq_close_service(service->handle);
> @@ -751,7 +751,7 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
>  int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
>  {
>  	int32_t ret = -1;
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>
>  	if (service) {
>  		VCHIQ_STATUS_T status = vchiq_remove_service(service->handle);
> @@ -772,7 +772,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
>  				int value)
>  {
>  	int32_t ret = -1;
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_SERVICE_OPTION_T vchiq_option;
>
>  	switch (option) {
> @@ -801,7 +801,7 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
>  int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
>  {
>  	int32_t ret = -1;
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>
>  	if (service)
>  	{
> @@ -828,7 +828,7 @@ int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle)
>  {
>  	int32_t ret = -1;
>
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	if (service)
>  		ret = vchiq_status_to_vchi(vchiq_use_service(service->handle));
>  	return ret;
> @@ -849,7 +849,7 @@ int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle)
>  {
>  	int32_t ret = -1;
>
> -	SHIM_SERVICE_T *service = (SHIM_SERVICE_T *)handle;
> +	struct shim_service *service = (struct shim_service *)handle;
>  	if (service)
>  		ret = vchiq_status_to_vchi(
>  			vchiq_release_service(service->handle));
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506065823-22769-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


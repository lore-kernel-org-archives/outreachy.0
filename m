X-GM-THRID: 6753896393761357824
X-Received: by 2002:aa7:cc18:: with SMTP id q24mr4722780edt.150.1572514250047;
        Thu, 31 Oct 2019 02:30:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:165a:: with SMTP id n26ls513656ejd.11.gmail; Thu, 31
 Oct 2019 02:30:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwJIDl7FjaSRes6fsY/lEtBqxR3Ig6mXFkBKeMjNiDvffVMcAeqyof6+Y85htw2qfFXT/Z3
X-Received: by 2002:a17:906:f252:: with SMTP id gy18mr2850830ejb.224.1572514248910;
        Thu, 31 Oct 2019 02:30:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572514248; cv=none;
        d=google.com; s=arc-20160816;
        b=LYflmn40RwM1ud/+Tq/I+ovZRpklHp5q2GBGhh6AfN/xMOfoTC4v9g2u8x/mB0NEKy
         djOT9bWMcxLxnd5zWi+3Q7BbizLxAKuEK2tbej2x8AibKuRxWJSOLnv417yacajfBXLX
         /pXKPjy6LzfKg3c8wKLpGJve4NJ1dnCo2PzWbdFc+cuQvfRm32foTaJb+3064IS1m8zg
         2KAxQfrwZOb9xSH3MHcJV+iSk3iBNoUlmrkSHrmtv1f3IoqVbHpq0zD9d9z7re3+SurY
         0+/1LTZG2Vq83dnxew5S3BQ1U/jN1JFpnCbVc/MYfxdaZ41tUhnh5fikIMK4VTaL3F2U
         SFDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=oHQybYkkFL2gmjW+WqgzhtmgKe8KUY7YS9gVr6OrqrQ=;
        b=Zqfdgp8HzFvh8FPoSpFEcmYm+dFULN131g9U2PsbV9UmYiSC5QjdIJQupEisdpReZb
         7NUgSNzgyfDZHaMrRcc+/+/4rIKJs6Yv+y+B/gnv5388e5ZvU+59hJrZCYRvx5HNNFBs
         RYUKxeGDW4xP9uz5jNbRTmFxCvi5ic9cIeO1WlMWi8AJr7i9Y2zQ2eyYFzhSK223ih6J
         ase1yawUx4PM3p+mO2VtyzYWAZnVgP3S1Q8c3AGHB6GkmGk6UYbv489uRC1cpph/UMlM
         XpRhyHC5R6ZrMKJEmg2nVs/MNwtlNGi3RbBPIQWbchQ3MOjQkOzNvXWKAARAUJ4rsyUd
         KhWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c31si314542edb.0.2019.10.31.02.30.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 31 Oct 2019 02:30:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,250,1569276000"; 
   d="scan'208";a="325210744"
Received: from portablejulia.rsr.lip6.fr ([132.227.76.63])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2019 10:30:48 +0100
Date: Thu, 31 Oct 2019 10:30:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Jamal Shareef <jamal.k.shareef@gmail.com>
cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: vc04_services: Remove
 vchiq_arm typedefs
In-Reply-To: <6f517792d69d3af032b10cc71310cd95c819e26c.1572513863.git.jamal.k.shareef@gmail.com>
Message-ID: <alpine.DEB.2.21.1910311030310.6010@hadrien>
References: <cover.1572513863.git.jamal.k.shareef@gmail.com> <6f517792d69d3af032b10cc71310cd95c819e26c.1572513863.git.jamal.k.shareef@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 31 Oct 2019, Jamal Shareef wrote:

> Removes typedefs from vchiq_arm files. Issue found by checkpatch.
> Typedefs included enums, function pointers, and unsigned int type.

Could vchiq_instance_struct be shortened to vchiq_instance?

julia

>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  .../interface/vchiq_arm/vchiq_2835_arm.c      |  10 +-
>  .../interface/vchiq_arm/vchiq_arm.c           | 168 +++++++++---------
>  .../interface/vchiq_arm/vchiq_arm.h           |  32 ++--
>  .../interface/vchiq_arm/vchiq_core.c          | 116 ++++++------
>  .../interface/vchiq_arm/vchiq_core.h          |  90 +++++-----
>  .../interface/vchiq_arm/vchiq_debugfs.c       |  14 +-
>  .../interface/vchiq_arm/vchiq_debugfs.h       |   4 +-
>  .../interface/vchiq_arm/vchiq_if.h            |  92 +++++-----
>  .../interface/vchiq_arm/vchiq_ioctl.h         |   4 +-
>  .../interface/vchiq_arm/vchiq_shim.c          |  46 ++---
>  10 files changed, 286 insertions(+), 290 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> index b86d7e436357..e568e9e6eb95 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> @@ -168,10 +168,10 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
>  	return 0;
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_platform_init_state(struct vchiq_state *state)
>  {
> -	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +	enum vchiq_status status = VCHIQ_SUCCESS;
>  	struct vchiq_2835_state *platform_state;
>
>  	state->platform_state = kzalloc(sizeof(*platform_state), GFP_KERNEL);
> @@ -214,7 +214,7 @@ remote_event_signal(struct remote_event *event)
>  		writel(0, g_regs + BELL2); /* trigger vc interrupt */
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset, int size,
>  			int dir)
>  {
> @@ -258,13 +258,13 @@ vchiq_dump_platform_state(void *dump_context)
>  	vchiq_dump(dump_context, buf, len + 1);
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_platform_suspend(struct vchiq_state *state)
>  {
>  	return VCHIQ_ERROR;
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_platform_resume(struct vchiq_state *state)
>  {
>  	return VCHIQ_SUCCESS;
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index dc54f443ef3d..cc6efe642712 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -84,7 +84,7 @@ static void suspend_timer_callback(struct timer_list *t);
>  struct user_service {
>  	struct vchiq_service *service;
>  	void *userdata;
> -	VCHIQ_INSTANCE_T instance;
> +	struct vchiq_instance_struct *instance;
>  	char is_vchi;
>  	char dequeue_pending;
>  	char close_pending;
> @@ -172,16 +172,16 @@ static const char *const ioctl_names[] = {
>  vchiq_static_assert(ARRAY_SIZE(ioctl_names) ==
>  		    (VCHIQ_IOC_MAX + 1));
>
> -static VCHIQ_STATUS_T
> -vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
> -	unsigned int size, VCHIQ_BULK_DIR_T dir);
> +static enum vchiq_status
> +vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
> +	unsigned int size, enum vchiq_bulk_dir dir);
>
>  #define VCHIQ_INIT_RETRIES 10
> -VCHIQ_STATUS_T vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
> +enum vchiq_status vchiq_initialise(struct vchiq_instance_struct **instance_out)
>  {
> -	VCHIQ_STATUS_T status = VCHIQ_ERROR;
> +	enum vchiq_status status = VCHIQ_ERROR;
>  	struct vchiq_state *state;
> -	VCHIQ_INSTANCE_T instance = NULL;
> +	struct vchiq_instance_struct *instance = NULL;
>  	int i;
>
>  	vchiq_log_trace(vchiq_core_log_level, "%s called", __func__);
> @@ -230,9 +230,9 @@ VCHIQ_STATUS_T vchiq_initialise(VCHIQ_INSTANCE_T *instance_out)
>  }
>  EXPORT_SYMBOL(vchiq_initialise);
>
> -VCHIQ_STATUS_T vchiq_shutdown(VCHIQ_INSTANCE_T instance)
> +enum vchiq_status vchiq_shutdown(struct vchiq_instance_struct *instance)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>  	struct vchiq_state *state = instance->state;
>
>  	vchiq_log_trace(vchiq_core_log_level,
> @@ -267,14 +267,14 @@ VCHIQ_STATUS_T vchiq_shutdown(VCHIQ_INSTANCE_T instance)
>  }
>  EXPORT_SYMBOL(vchiq_shutdown);
>
> -static int vchiq_is_connected(VCHIQ_INSTANCE_T instance)
> +static int vchiq_is_connected(struct vchiq_instance_struct *instance)
>  {
>  	return instance->connected;
>  }
>
> -VCHIQ_STATUS_T vchiq_connect(VCHIQ_INSTANCE_T instance)
> +enum vchiq_status vchiq_connect(struct vchiq_instance_struct *instance)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>  	struct vchiq_state *state = instance->state;
>
>  	vchiq_log_trace(vchiq_core_log_level,
> @@ -301,12 +301,12 @@ VCHIQ_STATUS_T vchiq_connect(VCHIQ_INSTANCE_T instance)
>  }
>  EXPORT_SYMBOL(vchiq_connect);
>
> -VCHIQ_STATUS_T vchiq_add_service(
> -	VCHIQ_INSTANCE_T              instance,
> +enum vchiq_status vchiq_add_service(
> +	struct vchiq_instance_struct *instance,
>  	const struct vchiq_service_params *params,
> -	VCHIQ_SERVICE_HANDLE_T       *phandle)
> +	unsigned int       *phandle)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>  	struct vchiq_state *state = instance->state;
>  	struct vchiq_service *service = NULL;
>  	int srvstate;
> @@ -340,12 +340,12 @@ VCHIQ_STATUS_T vchiq_add_service(
>  }
>  EXPORT_SYMBOL(vchiq_add_service);
>
> -VCHIQ_STATUS_T vchiq_open_service(
> -	VCHIQ_INSTANCE_T              instance,
> +enum vchiq_status vchiq_open_service(
> +	struct vchiq_instance_struct *instance,
>  	const struct vchiq_service_params *params,
> -	VCHIQ_SERVICE_HANDLE_T       *phandle)
> +	unsigned int       *phandle)
>  {
> -	VCHIQ_STATUS_T   status = VCHIQ_ERROR;
> +	enum vchiq_status   status = VCHIQ_ERROR;
>  	struct vchiq_state   *state = instance->state;
>  	struct vchiq_service *service = NULL;
>
> @@ -380,11 +380,11 @@ VCHIQ_STATUS_T vchiq_open_service(
>  }
>  EXPORT_SYMBOL(vchiq_open_service);
>
> -VCHIQ_STATUS_T
> -vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
> -	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
> +enum vchiq_status
> +vchiq_bulk_transmit(unsigned int handle, const void *data,
> +	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>
>  	switch (mode) {
>  	case VCHIQ_BULK_MODE_NOCALLBACK:
> @@ -405,11 +405,11 @@ vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T handle, const void *data,
>  }
>  EXPORT_SYMBOL(vchiq_bulk_transmit);
>
> -VCHIQ_STATUS_T
> -vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
> -	unsigned int size, void *userdata, VCHIQ_BULK_MODE_T mode)
> +enum vchiq_status
> +vchiq_bulk_receive(unsigned int handle, void *data,
> +	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>
>  	switch (mode) {
>  	case VCHIQ_BULK_MODE_NOCALLBACK:
> @@ -429,13 +429,13 @@ vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T handle, void *data,
>  }
>  EXPORT_SYMBOL(vchiq_bulk_receive);
>
> -static VCHIQ_STATUS_T
> -vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
> -	unsigned int size, VCHIQ_BULK_DIR_T dir)
> +static enum vchiq_status
> +vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
> +	unsigned int size, enum vchiq_bulk_dir dir)
>  {
> -	VCHIQ_INSTANCE_T instance;
> +	struct vchiq_instance_struct *instance;
>  	struct vchiq_service *service;
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>  	struct bulk_waiter_node *waiter = NULL;
>
>  	service = find_service_by_handle(handle);
> @@ -515,8 +515,8 @@ vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
>  *
>  ***************************************************************************/
>
> -static VCHIQ_STATUS_T
> -add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
> +static enum vchiq_status
> +add_completion(struct vchiq_instance_struct *instance, enum vchiq_reason reason,
>  	       struct vchiq_header *header, struct user_service *user_service,
>  	       void *bulk_userdata)
>  {
> @@ -582,9 +582,9 @@ add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
>  *
>  ***************************************************************************/
>
> -static VCHIQ_STATUS_T
> +static enum vchiq_status
>  service_callback(enum vchiq_reason reason, struct vchiq_header *header,
> -		 VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
> +		 unsigned int handle, void *bulk_userdata)
>  {
>  	/* How do we ensure the callback goes to the right client?
>  	** The service_user data points to a user_service record
> @@ -593,7 +593,7 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
>  	*/
>  	struct user_service *user_service;
>  	struct vchiq_service *service;
> -	VCHIQ_INSTANCE_T instance;
> +	struct vchiq_instance_struct *instance;
>  	bool skip_completion = false;
>
>  	DEBUG_INITIALISE(g_state.local)
> @@ -630,7 +630,7 @@ service_callback(enum vchiq_reason reason, struct vchiq_header *header,
>  			*/
>  			if ((user_service->message_available_pos -
>  				instance->completion_remove) < 0) {
> -				VCHIQ_STATUS_T status;
> +				enum vchiq_status status;
>
>  				vchiq_log_info(vchiq_arm_log_level,
>  					"Inserting extra MESSAGE_AVAILABLE");
> @@ -772,8 +772,8 @@ static ssize_t vchiq_ioc_copy_element_data(void *context, void *dest,
>   *   vchiq_ioc_queue_message
>   *
>   **************************************************************************/
> -static VCHIQ_STATUS_T
> -vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
> +static enum vchiq_status
> +vchiq_ioc_queue_message(unsigned int handle,
>  			struct vchiq_element *elements,
>  			unsigned long count)
>  {
> @@ -804,8 +804,8 @@ vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
>  static long
>  vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  {
> -	VCHIQ_INSTANCE_T instance = file->private_data;
> -	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +	struct vchiq_instance_struct *instance = file->private_data;
> +	enum vchiq_status status = VCHIQ_SUCCESS;
>  	struct vchiq_service *service = NULL;
>  	long ret = 0;
>  	int i, rc;
> @@ -952,7 +952,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>  	case VCHIQ_IOC_CLOSE_SERVICE:
>  	case VCHIQ_IOC_REMOVE_SERVICE: {
> -		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
> +		unsigned int handle = (unsigned int)arg;
>  		struct user_service *user_service;
>
>  		service = find_service_for_instance(instance, handle);
> @@ -985,7 +985,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>  	case VCHIQ_IOC_USE_SERVICE:
>  	case VCHIQ_IOC_RELEASE_SERVICE:	{
> -		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
> +		unsigned int handle = (unsigned int)arg;
>
>  		service = find_service_for_instance(instance, handle);
>  		if (service) {
> @@ -1042,7 +1042,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  		struct vchiq_queue_bulk_transfer args;
>  		struct bulk_waiter_node *waiter = NULL;
>
> -		VCHIQ_BULK_DIR_T dir =
> +		enum vchiq_bulk_dir dir =
>  			(cmd == VCHIQ_IOC_QUEUE_BULK_TRANSMIT) ?
>  			VCHIQ_BULK_TRANSMIT : VCHIQ_BULK_RECEIVE;
>
> @@ -1107,7 +1107,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  			}
>  			kfree(waiter);
>  		} else {
> -			const VCHIQ_BULK_MODE_T mode_waiting =
> +			const enum vchiq_bulk_mode mode_waiting =
>  				VCHIQ_BULK_MODE_WAITING;
>  			waiter->pid = current->pid;
>  			mutex_lock(&instance->bulk_waiter_list_mutex);
> @@ -1368,7 +1368,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  	} break;
>
>  	case VCHIQ_IOC_GET_CLIENT_ID: {
> -		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
> +		unsigned int handle = (unsigned int)arg;
>
>  		ret = vchiq_get_client_id(handle);
>  	} break;
> @@ -1423,7 +1423,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  	} break;
>
>  	case VCHIQ_IOC_CLOSE_DELIVERED: {
> -		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
> +		unsigned int handle = (unsigned int)arg;
>
>  		service = find_closed_service_for_instance(instance, handle);
>  		if (service) {
> @@ -1611,7 +1611,7 @@ struct vchiq_queue_bulk_transfer32 {
>  	compat_uptr_t data;
>  	unsigned int size;
>  	compat_uptr_t userdata;
> -	VCHIQ_BULK_MODE_T mode;
> +	enum vchiq_bulk_mode mode;
>  };
>
>  #define VCHIQ_IOC_QUEUE_BULK_TRANSMIT32 \
> @@ -1919,7 +1919,7 @@ vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>  static int vchiq_open(struct inode *inode, struct file *file)
>  {
>  	struct vchiq_state *state = vchiq_get_state();
> -	VCHIQ_INSTANCE_T instance;
> +	struct vchiq_instance_struct *instance;
>
>  	vchiq_log_info(vchiq_arm_log_level, "vchiq_open");
>
> @@ -1951,7 +1951,7 @@ static int vchiq_open(struct inode *inode, struct file *file)
>
>  static int vchiq_release(struct inode *inode, struct file *file)
>  {
> -	VCHIQ_INSTANCE_T instance = file->private_data;
> +	struct vchiq_instance_struct *instance = file->private_data;
>  	struct vchiq_state *state = vchiq_get_state();
>  	struct vchiq_service *service;
>  	int ret = 0;
> @@ -2130,7 +2130,7 @@ vchiq_dump_platform_instances(void *dump_context)
>
>  	for (i = 0; i < state->unused_service; i++) {
>  		struct vchiq_service *service = state->services[i];
> -		VCHIQ_INSTANCE_T instance;
> +		struct vchiq_instance_struct *instance;
>
>  		if (service && (service->base.callback == service_callback)) {
>  			instance = service->instance;
> @@ -2141,7 +2141,7 @@ vchiq_dump_platform_instances(void *dump_context)
>
>  	for (i = 0; i < state->unused_service; i++) {
>  		struct vchiq_service *service = state->services[i];
> -		VCHIQ_INSTANCE_T instance;
> +		struct vchiq_instance_struct *instance;
>
>  		if (service && (service->base.callback == service_callback)) {
>  			instance = service->instance;
> @@ -2270,10 +2270,10 @@ vchiq_videocore_wanted(struct vchiq_state *state)
>  		return 1;
>  }
>
> -static VCHIQ_STATUS_T
> +static enum vchiq_status
>  vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
>  	struct vchiq_header *header,
> -	VCHIQ_SERVICE_HANDLE_T service_user,
> +	unsigned int service_user,
>  	void *bulk_user)
>  {
>  	vchiq_log_error(vchiq_susp_log_level,
> @@ -2287,9 +2287,9 @@ vchiq_keepalive_thread_func(void *v)
>  	struct vchiq_state *state = (struct vchiq_state *)v;
>  	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
>
> -	VCHIQ_STATUS_T status;
> -	VCHIQ_INSTANCE_T instance;
> -	VCHIQ_SERVICE_HANDLE_T ka_handle;
> +	enum vchiq_status status;
> +	struct vchiq_instance_struct *instance;
> +	unsigned int ka_handle;
>
>  	struct vchiq_service_params params = {
>  		.fourcc      = VCHIQ_MAKE_FOURCC('K', 'E', 'E', 'P'),
> @@ -2361,7 +2361,7 @@ vchiq_keepalive_thread_func(void *v)
>  	return 0;
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_arm_init_state(struct vchiq_state *state,
>  		     struct vchiq_arm_state *arm_state)
>  {
> @@ -2563,10 +2563,10 @@ unblock_resume(struct vchiq_arm_state *arm_state)
>
>  /* Initiate suspend via slot handler. Should be called with the write lock
>   * held */
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_arm_vcsuspend(struct vchiq_state *state)
>  {
> -	VCHIQ_STATUS_T status = VCHIQ_ERROR;
> +	enum vchiq_status status = VCHIQ_ERROR;
>  	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
>
>  	if (!arm_state)
> @@ -2684,12 +2684,12 @@ vchiq_check_resume(struct vchiq_state *state)
>  	return resume;
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  		   enum USE_TYPE_E use_type)
>  {
>  	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
> -	VCHIQ_STATUS_T ret = VCHIQ_SUCCESS;
> +	enum vchiq_status ret = VCHIQ_SUCCESS;
>  	char entity[16];
>  	int *entity_uc;
>  	int local_uc, local_entity_uc;
> @@ -2798,7 +2798,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  	}
>
>  	if (ret == VCHIQ_SUCCESS) {
> -		VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +		enum vchiq_status status = VCHIQ_SUCCESS;
>  		long ack_cnt = atomic_xchg(&arm_state->ka_use_ack_count, 0);
>
>  		while (ack_cnt && (status == VCHIQ_SUCCESS)) {
> @@ -2817,11 +2817,11 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  	return ret;
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
>  {
>  	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
> -	VCHIQ_STATUS_T ret = VCHIQ_SUCCESS;
> +	enum vchiq_status ret = VCHIQ_SUCCESS;
>  	char entity[16];
>  	int *entity_uc;
>
> @@ -2898,26 +2898,26 @@ vchiq_on_remote_release(struct vchiq_state *state)
>  	complete(&arm_state->ka_evt);
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_use_service_internal(struct vchiq_service *service)
>  {
>  	return vchiq_use_internal(service->state, service, USE_TYPE_SERVICE);
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_release_service_internal(struct vchiq_service *service)
>  {
>  	return vchiq_release_internal(service->state, service);
>  }
>
>  struct vchiq_debugfs_node *
> -vchiq_instance_get_debugfs_node(VCHIQ_INSTANCE_T instance)
> +vchiq_instance_get_debugfs_node(struct vchiq_instance_struct *instance)
>  {
>  	return &instance->debugfs_node;
>  }
>
>  int
> -vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
> +vchiq_instance_get_use_count(struct vchiq_instance_struct *instance)
>  {
>  	struct vchiq_service *service;
>  	int use_count = 0, i;
> @@ -2932,19 +2932,19 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
>  }
>
>  int
> -vchiq_instance_get_pid(VCHIQ_INSTANCE_T instance)
> +vchiq_instance_get_pid(struct vchiq_instance_struct *instance)
>  {
>  	return instance->pid;
>  }
>
>  int
> -vchiq_instance_get_trace(VCHIQ_INSTANCE_T instance)
> +vchiq_instance_get_trace(struct vchiq_instance_struct *instance)
>  {
>  	return instance->trace;
>  }
>
>  void
> -vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
> +vchiq_instance_set_trace(struct vchiq_instance_struct *instance, int trace)
>  {
>  	struct vchiq_service *service;
>  	int i;
> @@ -2969,10 +2969,10 @@ static void suspend_timer_callback(struct timer_list *t)
>  	vchiq_check_suspend(state);
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
> +enum vchiq_status
> +vchiq_use_service(unsigned int handle)
>  {
> -	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
> +	enum vchiq_status ret = VCHIQ_ERROR;
>  	struct vchiq_service *service = find_service_by_handle(handle);
>
>  	if (service) {
> @@ -2983,10 +2983,10 @@ vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
>  	return ret;
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle)
> +enum vchiq_status
> +vchiq_release_service(unsigned int handle)
>  {
> -	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
> +	enum vchiq_status ret = VCHIQ_ERROR;
>  	struct vchiq_service *service = find_service_by_handle(handle);
>
>  	if (service) {
> @@ -3088,11 +3088,11 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
>  	vchiq_dump_platform_use_state(state);
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_check_service(struct vchiq_service *service)
>  {
>  	struct vchiq_arm_state *arm_state;
> -	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
> +	enum vchiq_status ret = VCHIQ_ERROR;
>
>  	if (!service || !service->state)
>  		goto out;
> @@ -3128,8 +3128,8 @@ void vchiq_on_remote_use_active(struct vchiq_state *state)
>  }
>
>  void vchiq_platform_conn_state_changed(struct vchiq_state *state,
> -				       VCHIQ_CONNSTATE_T oldstate,
> -				       VCHIQ_CONNSTATE_T newstate)
> +				       enum vchiq_connstate oldstate,
> +				       enum vchiq_connstate newstate)
>  {
>  	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
> index b424323e9613..4f112b607a96 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
> @@ -109,13 +109,13 @@ int vchiq_platform_init(struct platform_device *pdev,
>  extern struct vchiq_state *
>  vchiq_get_state(void);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_arm_vcsuspend(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_arm_vcresume(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_arm_init_state(struct vchiq_state *state,
>  		     struct vchiq_arm_state *arm_state);
>
> @@ -124,16 +124,16 @@ vchiq_check_resume(struct vchiq_state *state);
>
>  extern void
>  vchiq_check_suspend(struct vchiq_state *state);
> -VCHIQ_STATUS_T
> -vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle);
> +enum vchiq_status
> +vchiq_use_service(unsigned int handle);
>
> -extern VCHIQ_STATUS_T
> -vchiq_release_service(VCHIQ_SERVICE_HANDLE_T handle);
> +extern enum vchiq_status
> +vchiq_release_service(unsigned int handle);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_check_service(struct vchiq_service *service);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_platform_suspend(struct vchiq_state *state);
>
>  extern int
> @@ -154,27 +154,27 @@ vchiq_platform_get_arm_state(struct vchiq_state *state);
>  extern int
>  vchiq_videocore_wanted(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
>  		   enum USE_TYPE_E use_type);
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_release_internal(struct vchiq_state *state,
>  		       struct vchiq_service *service);
>
>  extern struct vchiq_debugfs_node *
> -vchiq_instance_get_debugfs_node(VCHIQ_INSTANCE_T instance);
> +vchiq_instance_get_debugfs_node(struct vchiq_instance_struct *instance);
>
>  extern int
> -vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance);
> +vchiq_instance_get_use_count(struct vchiq_instance_struct *instance);
>
>  extern int
> -vchiq_instance_get_pid(VCHIQ_INSTANCE_T instance);
> +vchiq_instance_get_pid(struct vchiq_instance_struct *instance);
>
>  extern int
> -vchiq_instance_get_trace(VCHIQ_INSTANCE_T instance);
> +vchiq_instance_get_trace(struct vchiq_instance_struct *instance);
>
>  extern void
> -vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace);
> +vchiq_instance_set_trace(struct vchiq_instance_struct *instance, int trace);
>
>  extern void
>  set_suspend_state(struct vchiq_arm_state *arm_state,
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index e1898cfa5e91..076b59d096f7 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -132,7 +132,7 @@ vchiq_set_service_state(struct vchiq_service *service, int newstate)
>  }
>
>  struct vchiq_service *
> -find_service_by_handle(VCHIQ_SERVICE_HANDLE_T handle)
> +find_service_by_handle(unsigned int handle)
>  {
>  	struct vchiq_service *service;
>
> @@ -177,8 +177,8 @@ find_service_by_port(struct vchiq_state *state, int localport)
>  }
>
>  struct vchiq_service *
> -find_service_for_instance(VCHIQ_INSTANCE_T instance,
> -	VCHIQ_SERVICE_HANDLE_T handle)
> +find_service_for_instance(struct vchiq_instance_struct *instance,
> +	unsigned int handle)
>  {
>  	struct vchiq_service *service;
>
> @@ -201,8 +201,8 @@ find_service_for_instance(VCHIQ_INSTANCE_T instance,
>  }
>
>  struct vchiq_service *
> -find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
> -	VCHIQ_SERVICE_HANDLE_T handle)
> +find_closed_service_for_instance(struct vchiq_instance_struct *instance,
> +	unsigned int handle)
>  {
>  	struct vchiq_service *service;
>
> @@ -227,7 +227,7 @@ find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
>  }
>
>  struct vchiq_service *
> -next_service_by_instance(struct vchiq_state *state, VCHIQ_INSTANCE_T instance,
> +next_service_by_instance(struct vchiq_state *state, struct vchiq_instance_struct *instance,
>  			 int *pidx)
>  {
>  	struct vchiq_service *service = NULL;
> @@ -295,7 +295,7 @@ unlock_service(struct vchiq_service *service)
>  }
>
>  int
> -vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T handle)
> +vchiq_get_client_id(unsigned int handle)
>  {
>  	struct vchiq_service *service = find_service_by_handle(handle);
>  	int id;
> @@ -308,7 +308,7 @@ vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T handle)
>  }
>
>  void *
> -vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T handle)
> +vchiq_get_service_userdata(unsigned int handle)
>  {
>  	struct vchiq_service *service = handle_to_service(handle);
>
> @@ -316,7 +316,7 @@ vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T handle)
>  }
>
>  int
> -vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T handle)
> +vchiq_get_service_fourcc(unsigned int handle)
>  {
>  	struct vchiq_service *service = handle_to_service(handle);
>
> @@ -354,11 +354,11 @@ mark_service_closing(struct vchiq_service *service)
>  	mark_service_closing_internal(service, 0);
>  }
>
> -static inline VCHIQ_STATUS_T
> +static inline enum vchiq_status
>  make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
>  		      struct vchiq_header *header, void *bulk_userdata)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>
>  	vchiq_log_trace(vchiq_core_log_level, "%d: callback:%d (%s, %pK, %pK)",
>  		service->state->id, service->localport, reason_names[reason],
> @@ -375,9 +375,9 @@ make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
>  }
>
>  inline void
> -vchiq_set_conn_state(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate)
> +vchiq_set_conn_state(struct vchiq_state *state, enum vchiq_connstate newstate)
>  {
> -	VCHIQ_CONNSTATE_T oldstate = state->conn_state;
> +	enum vchiq_connstate oldstate = state->conn_state;
>
>  	vchiq_log_info(vchiq_core_log_level, "%d: %s->%s", state->id,
>  		conn_state_names[oldstate],
> @@ -779,7 +779,7 @@ copy_message_data(
>  }
>
>  /* Called by the slot handler and application threads */
> -static VCHIQ_STATUS_T
> +static enum vchiq_status
>  queue_message(struct vchiq_state *state, struct vchiq_service *service,
>  	      int msgid,
>  	      ssize_t (*copy_callback)(void *context, void *dest,
> @@ -1027,7 +1027,7 @@ queue_message(struct vchiq_state *state, struct vchiq_service *service,
>  }
>
>  /* Called by the slot handler and application threads */
> -static VCHIQ_STATUS_T
> +static enum vchiq_status
>  queue_message_sync(struct vchiq_state *state, struct vchiq_service *service,
>  		   int msgid,
>  		   ssize_t (*copy_callback)(void *context, void *dest,
> @@ -1178,11 +1178,11 @@ release_slot(struct vchiq_state *state, struct vchiq_slot_info *slot_info,
>  }
>
>  /* Called by the slot handler - don't hold the bulk mutex */
> -static VCHIQ_STATUS_T
> +static enum vchiq_status
>  notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
>  	     int retry_poll)
>  {
> -	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +	enum vchiq_status status = VCHIQ_SUCCESS;
>
>  	vchiq_log_trace(vchiq_core_log_level,
>  		"%d: nb:%d %cx - p=%x rn=%x r=%x",
> @@ -2078,7 +2078,7 @@ init_bulk_queue(struct vchiq_bulk_queue *queue)
>  }
>
>  inline const char *
> -get_conn_state_name(VCHIQ_CONNSTATE_T conn_state)
> +get_conn_state_name(enum vchiq_connstate conn_state)
>  {
>  	return conn_state_names[conn_state];
>  }
> @@ -2123,12 +2123,12 @@ vchiq_init_slots(void *mem_base, int mem_size)
>  	return slot_zero;
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
>  {
>  	struct vchiq_shared_state *local;
>  	struct vchiq_shared_state *remote;
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>  	char threadname[16];
>  	int i;
>
> @@ -2280,8 +2280,8 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero)
>  struct vchiq_service *
>  vchiq_add_service_internal(struct vchiq_state *state,
>  			   const struct vchiq_service_params *params,
> -			   int srvstate, VCHIQ_INSTANCE_T instance,
> -			   VCHIQ_USERDATA_TERM_T userdata_term)
> +			   int srvstate, struct vchiq_instance_struct *instance,
> +			   void (*userdata_term)(void *userdata))
>  {
>  	struct vchiq_service *service;
>  	struct vchiq_service **pservice = NULL;
> @@ -2409,7 +2409,7 @@ vchiq_add_service_internal(struct vchiq_state *state,
>  	return service;
>  }
>
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_open_service_internal(struct vchiq_service *service, int client_id)
>  {
>  	struct vchiq_open_payload payload = {
> @@ -2418,7 +2418,7 @@ vchiq_open_service_internal(struct vchiq_service *service, int client_id)
>  		service->version,
>  		service->version_min
>  	};
> -	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +	enum vchiq_status status = VCHIQ_SUCCESS;
>
>  	service->client_id = client_id;
>  	vchiq_use_service_internal(service);
> @@ -2516,7 +2516,7 @@ release_service_messages(struct vchiq_service *service)
>  static int
>  do_abort_bulks(struct vchiq_service *service)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>
>  	/* Abort any outstanding bulk transfers */
>  	if (mutex_lock_killable(&service->bulk_mutex))
> @@ -2532,10 +2532,10 @@ do_abort_bulks(struct vchiq_service *service)
>  	return (status == VCHIQ_SUCCESS);
>  }
>
> -static VCHIQ_STATUS_T
> +static enum vchiq_status
>  close_service_complete(struct vchiq_service *service, int failstate)
>  {
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>  	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
>  	int newstate;
>
> @@ -2594,11 +2594,11 @@ close_service_complete(struct vchiq_service *service, int failstate)
>  }
>
>  /* Called by the slot handler */
> -VCHIQ_STATUS_T
> +enum vchiq_status
>  vchiq_close_service_internal(struct vchiq_service *service, int close_recvd)
>  {
>  	struct vchiq_state *state = service->state;
> -	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +	enum vchiq_status status = VCHIQ_SUCCESS;
>  	int is_server = (service->public_fourcc != VCHIQ_FOURCC_INVALID);
>
>  	vchiq_log_info(vchiq_core_log_level, "%d: csi:%d,%d (%s)",
> @@ -2774,8 +2774,8 @@ vchiq_free_service_internal(struct vchiq_service *service)
>  	unlock_service(service);
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
> +enum vchiq_status
> +vchiq_connect_internal(struct vchiq_state *state, struct vchiq_instance_struct *instance)
>  {
>  	struct vchiq_service *service;
>  	int i;
> @@ -2810,8 +2810,8 @@ vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
>  	return VCHIQ_SUCCESS;
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
> +enum vchiq_status
> +vchiq_shutdown_internal(struct vchiq_state *state, struct vchiq_instance_struct *instance)
>  {
>  	struct vchiq_service *service;
>  	int i;
> @@ -2827,12 +2827,12 @@ vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
>  	return VCHIQ_SUCCESS;
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
> +enum vchiq_status
> +vchiq_close_service(unsigned int handle)
>  {
>  	/* Unregister the service */
>  	struct vchiq_service *service = find_service_by_handle(handle);
> -	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +	enum vchiq_status status = VCHIQ_SUCCESS;
>
>  	if (!service)
>  		return VCHIQ_ERROR;
> @@ -2886,12 +2886,12 @@ vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
>  	return status;
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
> +enum vchiq_status
> +vchiq_remove_service(unsigned int handle)
>  {
>  	/* Unregister the service */
>  	struct vchiq_service *service = find_service_by_handle(handle);
> -	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
> +	enum vchiq_status status = VCHIQ_SUCCESS;
>
>  	if (!service)
>  		return VCHIQ_ERROR;
> @@ -2952,10 +2952,10 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
>   * When called in blocking mode, the userdata field points to a bulk_waiter
>   * structure.
>   */
> -VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
> +enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
>  				   void *offset, int size, void *userdata,
> -				   VCHIQ_BULK_MODE_T mode,
> -				   VCHIQ_BULK_DIR_T dir)
> +				   enum vchiq_bulk_mode mode,
> +				   enum vchiq_bulk_dir dir)
>  {
>  	struct vchiq_service *service = find_service_by_handle(handle);
>  	struct vchiq_bulk_queue *queue;
> @@ -2965,7 +2965,7 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
>  	const char dir_char = (dir == VCHIQ_BULK_TRANSMIT) ? 't' : 'r';
>  	const int dir_msgtype = (dir == VCHIQ_BULK_TRANSMIT) ?
>  		VCHIQ_MSG_BULK_TX : VCHIQ_MSG_BULK_RX;
> -	VCHIQ_STATUS_T status = VCHIQ_ERROR;
> +	enum vchiq_status status = VCHIQ_ERROR;
>  	int payload[2];
>
>  	if (!service || service->srvstate != VCHIQ_SRVSTATE_OPEN ||
> @@ -3100,15 +3100,15 @@ VCHIQ_STATUS_T vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle,
>  	return status;
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
> +enum vchiq_status
> +vchiq_queue_message(unsigned int handle,
>  		    ssize_t (*copy_callback)(void *context, void *dest,
>  					     size_t offset, size_t maxsize),
>  		    void *context,
>  		    size_t size)
>  {
>  	struct vchiq_service *service = find_service_by_handle(handle);
> -	VCHIQ_STATUS_T status = VCHIQ_ERROR;
> +	enum vchiq_status status = VCHIQ_ERROR;
>
>  	if (!service ||
>  		(vchiq_check_service(service) != VCHIQ_SUCCESS))
> @@ -3153,7 +3153,7 @@ vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
>  }
>
>  void
> -vchiq_release_message(VCHIQ_SERVICE_HANDLE_T handle,
> +vchiq_release_message(unsigned int handle,
>  		      struct vchiq_header *header)
>  {
>  	struct vchiq_service *service = find_service_by_handle(handle);
> @@ -3192,10 +3192,10 @@ release_message_sync(struct vchiq_state *state, struct vchiq_header *header)
>  	remote_event_signal(&state->remote->sync_release);
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle, short *peer_version)
> +enum vchiq_status
> +vchiq_get_peer_version(unsigned int handle, short *peer_version)
>  {
> -	VCHIQ_STATUS_T status = VCHIQ_ERROR;
> +	enum vchiq_status status = VCHIQ_ERROR;
>  	struct vchiq_service *service = find_service_by_handle(handle);
>
>  	if (!service ||
> @@ -3221,12 +3221,12 @@ void vchiq_get_config(struct vchiq_config *config)
>  	config->version_min            = VCHIQ_VERSION_MIN;
>  }
>
> -VCHIQ_STATUS_T
> -vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T handle,
> -	VCHIQ_SERVICE_OPTION_T option, int value)
> +enum vchiq_status
> +vchiq_set_service_option(unsigned int handle,
> +	enum vchiq_service_option option, int value)
>  {
>  	struct vchiq_service *service = find_service_by_handle(handle);
> -	VCHIQ_STATUS_T status = VCHIQ_ERROR;
> +	enum vchiq_status status = VCHIQ_ERROR;
>
>  	if (service) {
>  		switch (option) {
> @@ -3524,9 +3524,9 @@ vchiq_loud_error_footer(void)
>  		"================");
>  }
>
> -VCHIQ_STATUS_T vchiq_send_remote_use(struct vchiq_state *state)
> +enum vchiq_status vchiq_send_remote_use(struct vchiq_state *state)
>  {
> -	VCHIQ_STATUS_T status = VCHIQ_RETRY;
> +	enum vchiq_status status = VCHIQ_RETRY;
>
>  	if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
>  		status = queue_message(state, NULL,
> @@ -3535,9 +3535,9 @@ VCHIQ_STATUS_T vchiq_send_remote_use(struct vchiq_state *state)
>  	return status;
>  }
>
> -VCHIQ_STATUS_T vchiq_send_remote_use_active(struct vchiq_state *state)
> +enum vchiq_status vchiq_send_remote_use_active(struct vchiq_state *state)
>  {
> -	VCHIQ_STATUS_T status = VCHIQ_RETRY;
> +	enum vchiq_status status = VCHIQ_RETRY;
>
>  	if (state->conn_state != VCHIQ_CONNSTATE_DISCONNECTED)
>  		status = queue_message(state, NULL,
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> index 75104986201b..f5b37592ddaf 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> @@ -169,7 +169,7 @@ enum {
>
>  #endif /* VCHIQ_ENABLE_DEBUG */
>
> -typedef enum {
> +enum vchiq_connstate {
>  	VCHIQ_CONNSTATE_DISCONNECTED,
>  	VCHIQ_CONNSTATE_CONNECTING,
>  	VCHIQ_CONNSTATE_CONNECTED,
> @@ -179,7 +179,7 @@ typedef enum {
>  	VCHIQ_CONNSTATE_RESUMING,
>  	VCHIQ_CONNSTATE_PAUSE_TIMEOUT,
>  	VCHIQ_CONNSTATE_RESUME_TIMEOUT
> -} VCHIQ_CONNSTATE_T;
> +};
>
>  enum {
>  	VCHIQ_SRVSTATE_FREE,
> @@ -202,12 +202,10 @@ enum {
>  	VCHIQ_POLL_COUNT
>  };
>
> -typedef enum {
> +enum vchiq_bulk_dir {
>  	VCHIQ_BULK_TRANSMIT,
>  	VCHIQ_BULK_RECEIVE
> -} VCHIQ_BULK_DIR_T;
> -
> -typedef void (*VCHIQ_USERDATA_TERM_T)(void *userdata);
> +};
>
>  struct vchiq_bulk {
>  	short mode;
> @@ -236,7 +234,7 @@ struct remote_event {
>  	u32 __unused;
>  };
>
> -typedef struct opaque_platform_state_t *VCHIQ_PLATFORM_STATE_T;
> +struct opaque_platform_state;
>
>  struct vchiq_slot {
>  	char data[VCHIQ_SLOT_SIZE];
> @@ -250,10 +248,10 @@ struct vchiq_slot_info {
>
>  struct vchiq_service {
>  	struct vchiq_service_base base;
> -	VCHIQ_SERVICE_HANDLE_T handle;
> +	unsigned int handle;
>  	unsigned int ref_count;
>  	int srvstate;
> -	VCHIQ_USERDATA_TERM_T userdata_term;
> +	void (*userdata_term)(void *userdata);
>  	unsigned int localport;
>  	unsigned int remoteport;
>  	int public_fourcc;
> @@ -268,7 +266,7 @@ struct vchiq_service {
>  	short peer_version;
>
>  	struct vchiq_state *state;
> -	VCHIQ_INSTANCE_T instance;
> +	struct vchiq_instance_struct *instance;
>
>  	int service_use_count;
>
> @@ -367,7 +365,7 @@ struct vchiq_slot_zero {
>  struct vchiq_state {
>  	int id;
>  	int initialised;
> -	VCHIQ_CONNSTATE_T conn_state;
> +	enum vchiq_connstate conn_state;
>  	short version_common;
>
>  	struct vchiq_shared_state *local;
> @@ -382,7 +380,7 @@ struct vchiq_state {
>
>  	/* Mutex protecting services */
>  	struct mutex mutex;
> -	VCHIQ_INSTANCE_T *instance;
> +	struct vchiq_instance_struct **instance;
>
>  	/* Processes incoming messages */
>  	struct task_struct *slot_handler_thread;
> @@ -467,8 +465,8 @@ struct vchiq_state {
>  	struct vchiq_service *services[VCHIQ_MAX_SERVICES];
>  	struct vchiq_service_quota service_quotas[VCHIQ_MAX_SERVICES];
>  	struct vchiq_slot_info slot_info[VCHIQ_MAX_SLOTS];
> -
> -	VCHIQ_PLATFORM_STATE_T platform_state;
> +
> +	struct opaque_platform_state *platform_state;
>  };
>
>  struct bulk_waiter {
> @@ -486,27 +484,27 @@ extern int vchiq_sync_log_level;
>  extern struct vchiq_state *vchiq_states[VCHIQ_MAX_STATES];
>
>  extern const char *
> -get_conn_state_name(VCHIQ_CONNSTATE_T conn_state);
> +get_conn_state_name(enum vchiq_connstate conn_state);
>
>  extern struct vchiq_slot_zero *
>  vchiq_init_slots(void *mem_base, int mem_size);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero);
>
> -extern VCHIQ_STATUS_T
> -vchiq_connect_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
> +extern enum vchiq_status
> +vchiq_connect_internal(struct vchiq_state *state, struct vchiq_instance_struct *instance);
>
>  extern struct vchiq_service *
>  vchiq_add_service_internal(struct vchiq_state *state,
>  			   const struct vchiq_service_params *params,
> -			   int srvstate, VCHIQ_INSTANCE_T instance,
> -			   VCHIQ_USERDATA_TERM_T userdata_term);
> +			   int srvstate, struct vchiq_instance_struct *instance,
> +			   void (*userdata_term)(void *userdata));
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_open_service_internal(struct vchiq_service *service, int client_id);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_close_service_internal(struct vchiq_service *service, int close_recvd);
>
>  extern void
> @@ -515,16 +513,16 @@ vchiq_terminate_service_internal(struct vchiq_service *service);
>  extern void
>  vchiq_free_service_internal(struct vchiq_service *service);
>
> -extern VCHIQ_STATUS_T
> -vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
> +extern enum vchiq_status
> +vchiq_shutdown_internal(struct vchiq_state *state, struct vchiq_instance_struct *instance);
>
>  extern void
>  remote_event_pollall(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> -vchiq_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *offset, int size,
> -		    void *userdata, VCHIQ_BULK_MODE_T mode,
> -		    VCHIQ_BULK_DIR_T dir);
> +extern enum vchiq_status
> +vchiq_bulk_transfer(unsigned int handle, void *offset, int size,
> +		    void *userdata, enum vchiq_bulk_mode mode,
> +		    enum vchiq_bulk_dir dir);
>
>  extern void
>  vchiq_dump_state(void *dump_context, struct vchiq_state *state);
> @@ -543,7 +541,7 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
>  	     int poll_type);
>
>  static inline struct vchiq_service *
> -handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
> +handle_to_service(unsigned int handle)
>  {
>  	struct vchiq_state *state = vchiq_states[(handle / VCHIQ_MAX_SERVICES) &
>  		(VCHIQ_MAX_STATES - 1)];
> @@ -554,21 +552,21 @@ handle_to_service(VCHIQ_SERVICE_HANDLE_T handle)
>  }
>
>  extern struct vchiq_service *
> -find_service_by_handle(VCHIQ_SERVICE_HANDLE_T handle);
> +find_service_by_handle(unsigned int handle);
>
>  extern struct vchiq_service *
>  find_service_by_port(struct vchiq_state *state, int localport);
>
>  extern struct vchiq_service *
> -find_service_for_instance(VCHIQ_INSTANCE_T instance,
> -	VCHIQ_SERVICE_HANDLE_T handle);
> +find_service_for_instance(struct vchiq_instance_struct *instance,
> +	unsigned int handle);
>
>  extern struct vchiq_service *
> -find_closed_service_for_instance(VCHIQ_INSTANCE_T instance,
> -	VCHIQ_SERVICE_HANDLE_T handle);
> +find_closed_service_for_instance(struct vchiq_instance_struct *instance,
> +	unsigned int handle);
>
>  extern struct vchiq_service *
> -next_service_by_instance(struct vchiq_state *state, VCHIQ_INSTANCE_T instance,
> +next_service_by_instance(struct vchiq_state *state, struct vchiq_instance_struct *instance,
>  			 int *pidx);
>
>  extern void
> @@ -580,7 +578,7 @@ unlock_service(struct vchiq_service *service);
>  /* The following functions are called from vchiq_core, and external
>  ** implementations must be provided. */
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset, int size,
>  			int dir);
>
> @@ -596,7 +594,7 @@ vchiq_platform_check_suspend(struct vchiq_state *state);
>  extern void
>  vchiq_platform_paused(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_platform_resume(struct vchiq_state *state);
>
>  extern void
> @@ -615,10 +613,10 @@ extern void
>  vchiq_dump_platform_service_state(void *dump_context,
>  	struct vchiq_service *service);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_use_service_internal(struct vchiq_service *service);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_release_service_internal(struct vchiq_service *service);
>
>  extern void
> @@ -627,31 +625,31 @@ vchiq_on_remote_use(struct vchiq_state *state);
>  extern void
>  vchiq_on_remote_release(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_platform_init_state(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_check_service(struct vchiq_service *service);
>
>  extern void
>  vchiq_on_remote_use_active(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_send_remote_use(struct vchiq_state *state);
>
> -extern VCHIQ_STATUS_T
> +extern enum vchiq_status
>  vchiq_send_remote_use_active(struct vchiq_state *state);
>
>  extern void
>  vchiq_platform_conn_state_changed(struct vchiq_state *state,
> -				  VCHIQ_CONNSTATE_T oldstate,
> -				  VCHIQ_CONNSTATE_T newstate);
> +				  enum vchiq_connstate oldstate,
> +				  enum vchiq_connstate newstate);
>
>  extern void
>  vchiq_platform_handle_timeout(struct vchiq_state *state);
>
>  extern void
> -vchiq_set_conn_state(struct vchiq_state *state, VCHIQ_CONNSTATE_T newstate);
> +vchiq_set_conn_state(struct vchiq_state *state, enum vchiq_connstate newstate);
>
>  extern void
>  vchiq_log_dump_mem(const char *label, uint32_t addr, const void *voidMem,
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
> index f217b78d95a0..0b2cc26a2e62 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
> @@ -117,7 +117,7 @@ static const struct file_operations debugfs_log_fops = {
>
>  static int debugfs_usecount_show(struct seq_file *f, void *offset)
>  {
> -	VCHIQ_INSTANCE_T instance = f->private;
> +	struct vchiq_instance_struct *instance = f->private;
>  	int use_count;
>
>  	use_count = vchiq_instance_get_use_count(instance);
> @@ -129,7 +129,7 @@ DEFINE_SHOW_ATTRIBUTE(debugfs_usecount);
>
>  static int debugfs_trace_show(struct seq_file *f, void *offset)
>  {
> -	VCHIQ_INSTANCE_T instance = f->private;
> +	struct vchiq_instance_struct *instance = f->private;
>  	int trace;
>
>  	trace = vchiq_instance_get_trace(instance);
> @@ -148,7 +148,7 @@ static ssize_t debugfs_trace_write(struct file *file,
>  	size_t count, loff_t *ppos)
>  {
>  	struct seq_file *f = (struct seq_file *)file->private_data;
> -	VCHIQ_INSTANCE_T instance = f->private;
> +	struct vchiq_instance_struct *instance = f->private;
>  	char firstchar;
>
>  	if (copy_from_user(&firstchar, buffer, 1))
> @@ -184,7 +184,7 @@ static const struct file_operations debugfs_trace_fops = {
>  };
>
>  /* add an instance (process) to the debugfs entries */
> -void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance)
> +void vchiq_debugfs_add_instance(struct vchiq_instance_struct *instance)
>  {
>  	char pidstr[16];
>  	struct dentry *top;
> @@ -201,7 +201,7 @@ void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance)
>  	vchiq_instance_get_debugfs_node(instance)->dentry = top;
>  }
>
> -void vchiq_debugfs_remove_instance(VCHIQ_INSTANCE_T instance)
> +void vchiq_debugfs_remove_instance(struct vchiq_instance_struct *instance)
>  {
>  	struct vchiq_debugfs_node *node =
>  				vchiq_instance_get_debugfs_node(instance);
> @@ -242,11 +242,11 @@ void vchiq_debugfs_deinit(void)
>  {
>  }
>
> -void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance)
> +void vchiq_debugfs_add_instance(struct vchiq_instance_struct *instance)
>  {
>  }
>
> -void vchiq_debugfs_remove_instance(VCHIQ_INSTANCE_T instance)
> +void vchiq_debugfs_remove_instance(struct vchiq_instance_struct *instance)
>  {
>  }
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h
> index 9b563d105fdb..ffe2b6f273e8 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.h
> @@ -14,8 +14,8 @@ void vchiq_debugfs_init(void);
>
>  void vchiq_debugfs_deinit(void);
>
> -void vchiq_debugfs_add_instance(VCHIQ_INSTANCE_T instance);
> +void vchiq_debugfs_add_instance(struct vchiq_instance_struct *instance);
>
> -void vchiq_debugfs_remove_instance(VCHIQ_INSTANCE_T instance);
> +void vchiq_debugfs_remove_instance(struct vchiq_instance_struct *instance);
>
>  #endif /* VCHIQ_DEBUGFS_H */
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> index f911612a6a54..b2b05846e263 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> @@ -25,26 +25,26 @@ enum vchiq_reason {
>  	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
>  };
>
> -typedef enum {
> +enum vchiq_status {
>  	VCHIQ_ERROR   = -1,
>  	VCHIQ_SUCCESS = 0,
>  	VCHIQ_RETRY   = 1
> -} VCHIQ_STATUS_T;
> +};
>
> -typedef enum {
> +enum vchiq_bulk_mode {
>  	VCHIQ_BULK_MODE_CALLBACK,
>  	VCHIQ_BULK_MODE_BLOCKING,
>  	VCHIQ_BULK_MODE_NOCALLBACK,
>  	VCHIQ_BULK_MODE_WAITING		/* Reserved for internal use */
> -} VCHIQ_BULK_MODE_T;
> +};
>
> -typedef enum {
> +enum vchiq_service_option {
>  	VCHIQ_SERVICE_OPTION_AUTOCLOSE,
>  	VCHIQ_SERVICE_OPTION_SLOT_QUOTA,
>  	VCHIQ_SERVICE_OPTION_MESSAGE_QUOTA,
>  	VCHIQ_SERVICE_OPTION_SYNCHRONOUS,
>  	VCHIQ_SERVICE_OPTION_TRACE
> -} VCHIQ_SERVICE_OPTION_T;
> +};
>
>  struct vchiq_header {
>  	/* The message identifier - opaque to applications. */
> @@ -61,21 +61,20 @@ struct vchiq_element {
>  	unsigned int size;
>  };
>
> -typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
> -
> -typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
> -					   struct vchiq_header *,
> -					   VCHIQ_SERVICE_HANDLE_T, void *);
>
>  struct vchiq_service_base {
>  	int fourcc;
> -	VCHIQ_CALLBACK_T callback;
> +	enum vchiq_status (*callback)(enum vchiq_reason,
> +				      struct vchiq_header *,
> +                                      unsigned int, void *);
>  	void *userdata;
>  };
>
>  struct vchiq_service_params {
>  	int fourcc;
> -	VCHIQ_CALLBACK_T callback;
> +	enum vchiq_status (*callback)(enum vchiq_reason,
> +                                      struct vchiq_header *,
> +                                      unsigned int, void *);
>  	void *userdata;
>  	short version;       /* Increment for non-trivial changes */
>  	short version_min;   /* Update for incompatible changes */
> @@ -92,57 +91,56 @@ struct vchiq_config {
>  	short version_min;  /* The minimum compatible version of VCHIQ */
>  };
>
> -typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
> -typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
> +struct vchiq_instance_struct;
>
> -extern VCHIQ_STATUS_T vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
> -extern VCHIQ_STATUS_T vchiq_shutdown(VCHIQ_INSTANCE_T instance);
> -extern VCHIQ_STATUS_T vchiq_connect(VCHIQ_INSTANCE_T instance);
> -extern VCHIQ_STATUS_T vchiq_add_service(VCHIQ_INSTANCE_T instance,
> +extern enum vchiq_status vchiq_initialise(struct vchiq_instance_struct **pinstance);
> +extern enum vchiq_status vchiq_shutdown(struct vchiq_instance_struct *instance);
> +extern enum vchiq_status vchiq_connect(struct vchiq_instance_struct *instance);
> +extern enum vchiq_status vchiq_add_service(struct vchiq_instance_struct *instance,
>  	const struct vchiq_service_params *params,
> -	VCHIQ_SERVICE_HANDLE_T *pservice);
> -extern VCHIQ_STATUS_T vchiq_open_service(VCHIQ_INSTANCE_T instance,
> +	unsigned int *pservice);
> +extern enum vchiq_status vchiq_open_service(struct vchiq_instance_struct *instance,
>  	const struct vchiq_service_params *params,
> -	VCHIQ_SERVICE_HANDLE_T *pservice);
> -extern VCHIQ_STATUS_T vchiq_close_service(VCHIQ_SERVICE_HANDLE_T service);
> -extern VCHIQ_STATUS_T vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T service);
> -extern VCHIQ_STATUS_T vchiq_use_service(VCHIQ_SERVICE_HANDLE_T service);
> -extern VCHIQ_STATUS_T vchiq_release_service(VCHIQ_SERVICE_HANDLE_T service);
> -extern VCHIQ_STATUS_T
> -vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
> +	unsigned int *pservice);
> +extern enum vchiq_status vchiq_close_service(unsigned int service);
> +extern enum vchiq_status vchiq_remove_service(unsigned int service);
> +extern enum vchiq_status vchiq_use_service(unsigned int service);
> +extern enum vchiq_status vchiq_release_service(unsigned int service);
> +extern enum vchiq_status
> +vchiq_queue_message(unsigned int handle,
>  		    ssize_t (*copy_callback)(void *context, void *dest,
>  					     size_t offset, size_t maxsize),
>  		    void *context,
>  		    size_t size);
> -extern void           vchiq_release_message(VCHIQ_SERVICE_HANDLE_T service,
> +extern void           vchiq_release_message(unsigned int service,
>  	struct vchiq_header *header);
> -extern VCHIQ_STATUS_T vchiq_bulk_transmit(VCHIQ_SERVICE_HANDLE_T service,
> +extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
>  	const void *data, unsigned int size, void *userdata,
> -	VCHIQ_BULK_MODE_T mode);
> -extern VCHIQ_STATUS_T vchiq_bulk_receive(VCHIQ_SERVICE_HANDLE_T service,
> +	enum vchiq_bulk_mode mode);
> +extern enum vchiq_status vchiq_bulk_receive(unsigned int service,
>  	void *data, unsigned int size, void *userdata,
> -	VCHIQ_BULK_MODE_T mode);
> -extern VCHIQ_STATUS_T vchiq_bulk_transmit_handle(VCHIQ_SERVICE_HANDLE_T service,
> +	enum vchiq_bulk_mode mode);
> +extern enum vchiq_status vchiq_bulk_transmit_handle(unsigned int service,
>  	const void *offset, unsigned int size,
> -	void *userdata,	VCHIQ_BULK_MODE_T mode);
> -extern VCHIQ_STATUS_T vchiq_bulk_receive_handle(VCHIQ_SERVICE_HANDLE_T service,
> +	void *userdata,	enum vchiq_bulk_mode mode);
> +extern enum vchiq_status vchiq_bulk_receive_handle(unsigned int service,
>  	void *offset, unsigned int size, void *userdata,
> -	VCHIQ_BULK_MODE_T mode);
> -extern int   vchiq_get_client_id(VCHIQ_SERVICE_HANDLE_T service);
> -extern void *vchiq_get_service_userdata(VCHIQ_SERVICE_HANDLE_T service);
> -extern int   vchiq_get_service_fourcc(VCHIQ_SERVICE_HANDLE_T service);
> +	enum vchiq_bulk_mode mode);
> +extern int   vchiq_get_client_id(unsigned int service);
> +extern void *vchiq_get_service_userdata(unsigned int service);
> +extern int   vchiq_get_service_fourcc(unsigned int service);
>  extern void vchiq_get_config(struct vchiq_config *config);
> -extern VCHIQ_STATUS_T vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service,
> -	VCHIQ_SERVICE_OPTION_T option, int value);
> +extern enum vchiq_status vchiq_set_service_option(unsigned int service,
> +	enum vchiq_service_option option, int value);
>
> -extern VCHIQ_STATUS_T vchiq_remote_use(VCHIQ_INSTANCE_T instance,
> -	VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
> -extern VCHIQ_STATUS_T vchiq_remote_release(VCHIQ_INSTANCE_T instance);
> +extern enum vchiq_status vchiq_remote_use(struct vchiq_instance_struct *instance,
> +					  void (*callback)(void *cb_arg), void *cb_arg);
> +extern enum vchiq_status vchiq_remote_release(struct vchiq_instance_struct *instance);
>
> -extern VCHIQ_STATUS_T vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
> +extern enum vchiq_status vchiq_dump_phys_mem(unsigned int service,
>  	void *ptr, size_t num_bytes);
>
> -extern VCHIQ_STATUS_T vchiq_get_peer_version(VCHIQ_SERVICE_HANDLE_T handle,
> +extern enum vchiq_status vchiq_get_peer_version(unsigned int handle,
>        short *peer_version);
>
>  #endif /* VCHIQ_IF_H */
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> index c2343a1a3a6a..202889b3774f 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> @@ -28,7 +28,7 @@ struct vchiq_queue_bulk_transfer {
>  	void *data;
>  	unsigned int size;
>  	void *userdata;
> -	VCHIQ_BULK_MODE_T mode;
> +	enum vchiq_bulk_mode mode;
>  };
>
>  struct vchiq_completion_data {
> @@ -60,7 +60,7 @@ struct vchiq_get_config {
>
>  struct vchiq_set_service_option {
>  	unsigned int handle;
> -	VCHIQ_SERVICE_OPTION_T option;
> +	enum vchiq_service_option option;
>  	int value;
>  };
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index a3efbd0b3596..f91c5d7268d9 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -12,7 +12,7 @@
>  #define vchiq_status_to_vchi(status) ((int32_t)status)
>
>  struct shim_service {
> -	VCHIQ_SERVICE_HANDLE_T handle;
> +	unsigned int handle;
>
>  	struct vchiu_queue queue;
>
> @@ -108,7 +108,7 @@ int32_t vchi_msg_queue(struct vchi_service_h *handle,
>  		       void *context, uint32_t data_size)
>  {
>  	struct shim_service *service = (struct shim_service *)handle;
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_status status;
>
>  	while (1) {
>  		status = vchiq_queue_message(service->handle,
> @@ -204,8 +204,8 @@ int32_t vchi_bulk_queue_receive(struct vchi_service_h *handle, void *data_dst,
>  				void *bulk_handle)
>  {
>  	struct shim_service *service = (struct shim_service *)handle;
> -	VCHIQ_BULK_MODE_T mode;
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_bulk_mode mode;
> +	enum vchiq_status status;
>
>  	switch ((int)flags) {
>  	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
> @@ -264,8 +264,8 @@ int32_t vchi_bulk_queue_transmit(struct vchi_service_h *handle,
>  				 void *bulk_handle)
>  {
>  	struct shim_service *service = (struct shim_service *)handle;
> -	VCHIQ_BULK_MODE_T mode;
> -	VCHIQ_STATUS_T status;
> +	enum vchiq_bulk_mode mode;
> +	enum vchiq_status status;
>
>  	switch ((int)flags) {
>  	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
> @@ -361,13 +361,13 @@ int32_t vchi_held_msg_release(struct vchi_held_msg *message)
>  {
>  	/*
>  	 * Convert the service field pointer back to an
> -	 * VCHIQ_SERVICE_HANDLE_T which is an int.
> +	 * unsigned int which is an int.
>  	 * This pointer is opaque to everything except
>  	 * vchi_msg_hold which simply upcasted the int
>  	 * to a pointer.
>  	 */
>
> -	vchiq_release_message((VCHIQ_SERVICE_HANDLE_T)(long)message->service,
> +	vchiq_release_message((unsigned int)(long)message->service,
>  			      (struct vchiq_header *)message->message);
>
>  	return 0;
> @@ -411,7 +411,7 @@ int32_t vchi_msg_hold(struct vchi_service_h *handle, void **data,
>  	*msg_size = header->size;
>
>  	/*
> -	 * upcast the VCHIQ_SERVICE_HANDLE_T which is an int
> +	 * upcast the unsigned int which is an int
>  	 * to a pointer and stuff it in the held message.
>  	 * This pointer is opaque to everything except
>  	 * vchi_held_msg_release which simply downcasts it back
> @@ -441,8 +441,8 @@ EXPORT_SYMBOL(vchi_msg_hold);
>
>  int32_t vchi_initialise(struct vchi_instance_h **instance_handle)
>  {
> -	VCHIQ_INSTANCE_T instance;
> -	VCHIQ_STATUS_T status;
> +	struct vchiq_instance_struct *instance;
> +	enum vchiq_status status;
>
>  	status = vchiq_initialise(&instance);
>
> @@ -465,7 +465,7 @@ EXPORT_SYMBOL(vchi_initialise);
>   ***********************************************************/
>  int32_t vchi_connect(struct vchi_instance_h *instance_handle)
>  {
> -	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> +	struct vchiq_instance_struct *instance = (struct vchiq_instance_struct *)instance_handle;
>
>  	return vchiq_connect(instance);
>  }
> @@ -484,7 +484,7 @@ EXPORT_SYMBOL(vchi_connect);
>   ***********************************************************/
>  int32_t vchi_disconnect(struct vchi_instance_h *instance_handle)
>  {
> -	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> +	struct vchiq_instance_struct *instance = (struct vchiq_instance_struct *)instance_handle;
>
>  	return vchiq_status_to_vchi(vchiq_shutdown(instance));
>  }
> @@ -504,9 +504,9 @@ EXPORT_SYMBOL(vchi_disconnect);
>   *
>   ***********************************************************/
>
> -static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
> +static enum vchiq_status shim_callback(enum vchiq_reason reason,
>  				    struct vchiq_header *header,
> -				    VCHIQ_SERVICE_HANDLE_T handle,
> +				    unsigned int handle,
>  				    void *bulk_user)
>  {
>  	struct shim_service *service =
> @@ -566,7 +566,7 @@ static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
>  	return VCHIQ_SUCCESS;
>  }
>
> -static struct shim_service *service_alloc(VCHIQ_INSTANCE_T instance,
> +static struct shim_service *service_alloc(struct vchiq_instance_struct *instance,
>  	struct service_creation *setup)
>  {
>  	struct shim_service *service = kzalloc(sizeof(struct shim_service), GFP_KERNEL);
> @@ -598,14 +598,14 @@ int32_t vchi_service_open(struct vchi_instance_h *instance_handle,
>  			  struct service_creation *setup,
>  			  struct vchi_service_h **handle)
>  {
> -	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> +	struct vchiq_instance_struct *instance = (struct vchiq_instance_struct *)instance_handle;
>  	struct shim_service *service = service_alloc(instance, setup);
>
>  	*handle = (struct vchi_service_h *)service;
>
>  	if (service) {
>  		struct vchiq_service_params params;
> -		VCHIQ_STATUS_T status;
> +		enum vchiq_status status;
>
>  		memset(&params, 0, sizeof(params));
>  		params.fourcc = setup->service_id;
> @@ -633,7 +633,7 @@ int32_t vchi_service_close(const struct vchi_service_h *handle)
>  	struct shim_service *service = (struct shim_service *)handle;
>
>  	if (service) {
> -		VCHIQ_STATUS_T status = vchiq_close_service(service->handle);
> +		enum vchiq_status status = vchiq_close_service(service->handle);
>  		if (status == VCHIQ_SUCCESS)
>  			service_free(service);
>
> @@ -649,7 +649,7 @@ int32_t vchi_service_destroy(const struct vchi_service_h *handle)
>  	struct shim_service *service = (struct shim_service *)handle;
>
>  	if (service) {
> -		VCHIQ_STATUS_T status = vchiq_remove_service(service->handle);
> +		enum vchiq_status status = vchiq_remove_service(service->handle);
>
>  		if (status == VCHIQ_SUCCESS) {
>  			service_free(service);
> @@ -668,7 +668,7 @@ int32_t vchi_service_set_option(const struct vchi_service_h *handle,
>  {
>  	int32_t ret = -1;
>  	struct shim_service *service = (struct shim_service *)handle;
> -	VCHIQ_SERVICE_OPTION_T vchiq_option;
> +	enum vchiq_service_option vchiq_option;
>
>  	switch (option) {
>  	case VCHI_SERVICE_OPTION_TRACE:
> @@ -682,7 +682,7 @@ int32_t vchi_service_set_option(const struct vchi_service_h *handle,
>  		break;
>  	}
>  	if (service) {
> -		VCHIQ_STATUS_T status =
> +		enum vchiq_status status =
>  			vchiq_set_service_option(service->handle,
>  						 vchiq_option,
>  						 value);
> @@ -700,7 +700,7 @@ int32_t vchi_get_peer_version(const struct vchi_service_h *handle,
>  	struct shim_service *service = (struct shim_service *)handle;
>
>  	if (service) {
> -		VCHIQ_STATUS_T status;
> +		enum vchiq_status status;
>
>  		status = vchiq_get_peer_version(service->handle, peer_version);
>  		ret = vchiq_status_to_vchi(status);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/6f517792d69d3af032b10cc71310cd95c819e26c.1572513863.git.jamal.k.shareef%40gmail.com.
>


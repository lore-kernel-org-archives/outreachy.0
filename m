X-GM-THRID: 6753896393761357824
X-Received: by 2002:a63:6f41:: with SMTP id k62mr24310544pgc.452.1572783177086;
        Sun, 03 Nov 2019 04:12:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2a06:: with SMTP id q6ls2795544pfq.14.gmail; Sun, 03 Nov
 2019 04:12:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqxPFw4qkBLGLJD6i9gp1uEJcGdcW61Qu/E9Fcc5NG4qveoLCaakq4YAsL3f6BED2HYRWE9b
X-Received: by 2002:a63:be4d:: with SMTP id g13mr24993792pgo.257.1572783176244;
        Sun, 03 Nov 2019 04:12:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572783176; cv=none;
        d=google.com; s=arc-20160816;
        b=vRvU6Q5hW2GuHu0BWmNqBUudJ2pUVPUhpMzF2nAnZxf6XHeSiYx2sCEGkefBo6O2Xw
         +oiXKgENfUOVnAcd5JKEL1dVhBYsvvOlUV1e/xDf1dL5FPDaNDHykuskSID/vd9cAKvQ
         sYFhXJyODy4Zi7D0XC/WLQw5iSCD0mH15kUSi+++CxZmHHQGbHodf/XS+7nCOnHin7QG
         PjoRimznCPoIFB7pfS7jdRvTDg+hDefzj1iEPaasQvcrjy/TM0hzT6N0p/1faoMDl02j
         4uGXFUMITsfyvnOJZH2dtb7ooLGlGvJ8NNo0I0ro1mBUcUms058t17NolMCCg+/YjTZ+
         NPFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=wpRQWDKQVjlgfv6ufMSkbz1mJOEVqbzNNONH7u9sUmY=;
        b=FiHO566MSSbiOt35eYLtpeNQradC8pFx/yzj0VyHdG1er1bEWVLSYK7+VPyG4KQ4yI
         KzUk1kbSeASzY+1XqJBiaA5X+94FQXbHwxv0+AmpjB5aT77yiOVntxtbluXinZJLtlvT
         KZF4/OKw2dYmSpkLvL6N2z2WxvzoXuFzBStIZyg1IIfv4r9IKapSeHVSRV3KRNab+ShH
         pVA/lq/wbg3r8XoQ5N51frDEQLHbIywXlqWotDIJH21mGaPOZFZwxMh9Oq4XP3nQ0EJQ
         h8/K9gho6WGajfhblxsBl7+9TLH7CP64Z8hWTtbafoHt6TwXzioFaMvt0q2ERcw03FVh
         popg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZOwuFevF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c101si595667pje.1.2019.11.03.04.12.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 04:12:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ZOwuFevF;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7624A20656;
	Sun,  3 Nov 2019 12:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572783176;
	bh=GXW7eoTOPRe8Q+iR0O4fZlVt9k2S9oUiJoxc94mS2sI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZOwuFevF+327LxuuZHML8caqWtAmLIgxI6L7D4c5JrzNpYZ/xb0wf3HHhpKWJLoju
	 wexImyJMeTBvPKZES0Zku3uoh3sIyFucG0QEDz60vZXm4RuVYa+CkxNWGUc2VW0YNJ
	 9/MUpXO1YFujNVjKWwmicyHbMFthDMjGcCiFZUWk=
Date: Sun, 3 Nov 2019 13:12:53 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jamal Shareef <jamal.k.shareef@gmail.com>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net
Subject: Re: [PATCH v5 01/10] staging: vc04_services: Remove instance struct
 typedef
Message-ID: <20191103121253.GA602586@kroah.com>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
 <8774abbd755f78cde4fff36ca75ea0e3a5519cd0.1572755439.git.jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8774abbd755f78cde4fff36ca75ea0e3a5519cd0.1572755439.git.jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Nov 02, 2019 at 09:36:58PM -0700, Jamal Shareef wrote:
> Removes opaque vchi instance struct typedefs. Issue found by
> checkpatch.

What do you mean here by "opaque"?

> 
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
>  .../vc04_services/bcm2835-audio/bcm2835.h     |  2 +-
>  .../vc04_services/bcm2835-camera/mmal-vchiq.c |  2 +-
>  .../vc04_services/interface/vchi/vchi.h       | 12 +++---
>  .../interface/vchi/vchi_common.h              |  2 +-
>  .../interface/vchiq_arm/vchiq_shim.c          | 43 +++++++++----------
>  6 files changed, 31 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index 84ece768854f..2022ff2388dc 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -122,7 +122,7 @@ static void audio_vchi_callback(void *param,
>  }
>  
>  static int
> -vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
> +vc_vchi_audio_init(struct vchi_instance_handle *vchi_instance,
>  		   struct bcm2835_audio_instance *instance)
>  {
>  	struct service_creation params = {
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> index ed0feb34b6c8..d2fe8d36ab7d 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> @@ -44,7 +44,7 @@ enum snd_bcm2835_ctrl {
>  };
>  
>  struct bcm2835_vchi_ctx {
> -	VCHI_INSTANCE_T vchi_instance;
> +	struct vchi_instance_handle *vchi_instance;
>  };
>  
>  /* definition of the chip-specific record */
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 06b7be7d8872..0f4db2f24944 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -1814,7 +1814,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  {
>  	int status;
>  	struct vchiq_mmal_instance *instance;
> -	static VCHI_INSTANCE_T vchi_instance;
> +	static struct vchi_instance_handle *vchi_instance;
>  	struct service_creation params = {
>  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
>  		.service_id		= VC_MMAL_SERVER_NAME,
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> index 75b1ab4919e3..5c8842114607 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> @@ -50,7 +50,7 @@ struct service_creation {
>  };
>  
>  // Opaque handle for a VCHI instance
> -typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
> +struct vchi_instance_handle;
>  
>  // Opaque handle for a server or client
>  typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
> @@ -65,20 +65,20 @@ extern "C" {
>  #endif
>  
>  // Routine used to initialise the vchi on both local + remote connections
> -extern int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle);
> +extern int32_t vchi_initialise(struct vchi_instance_handle **instance_handle);
>  
>  extern int32_t vchi_exit(void);
>  
> -extern int32_t vchi_connect(VCHI_INSTANCE_T instance_handle);
> +extern int32_t vchi_connect(struct vchi_instance_handle *instance_handle);
>  
>  //When this is called, ensure that all services have no data pending.
>  //Bulk transfers can remain 'queued'
> -extern int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle);
> +extern int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle);
>  
>  // helper functions
>  extern void *vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *length);
>  extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
> -extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
> +extern uint32_t vchi_current_time(struct vchi_instance_handle *instance_handle);
>  
>  /******************************************************************************
>   * Global service API
> @@ -87,7 +87,7 @@ extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
>  extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
>  
>  // Routine to open a named service
> -extern int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
> +extern int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
>  				 struct service_creation *setup,
>  				 VCHI_SERVICE_HANDLE_T *handle);
>  
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> index c99735fc0308..fba37559aa83 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> @@ -86,7 +86,7 @@ enum vchi_service_option {
>  };
>  
>  //Callback used by all services / bulk transfers
> -typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
> + typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param

Why the extra space?

>  				enum vchi_callback_reason reason,
>  				void *handle); //for transmitting msg's only
>  
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 704afd470c88..a2434a68fc2f 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -23,7 +23,7 @@ struct shim_service {
>  /***********************************************************
>   * Name: vchi_msg_peek
>   *
> - * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
> + * Arguments:  VCHI_SERVICE_HANDLE_T handle,

Did you change the const?

>   *             void **data,
>   *             uint32_t *msg_size,
>  
> @@ -63,7 +63,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
>  /***********************************************************
>   * Name: vchi_msg_remove
>   *
> - * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
> + * Arguments:  VCHI_SERVICE_HANDLE_T handle,

Huh?  What does this change mean?


>   *
>   * Description: Routine to remove a message (after it has been read with
>   *              vchi_msg_peek)
> @@ -100,10 +100,9 @@ EXPORT_SYMBOL(vchi_msg_remove);
>   ***********************************************************/
>  static
>  int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
> -	ssize_t (*copy_callback)(void *context, void *dest,
> -				 size_t offset, size_t maxsize),
> -	void *context,
> -	uint32_t data_size)
> +		       ssize_t (*copy_callback)(void *context, void *dest,
> +						size_t offset, size_t maxsize),
> +		       void *context, uint32_t data_size)
>  {
>  	struct shim_service *service = (struct shim_service *)handle;
>  	VCHIQ_STATUS_T status;
> @@ -169,8 +168,7 @@ vchi_queue_user_message_callback(void *context,
>  }
>  
>  int
> -vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
> -			void __user *data,
> +vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle, void __user *data,
>  			unsigned int size)
>  {
>  	struct vchi_queue_user_message_context copycontext = {
> @@ -187,7 +185,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
>  /***********************************************************
>   * Name: vchi_bulk_queue_receive
>   *
> - * Arguments:  VCHI_BULK_HANDLE_T handle,
> + * Arguments:  VCHI_SERVICE_HANDLE_T handle,

Huh???

>   *             void *data_dst,
>   *             const uint32_t data_size,
>   *             enum vchi_flags flags
> @@ -245,7 +243,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
>  /***********************************************************
>   * Name: vchi_bulk_queue_transmit
>   *
> - * Arguments:  VCHI_BULK_HANDLE_T handle,
> + * Arguments:  VCHI_SERVICE_HANDLE_T handle,

Did you change this???

This series is "rough".  Please take a day off, step back and try doing
all of this "from scratch", doing only one thing per patch.

thanks,

greg k-h


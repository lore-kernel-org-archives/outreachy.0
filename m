X-GM-THRID: 6464182084663508992
X-Received: by 10.176.93.200 with SMTP id l8mr4838615uag.119.1505060098398;
        Sun, 10 Sep 2017 09:14:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.92.200 with SMTP id q191ls4357052itb.4.gmail; Sun, 10 Sep
 2017 09:14:57 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAYG8tdnNomypaPs8WdZwYZDfPxMrGJ11Sr+ew4twfdcE7cS13gdZmFbXLvGAYv61mTdkzm
X-Received: by 10.31.147.210 with SMTP id v201mr5411050vkd.46.1505060097611;
        Sun, 10 Sep 2017 09:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505060097; cv=none;
        d=google.com; s=arc-20160816;
        b=oBu9q2WLL8VUuYsEKzw++6u+ACzA+q3TsSh2O/NDee0xb3c9LOnyN10XNaSGfefsje
         2Bew6NizVaiWEHKu3UEaCM97tPLqwy/KIIiL+FbK3EpoCkeO0/YyucSAISnX+Wg/jEwh
         rgePnB5u/CSQux+WA5Puo8yqozvTy8bpAY5MJVKMemaBszr+4mf6m0zdqBXAkQwc8Jbh
         5h8toZvXCNJxtCZHzDxiRPFOHZn9IPVfw2JvNLWWx8HyCZ/GkahbO2/FTLjEWTkTkMq/
         GbRDwD8vTJb5fJALZwzSJrTTvDPyj4zE8zsyW5Bvzob5ERh8z/SUI9TSPq2Jpqh2DWrM
         jBZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=9CXmPVt6BaHYdkiyif5vekBRQRhGMiJRSlyjCYRxeh4=;
        b=Ks6rvY+jt9isqI6lddkm3LWYrTs1+KA1Xjx1K5UaWl4g/l8X2viaFsNrXWl3z4pBlc
         88cNaYpegnxZyJFSN8WBNSqHB/jUr18sGeG0f7GKJPftnrHMUfjlCIq3T4sGKty1PS12
         QPjvjNiy+6TR/3iBjf5C5zJG2yFbx8eh3hzGTI6UybyD6pk7ILcQP+p5XfBuO9EZRqDh
         J793YrDN7LfY4v1Q6eng0FVL1nYP0ZtSDE2o1ozqZ3zUSOtkCVKBVC8zPgrd2wtEaf1y
         dhXkDmU1ZwgGXq4eaHj8/J60NCFPvA+ZGTlI5MfVOMxVBDJPj4ilib2bm4oKkcwuY9uY
         jBVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d140si187083itd.6.2017.09.10.09.14.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 09:14:57 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,372,1500933600"; 
   d="scan'208";a="290370856"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 18:14:55 +0200
Date: Sun, 10 Sep 2017 18:14:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, 
    Scott Branden <sbranden@broadcom.com>, 
    bcm-kernel-feedback-list@broadcom.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vc04_services: Remove
 typedef
In-Reply-To: <20170910160750.GA9376@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709101811350.4580@hadrien>
References: <20170910160750.GA9376@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Meghana Madhyastha wrote:

> This patch removes typedef vchi_connection_t VCHI_CONNECTION_T. This results in cleaner syntax.

I don't remember seeing a v1 of this.  Perhaps I missed it.

The commit mesage should have well under 80 characters per line, because
it will be slightly indented when the patch is commited to git.

The changes are all incorrect.  It seems that you have not compiled the
code.  If you make a change in a .c file, you should be sure that a
corresponding .o file is generated.  If the change is in a .h file you
need to find a .c file that includes it and check that that is actually
compiled.

If you eliminate a typedef, you should also eliminate the _t on the type
name, as that is used to indicate a typedef.

julia

>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c    |  4 ++--
>  drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c      |  2 +-
>  .../vc04_services/interface/vchi/connections/connection.h      |  2 --
>  drivers/staging/vc04_services/interface/vchi/vchi.h            | 10 +++++-----
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c |  6 +++---
>  5 files changed, 11 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index 5f3d8f2..075499a 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -262,7 +262,7 @@ static void audio_vchi_callback(void *param,
>
>  static struct bcm2835_audio_instance *
>  vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
> -		   VCHI_CONNECTION_T **vchi_connections,
> +		   vchi_connection_t **vchi_connections,
>  		   unsigned int num_connections)
>  {
>  	unsigned int i;
> @@ -376,7 +376,7 @@ static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
>  static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream)
>  {
>  	static VCHI_INSTANCE_T vchi_instance;
> -	static VCHI_CONNECTION_T *vchi_connection;
> +	static vchi_connection_t *vchi_connection;
>  	static int initted;
>  	struct bcm2835_audio_instance *instance =
>  		(struct bcm2835_audio_instance *)alsa_stream->instance;
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> index 7a7b00e..e707569 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> @@ -1980,7 +1980,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
>  {
>  	int status;
>  	struct vchiq_mmal_instance *instance;
> -	static VCHI_CONNECTION_T *vchi_connection;
> +	static vchi_connection_t *vchi_connection;
>  	static VCHI_INSTANCE_T vchi_instance;
>
>  	SERVICE_CREATION_T params = {
> diff --git a/drivers/staging/vc04_services/interface/vchi/connections/connection.h b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> index e793cdf..9891e05 100644
> --- a/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> +++ b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> @@ -52,8 +52,6 @@ typedef struct opaque_vchi_connection_connected_service_handle_t *VCHI_CONNECTIO
>  // opaque handle to the connection state information
>  typedef struct opaque_vchi_connection_info_t VCHI_CONNECTION_STATE_T;
>
> -typedef struct vchi_connection_t VCHI_CONNECTION_T;
> -
>
>  /******************************************************************************
>   API
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> index addb7b0..bd4e64f 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> @@ -120,7 +120,7 @@ typedef struct {
>  typedef struct {
>  	struct vchi_version version;
>  	int32_t service_id;
> -	VCHI_CONNECTION_T *connection;
> +	vchi_connection_t *connection;
>  	uint32_t rx_fifo_size;
>  	uint32_t tx_fifo_size;
>  	VCHI_CALLBACK_T callback;
> @@ -143,7 +143,7 @@ typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
>  typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
>
>  // Service registration & startup
> -typedef void (*VCHI_SERVICE_INIT)(VCHI_INSTANCE_T initialise_instance, VCHI_CONNECTION_T **connections, uint32_t num_connections);
> +typedef void (*VCHI_SERVICE_INIT)(VCHI_INSTANCE_T initialise_instance, vchi_connection_t **connections, uint32_t num_connections);
>
>  typedef struct service_info_tag {
>     const char * const vll_filename; /* VLL to load to start this service. This is an empty string if VLL is "static" */
> @@ -159,7 +159,7 @@ typedef struct service_info_tag {
>  extern "C" {
>  #endif
>
> -extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const VCHI_CONNECTION_API_T * function_table,
> +extern /*@observer@*/ vchi_connection_t * vchi_create_connection( const VCHI_CONNECTION_API_T * function_table,
>                                                     const VCHI_MESSAGE_DRIVER_T * low_level);
>
>
> @@ -168,7 +168,7 @@ extern int32_t vchi_initialise( VCHI_INSTANCE_T *instance_handle );
>
>  extern int32_t vchi_exit( void );
>
> -extern int32_t vchi_connect( VCHI_CONNECTION_T **connections,
> +extern int32_t vchi_connect( vchi_connection_t **connections,
>                               const uint32_t num_connections,
>                               VCHI_INSTANCE_T instance_handle );
>
> @@ -177,7 +177,7 @@ extern int32_t vchi_connect( VCHI_CONNECTION_T **connections,
>  extern int32_t vchi_disconnect( VCHI_INSTANCE_T instance_handle );
>
>  // Global control over bulk CRC checking
> -extern int32_t vchi_crc_control( VCHI_CONNECTION_T *connection,
> +extern int32_t vchi_crc_control( vchi_connection_t *connection,
>                                   VCHI_CRC_CONTROL_T control );
>
>  // helper functions
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 8af95fc..4f4cba6 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -68,7 +68,7 @@ single_get_func_table(void)
>  	return NULL;
>  }
>
> -VCHI_CONNECTION_T *vchi_create_connection(
> +vchi_connection_t *vchi_create_connection(
>  	const VCHI_CONNECTION_API_T *function_table,
>  	const VCHI_MESSAGE_DRIVER_T *low_level)
>  {
> @@ -518,7 +518,7 @@ EXPORT_SYMBOL(vchi_initialise);
>  /***********************************************************
>   * Name: vchi_connect
>   *
> - * Arguments: VCHI_CONNECTION_T **connections
> + * Arguments: vchi_connection_t **connections
>   *            const uint32_t num_connections
>   *            VCHI_INSTANCE_T instance_handle)
>   *
> @@ -528,7 +528,7 @@ EXPORT_SYMBOL(vchi_initialise);
>   * Returns: 0 if successful, failure otherwise
>   *
>   ***********************************************************/
> -int32_t vchi_connect(VCHI_CONNECTION_T **connections,
> +int32_t vchi_connect(vchi_connection_t **connections,
>  	const uint32_t num_connections,
>  	VCHI_INSTANCE_T instance_handle)
>  {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170910160750.GA9376%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>


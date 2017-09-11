X-GM-THRID: 6464629174501900288
X-Received: by 10.25.22.24 with SMTP id m24mr938296lfi.36.1505164313429;
        Mon, 11 Sep 2017 14:11:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.149 with SMTP id n21ls914875wmi.27.gmail; Mon, 11 Sep
 2017 14:11:52 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAc+7x66L+RPZBeKIWVnZ25n/7JJVYSBjkqPKq/fG47G9RDVA14V94/vLDJ0EwO8DimiTxo
X-Received: by 10.28.216.10 with SMTP id p10mr6621wmg.0.1505164312394;
        Mon, 11 Sep 2017 14:11:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505164312; cv=none;
        d=google.com; s=arc-20160816;
        b=X+rSO004Bn+1QYZwk8lEsLt2Q+hqILcWHLb1mh+kHQ/rVkmtHOBe0XWPLBG/wzzuEH
         Zynk+vXbO+xyn+46NdHcXls4TBYe3DE6DhSmzE/U+giHYNHi/LMXpV4SkE/GkbQRjO06
         yV4/QeHQcE/sLseOwddv57kHY9uhUJsaPV5qokfh835X2gkNje5Zqai0PmzQ0MWFggQR
         JnF5rKuGH3o84ACV39Dr0+/LplxIpAoI6QqJ3ub9leFFrG5f3G4L8xzSlywJg+RCCteD
         VGIedCNQe7dyWjiVC4R3ARu6Y9jnQcvM+qzWHi1tKYnnZAoRKMAecCwJV64rK9Yr2RkG
         +3wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=sX0vUBZ385bGVuYpC+AmVONzWhh/p7zznxd4EslGh5M=;
        b=AaNLYxSzzFwhC9ZzaB92YnrUmlU+q3lYCYu9YyDkJzAOQkvvmWQyGBkyjBFYdVKIVH
         iASTcCjJc36w/wQxWA8MEsjYOHRWtKX/hvcuVSwSBdQM0Q9OJf2OXFL31yYQHtYwTXx5
         HAjsVKoGL1S8UUFih0hRMkFmKW42GiWYawSp39/X4eEUcZZMW9fHZdXAoFvOZ5/dR8MS
         qfiRE3xDcF/cbWS/KpvfmIQ4K0xacFXCmoXD+qW4Ir4K+Pq4uXoaFCHNhorUnrwxSyaC
         4XSM6x6WJbB1J92eJtKluhbmrD+HUqq6wPMbSUiuEFQUmhz5686TzBUyxQf4CQW81Alq
         0N2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si476476wmg.4.2017.09.11.14.11.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 14:11:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,379,1500933600"; 
   d="scan'208";a="290568350"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 23:11:51 +0200
Date: Mon, 11 Sep 2017 23:11:51 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] Staging: vc04_services: Remove typedef
 VCHI_CONNECTION_API_T
In-Reply-To: <20170911210239.GA3628@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709112310190.2055@hadrien>
References: <20170911210239.GA3628@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Sep 2017, Meghana Madhyastha wrote:

> Removes the typedef in order to make the code more readable.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
>  .../staging/vc04_services/interface/vchi/connections/connection.h | 4 ++--
>  drivers/staging/vc04_services/interface/vchi/vchi.h               | 8 ++++----
>  drivers/staging/vc04_services/interface/vchi/vchi_common.h        | 3 ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    | 4 ++--
>  4 files changed, 8 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchi/connections/connection.h b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> index e793cdf..4ec16ec 100644
> --- a/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> +++ b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> @@ -217,7 +217,7 @@ typedef void   (*VCHI_BUFFER_FREE)(VCHI_CONNECTION_SERVICE_HANDLE_T service_hand
>   System driver struct
>   *****************************************************************************/
>
> -struct opaque_vchi_connection_api_t {
> +struct opaque_vchi_connection_api {
>     // Routine to init the connection
>     VCHI_CONNECTION_INIT_T                      init;
>
> @@ -314,7 +314,7 @@ struct opaque_vchi_connection_api_t {
>  };
>
>  struct vchi_connection_t {
> -   const VCHI_CONNECTION_API_T *api;
> +   const struct opaque_vchi_connection_api *api;
>     VCHI_CONNECTION_STATE_T     *state;
>  #ifdef VCHI_COARSE_LOCKING
>     struct semaphore             sem;
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> index addb7b0..7e14532 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> @@ -159,7 +159,7 @@ typedef struct service_info_tag {
>  extern "C" {
>  #endif
>
> -extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const VCHI_CONNECTION_API_T * function_table,
> +extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const struct opaque_vchi_connection_api * function_table,
>                                                     const VCHI_MESSAGE_DRIVER_T * low_level);

An 80-column problem has gotten worse by adding struct.  Maybe put a
newline plus tabe before the first parameter to move things over to the
left.

>
>
> @@ -341,9 +341,9 @@ extern int32_t vchi_bulk_queue_transmit( VCHI_SERVICE_HANDLE_T handle,
>   *****************************************************************************/
>
>  // function prototypes for the different mid layers (the state info gives the different physical connections)
> -extern const VCHI_CONNECTION_API_T *single_get_func_table( void );
> -//extern const VCHI_CONNECTION_API_T *local_server_get_func_table( void );
> -//extern const VCHI_CONNECTION_API_T *local_client_get_func_table( void );
> +extern const struct opaque_vchi_connection_api *single_get_func_table( void );
> +//extern const struct opaque_vchi_connection_api *local_server_get_func_table( void );
> +//extern const struct opaque_vchi_connection_api *local_client_get_func_table( void );

Maybe the code under comments could just be dropped.

julia

>  // declare all message drivers here
>  const VCHI_MESSAGE_DRIVER_T *vchi_mphi_message_driver_func_table( void );
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> index 45c2070..7a4cf69 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> @@ -148,9 +148,6 @@ typedef struct vchi_msg_vector {
>     int32_t vec_len;
>  } VCHI_MSG_VECTOR_T;
>
> -// Opaque type for a connection API
> -typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
> -
>  // Opaque type for a message driver
>  typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 8af95fc..44c7eea 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -62,14 +62,14 @@ vchi_mphi_message_driver_func_table(void)
>  /* ----------------------------------------------------------------------
>   * return a pointer to the 'single' connection driver fops
>   * -------------------------------------------------------------------- */
> -const VCHI_CONNECTION_API_T *
> +const struct opaque_vchi_connection_api *
>  single_get_func_table(void)
>  {
>  	return NULL;
>  }
>
>  VCHI_CONNECTION_T *vchi_create_connection(
> -	const VCHI_CONNECTION_API_T *function_table,
> +	const struct opaque_vchi_connection_api *function_table,
>  	const VCHI_MESSAGE_DRIVER_T *low_level)
>  {
>  	(void)function_table;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170911210239.GA3628%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>


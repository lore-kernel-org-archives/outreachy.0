X-GM-THRID: 6753716696735809536
X-Received: by 2002:a0d:e60d:: with SMTP id p13mr1433003ywe.398.1572473601574;
        Wed, 30 Oct 2019 15:13:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:5986:: with SMTP id n128ls141186ywb.7.gmail; Wed, 30 Oct
 2019 15:13:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyIFfGZIrVziI48pwuFivxAThBnWejTqPDmC4Q6hUm8UwhnztUVFyZZF6sWStTeYpkm2Tic
X-Received: by 2002:a81:5745:: with SMTP id l66mr1543779ywb.70.1572473598457;
        Wed, 30 Oct 2019 15:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572473598; cv=none;
        d=google.com; s=arc-20160816;
        b=GMHmAZChNYAy9EksAZAD+txksuZxChR5VD9KhPb74WIRf8eibsiFO/kj5ZC1GFQHEg
         A9j0tjSFYPpR4rRJzHhJyGv/DTRSCD7cdLtVMZnL4/ZtEl49K1Qd7nGxFsulgiMzhvJF
         0birefZ8YNAv9ekBIErubWveRcdrezkkVF6Bwao+qcWnRn+qAsJtzrCteQtsSXmDE2yF
         NPIQMBVDnb8iOuB4UpHQa/TppmE9t6TaWLj2WtlVhziKurySmm347D7cATBCFz1dl9vC
         b9HCfpSFzH417n6jWlkUovGq9d4Q4Ej+7BsLr0CYghS4jkx+8d8xzHi5+7VKm4Kjgltc
         I+sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=bSflLLTiB5AOjruYgZ1aXFtWkSxGKpBzigrtqssgKJM=;
        b=UVZEGsWibhQs0Mwx0LmNTkXJ40L43pYL4wnLO+xOOJMKcgkgUSqi5MEIDgJgTxcgbY
         1NIgzW6Wv0onHHGKx5WR6qPKxA3rXs2NH6uzTkHkxbRQyjzR6bjNodEyX8FuONrVMGuh
         bd3VWuiQm2duksCJf6sCBI4VCcJLK4eb5ZAivZ0DT6F/LGN7i7pc1eCiBJavegm7mShh
         34lBS2eTbi2z9sBmwhZI/BORdtIULHaiErEH6nVClGQB8AyZR20Fmt54D82yvCIh8tbM
         0hbMwOe7O7aUPKLlhvBhdR3BwOTg1ILyFfCq4qdziDRLPF8vtjtduubUZrV+Pq6p3XVS
         KVLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ik8218nc;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id r9si143221ybc.0.2019.10.30.15.13.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ik8218nc;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id p12so2457807pgn.6
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Oct 2019 15:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bSflLLTiB5AOjruYgZ1aXFtWkSxGKpBzigrtqssgKJM=;
        b=ik8218ncIQVxTL0avWR0mguiCHIi5l01oEaFQpx+hLRh/ntlcgXB1eB+expWhVZ0GX
         HeNlg7sWbaLCmON1qGaZ2fnxrvPG1RA1jfie5TIUmHgdbdtS7+iLz5USFxcVS9C41/44
         7q/3ARc74EPn/Okfn5/r++2hQZEti6z9CbE82dJKP7eJkMS3u4T3lFTBR3jUk0KsfF0h
         3mbhR1ILGXrAwt6VTPTDUMMtw0RHq/KBc7HC4sv/IsWDPFhN4HpRpA9CvnForai4gkGr
         GnTcgsyZvvN4utq+pdOjTOrv3dKmFWHNNKocnQB5CA6mMQcvOExqBpmdpNHEpfENUOKa
         fmzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bSflLLTiB5AOjruYgZ1aXFtWkSxGKpBzigrtqssgKJM=;
        b=qmSlbSjFBcD6BE5ucqh4Xpfj4uBIH6CtdzH9Z/183REtwT2zoV17CYxWxibwuA/cfS
         p15C29plMK/S018nutvKCidY2TYQaJSLWuumWvgSgYOVwvWjoBCcHj+avnXs6E4pt6X2
         ml/cusecOZ8Y5tLpL7Uu5rgoQRqLQd5wvc0c+Eer8hg89G4FVqJu00lzdps8frxNis0E
         phrkedQieFm36RFmxJxaQ9i0LGuJFThSUVY3SaEsn5qNZiqRd1lfF/gE+GY8HD+M7CRM
         2wjXhN+fOwfOxelwx7zsLG8JqIhRfp2UobcdL3pUk5MTkg4TKXcXZHjRLL1Bn6VoSJCK
         +x/w==
X-Gm-Message-State: APjAAAU6TrFUCaUrIvdoGtsmaGi2b3iOK/7dhPaqJ9omNw7wiC/+sRi0
	mbiZfCAPcX79O20gXjksIVs/DcG6wHE=
X-Received: by 2002:a63:1a51:: with SMTP id a17mr1779631pgm.449.1572473596607;
        Wed, 30 Oct 2019 15:13:16 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id n15sm1003836pfq.146.2019.10.30.15.13.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2019 15:13:16 -0700 (PDT)
Date: Wed, 30 Oct 2019 15:13:15 -0700
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: Question on removing typedefs and opaque structs
Message-ID: <20191030221315.GA13390@jamal-desktop.domain>
References: <20191030214957.12043-1-jamal.k.shareef@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191030214957.12043-1-jamal.k.shareef@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Oct 30, 2019 at 02:49:57PM -0700, Jamal Shareef wrote:
> I am removing typedefs from vc04_services files and have been
> stuck for about a day. Would like advice on how to proceed. This patch
> does not currently build and does not currently include necessary
> changes to other affected files.
> 
> In removing the typedef from the opaque struct in vchi.h
> I am having difficulty transitioning this to a pointer to an opaque
> struct (see the diff beginning at line 45 for the two opaque handles,
> previously named VCHI_INSTANCE_T AND VCHI_SERVICE_HANDLE_T)
> 
> 1. Can I reference the INSTANCE_HANDLE and SERVICE HANDLE as a
>    global variable?
> 
>    It does not seem like this will work.
>
Also note that as global variables, I should not be including them 
in the arguments lists as they currently are.

Jamal
> 2. Or, must I fully declare the handle each time in the argument, e.g.
>    struct vchi_instance_handle INSTANCE_HANDLE instance_handle*
> 
>    Seems verbose.
> 
> 3. Is there a completely alternate method to removing the typedef?
>
> Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> ---
>  .../vc04_services/interface/vchi/vchi.h       |  76 +++++-----
>  .../interface/vchi/vchi_common.h              |  26 ++--
>  .../interface/vchiq_arm/vchiq_shim.c          | 132 +++++++++---------
>  3 files changed, 117 insertions(+), 117 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> index 0a353a468f34..b7da076385a2 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> @@ -45,15 +45,15 @@ struct vchi_held_msg {
>  struct service_creation {
>  	struct vchi_version version;
>  	int32_t service_id;
> -	VCHI_CALLBACK_T callback;
> +	void vchi_callback callback;
>  	void *callback_param;
>  };
>  
>  // Opaque handle for a VCHI instance
> -typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
> +struct vchi_instance_handle *INSTANCE_HANDLE;
>  
>  // Opaque handle for a server or client
> -typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
> +struct vchi_service_handle *SERVICE_HANDLE;
>  
>  /******************************************************************************
>   * Global funcs - implementation is specific to which side you are on
> @@ -65,94 +65,94 @@ extern "C" {
>  #endif
>  
>  // Routine used to initialise the vchi on both local + remote connections
> -extern int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle);
> +extern int32_t vchi_initialise(*INSTANCE_HANDLE);
>  
>  extern int32_t vchi_exit(void);
>  
> -extern int32_t vchi_connect(VCHI_INSTANCE_T instance_handle);
> +extern int32_t vchi_connect(INSTANCE_HANDLE);
>  
>  //When this is called, ensure that all services have no data pending.
>  //Bulk transfers can remain 'queued'
> -extern int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle);
> +extern int32_t vchi_disconnect(INSTANCE_HANDLE);
>  
>  // helper functions
> -extern void *vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *length);
> -extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
> -extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
> +extern void *vchi_allocate_buffer(SERVICE_HANDLE, uint32_t *length);
> +extern void vchi_free_buffer(SERVICE_HANDLE, void *address);
> +extern uint32_t vchi_current_time(INSTANCE_HANDLE);
>  
>  /******************************************************************************
>   * Global service API
>   *****************************************************************************/
>  // Routine to destroy a service
> -extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
> +extern int32_t vchi_service_destroy(SERVICE_HANDLE);
>  
>  // Routine to open a named service
> -extern int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
> +extern int32_t vchi_service_open(INSTANCE_HANDLE,
>  				 struct service_creation *setup,
> -				 VCHI_SERVICE_HANDLE_T *handle);
> +				 *SERVICE_HANDLE);
>  
> -extern int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_get_peer_version(const SERVICE_HANDLE,
>  				     short *peer_version);
>  
>  // Routine to close a named service
> -extern int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle);
> +extern int32_t vchi_service_close(SERVICE_HANDLE);
>  
>  // Routine to increment ref count on a named service
> -extern int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle);
> +extern int32_t vchi_service_use(SERVICE_HANDLE);
>  
>  // Routine to decrement ref count on a named service
> -extern int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle);
> +extern int32_t vchi_service_release(SERVICE_HANDLE);
>  
>  // Routine to set a control option for a named service
> -extern int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
> -					VCHI_SERVICE_OPTION_T option,
> -					int value);
> +extern int32_t vchi_service_set_option(SERVICE_HANDLE,
> +				       enum vchi_service_option option,
> +				       int value);
>  
>  /* Routine to send a message from kernel memory across a service */
>  extern int
> -vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
> +vchi_queue_kernel_message(SERVICE_HANDLE,
>  			  void *data,
>  			  unsigned int size);
>  
>  /* Routine to send a message from user memory across a service */
>  extern int
> -vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
> +vchi_queue_user_message(SERVICE_HANDLE,
>  			void __user *data,
>  			unsigned int size);
>  
>  // Routine to receive a msg from a service
>  // Dequeue is equivalent to hold, copy into client buffer, release
> -extern int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_msg_dequeue(SERVICE_HANDLE,
>  				void *data,
>  				uint32_t max_data_size_to_read,
>  				uint32_t *actual_msg_size,
> -				VCHI_FLAGS_T flags);
> +				enum vchi_flags flags);
>  
>  // Routine to look at a message in place.
>  // The message is not dequeued, so a subsequent call to peek or dequeue
>  // will return the same message.
> -extern int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_msg_peek(SERVICE_HANDLE,
>  			     void **data,
>  			     uint32_t *msg_size,
> -			     VCHI_FLAGS_T flags);
> +			     enum vchi_flags flags);
>  
>  // Routine to remove a message after it has been read in place with peek
>  // The first message on the queue is dequeued.
> -extern int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle);
> +extern int32_t vchi_msg_remove(SERVICE_HANDLE);
>  
>  // Routine to look at a message in place.
>  // The message is dequeued, so the caller is left holding it; the descriptor is
>  // filled in and must be released when the user has finished with the message.
> -extern int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_msg_hold(SERVICE_HANDLE,
>  			     void **data,        // } may be NULL, as info can be
>  			     uint32_t *msg_size, // } obtained from HELD_MSG_T
> -			     VCHI_FLAGS_T flags,
> +			     enum vchi_flags flags,
>  			     struct vchi_held_msg *message_descriptor);
>  
>  // Initialise an iterator to look through messages in place
> -extern int32_t vchi_msg_look_ahead(VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_msg_look_ahead(SERVICE_HANDLE,
>  				   struct vchi_msg_iter *iter,
> -				   VCHI_FLAGS_T flags);
> +				   enum vchi_flags flags);
>  
>  /*******************************************************************************
>   * Global service support API - operations on held messages
> @@ -202,24 +202,24 @@ extern int32_t vchi_msg_iter_hold_next(struct vchi_msg_iter *iter,
>   *****************************************************************************/
>  
>  // Routine to prepare interface for a transfer from the other side
> -extern int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_bulk_queue_receive(SERVICE_HANDLE,
>  				       void *data_dst,
>  				       uint32_t data_size,
> -				       VCHI_FLAGS_T flags,
> +				       enum vchi_flags flags,
>  				       void *transfer_handle);
>  
>  // Prepare interface for a transfer from the other side into relocatable memory.
> -int32_t vchi_bulk_queue_receive_reloc(const VCHI_SERVICE_HANDLE_T handle,
> +int32_t vchi_bulk_queue_receive_reloc(SERVICE_HANDLE,
>  				      uint32_t offset,
>  				      uint32_t data_size,
> -				      const VCHI_FLAGS_T flags,
> +				      const enum vchi_flags flags,
>  				      void * const bulk_handle);
>  
>  // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
> -extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_bulk_queue_transmit(SERVICE_HANDLE,
>  					const void *data_src,
>  					uint32_t data_size,
> -					VCHI_FLAGS_T flags,
> +					enum vchi_flags flags,
>  					void *transfer_handle);
>  
>  /******************************************************************************
> @@ -230,10 +230,10 @@ extern int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
>  }
>  #endif
>  
> -extern int32_t vchi_bulk_queue_transmit_reloc(VCHI_SERVICE_HANDLE_T handle,
> +extern int32_t vchi_bulk_queue_transmit_reloc(SERVICE_HANDLE,
>  					      uint32_t offset,
>  					      uint32_t data_size,
> -					      VCHI_FLAGS_T flags,
> +					      enum vchi_flags flags,
>  					      void *transfer_handle);
>  #endif /* VCHI_H_ */
>  
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> index e7955cbaf26a..f81c91b64adc 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> @@ -5,7 +5,7 @@
>  #define VCHI_COMMON_H_
>  
>  //flags used when sending messages (must be bitmapped)
> -typedef enum {
> +enum vchi_flags {
>  	VCHI_FLAGS_NONE                      = 0x0,
>  	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
>  	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
> @@ -20,17 +20,17 @@ typedef enum {
>  	VCHI_FLAGS_BULK_DATA_QUEUED      = 0x040000,  // internal use only
>  	VCHI_FLAGS_BULK_DATA_COMPLETE    = 0x080000,  // internal use only
>  	VCHI_FLAGS_INTERNAL              = 0xFF0000
> -} VCHI_FLAGS_T;
> +};
>  
>  // constants for vchi_crc_control()
> -typedef enum {
> +enum vchi_crc_control {
>  	VCHI_CRC_NOTHING = -1,
>  	VCHI_CRC_PER_SERVICE = 0,
>  	VCHI_CRC_EVERYTHING = 1,
> -} VCHI_CRC_CONTROL_T;
> +};
>  
>  //callback reasons when an event occurs on a service
> -typedef enum {
> +enum vchi_callback_reason {
>  	VCHI_CALLBACK_REASON_MIN,
>  
>  	//This indicates that there is data available
> @@ -73,22 +73,22 @@ typedef enum {
>  	VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
>  
>  	VCHI_CALLBACK_REASON_MAX
> -} VCHI_CALLBACK_REASON_T;
> +};
>  
>  // service control options
> -typedef enum {
> +enum vchi_service_option {
>  	VCHI_SERVICE_OPTION_MIN,
>  
>  	VCHI_SERVICE_OPTION_TRACE,
>  	VCHI_SERVICE_OPTION_SYNCHRONOUS,
>  
>  	VCHI_SERVICE_OPTION_MAX
> -} VCHI_SERVICE_OPTION_T;
> +};
>  
>  //Callback used by all services / bulk transfers
> -typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
> -				VCHI_CALLBACK_REASON_T reason,
> -				void *handle); //for transmitting msg's only
> +void (*vchi_callback)(void *callback_param, //my service local param
> +		      enum vchi_callback_reason reason,
> +		      void *handle); //for transmitting msg's only
>  
>  /*
>   * Define vector struct for scatter-gather (vector) operations
> @@ -113,10 +113,10 @@ struct vchi_msg_vector {
>  };
>  
>  // Opaque type for a connection API
> -typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
> +struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
>  
>  // Opaque type for a message driver
> -typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
> +struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
>  
>  // Iterator structure for reading ahead through received message queue. Allocated by client,
>  // initialised by vchi_msg_look_ahead. Fields are for internal VCHI use only.
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 5e26f0abd5ee..169058dcddc0 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -16,18 +16,18 @@ struct shim_service {
>  
>  	struct vchiu_queue queue;
>  
> -	VCHI_CALLBACK_T callback;
> +	void vchi_callback callback;
>  	void *callback_param;
>  };
>  
>  /***********************************************************
>   * Name: vchi_msg_peek
>   *
> - * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
> + * Arguments:  const SERVICE_HANDLE,
>   *             void **data,
>   *             uint32_t *msg_size,
>  
> - *             VCHI_FLAGS_T flags
> + *             enum vchi_flags flags
>   *
>   * Description: Routine to return a pointer to the current message (to allow in
>   *              place processing). The message can be removed using
> @@ -36,12 +36,12 @@ struct shim_service {
>   * Returns: int32_t - success == 0
>   *
>   ***********************************************************/
> -int32_t vchi_msg_peek(VCHI_SERVICE_HANDLE_T handle,
> +int32_t vchi_msg_peek(const SERVICE_HANDLE,
>  	void **data,
>  	uint32_t *msg_size,
> -	VCHI_FLAGS_T flags)
> +	enum vchi_flags flags)
>  {
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	struct vchiq_header *header;
>  
>  	WARN_ON((flags != VCHI_FLAGS_NONE) &&
> @@ -63,7 +63,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
>  /***********************************************************
>   * Name: vchi_msg_remove
>   *
> - * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
> + * Arguments:  SERVICE_HANDLE,
>   *
>   * Description: Routine to remove a message (after it has been read with
>   *              vchi_msg_peek)
> @@ -71,9 +71,9 @@ EXPORT_SYMBOL(vchi_msg_peek);
>   * Returns: int32_t - success == 0
>   *
>   ***********************************************************/
> -int32_t vchi_msg_remove(VCHI_SERVICE_HANDLE_T handle)
> +int32_t vchi_msg_remove(SERVICE_HANDLE)
>  {
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	struct vchiq_header *header;
>  
>  	header = vchiu_queue_pop(&service->queue);
> @@ -87,7 +87,7 @@ EXPORT_SYMBOL(vchi_msg_remove);
>  /***********************************************************
>   * Name: vchi_msg_queue
>   *
> - * Arguments:  VCHI_SERVICE_HANDLE_T handle,
> + * Arguments:  SERVICE_HANDLE,
>   *             ssize_t (*copy_callback)(void *context, void *dest,
>   *				        size_t offset, size_t maxsize),
>   *	       void *context,
> @@ -99,13 +99,13 @@ EXPORT_SYMBOL(vchi_msg_remove);
>   *
>   ***********************************************************/
>  static
> -int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
> +int32_t vchi_msg_queue(SERVICE_HANDLE,
>  	ssize_t (*copy_callback)(void *context, void *dest,
>  				 size_t offset, size_t maxsize),
>  	void *context,
>  	uint32_t data_size)
>  {
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	VCHIQ_STATUS_T status;
>  
>  	while (1) {
> @@ -139,11 +139,11 @@ vchi_queue_kernel_message_callback(void *context,
>  }
>  
>  int
> -vchi_queue_kernel_message(VCHI_SERVICE_HANDLE_T handle,
> +vchi_queue_kernel_message(SERVICE_HANDLE,
>  			  void *data,
>  			  unsigned int size)
>  {
> -	return vchi_msg_queue(handle,
> +	return vchi_msg_queue(SERVICE_HANDLE,
>  			      vchi_queue_kernel_message_callback,
>  			      data,
>  			      size);
> @@ -169,7 +169,7 @@ vchi_queue_user_message_callback(void *context,
>  }
>  
>  int
> -vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
> +vchi_queue_user_message(SERVICE_HANDLE,
>  			void __user *data,
>  			unsigned int size)
>  {
> @@ -177,7 +177,7 @@ vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
>  		.data = data
>  	};
>  
> -	return vchi_msg_queue(handle,
> +	return vchi_msg_queue(SERVICE_HANDLE,
>  			      vchi_queue_user_message_callback,
>  			      &copycontext,
>  			      size);
> @@ -190,7 +190,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
>   * Arguments:  VCHI_BULK_HANDLE_T handle,
>   *             void *data_dst,
>   *             const uint32_t data_size,
> - *             VCHI_FLAGS_T flags
> + *             enum vchi_flags flags
>   *             void *bulk_handle
>   *
>   * Description: Routine to setup a rcv buffer
> @@ -198,13 +198,13 @@ EXPORT_SYMBOL(vchi_queue_user_message);
>   * Returns: int32_t - success == 0
>   *
>   ***********************************************************/
> -int32_t vchi_bulk_queue_receive(VCHI_SERVICE_HANDLE_T handle,
> +int32_t vchi_bulk_queue_receive(SERVICE_HANDLE,
>  	void *data_dst,
>  	uint32_t data_size,
> -	VCHI_FLAGS_T flags,
> +	enum vchi_flags flags,
>  	void *bulk_handle)
>  {
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERIVICE_HANDLE;
>  	VCHIQ_BULK_MODE_T mode;
>  	VCHIQ_STATUS_T status;
>  
> @@ -250,7 +250,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
>   * Arguments:  VCHI_BULK_HANDLE_T handle,
>   *             const void *data_src,
>   *             uint32_t data_size,
> - *             VCHI_FLAGS_T flags,
> + *             enum vchi_flags flags,
>   *             void *bulk_handle
>   *
>   * Description: Routine to transmit some data
> @@ -258,13 +258,13 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
>   * Returns: int32_t - success == 0
>   *
>   ***********************************************************/
> -int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
> +int32_t vchi_bulk_queue_transmit(SERVICE_HANDLE,
>  	const void *data_src,
>  	uint32_t data_size,
> -	VCHI_FLAGS_T flags,
> +	enum vchi_flags flags,
>  	void *bulk_handle)
>  {
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	VCHIQ_BULK_MODE_T mode;
>  	VCHIQ_STATUS_T status;
>  
> @@ -309,24 +309,24 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
>  /***********************************************************
>   * Name: vchi_msg_dequeue
>   *
> - * Arguments:  VCHI_SERVICE_HANDLE_T handle,
> + * Arguments:  SERVICE_HANDLE,
>   *             void *data,
>   *             uint32_t max_data_size_to_read,
>   *             uint32_t *actual_msg_size
> - *             VCHI_FLAGS_T flags
> + *             enum vchi_flags flags
>   *
>   * Description: Routine to dequeue a message into the supplied buffer
>   *
>   * Returns: int32_t - success == 0
>   *
>   ***********************************************************/
> -int32_t vchi_msg_dequeue(VCHI_SERVICE_HANDLE_T handle,
> +int32_t vchi_msg_dequeue(SERVICE_HANDLE,
>  	void *data,
>  	uint32_t max_data_size_to_read,
>  	uint32_t *actual_msg_size,
> -	VCHI_FLAGS_T flags)
> +	enum vchi_flags flags)
>  {
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	struct vchiq_header *header;
>  
>  	WARN_ON((flags != VCHI_FLAGS_NONE) &&
> @@ -380,10 +380,10 @@ EXPORT_SYMBOL(vchi_held_msg_release);
>  /***********************************************************
>   * Name: vchi_msg_hold
>   *
> - * Arguments:  VCHI_SERVICE_HANDLE_T handle,
> + * Arguments:  SERVICE_HANDLE,
>   *             void **data,
>   *             uint32_t *msg_size,
> - *             VCHI_FLAGS_T flags,
> + *             enum vchi_flags flags,
>   *             struct vchi_held_msg *message_handle
>   *
>   * Description: Routine to return a pointer to the current message (to allow
> @@ -394,13 +394,13 @@ EXPORT_SYMBOL(vchi_held_msg_release);
>   * Returns: int32_t - success == 0
>   *
>   ***********************************************************/
> -int32_t vchi_msg_hold(VCHI_SERVICE_HANDLE_T handle,
> +int32_t vchi_msg_hold(SERVICE_HANDLE,
>  	void **data,
>  	uint32_t *msg_size,
> -	VCHI_FLAGS_T flags,
> +	enum vchi_flags flags,
>  	struct vchi_held_msg *message_handle)
>  {
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	struct vchiq_header *header;
>  
>  	WARN_ON((flags != VCHI_FLAGS_NONE) &&
> @@ -434,7 +434,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
>  /***********************************************************
>   * Name: vchi_initialise
>   *
> - * Arguments: VCHI_INSTANCE_T *instance_handle
> + * Arguments: INSTANCE_HANDLE *instance_handle
>   *
>   * Description: Initialises the hardware but does not transmit anything
>   *              When run as a Host App this will be called twice hence the need
> @@ -444,14 +444,14 @@ EXPORT_SYMBOL(vchi_msg_hold);
>   *
>   ***********************************************************/
>  
> -int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle)
> +int32_t vchi_initialise(INSTANCE_HANDLE *instance_handle)
>  {
>  	VCHIQ_INSTANCE_T instance;
>  	VCHIQ_STATUS_T status;
>  
>  	status = vchiq_initialise(&instance);
>  
> -	*instance_handle = (VCHI_INSTANCE_T)instance;
> +	*instance_handle = (struct vchi_instance_handle)instance;
>  
>  	return vchiq_status_to_vchi(status);
>  }
> @@ -460,7 +460,7 @@ EXPORT_SYMBOL(vchi_initialise);
>  /***********************************************************
>   * Name: vchi_connect
>   *
> - * Arguments: VCHI_INSTANCE_T instance_handle
> + * Arguments: INSTANCE_HANDLE
>   *
>   * Description: Starts the command service on each connection,
>   *              causing INIT messages to be pinged back and forth
> @@ -468,9 +468,9 @@ EXPORT_SYMBOL(vchi_initialise);
>   * Returns: 0 if successful, failure otherwise
>   *
>   ***********************************************************/
> -int32_t vchi_connect(VCHI_INSTANCE_T instance_handle)
> +int32_t vchi_connect(INSTANCE_HANDLE)
>  {
> -	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> +	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)INSTANCE_HANDLE;
>  
>  	return vchiq_connect(instance);
>  }
> @@ -479,7 +479,7 @@ EXPORT_SYMBOL(vchi_connect);
>  /***********************************************************
>   * Name: vchi_disconnect
>   *
> - * Arguments: VCHI_INSTANCE_T instance_handle
> + * Arguments: INSTANCE_HANDLE
>   *
>   * Description: Stops the command service on each connection,
>   *              causing DE-INIT messages to be pinged back and forth
> @@ -487,9 +487,9 @@ EXPORT_SYMBOL(vchi_connect);
>   * Returns: 0 if successful, failure otherwise
>   *
>   ***********************************************************/
> -int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
> +int32_t vchi_disconnect(INSTANCE_HANDLE)
>  {
> -	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> +	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)INSTANCE_HANDLE;
>  
>  	return vchiq_status_to_vchi(vchiq_shutdown(instance));
>  }
> @@ -499,9 +499,9 @@ EXPORT_SYMBOL(vchi_disconnect);
>   * Name: vchi_service_open
>   * Name: vchi_service_create
>   *
> - * Arguments: VCHI_INSTANCE_T *instance_handle
> + * Arguments: INSTANCE_HANDLE
>   *            struct service_creation *setup,
> - *            VCHI_SERVICE_HANDLE_T *handle
> + *            SERVICE_HANDLE *handle
>   *
>   * Description: Routine to open a service
>   *
> @@ -599,14 +599,14 @@ static void service_free(struct shim_service *service)
>  	}
>  }
>  
> -int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
> +int32_t vchi_service_open(INSTANCE_HANDLE,
>  	struct service_creation *setup,
> -	VCHI_SERVICE_HANDLE_T *handle)
> +	struct SERVICE_HANDLE *handle)
>  {
> -	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)instance_handle;
> +	VCHIQ_INSTANCE_T instance = (VCHIQ_INSTANCE_T)INSTANCE_HANDLE;
>  	struct shim_service *service = service_alloc(instance, setup);
>  
> -	*handle = (VCHI_SERVICE_HANDLE_T)service;
> +	*handle = (struct vchi_service_handle)service;
>  
>  	if (service) {
>  		struct vchiq_service_params params;
> @@ -632,10 +632,10 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
>  }
>  EXPORT_SYMBOL(vchi_service_open);
>  
> -int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
> +int32_t vchi_service_close(const SERVICE_HANDLE)
>  {
>  	int32_t ret = -1;
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  
>  	if (service) {
>  		VCHIQ_STATUS_T status = vchiq_close_service(service->handle);
> @@ -648,10 +648,10 @@ int32_t vchi_service_close(const VCHI_SERVICE_HANDLE_T handle)
>  }
>  EXPORT_SYMBOL(vchi_service_close);
>  
> -int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
> +int32_t vchi_service_destroy(const SERVICE_HANDLE)
>  {
>  	int32_t ret = -1;
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  
>  	if (service) {
>  		VCHIQ_STATUS_T status = vchiq_remove_service(service->handle);
> @@ -667,12 +667,12 @@ int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle)
>  }
>  EXPORT_SYMBOL(vchi_service_destroy);
>  
> -int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
> -				VCHI_SERVICE_OPTION_T option,
> +int32_t vchi_service_set_option(const SERVICE_HANDLE,
> +				enum vchi_service_option option,
>  				int value)
>  {
>  	int32_t ret = -1;
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	VCHIQ_SERVICE_OPTION_T vchiq_option;
>  
>  	switch (option) {
> @@ -689,8 +689,8 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
>  	if (service) {
>  		VCHIQ_STATUS_T status =
>  			vchiq_set_service_option(service->handle,
> -						vchiq_option,
> -						value);
> +						 vchiq_option,
> +						 value);
>  
>  		ret = vchiq_status_to_vchi(status);
>  	}
> @@ -698,10 +698,10 @@ int32_t vchi_service_set_option(const VCHI_SERVICE_HANDLE_T handle,
>  }
>  EXPORT_SYMBOL(vchi_service_set_option);
>  
> -int32_t vchi_get_peer_version(const VCHI_SERVICE_HANDLE_T handle, short *peer_version)
> +int32_t vchi_get_peer_version(const SERVICE_HANDLE, short *peer_version)
>  {
>  	int32_t ret = -1;
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  
>  	if (service) {
>  		VCHIQ_STATUS_T status;
> @@ -716,18 +716,18 @@ EXPORT_SYMBOL(vchi_get_peer_version);
>  /***********************************************************
>   * Name: vchi_service_use
>   *
> - * Arguments: const VCHI_SERVICE_HANDLE_T handle
> + * Arguments: const SERVICE_HANDLE
>   *
>   * Description: Routine to increment refcount on a service
>   *
>   * Returns: void
>   *
>   ***********************************************************/
> -int32_t vchi_service_use(const VCHI_SERVICE_HANDLE_T handle)
> +int32_t vchi_service_use(const SERVICE_HANDLE)
>  {
>  	int32_t ret = -1;
>  
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	if (service)
>  		ret = vchiq_status_to_vchi(vchiq_use_service(service->handle));
>  	return ret;
> @@ -737,18 +737,18 @@ EXPORT_SYMBOL(vchi_service_use);
>  /***********************************************************
>   * Name: vchi_service_release
>   *
> - * Arguments: const VCHI_SERVICE_HANDLE_T handle
> + * Arguments: const SERVICE_HANDLE
>   *
>   * Description: Routine to decrement refcount on a service
>   *
>   * Returns: void
>   *
>   ***********************************************************/
> -int32_t vchi_service_release(const VCHI_SERVICE_HANDLE_T handle)
> +int32_t vchi_service_release(const SERVICE_HANDLE)
>  {
>  	int32_t ret = -1;
>  
> -	struct shim_service *service = (struct shim_service *)handle;
> +	struct shim_service *service = (struct shim_service *)SERVICE_HANDLE;
>  	if (service)
>  		ret = vchiq_status_to_vchi(
>  			vchiq_release_service(service->handle));
> -- 
> 2.17.1
> 


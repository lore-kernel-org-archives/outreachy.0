X-GM-THRID: 6470000031137005568
X-Received: by 10.46.4.198 with SMTP id a67mr811336ljf.16.1506440988771;
        Tue, 26 Sep 2017 08:49:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.229.132 with SMTP id i4ls1217112lfk.2.gmail; Tue, 26 Sep
 2017 08:49:47 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBGt95fYJVpcL72LlcUXURs2uoeZ5MTBQtR8BUjqUYnemu7h1SbKP+l+Du4ADRql73QSxXM
X-Received: by 10.25.17.102 with SMTP id g99mr934385lfi.14.1506440986991;
        Tue, 26 Sep 2017 08:49:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506440986; cv=none;
        d=google.com; s=arc-20160816;
        b=FUS4jrKhUTMSEOb6sjC41pKb4Yf5UCtcRJ3s6rI3XlLR2xhoNvqHrqT6T8aY5/ooyb
         G+MhS0kI1U0wBoHNk9ktTLh0DaVY889vRUJpVprLIjlNemj/jeG3cZmzLUmm9CGRfhFi
         rkLbHuUtrg+NBnhRGDK7IfNL5IrMxr3DQX8DmlRrAB8HeTBZEIfeBpXxF7014Xf25fsa
         YUQIutd71jgFMyqdYjzJDruNRwGs3Cyum3V1FtSFexH21jGbjH5h/8uKtSOqhkU1OUOR
         9L5/A7DVmmlbgr5OP195u1JB3ijr0eSQtWoCv2AnMzRsfqTBQJKbQ2n1wh94Audk/H48
         6uZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=F/FikBIHKbwO7MM/qsK9mdMsxF14URTmxr1wQrAv8bk=;
        b=OFaL9+m8Rjla6uvqAmEhDYxRfBqQVKodb2HMbZGBNpjDsywIEeY6lBoLFejt4hX6At
         8tS3Bfqb/70nrNu33IhsS3SGNA2j4DCVl9INhM8b6PV8BVtVk4y8LlNi6JlteaYUP+fT
         Pb5AnG3fxQrvUpHylVcanKgNyWeNzgGME1msJZdcdUP3Pq4I5xAfstSZmMAk04ypxhrC
         JuOMiooQ67khJRlKP+i2VYHEhYbgV+/8pixAyp82j+C3iBoqsKXdEm8BnOGs12SnVmnN
         IetJYmqYYLiLL6ZAoKXURWXWPLkR+S4gm5dsZQqs5ZzN5C6l6MBJiN+VlCh4YbGs1smc
         UJsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si925151wmd.1.2017.09.26.08.49.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:49:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,441,1500933600"; 
   d="scan'208";a="292817397"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 17:49:45 +0200
Date: Tue, 26 Sep 2017 17:49:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: This@manoharreddy, patchset@manoharreddy, removes@manoharreddy, 
    extra@manoharreddy, newlines@manoharreddy, within@manoharreddy, 
    file@manoharreddy, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] eric@anholt.net,
 stefan.wahren@i2se.com, outreachy-kernel@googlegroups.com
In-Reply-To: <960f1d14d6ccc60acd7abb8e5ae9d6198031ca2b.1506439214.git.keerthigd4990@gmail.com>
Message-ID: <alpine.DEB.2.20.1709261749200.2866@hadrien>
References: <cover.1506439214.git.keerthigd4990@gmail.com> <960f1d14d6ccc60acd7abb8e5ae9d6198031ca2b.1506439214.git.keerthigd4990@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Something is wrong with the subject line here.

julia

On Tue, 26 Sep 2017, Keerthi Reddy wrote:

> Blank lines use up extra space in file and makes the file
> larger. So do not use multiple blanklines
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
> Changes in v2:
> * Capitalize starting letter in commit message.
>
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c     | 11 -----------
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c   | 11 -----------
>  .../vc04_services/interface/vchi/connections/connection.h     |  3 ---
>  .../vc04_services/interface/vchi/message_drivers/message.h    |  5 -----
>  drivers/staging/vc04_services/interface/vchi/vchi.h           | 10 ----------
>  drivers/staging/vc04_services/interface/vchi/vchi_common.h    |  6 ------
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c |  9 ---------
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h |  5 -----
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_core.c    | 10 ----------
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h    |  1 -
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c |  3 ---
>  .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    |  3 ---
>  12 files changed, 77 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> index 94654c0..7e68b3e 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
> @@ -65,7 +65,6 @@ void bcm2835_playback_fifo(struct bcm2835_alsa_stream *alsa_stream)
>  	unsigned int consumed = 0;
>  	int new_period = 0;
>
> -
>  	audio_info("alsa_stream=%p substream=%p\n", alsa_stream,
>  		alsa_stream ? alsa_stream->substream : 0);
>
> @@ -111,7 +110,6 @@ static int snd_bcm2835_playback_open_generic(
>  	int idx;
>  	int err;
>
> -
>  	if (mutex_lock_interruptible(&chip->audio_mutex)) {
>  		audio_error("Interrupted whilst waiting for lock\n");
>  		return -EINTR;
> @@ -184,7 +182,6 @@ static int snd_bcm2835_playback_open_generic(
>  out:
>  	mutex_unlock(&chip->audio_mutex);
>
> -
>  	return err;
>  }
>
> @@ -207,7 +204,6 @@ static int snd_bcm2835_playback_close(struct snd_pcm_substream *substream)
>  	struct snd_pcm_runtime *runtime;
>  	struct bcm2835_alsa_stream *alsa_stream;
>
> -
>  	chip = snd_pcm_substream_chip(substream);
>  	if (mutex_lock_interruptible(&chip->audio_mutex)) {
>  		audio_error("Interrupted whilst waiting for lock\n");
> @@ -259,7 +255,6 @@ static int snd_bcm2835_pcm_hw_params(struct snd_pcm_substream *substream,
>  	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
>  	int err;
>
> -
>  	err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(params));
>  	if (err < 0) {
>  		audio_error
> @@ -289,7 +284,6 @@ static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
>  	int channels;
>  	int err;
>
> -
>  	if (mutex_lock_interruptible(&chip->audio_mutex))
>  		return -EINTR;
>
> @@ -307,13 +301,11 @@ static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
>  	if (err < 0)
>  		audio_error(" error setting hw params\n");
>
> -
>  	bcm2835_audio_setup(alsa_stream);
>
>  	/* in preparation of the stream, set the controls (volume level) of the stream */
>  	bcm2835_audio_set_ctls(alsa_stream->chip);
>
> -
>  	memset(&alsa_stream->pcm_indirect, 0, sizeof(alsa_stream->pcm_indirect));
>
>  	alsa_stream->pcm_indirect.hw_buffer_size =
> @@ -364,7 +356,6 @@ static int snd_bcm2835_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
>  	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
>  	int err = 0;
>
> -
>  	switch (cmd) {
>  	case SNDRV_PCM_TRIGGER_START:
>  		audio_debug("bcm2835_AUDIO_TRIGGER_START running=%d\n",
> @@ -416,7 +407,6 @@ snd_bcm2835_pcm_pointer(struct snd_pcm_substream *substream)
>  	struct snd_pcm_runtime *runtime = substream->runtime;
>  	struct bcm2835_alsa_stream *alsa_stream = runtime->private_data;
>
> -
>  	audio_debug("pcm_pointer... (%d) hwptr=%d appl=%d pos=%d\n", 0,
>  		frames_to_bytes(runtime, runtime->status->hw_ptr),
>  		frames_to_bytes(runtime, runtime->control->appl_ptr),
> @@ -493,7 +483,6 @@ int snd_bcm2835_new_pcm(struct bcm2835_chip *chip, u32 numchannels)
>  					      snd_bcm2835_playback_hw.buffer_bytes_max,
>  					      snd_bcm2835_playback_hw.buffer_bytes_max);
>
> -
>  out:
>  	mutex_unlock(&chip->audio_mutex);
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> index 5f3d8f2..7469c9b 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> @@ -337,7 +337,6 @@ static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
>  {
>  	unsigned int i;
>
> -
>  	if (!instance) {
>  		LOG_ERR("%s: invalid handle %p\n", __func__, instance);
>
> @@ -369,7 +368,6 @@ static int vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
>
>  	kfree(instance);
>
> -
>  	return 0;
>  }
>
> @@ -382,7 +380,6 @@ static int bcm2835_audio_open_connection(struct bcm2835_alsa_stream *alsa_stream
>  		(struct bcm2835_audio_instance *)alsa_stream->instance;
>  	int ret;
>
> -
>  	LOG_INFO("%s: start\n", __func__);
>  	BUG_ON(instance);
>  	if (instance) {
> @@ -443,7 +440,6 @@ int bcm2835_audio_open(struct bcm2835_alsa_stream *alsa_stream)
>  	int status;
>  	int ret;
>
> -
>  	my_workqueue_init(alsa_stream);
>
>  	ret = bcm2835_audio_open_connection(alsa_stream);
> @@ -491,7 +487,6 @@ static int bcm2835_audio_set_ctls_chan(struct bcm2835_alsa_stream *alsa_stream,
>  	int status;
>  	int ret;
>
> -
>  	LOG_INFO(" Setting ALSA dest(%d), volume(%d)\n",
>  		 chip->dest, chip->volume);
>
> @@ -575,7 +570,6 @@ int bcm2835_audio_set_params(struct bcm2835_alsa_stream *alsa_stream,
>  	int status;
>  	int ret;
>
> -
>  	LOG_INFO(" Setting ALSA channels(%d), samplerate(%d), bits-per-sample(%d)\n",
>  		 channels, samplerate, bps);
>
> @@ -636,7 +630,6 @@ int bcm2835_audio_set_params(struct bcm2835_alsa_stream *alsa_stream,
>  int bcm2835_audio_setup(struct bcm2835_alsa_stream *alsa_stream)
>  {
>
> -
>  	return 0;
>  }
>
> @@ -647,7 +640,6 @@ static int bcm2835_audio_start_worker(struct bcm2835_alsa_stream *alsa_stream)
>  	int status;
>  	int ret;
>
> -
>  	if (mutex_lock_interruptible(&instance->vchi_mutex)) {
>  		LOG_DBG("Interrupted whilst waiting for lock on (%d)\n",
>  			instance->num_connections);
> @@ -684,7 +676,6 @@ static int bcm2835_audio_stop_worker(struct bcm2835_alsa_stream *alsa_stream)
>  	int status;
>  	int ret;
>
> -
>  	if (mutex_lock_interruptible(&instance->vchi_mutex)) {
>  		LOG_DBG("Interrupted whilst waiting for lock on (%d)\n",
>  			instance->num_connections);
> @@ -722,7 +713,6 @@ int bcm2835_audio_close(struct bcm2835_alsa_stream *alsa_stream)
>  	int status;
>  	int ret;
>
> -
>  	my_workqueue_quit(alsa_stream);
>
>  	if (mutex_lock_interruptible(&instance->vchi_mutex)) {
> @@ -780,7 +770,6 @@ static int bcm2835_audio_write_worker(struct bcm2835_alsa_stream *alsa_stream,
>  	int status;
>  	int ret;
>
> -
>  	LOG_INFO(" Writing %d bytes from %p\n", count, src);
>
>  	if (mutex_lock_interruptible(&instance->vchi_mutex)) {
> diff --git a/drivers/staging/vc04_services/interface/vchi/connections/connection.h b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> index e793cdf..67c8438 100644
> --- a/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> +++ b/drivers/staging/vc04_services/interface/vchi/connections/connection.h
> @@ -54,7 +54,6 @@ typedef struct opaque_vchi_connection_info_t VCHI_CONNECTION_STATE_T;
>
>  typedef struct vchi_connection_t VCHI_CONNECTION_T;
>
> -
>  /******************************************************************************
>   API
>   *****************************************************************************/
> @@ -212,7 +211,6 @@ typedef void * (*VCHI_BUFFER_ALLOCATE)(VCHI_CONNECTION_SERVICE_HANDLE_T service_
>  // free memory allocated by buffer_allocate
>  typedef void   (*VCHI_BUFFER_FREE)(VCHI_CONNECTION_SERVICE_HANDLE_T service_handle, void * address);
>
> -
>  /******************************************************************************
>   System driver struct
>   *****************************************************************************/
> @@ -321,7 +319,6 @@ struct vchi_connection_t {
>  #endif
>  };
>
> -
>  #endif /* CONNECTION_H_ */
>
>  /****************************** End of file **********************************/
> diff --git a/drivers/staging/vc04_services/interface/vchi/message_drivers/message.h b/drivers/staging/vc04_services/interface/vchi/message_drivers/message.h
> index a7740a4..834263f 100644
> --- a/drivers/staging/vc04_services/interface/vchi/message_drivers/message.h
> +++ b/drivers/staging/vc04_services/interface/vchi/message_drivers/message.h
> @@ -41,7 +41,6 @@
>  #include "interface/vchi/vchi_cfg_internal.h"
>  #include "interface/vchi/vchi_common.h"
>
> -
>  typedef enum message_event_type {
>     MESSAGE_EVENT_NONE,
>     MESSAGE_EVENT_NOP,
> @@ -111,7 +110,6 @@ typedef struct rx_bulk_slotinfo_t {
>     VCHI_FLAGS_T flags;
>  } RX_BULK_SLOTINFO_T;
>
> -
>  /* ----------------------------------------------------------------------
>   * each connection driver will have a pool of the following struct.
>   *
> @@ -155,7 +153,6 @@ typedef struct {
>
>  } MESSAGE_EVENT_T;
>
> -
>  // callbacks
>  typedef void VCHI_MESSAGE_DRIVER_EVENT_CALLBACK_T( void *state );
>
> @@ -163,7 +160,6 @@ typedef struct {
>     VCHI_MESSAGE_DRIVER_EVENT_CALLBACK_T *event_callback;
>  } VCHI_MESSAGE_DRIVER_OPEN_T;
>
> -
>  // handle to this instance of message driver (as returned by ->open)
>  typedef struct opaque_mhandle_t *VCHI_MDRIVER_HANDLE_T;
>
> @@ -195,7 +191,6 @@ struct opaque_vchi_message_driver_t {
>     void    (*debug)( VCHI_MDRIVER_HANDLE_T *handle );
>  };
>
> -
>  #endif // _VCHI_MESSAGE_H_
>
>  /****************************** End of file ***********************************/
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> index addb7b0..ee92189 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> @@ -39,7 +39,6 @@
>  #include "interface/vchi/connections/connection.h"
>  #include "vchi_mh.h"
>
> -
>  /******************************************************************************
>   Global defs
>   *****************************************************************************/
> @@ -92,7 +91,6 @@ typedef struct vchi_msg_vector_ex {
>     } u;
>  } VCHI_MSG_VECTOR_EX_T;
>
> -
>  // Construct an entry in a msg vector for a pointer (p) of length (l)
>  #define VCHI_VEC_POINTER(p,l)  VCHI_VEC_POINTER, { { (VCHI_MEM_HANDLE_T)(p), (l) } }
>
> @@ -103,7 +101,6 @@ typedef struct vchi_msg_vector_ex {
>  #define MAKE_FOURCC(x) ((int32_t)( (x[0] << 24) | (x[1] << 16) | (x[2] << 8) | x[3] ))
>  #define FOURCC_TO_CHAR(x) (x >> 24) & 0xFF,(x >> 16) & 0xFF,(x >> 8) & 0xFF, x & 0xFF
>
> -
>  // Opaque service information
>  struct opaque_vchi_service_t;
>
> @@ -114,8 +111,6 @@ typedef struct {
>     void *message;
>  } VCHI_HELD_MSG_T;
>
> -
> -
>  // structure used to provide the information needed to open a server or a client
>  typedef struct {
>  	struct vchi_version version;
> @@ -162,7 +157,6 @@ extern "C" {
>  extern /*@observer@*/ VCHI_CONNECTION_T * vchi_create_connection( const VCHI_CONNECTION_API_T * function_table,
>                                                     const VCHI_MESSAGE_DRIVER_T * low_level);
>
> -
>  // Routine used to initialise the vchi on both local + remote connections
>  extern int32_t vchi_initialise( VCHI_INSTANCE_T *instance_handle );
>
> @@ -185,7 +179,6 @@ extern void * vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *lengt
>  extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
>  extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
>
> -
>  /******************************************************************************
>   Global service API
>   *****************************************************************************/
> @@ -307,7 +300,6 @@ extern int32_t vchi_msg_iter_hold_next( VCHI_MSG_ITER_T *iter,
>                                          uint32_t *msg_size, // }
>                                          VCHI_HELD_MSG_T *message );
>
> -
>  /******************************************************************************
>   Global bulk API
>   *****************************************************************************/
> @@ -319,7 +311,6 @@ extern int32_t vchi_bulk_queue_receive( VCHI_SERVICE_HANDLE_T handle,
>                                          VCHI_FLAGS_T flags,
>                                          void *transfer_handle );
>
> -
>  // Prepare interface for a transfer from the other side into relocatable memory.
>  int32_t vchi_bulk_queue_receive_reloc( const VCHI_SERVICE_HANDLE_T handle,
>                                         VCHI_MEM_HANDLE_T h_dst,
> @@ -335,7 +326,6 @@ extern int32_t vchi_bulk_queue_transmit( VCHI_SERVICE_HANDLE_T handle,
>                                           VCHI_FLAGS_T flags,
>                                           void *transfer_handle );
>
> -
>  /******************************************************************************
>   Configuration plumbing
>   *****************************************************************************/
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> index 45c2070..76e10fe 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> @@ -34,7 +34,6 @@
>  #ifndef VCHI_COMMON_H_
>  #define VCHI_COMMON_H_
>
> -
>  //flags used when sending messages (must be bitmapped)
>  typedef enum {
>     VCHI_FLAGS_NONE                      = 0x0,
> @@ -118,14 +117,11 @@ typedef enum {
>     VCHI_SERVICE_OPTION_MAX
>  } VCHI_SERVICE_OPTION_T;
>
> -
>  //Callback used by all services / bulk transfers
>  typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
>  				 VCHI_CALLBACK_REASON_T reason,
>  				 void *handle); //for transmitting msg's only
>
> -
> -
>  /*
>   * Define vector struct for scatter-gather (vector) operations
>   * Vectors can be nested - if a vector element has negative length, then
> @@ -154,7 +150,6 @@ typedef struct opaque_vchi_connection_api_t VCHI_CONNECTION_API_T;
>  // Opaque type for a message driver
>  typedef struct opaque_vchi_message_driver_t VCHI_MESSAGE_DRIVER_T;
>
> -
>  // Iterator structure for reading ahead through received message queue. Allocated by client,
>  // initialised by vchi_msg_look_ahead. Fields are for internal VCHI use only.
>  // Iterates over messages in queue at the instant of the call to vchi_msg_lookahead -
> @@ -168,5 +163,4 @@ typedef struct {
>     void *remove;
>  } VCHI_MSG_ITER_T;
>
> -
>  #endif // VCHI_COMMON_H_
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index d23152b..6fcc626 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -109,10 +109,8 @@ static const char *const resume_state_names[] = {
>   * requested */
>  #define FORCE_SUSPEND_TIMEOUT_MS 200
>
> -
>  static void suspend_timer_callback(unsigned long context);
>
> -
>  typedef struct user_service_struct {
>  	VCHIQ_SERVICE_T *service;
>  	void *userdata;
> @@ -2156,8 +2154,6 @@ vchiq_keepalive_thread_func(void *v)
>  	return 0;
>  }
>
> -
> -
>  VCHIQ_STATUS_T
>  vchiq_arm_init_state(VCHIQ_STATE_T *state, VCHIQ_ARM_STATE_T *arm_state)
>  {
> @@ -2318,7 +2314,6 @@ set_resume_state(VCHIQ_ARM_STATE_T *arm_state,
>  	}
>  }
>
> -
>  /* should be called with the write lock held */
>  inline void
>  start_suspend_timer(VCHIQ_ARM_STATE_T *arm_state)
> @@ -2438,7 +2433,6 @@ vchiq_arm_vcsuspend(VCHIQ_STATE_T *state)
>  	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
>  	status = VCHIQ_SUCCESS;
>
> -
>  	switch (arm_state->vc_suspend_state) {
>  	case VC_SUSPEND_REQUESTED:
>  		vchiq_log_info(vchiq_susp_log_level, "%s: suspend already "
> @@ -2503,7 +2497,6 @@ vchiq_platform_check_suspend(VCHIQ_STATE_T *state)
>  	return;
>  }
>
> -
>  static void
>  output_timeout_error(VCHIQ_STATE_T *state)
>  {
> @@ -2683,7 +2676,6 @@ vchiq_check_suspend(VCHIQ_STATE_T *state)
>  	return;
>  }
>
> -
>  int
>  vchiq_arm_allow_resume(VCHIQ_STATE_T *state)
>  {
> @@ -2845,7 +2837,6 @@ vchiq_use_internal(VCHIQ_STATE_T *state, VCHIQ_SERVICE_T *service,
>  			"%s %s count %d, state count %d",
>  			__func__, entity, *entity_uc, local_uc);
>
> -
>  	write_unlock_bh(&arm_state->susp_res_lock);
>
>  	/* Completion is in a done state when we're not suspended, so this won't
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
> index bfbd81d..a4cc0db 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
> @@ -42,7 +42,6 @@
>  #include "vchiq_core.h"
>  #include "vchiq_debugfs.h"
>
> -
>  enum vc_suspend_status {
>  	VC_SUSPEND_FORCE_CANCELED = -3, /* Force suspend canceled, too busy */
>  	VC_SUSPEND_REJECTED = -2,  /* Videocore rejected suspend request */
> @@ -61,15 +60,12 @@ enum vc_resume_status {
>  	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
>  };
>
> -
>  enum USE_TYPE_E {
>  	USE_TYPE_SERVICE,
>  	USE_TYPE_SERVICE_NO_RESUME,
>  	USE_TYPE_VCHIQ
>  };
>
> -
> -
>  typedef struct vchiq_arm_state_struct {
>  	/* Keepalive-related data */
>  	struct task_struct *ka_thread;
> @@ -216,5 +212,4 @@ set_resume_state(VCHIQ_ARM_STATE_T *arm_state,
>  extern void
>  start_suspend_timer(VCHIQ_ARM_STATE_T *arm_state);
>
> -
>  #endif /* VCHIQ_ARM_H */
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 486be99..c3bb8e0 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -130,7 +130,6 @@ static const char *const conn_state_names[] = {
>  	"RESUME_TIMEOUT"
>  };
>
> -
>  static void
>  release_message_sync(VCHIQ_STATE_T *state, VCHIQ_HEADER_T *header);
>
> @@ -2168,7 +2167,6 @@ slot_handler_func(void *v)
>  				break;
>  			}
>
> -
>  		}
>
>  		DEBUG_TRACE(SLOT_HANDLER_LINE);
> @@ -2177,7 +2175,6 @@ slot_handler_func(void *v)
>  	return 0;
>  }
>
> -
>  /* Called by the recycle thread */
>  static int
>  recycle_func(void *v)
> @@ -2193,7 +2190,6 @@ recycle_func(void *v)
>  	return 0;
>  }
>
> -
>  /* Called by the sync thread */
>  static int
>  sync_func(void *v)
> @@ -2301,7 +2297,6 @@ sync_func(void *v)
>  	return 0;
>  }
>
> -
>  static void
>  init_bulk_queue(VCHIQ_BULK_QUEUE_T *queue)
>  {
> @@ -2312,14 +2307,12 @@ init_bulk_queue(VCHIQ_BULK_QUEUE_T *queue)
>  	queue->remove = 0;
>  }
>
> -
>  inline const char *
>  get_conn_state_name(VCHIQ_CONNSTATE_T conn_state)
>  {
>  	return conn_state_names[conn_state];
>  }
>
> -
>  VCHIQ_SLOT_ZERO_T *
>  vchiq_init_slots(void *mem_base, int mem_size)
>  {
> @@ -3296,7 +3289,6 @@ vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T handle)
>  	return status;
>  }
>
> -
>  /* This function may be called by kernel threads or user threads.
>   * User threads may receive VCHIQ_RETRY to indicate that a signal has been
>   * received and the call should be retried after being returned to user
> @@ -3876,7 +3868,6 @@ vchiq_dump_service_state(void *dump_context, VCHIQ_SERVICE_T *service)
>  		vchiq_dump_platform_service_state(dump_context, service);
>  }
>
> -
>  void
>  vchiq_loud_error_header(void)
>  {
> @@ -3901,7 +3892,6 @@ vchiq_loud_error_footer(void)
>  		"================");
>  }
>
> -
>  VCHIQ_STATUS_T vchiq_send_remote_use(VCHIQ_STATE_T *state)
>  {
>  	VCHIQ_STATUS_T status = VCHIQ_RETRY;
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> index 9e16465..afc1d81 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
> @@ -702,7 +702,6 @@ vchiq_platform_handle_timeout(VCHIQ_STATE_T *state);
>  extern void
>  vchiq_set_conn_state(VCHIQ_STATE_T *state, VCHIQ_CONNSTATE_T newstate);
>
> -
>  extern void
>  vchiq_log_dump_mem(const char *label, uint32_t addr, const void *voidMem,
>  	size_t numBytes);
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
> index 9367a9a..766b4fe 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_debugfs.c
> @@ -32,7 +32,6 @@
>   * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
>   */
>
> -
>  #include <linux/debugfs.h>
>  #include "vchiq_core.h"
>  #include "vchiq_arm.h"
> @@ -52,7 +51,6 @@
>  #define VCHIQ_LOG_INFO_STR    "info"
>  #define VCHIQ_LOG_TRACE_STR   "trace"
>
> -
>  /* Top-level debug info */
>  struct vchiq_debugfs_info {
>  	/* Global 'vchiq' debugfs entry used by all instances */
> @@ -316,7 +314,6 @@ void vchiq_debugfs_remove_instance(VCHIQ_INSTANCE_T instance)
>  	debugfs_remove_recursive(node->dentry);
>  }
>
> -
>  int vchiq_debugfs_init(void)
>  {
>  	BUG_ON(debugfs_info.vchiq_cfg_dir != NULL);
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index 631ff73..d465e1c 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -84,7 +84,6 @@ VCHI_CONNECTION_T *vchi_create_connection(
>   *             void **data,
>   *             uint32_t *msg_size,
>
> -
>   *             VCHI_FLAGS_T flags
>   *
>   * Description: Routine to return a pointer to the current message (to allow in
> @@ -541,7 +540,6 @@ int32_t vchi_connect(VCHI_CONNECTION_T **connections,
>  }
>  EXPORT_SYMBOL(vchi_connect);
>
> -
>  /***********************************************************
>   * Name: vchi_disconnect
>   *
> @@ -561,7 +559,6 @@ int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle)
>  }
>  EXPORT_SYMBOL(vchi_disconnect);
>
> -
>  /***********************************************************
>   * Name: vchi_service_open
>   * Name: vchi_service_create
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/960f1d14d6ccc60acd7abb8e5ae9d6198031ca2b.1506439214.git.keerthigd4990%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


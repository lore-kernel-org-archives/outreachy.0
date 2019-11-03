X-GM-THRID: 6753896393761357824
X-Received: by 2002:a17:90a:9604:: with SMTP id v4mr2136345pjo.105.1572817303310;
        Sun, 03 Nov 2019 13:41:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls2909204plo.7.gmail; Sun, 03
 Nov 2019 13:41:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqxINDinvFSX/zu2HIVThItobJI3YabHwjhVN6747mWuiUsM+tZWxmQ+vRhxyicjkxN+HJUA
X-Received: by 2002:a17:90a:eacd:: with SMTP id ev13mr8148159pjb.97.1572817301951;
        Sun, 03 Nov 2019 13:41:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572817301; cv=none;
        d=google.com; s=arc-20160816;
        b=iny1bZn5I/1yJWRGkCartOlRt/f6LDDv8Kxygw6Uh8byAY0fdVjgSWucbiKZPylaen
         xPzv2E76gzEUY1ugs6qdxY0aaNrM3IwJJLCWtSWBIZH5kgsqN4Vddz13c311/CN/Xnm5
         w63tjkgpoaOneTJDLSGtpxoddeey1qQ7FzoPGl+ZFfywJfttLsajo0R5q3RvJkL5u9Lz
         azSrQ6pPyTFQG7HZDOPlsDESqzBGHvEdedYgQunBK3rgVU2RFaHMy4k3IUQzpPHmMLnE
         FbdHhr4qtoKLLuWJzDjMeVrxF/6MG2lhKLbEpBN33uLyyIfA+ObxAv5oSM8S+LFxWYHd
         REVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fqdbbqjaakjF0iYEu9Sof1AoMhvVV6gSY99XLCwcQiQ=;
        b=w4Ifk7+EfFmUbO6OCicyFcYFxbQHmP+xohUcH4mkBAbRpzoc7OETdcpr7W4zDW5ExW
         A2GfHK5UB8MjFsUPLo74tb+8K588yeqlem5QzSRUuFIuuZKHbrHstJHsSCD/5uLWSeql
         WQVukQDAA9YJ4k4yyDGZZNMdgeDvwyPvNhQ1U7TKoXIJhzKGtHjCqjHK3U58OTVtPmtN
         s9b6VR9Hf0kN3VOUShvSgkenPd3c+YtiKBKtJwUQrCUsIIdqvKQdpRb+0+3K9BZBH7fg
         Ro//06Big47ejmOvrQGc9xiJoa2tAdPypID1Ra0zi3omQxfADCojgAD67M8JkMFlu4FB
         LEaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m7HjmUhZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b17si646324plz.1.2019.11.03.13.41.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 13:41:41 -0800 (PST)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m7HjmUhZ;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id l24so9941794pgh.10
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 13:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fqdbbqjaakjF0iYEu9Sof1AoMhvVV6gSY99XLCwcQiQ=;
        b=m7HjmUhZ82/2zrdwoA7eR/tksN5zIzYCnH0dPkYN3BH2IXm6S/R/Fy2J2uhME9OfOV
         2DXbgFAXA5eoQI+Kvk6U40Mk394l96UAt5TmkAfDAOD8Namre/cn1VOUShGu4TCJ6ArA
         uHrV9l39G8Ecc5s0ZaR/4Qy1w0dIBfzo/+NjkxKju9N3Mo3Uo29BhTvbd7fuawfb3CMK
         WXUZYaRISiOIVIFJw2lmPNhG5HySbMuTsz8/+oYeeSgA7XUaioCTE3eOX2o458Lrfyxx
         yZZTviLWOVcKXluZ4MTQuBy+7Z32XSQyJ/zBrwSHZJCrqjaT/QuzSUARE/ZQyXvzRUY/
         CDUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fqdbbqjaakjF0iYEu9Sof1AoMhvVV6gSY99XLCwcQiQ=;
        b=KYY2O9lEZSAT59D1W2vdLIwBa3OtoDiuTsta7zfr6BjcuhNWZEMo5UFOFPxyj1jSvN
         6qr5UCx45xMwg6x6Y29QNrHzZQMUwrodo7chPkUtDRGLTe0Vpy4IYltFCQJHEJfvJQTE
         BK0NG+YzstvqEVGtgqWwicpS5/xNIbG982/EuGkWeNI0yEpbZ4hzFD1yQoi+LnivdJlX
         0xULb1KJiztUYR3mSXd06vXpLKMqCJdqx8kmm9XVc9Nkq10bl0JSaR/RIZKwqrzxS3Im
         svuGtc9o43+hgDUROMKtzQciUhKojiQDz/3uOsio0wFGBIWBgs8J4R9DL6NTDgVVeNWR
         DuGg==
X-Gm-Message-State: APjAAAXNnURsgM8Y1Xrt/JZNll12haHg1m/nHLtWa63zLd8nn3r/7axj
	FK5HHgedrm2mS3nijR/lWs0=
X-Received: by 2002:a17:90a:1db:: with SMTP id 27mr14080665pjd.57.1572817301447;
        Sun, 03 Nov 2019 13:41:41 -0800 (PST)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id l93sm16598878pjb.6.2019.11.03.13.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 13:41:40 -0800 (PST)
Date: Sun, 3 Nov 2019 13:41:34 -0800
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net
Subject: Re: [PATCH v5 01/10] staging: vc04_services: Remove instance struct
 typedef
Message-ID: <20191103214134.GA5083@jamal-XPS-13-9343>
References: <cover.1572755439.git.jamal.k.shareef@gmail.com>
 <8774abbd755f78cde4fff36ca75ea0e3a5519cd0.1572755439.git.jamal.k.shareef@gmail.com>
 <20191103121253.GA602586@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191103121253.GA602586@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Nov 03, 2019 at 01:12:53PM +0100, Greg KH wrote:
> On Sat, Nov 02, 2019 at 09:36:58PM -0700, Jamal Shareef wrote:
> > Removes opaque vchi instance struct typedefs. Issue found by
> > checkpatch.
> 
> What do you mean here by "opaque"?
>
Can reword this. The struct is never defined as far as I am aware so I
assumed it was another declaration of an opaque struct but this is not
necessarily the case
> > 
> > Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
> > ---
> >  .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
> >  .../vc04_services/bcm2835-audio/bcm2835.h     |  2 +-
> >  .../vc04_services/bcm2835-camera/mmal-vchiq.c |  2 +-
> >  .../vc04_services/interface/vchi/vchi.h       | 12 +++---
> >  .../interface/vchi/vchi_common.h              |  2 +-
> >  .../interface/vchiq_arm/vchiq_shim.c          | 43 +++++++++----------
> >  6 files changed, 31 insertions(+), 32 deletions(-)
> > 
> > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > index 84ece768854f..2022ff2388dc 100644
> > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
> > @@ -122,7 +122,7 @@ static void audio_vchi_callback(void *param,
> >  }
> >  
> >  static int
> > -vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
> > +vc_vchi_audio_init(struct vchi_instance_handle *vchi_instance,
> >  		   struct bcm2835_audio_instance *instance)
> >  {
> >  	struct service_creation params = {
> > diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> > index ed0feb34b6c8..d2fe8d36ab7d 100644
> > --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> > +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> > @@ -44,7 +44,7 @@ enum snd_bcm2835_ctrl {
> >  };
> >  
> >  struct bcm2835_vchi_ctx {
> > -	VCHI_INSTANCE_T vchi_instance;
> > +	struct vchi_instance_handle *vchi_instance;
> >  };
> >  
> >  /* definition of the chip-specific record */
> > diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > index 06b7be7d8872..0f4db2f24944 100644
> > --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-vchiq.c
> > @@ -1814,7 +1814,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
> >  {
> >  	int status;
> >  	struct vchiq_mmal_instance *instance;
> > -	static VCHI_INSTANCE_T vchi_instance;
> > +	static struct vchi_instance_handle *vchi_instance;
> >  	struct service_creation params = {
> >  		.version		= VCHI_VERSION_EX(VC_MMAL_VER, VC_MMAL_MIN_VER),
> >  		.service_id		= VC_MMAL_SERVER_NAME,
> > diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
> > index 75b1ab4919e3..5c8842114607 100644
> > --- a/drivers/staging/vc04_services/interface/vchi/vchi.h
> > +++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
> > @@ -50,7 +50,7 @@ struct service_creation {
> >  };
> >  
> >  // Opaque handle for a VCHI instance
> > -typedef struct opaque_vchi_instance_handle_t *VCHI_INSTANCE_T;
> > +struct vchi_instance_handle;
> >  
> >  // Opaque handle for a server or client
> >  typedef struct opaque_vchi_service_handle_t *VCHI_SERVICE_HANDLE_T;
> > @@ -65,20 +65,20 @@ extern "C" {
> >  #endif
> >  
> >  // Routine used to initialise the vchi on both local + remote connections
> > -extern int32_t vchi_initialise(VCHI_INSTANCE_T *instance_handle);
> > +extern int32_t vchi_initialise(struct vchi_instance_handle **instance_handle);
> >  
> >  extern int32_t vchi_exit(void);
> >  
> > -extern int32_t vchi_connect(VCHI_INSTANCE_T instance_handle);
> > +extern int32_t vchi_connect(struct vchi_instance_handle *instance_handle);
> >  
> >  //When this is called, ensure that all services have no data pending.
> >  //Bulk transfers can remain 'queued'
> > -extern int32_t vchi_disconnect(VCHI_INSTANCE_T instance_handle);
> > +extern int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle);
> >  
> >  // helper functions
> >  extern void *vchi_allocate_buffer(VCHI_SERVICE_HANDLE_T handle, uint32_t *length);
> >  extern void vchi_free_buffer(VCHI_SERVICE_HANDLE_T handle, void *address);
> > -extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
> > +extern uint32_t vchi_current_time(struct vchi_instance_handle *instance_handle);
> >  
> >  /******************************************************************************
> >   * Global service API
> > @@ -87,7 +87,7 @@ extern uint32_t vchi_current_time(VCHI_INSTANCE_T instance_handle);
> >  extern int32_t vchi_service_destroy(const VCHI_SERVICE_HANDLE_T handle);
> >  
> >  // Routine to open a named service
> > -extern int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
> > +extern int32_t vchi_service_open(struct vchi_instance_handle *instance_handle,
> >  				 struct service_creation *setup,
> >  				 VCHI_SERVICE_HANDLE_T *handle);
> >  
> > diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> > index c99735fc0308..fba37559aa83 100644
> > --- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> > +++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
> > @@ -86,7 +86,7 @@ enum vchi_service_option {
> >  };
> >  
> >  //Callback used by all services / bulk transfers
> > -typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
> > + typedef void (*VCHI_CALLBACK_T)(void *callback_param, //my service local param
> 
> Why the extra space?
> 
> >  				enum vchi_callback_reason reason,
> >  				void *handle); //for transmitting msg's only
> >  
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > index 704afd470c88..a2434a68fc2f 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> > @@ -23,7 +23,7 @@ struct shim_service {
> >  /***********************************************************
> >   * Name: vchi_msg_peek
> >   *
> > - * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
> > + * Arguments:  VCHI_SERVICE_HANDLE_T handle,
> 
> Did you change the const?
This is a leftover from the next patch. It was changed to match the
actual working code below which is not a const.
> 
> >   *             void **data,
> >   *             uint32_t *msg_size,
> >  
> > @@ -63,7 +63,7 @@ EXPORT_SYMBOL(vchi_msg_peek);
> >  /***********************************************************
> >   * Name: vchi_msg_remove
> >   *
> > - * Arguments:  const VCHI_SERVICE_HANDLE_T handle,
> > + * Arguments:  VCHI_SERVICE_HANDLE_T handle,
> 
> Huh?  What does this change mean?
>
Same thing here, it does not belong in this patch but these function
descriptions were changed to match the working code below it, which is
not a const.
> 
> >   *
> >   * Description: Routine to remove a message (after it has been read with
> >   *              vchi_msg_peek)
> > @@ -100,10 +100,9 @@ EXPORT_SYMBOL(vchi_msg_remove);
> >   ***********************************************************/
> >  static
> >  int32_t vchi_msg_queue(VCHI_SERVICE_HANDLE_T handle,
> > -	ssize_t (*copy_callback)(void *context, void *dest,
> > -				 size_t offset, size_t maxsize),
> > -	void *context,
> > -	uint32_t data_size)
> > +		       ssize_t (*copy_callback)(void *context, void *dest,
> > +						size_t offset, size_t maxsize),
> > +		       void *context, uint32_t data_size)
> >  {
> >  	struct shim_service *service = (struct shim_service *)handle;
> >  	VCHIQ_STATUS_T status;
> > @@ -169,8 +168,7 @@ vchi_queue_user_message_callback(void *context,
> >  }
> >  
> >  int
> > -vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle,
> > -			void __user *data,
> > +vchi_queue_user_message(VCHI_SERVICE_HANDLE_T handle, void __user *data,
> >  			unsigned int size)
> >  {
> >  	struct vchi_queue_user_message_context copycontext = {
> > @@ -187,7 +185,7 @@ EXPORT_SYMBOL(vchi_queue_user_message);
> >  /***********************************************************
> >   * Name: vchi_bulk_queue_receive
> >   *
> > - * Arguments:  VCHI_BULK_HANDLE_T handle,
> > + * Arguments:  VCHI_SERVICE_HANDLE_T handle,
> 
> Huh???
This description did not match the working code below it so it was
changed. This change was supposed to be a part of the next patch, or
possibly in an entirely new patch.
> 
> >   *             void *data_dst,
> >   *             const uint32_t data_size,
> >   *             enum vchi_flags flags
> > @@ -245,7 +243,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
> >  /***********************************************************
> >   * Name: vchi_bulk_queue_transmit
> >   *
> > - * Arguments:  VCHI_BULK_HANDLE_T handle,
> > + * Arguments:  VCHI_SERVICE_HANDLE_T handle,
> 
> Did you change this???
Same as above
> 
> This series is "rough".  Please take a day off, step back and try doing
> all of this "from scratch", doing only one thing per patch.
> 
I will take some time to reassess and take in all the comments. Thank
you.

Jamal
> thanks,
> 
> greg k-h


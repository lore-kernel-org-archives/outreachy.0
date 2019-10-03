X-GM-THRID: 6743638980640636928
X-Received: by 2002:a05:600c:48b:: with SMTP id d11mr3435102wme.153.1570136692116;
        Thu, 03 Oct 2019 14:04:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c44e:: with SMTP id l14ls384444wmi.4.canary-gmail; Thu,
 03 Oct 2019 14:04:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyITgNSYVTWAAWpY9LbGfvBgnSB3BcyfQXIRdfd3QnLIJs7LGi12YI5bqZTc/cE9+Kfy3q8
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr8807039wmc.113.1570136691120;
        Thu, 03 Oct 2019 14:04:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570136691; cv=none;
        d=google.com; s=arc-20160816;
        b=aIk0ygA+LNW2BmXUTdkjCvVXSpt9Cm08yLHvmskXeS9P+nzKjnABThwgSTGcCR3M6Z
         RPa/nMB1JsAxQlc+HJetH7fqGUDInZb9FqTQbcdKsWSjMenOjhpnwJsLNIlojQJfWm1X
         HadaYbyz7VhUNEhq/dbb1uPOJBmPU79hNwD7feGEaW7/0uzbPSzzJLxjiSOcIYLMTxgW
         CD08CMGmT4fPrqAioi5vZaosEiBbNVYV9az82dTyw7abOQt/A4zxkzYQA1fvjWRnlfcj
         6/lC9krHxWxZyzkZUawRx4GIgXNKZBINNU/3++cikkvg1Z7wOQ78RXYbgeMywhPyFaxJ
         AdLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7BbeCVbv3QQuZq2FUEiuq4i8zq6WwaJFBgKmUbTDIQU=;
        b=GciBBoBrSjprpXGi0p9K72v3J1szlmNX+s851H8yF9ypujQ52tZpiaWYdWLdwV2kAR
         kgLGaOdTLTV8V0ZT/TLaCtWBvR2qXfqgYvgVa/4s7+TweiBnWjtv7h/Dqeqb1K1e83Oq
         6uBm6xl5B2WfsAlUgvwMi4nxdzvXHs0Y2dS/qBU71lJDtaK5pyMNj9lSpcpjRhiY5Ws2
         zg4+ynn/nGBsNpiZ8hW48Ir7LiLfkozHAAslS/dYM0mXsihk9Akf36V5xTut4tArBi5k
         GOAkRCv/0Gdvn2sY/GAY3FePwzJBfriB/rE2t/9IIFZSOO0wt91VslWn/n7gO5Wba4KD
         WSGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x8si342964wmk.2.2019.10.03.14.04.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Oct 2019 14:04:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,253,1566856800"; 
   d="scan'208";a="404639639"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Oct 2019 23:04:50 +0200
Date: Thu, 3 Oct 2019 23:04:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Avoid
 typedef
In-Reply-To: <1570125797-24410-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910032253270.3451@hadrien>
References: <1570125797-24410-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 3 Oct 2019, Nachammai Karuppiah wrote:

> Avoid typedefs to maintain kernel coding style. Issue found by
> checkpatch.pl
>
> Replace the enum typedef VCHIQ_REASON_T with vchiq_reason.

Would it be possible to get rid of them all?  They seem to all go
together, since they start with the same prefix, and they all don't look
nice at all.

The changes so far seem to be going in the right direction.

julia

>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c  | 4 ++--
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 6 +++---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c  | 2 +-
>  5 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index b1595b1..280e237 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -516,7 +516,7 @@ vchiq_blocking_bulk_transfer(VCHIQ_SERVICE_HANDLE_T handle, void *data,
>  ***************************************************************************/
>
>  static VCHIQ_STATUS_T
> -add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
> +add_completion(VCHIQ_INSTANCE_T instance, enum vchiq_reason reason,
>  	       struct vchiq_header *header, struct user_service *user_service,
>  	       void *bulk_userdata)
>  {
> @@ -583,7 +583,7 @@ add_completion(VCHIQ_INSTANCE_T instance, VCHIQ_REASON_T reason,
>  ***************************************************************************/
>
>  static VCHIQ_STATUS_T
> -service_callback(VCHIQ_REASON_T reason, struct vchiq_header *header,
> +service_callback(enum vchiq_reason reason, struct vchiq_header *header,
>  		 VCHIQ_SERVICE_HANDLE_T handle, void *bulk_userdata)
>  {
>  	/* How do we ensure the callback goes to the right client?
> @@ -1666,7 +1666,7 @@ vchiq_compat_ioctl_queue_bulk(struct file *file,
>  }
>
>  struct vchiq_completion_data32 {
> -	VCHIQ_REASON_T reason;
> +	enum vchiq_reason reason;
>  	compat_uptr_t header;
>  	compat_uptr_t service_userdata;
>  	compat_uptr_t bulk_userdata;
> @@ -2271,7 +2271,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
>  }
>
>  static VCHIQ_STATUS_T
> -vchiq_keepalive_vchiq_callback(VCHIQ_REASON_T reason,
> +vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
>  	struct vchiq_header *header,
>  	VCHIQ_SERVICE_HANDLE_T service_user,
>  	void *bulk_user)
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> index 56a23a2..b0e0653 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
> @@ -355,7 +355,7 @@ mark_service_closing(struct vchiq_service *service)
>  }
>
>  static inline VCHIQ_STATUS_T
> -make_service_callback(struct vchiq_service *service, VCHIQ_REASON_T reason,
> +make_service_callback(struct vchiq_service *service, enum vchiq_reason reason,
>  		      struct vchiq_header *header, void *bulk_userdata)
>  {
>  	VCHIQ_STATUS_T status;
> @@ -1230,7 +1230,7 @@ notify_bulks(struct vchiq_service *service, struct vchiq_bulk_queue *queue,
>  					spin_unlock(&bulk_waiter_spinlock);
>  				} else if (bulk->mode ==
>  					VCHIQ_BULK_MODE_CALLBACK) {
> -					VCHIQ_REASON_T reason = (bulk->dir ==
> +					enum vchiq_reason reason = (bulk->dir ==
>  						VCHIQ_BULK_TRANSMIT) ?
>  						((bulk->actual ==
>  						VCHIQ_BULK_ACTUAL_ABORTED) ?
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> index c23bd10..f911612 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> @@ -15,7 +15,7 @@
>  #define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
>  #define VCHIQ_GET_SERVICE_FOURCC(service)   vchiq_get_service_fourcc(service)
>
> -typedef enum {
> +enum vchiq_reason {
>  	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
>  	VCHIQ_SERVICE_CLOSED,         /* service, -, -             */
>  	VCHIQ_MESSAGE_AVAILABLE,      /* service, header, -        */
> @@ -23,7 +23,7 @@ typedef enum {
>  	VCHIQ_BULK_RECEIVE_DONE,      /* service, -, bulk_userdata */
>  	VCHIQ_BULK_TRANSMIT_ABORTED,  /* service, -, bulk_userdata */
>  	VCHIQ_BULK_RECEIVE_ABORTED    /* service, -, bulk_userdata */
> -} VCHIQ_REASON_T;
> +};
>
>  typedef enum {
>  	VCHIQ_ERROR   = -1,
> @@ -63,7 +63,7 @@ struct vchiq_element {
>
>  typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
>
> -typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(VCHIQ_REASON_T,
> +typedef VCHIQ_STATUS_T (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
>  					   struct vchiq_header *,
>  					   VCHIQ_SERVICE_HANDLE_T, void *);
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> index 460ccea..c2343a1 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> @@ -32,7 +32,7 @@ struct vchiq_queue_bulk_transfer {
>  };
>
>  struct vchiq_completion_data {
> -	VCHIQ_REASON_T reason;
> +	enum vchiq_reason reason;
>  	struct vchiq_header *header;
>  	void *service_userdata;
>  	void *bulk_userdata;
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> index a2268d5..e02518d 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
> @@ -509,7 +509,7 @@ EXPORT_SYMBOL(vchi_disconnect);
>   *
>   ***********************************************************/
>
> -static VCHIQ_STATUS_T shim_callback(VCHIQ_REASON_T reason,
> +static VCHIQ_STATUS_T shim_callback(enum vchiq_reason reason,
>  				    struct vchiq_header *header,
>  				    VCHIQ_SERVICE_HANDLE_T handle,
>  				    void *bulk_user)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570125797-24410-1-git-send-email-nachukannan%40gmail.com.
>


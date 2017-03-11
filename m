X-GM-THRID: 6396335157434908672
X-Received: by 10.25.18.219 with SMTP id 88mr3662439lfs.29.1489265104338;
        Sat, 11 Mar 2017 12:45:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls1296816lji.30.gmail; Sat, 11 Mar
 2017 12:45:03 -0800 (PST)
X-Received: by 10.46.78.9 with SMTP id c9mr4185488ljb.20.1489265103269;
        Sat, 11 Mar 2017 12:45:03 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si294461wmh.1.2017.03.11.12.45.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 12:45:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,148,1486422000"; 
   d="scan'208";a="264154043"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 21:45:02 +0100
Date: Sat, 11 Mar 2017 21:45:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, swarren@wwwdotorg.org, lee@kernel.org, 
    eric@anholt.net, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Replace
 typedef with struct
In-Reply-To: <1489262680-30792-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703112144420.2270@hadrien>
References: <1489262680-30792-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 12 Mar 2017, Gargi Sharma wrote:

> Using typedef for a structure type is not suggested in Linux kernel
> coding style guidelines. Hence, occurences of typedefs have been
> removed in the file. Grep was also used to ensure that
> all occurence of the typedefs have been removed. The module compiles
> without any warnings or errors.
>
> Script 1:
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
> if T[-2:] =="_t":
>   coccinelle.T2 = T[:-2];
>   print T
> else:
>   coccinelle.T2=T;
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
> - T
> + struct T2
>
> Script 2:
> @@
> typedef VCHIQ_ELEMENT_T;
> @@
>
> (
> - VCHIQ_ELEMENT_T
> + struct VCHIQ_ELEMENT
> )

Convert the name to lowercase.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 8 ++++----
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h    | 4 ++--
>  drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h | 2 +-
>  3 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> index 1dc8627..a5ba663 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> @@ -406,7 +406,7 @@ static void close_delivered(USER_SERVICE_T *user_service)
>  }
>
>  struct vchiq_io_copy_callback_context {
> -	VCHIQ_ELEMENT_T *current_element;
> +	struct VCHIQ_ELEMENT *current_element;
>  	size_t current_element_offset;
>  	unsigned long elements_to_go;
>  	size_t current_offset;
> @@ -483,7 +483,7 @@ vchiq_ioc_copy_element_data(
>   **************************************************************************/
>  static VCHIQ_STATUS_T
>  vchiq_ioc_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
> -			VCHIQ_ELEMENT_T *elements,
> +			struct VCHIQ_ELEMENT *elements,
>  			unsigned long count)
>  {
>  	struct vchiq_io_copy_callback_context context;
> @@ -752,9 +752,9 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>
>  		if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
>  			/* Copy elements into kernel space */
> -			VCHIQ_ELEMENT_T elements[MAX_ELEMENTS];
> +			struct VCHIQ_ELEMENT elements[MAX_ELEMENTS];
>  			if (copy_from_user(elements, args.elements,
> -				args.count * sizeof(VCHIQ_ELEMENT_T)) == 0)
> +				args.count * sizeof(struct VCHIQ_ELEMENT)) == 0)
>  				status = vchiq_ioc_queue_message
>  					(args.handle,
>  					elements, args.count);
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> index 377e8e4..b31aeb1 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
> @@ -88,10 +88,10 @@ typedef struct vchiq_header_struct {
>  	char data[0];           /* message */
>  } VCHIQ_HEADER_T;
>
> -typedef struct {
> +struct VCHIQ_ELEMENT {
>  	const void *data;
>  	unsigned int size;
> -} VCHIQ_ELEMENT_T;
> +};
>
>  typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
>
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> index 6137ae9..39fb4bc 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
> @@ -50,7 +50,7 @@ typedef struct {
>  typedef struct {
>  	unsigned int handle;
>  	unsigned int count;
> -	const VCHIQ_ELEMENT_T *elements;
> +	const struct VCHIQ_ELEMENT *elements;
>  } VCHIQ_QUEUE_MESSAGE_T;
>
>  typedef struct {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489262680-30792-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


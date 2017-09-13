X-GM-THRID: 6464947819093426176
X-Received: by 10.129.169.134 with SMTP id g128mr7756284ywh.236.1505342021109;
        Wed, 13 Sep 2017 15:33:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.180.22 with SMTP id d22ls1827756iof.48.gmail; Wed, 13 Sep
 2017 15:33:40 -0700 (PDT)
X-Received: by 10.36.40.132 with SMTP id h126mr196144ith.0.1505342020054;
        Wed, 13 Sep 2017 15:33:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505342020; cv=none;
        d=google.com; s=arc-20160816;
        b=mf13utYLYYKfTE7hMYWWv0CBVTVQ9jv6MDAooP830gBznKvy2HbCDEiGwlEe/k3lDN
         4qzf9GJV4AD4HuWeA+JlgdYoMEJJI6HimsapS/oVDfaxe7eXQatN/yVqZWx7IHl0VGEr
         ps8sxYO1wxdEnuE3rOIn/0ApEDwgOiWtzZwIY5EB9VAseud+YH3CC5NuY7SEJy/Ob+cI
         UIyUZ6zcL2mke0NP5oDlYzAFlRGDWHdylKwffkwi3aOZLLKuT5CmqORWO+OsaYRQxaT6
         EIXCJBRt41qKyetwBEaVSuHIhN2TTNj4SwF1FcSBmXgNsgOyqBTTh+Ecte9MIZWonzvS
         r9Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=bk6ZMLz8HOBrsJndAIo1wRwXzJycKZjWFJhuYUONZLs=;
        b=WCQO+W1oPyhTxqfJbQfbR1Bkp/x+EfPQewDWzPOpO91JLKT81WpAW5oTFCSh6yzo6X
         jBCNQRGs9np8aoNFFS38SYyGbbIDihRBHE/SXPAsH0hK+F2Zn1uTPOA9UkcP7dqQiqqY
         bmTRFjBjxB27095yYc9CIEU99XOpQZqr8zGEWbPZbbOEj6jJHxZDJV4v0LukpbRI2l27
         ajKoJwc9PfWae58ewMN9oPGl3lp2l5EJOW0xwID2Q/Cd3ufIzInTC4zgXQlTkAOyhwLz
         9IFmk34HcSTmzARRiHKnjkE8GNAfDrS05WCw0sRkyK7Re6iNXwjr5x7EDXNHUZSXSFuy
         tGOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J+odY5Jr;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <amitoj1606@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id t131si1109698ywe.15.2017.09.13.15.33.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 15:33:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J+odY5Jr;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id g32so1752150ioj.1
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 15:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bk6ZMLz8HOBrsJndAIo1wRwXzJycKZjWFJhuYUONZLs=;
        b=J+odY5JrdZSH7XJSNUKPgzNjDYnvwrlG6CRnDOYlZUxyh4RizQ1Ru2MxetK7ZYFJti
         8S2pznSdJlKJ3tbKe7fhEEpQo2cnTshSVafV9I9IqsBpMKxbsIJrzGI9Y5WE7JpXztPK
         tIoNj/+kE53aHx3dSAvL4DdiFQUTAE1sDSC2YSzln/i5QRmwYPo6pGIqVCl2eRAONuij
         hHSBB57MkQ+F7KW558xMNsN+93HVDh7GTyuHDuMsJi2lXHdgXnhtoSUXi1kH28LSC7Fp
         s+4f2XMgzqYUErD+aXlaDlSu6NqW5Jm+HnLRM1HB9M40zLYhu5YQOGTrx8lUdr78w4HJ
         3BqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bk6ZMLz8HOBrsJndAIo1wRwXzJycKZjWFJhuYUONZLs=;
        b=P9PTL0OLHnmT+yr0BetdERaSQWvx2eRTAN/o29jQV0bo/DxehM32SmP9qTFXFyhW5Z
         krOrDY8idW6U9A7qo9QV6GTai/2KXAPR+38d6fk4NGHJCAlYnR0whKsatgJAf9eUEOgT
         4Fensin8e17Y9zc8lepx9G0wb9HyxNmSi/Hy6Hv1OfElWNKTYicqBw/ONPoYYGrD8KkD
         naWSxvU9SBU2JA2jEZAUyEM0rg9ER9SG9l6NcJ+LBYmDU3fKnrCJyyKMbluCmxsJhKdB
         VgF3rqhRubRuuvNVHNW4bmhib7GbLIQLWLLUoFgyJyqh9Uqr1qcX4KrK6AuRZSd5nONZ
         yH9w==
X-Gm-Message-State: AHPjjUimq47UfEWKOr+CWZ2kV5erAmepLy3xUDFgpfxxSHmqx1COUC16
	7eUk/n7hbQo/d+PXMmqalkvkm9XCGc6ur6yexSXN4A==
X-Google-Smtp-Source: AOwi7QCDoZC4hkCJ9Ksp896T0cgs6nSyqTTd4bNBXmkTEgWcuGJmISwF3rA8Ubz1oH0af6EBBaHZjzckUGIKBRSEGLc=
X-Received: by 10.202.207.144 with SMTP id f138mr4235751oig.37.1505342019579;
 Wed, 13 Sep 2017 15:33:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.47.165 with HTTP; Wed, 13 Sep 2017 15:33:39 -0700 (PDT)
In-Reply-To: <48c429bdd6f6bb00c2a95f27882804ab6ac8aad9.1505284040.git.meghana.madhyastha@gmail.com>
References: <cover.1505284040.git.meghana.madhyastha@gmail.com> <48c429bdd6f6bb00c2a95f27882804ab6ac8aad9.1505284040.git.meghana.madhyastha@gmail.com>
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Date: Wed, 13 Sep 2017 15:33:39 -0700
Message-ID: <CA+5yK5H-dbE8_0xGymgtpJQ-k4beJZP49MB6baDoo-4ZYdY4sQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/4] Staging: vc04_services: Remove
 typedef VCHI_CONNECTION_API_T
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 12, 2017 at 11:37 PM, Meghana Madhyastha
<meghana.madhyastha@gmail.com> wrote:
> Removes the typedef for cleaner syntax.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
> ---
You should write what you changed in v2 from the first version over here.
For example if you changed the commit message in v2:
Changes in v2:
   -Improved commit message

Since this is a patch series, if you only corrected some of the
patches in the series for your v2, you should mention what you changed
for the particular patch and you can write "No change" for the ones
that stayed the same.

Also if you send in a v3 with further corrections, make sure to
mention what you changed in v2 as well. An example could be:
Changes in v3:
   -Fixed typo
Changes in v2:
   -Improved commit message

Amitoj

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
>
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
>         return NULL;
>  }
>
>  VCHI_CONNECTION_T *vchi_create_connection(
> -       const VCHI_CONNECTION_API_T *function_table,
> +       const struct opaque_vchi_connection_api *function_table,
>         const VCHI_MESSAGE_DRIVER_T *low_level)
>  {
>         (void)function_table;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/48c429bdd6f6bb00c2a95f27882804ab6ac8aad9.1505284040.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.


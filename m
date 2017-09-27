X-GM-THRID: 6470514248174796800
X-Received: by 10.28.212.73 with SMTP id l70mr341204wmg.14.1506536788618;
        Wed, 27 Sep 2017 11:26:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls566384wmf.1.gmail; Wed, 27 Sep
 2017 11:26:27 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDqEp01Avrwf+jOLjiyxGhO5cmOC6tptrj/Cbk8coCs3HxeQ9A6GpcJ+3FIn7zot4LHPhdf
X-Received: by 10.28.128.131 with SMTP id b125mr321931wmd.18.1506536787645;
        Wed, 27 Sep 2017 11:26:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506536787; cv=none;
        d=google.com; s=arc-20160816;
        b=sp2YqD+ZyKBS0ic4k2Z0MQWf40CH0pYmNfIHC79HkzjcYstT24hxd+y/aGyIPHAKTw
         EhMcBYwoZS7lcDde05duYwQvehRGSCW8waYbijzDBdk+wWJ9A6jCTMXtucdbyzlzti0j
         SnRPHq1bWKamuiKeyoK7qSLSuc+Byf8UO4pavSBA2WrxHhIN8iNQRDBnQapsGv3tjI8M
         dqcxik/vQ2zVfYHDl8SkGlPRz37RDtAg3SegVOBelSE/DOq+inX2qaIsGigWmD2BYAoX
         NCpoZ2fsbA8H/C5lDjk5L6Xh0RpUepcHl4J1fEqL/xhFkw1FX/aK9zoNhC3Dac/eSLMO
         ryTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=X5NoVW69TCy0s92IbddaNRifUPi8MoKb2Iea7F+32zA=;
        b=OmYLTe+ag9TUUsxM7SsPNb5Rb33D8Z3auw89jlRxpP+8vQoCDlgus9SeuJYDl+H9Hy
         XdX08wbK7+xuMny3hSZ3VaKP+1DUy0v/pfWHjpsJYQCdWF3mXqnmY8N/yJHkbxqm/JCC
         kxooji+x3uDTaaAdI0Pvn1+mlybIsgFUN7QMwuPqMqGcqUzeim7TeWz0L+XB6Y1e+BZV
         N2umoTWrDyxjvRC7Cs0KEVFfzyl1qfhqlX+M34+X25AOwD7YTXOTbrsp/KCcUY3BFh1+
         sTdjgd3MM7GUcQvg81vcJfZgivjddQ1wHRvYau77Gi+v9KIrf8rnK/lNHl15UfqHJd8m
         3izg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t65si195638wmg.3.2017.09.27.11.26.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 11:26:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,446,1500933600"; 
   d="scan'208";a="238941338"
Received: from unknown (HELO hadrien.local) ([93.83.33.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Sep 2017 20:26:07 +0200
Date: Wed, 27 Sep 2017 20:25:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: stefan.wahren@i2se.com, outreachy-kernel@googlegroups.com, eric@anholt.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: bcm2835-camera:
 use BIT macro
In-Reply-To: <20170927173948.GA4829@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709272025300.3493@hadrien>
References: <20170927173948.GA4829@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Sep 2017, Keerthi Reddy wrote:

> As suggested by Stefan, I split this commit from the previous
> patchset.
>
> This commit changes left shift operator to use BIT macro
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 +++++++++++-----------
>  .../vc04_services/bcm2835-camera/mmal-parameters.h |  2 +-
>  2 files changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> index 1144d9d..5a1b2a7 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> @@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
>  #define MMAL_VC_SHORT_DATA 128
>
>  /** Signals that the current payload is the end of the stream of data */
> -#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1<<0)
> +#define MMAL_BUFFER_HEADER_FLAG_EOS                    BIT(0)
>  /** Signals that the start of the current payload starts a frame */
> -#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1<<1)
> +#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            BIT(1)
>  /** Signals that the end of the current payload ends a frame */
> -#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1<<2)
> +#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              BIT(2)
>  /** Signals that the current payload contains only complete frames (>1) */
>  #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
>  	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
>  /** Signals that the current payload is a keyframe (i.e. self decodable) */
> -#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1<<3)
> +#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               BIT(3)
>  /** Signals a discontinuity in the stream of data (e.g. after a seek).
>   * Can be used for instance by a decoder to reset its state
>   */
> -#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1<<4)
> +#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          BIT(4)
>  /** Signals a buffer containing some kind of config data for the component
>   * (e.g. codec config data)
>   */
> -#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1<<5)
> +#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 BIT(5)
>  /** Signals an encrypted payload */
> -#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1<<6)
> +#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              BIT(6)
>  /** Signals a buffer containing side information */
> -#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1<<7)
> +#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          BIT(7)
>  /** Signals a buffer which is the snapshot/postview image from a stills
>   * capture
>   */
> -#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1<<8)
> +#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              BIT(8)
>  /** Signals a buffer which contains data known to be corrupted */
> -#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1<<9)
> +#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              BIT(9)
>  /** Signals that a buffer failed to be transmitted */
> -#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1<<10)
> +#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    BIT(10)
>
>  struct mmal_driver_buffer {
>  	u32 magic;
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> index e730022..1967fd1 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> @@ -24,7 +24,7 @@
>  /** Common parameter ID group, used with many types of component. */
>  #define MMAL_PARAMETER_GROUP_COMMON            (0<<16)
>  /** Camera-specific parameter ID group. */
> -#define MMAL_PARAMETER_GROUP_CAMERA            (1<<16)
> +#define MMAL_PARAMETER_GROUP_CAMERA            BIT(16)

Don't do this one.  The values should be defined in a uniform way.

julia

>  /** Video-specific parameter ID group. */
>  #define MMAL_PARAMETER_GROUP_VIDEO             (2<<16)
>  /** Audio-specific parameter ID group. */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170927173948.GA4829%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>


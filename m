X-GM-THRID: 6470000031137005568
X-Received: by 10.25.190.75 with SMTP id o72mr762206lff.18.1506414814084;
        Tue, 26 Sep 2017 01:33:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.3 with SMTP id g3ls426260lfe.15.gmail; Tue, 26 Sep 2017
 01:33:32 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAybFwquaTkURihpEoI5CWiwPGKhm3wisGOHI+2EUUREBWTsO2VibQJUjdZlA2n0bGmAcQF
X-Received: by 10.46.42.196 with SMTP id q187mr712611ljq.29.1506414812400;
        Tue, 26 Sep 2017 01:33:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414812; cv=none;
        d=google.com; s=arc-20160816;
        b=E/OPE7aTYk0elTkAT0ji8TsODXmXS35mxtv4BFnJWCj+o2B6ERfVvy/vaNl8eeBPis
         Kni+cBPIbpnhIOYlZIzaxzeCB47MQIrNr6px2BF7re+Z1/aPsw8Ppk7WPioADEJGKAjz
         zEHFTGq2ziN/DMbL/Ka6NOtrJn38pXFTtRdUdskmpWr/YuF2zVr0UzI0XLV/OHqmEQ/k
         +T776fCeHVVrw/k8m61SUDMj1R+34Qjkkp36HchF72VY3xA4fYdtUUIyvTa3l1fvdQOL
         Eysd8JuFAhBihsea+BEGvYuswwpRjr5xfkox+mZ6CGgsNkw1cMkUk73xENmHtuGdqtGx
         LDsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Qqf2AgDRO+nTRH11jkLrEGaBSx8Qazk+lW3vZUGDfpY=;
        b=aPXeSaxXrgPYBuNdWOfoM04vGUK8AURhA/SEp5WduA1bN9yTdvsxLjBVselkQdJQtV
         WQQvMWw6KYbq0mtU4bZZOppOyiOIR45O8AP44W9+jF2mUahrcjc1QVRUWIyFLNu5E7Vh
         SVcjRij9bb3Wx5LH/PuyGU8hGTSBI1KHT7bLgfY7pR987vIfXEnjbXu/tpE8NoHtAJbQ
         EEatMEU/NQXl+lYSqQMJ8xhWaSbJXMJiKA47zyw6hG22vNlFS73I7lhowLql1zvYbfEp
         w3s62xsJr4iNLMaAnLVn7MXaBbfCTyiZQCUXFoz/nEbNr90K/GpfiCupL1F3sZgdvh3f
         +Vew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si137634wmi.2.2017.09.26.01.33.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:33:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,440,1500933600"; 
   d="scan'208";a="292729275"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 10:33:31 +0200
Date: Tue, 26 Sep 2017 10:33:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: eric@anholt.net, stefan.wahren@i2se.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: vc04_services: add spaces
 around << operator
In-Reply-To: <f925ac589c9eaeb3815a6e6f537592abb1aa041f.1506413998.git.keerthigd4990@gmail.com>
Message-ID: <alpine.DEB.2.20.1709261031590.2925@hadrien>
References: <cover.1506413998.git.keerthigd4990@gmail.com> <f925ac589c9eaeb3815a6e6f537592abb1aa041f.1506413998.git.keerthigd4990@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Keerthi Reddy wrote:

> Follow coding convention by adding providing space
> around << operators
>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  .../vc04_services/bcm2835-camera/mmal-msg.h        | 22 +++++++++++-----------
>  .../vc04_services/bcm2835-camera/mmal-parameters.h | 12 ++++++------
>  2 files changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> index 1144d9d..0dfad29 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
> @@ -217,36 +217,36 @@ struct mmal_msg_port_action_reply {
>  #define MMAL_VC_SHORT_DATA 128
>
>  /** Signals that the current payload is the end of the stream of data */
> -#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1<<0)
> +#define MMAL_BUFFER_HEADER_FLAG_EOS                    (1 << 0)
>  /** Signals that the start of the current payload starts a frame */
> -#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1<<1)
> +#define MMAL_BUFFER_HEADER_FLAG_FRAME_START            (1 << 1)
>  /** Signals that the end of the current payload ends a frame */
> -#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1<<2)
> +#define MMAL_BUFFER_HEADER_FLAG_FRAME_END              (1 << 2)
>  /** Signals that the current payload contains only complete frames (>1) */
>  #define MMAL_BUFFER_HEADER_FLAG_FRAME                  \
>  	(MMAL_BUFFER_HEADER_FLAG_FRAME_START|MMAL_BUFFER_HEADER_FLAG_FRAME_END)
>  /** Signals that the current payload is a keyframe (i.e. self decodable) */
> -#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1<<3)
> +#define MMAL_BUFFER_HEADER_FLAG_KEYFRAME               (1 << 3)
>  /** Signals a discontinuity in the stream of data (e.g. after a seek).
>   * Can be used for instance by a decoder to reset its state
>   */
> -#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1<<4)
> +#define MMAL_BUFFER_HEADER_FLAG_DISCONTINUITY          (1 << 4)
>  /** Signals a buffer containing some kind of config data for the component
>   * (e.g. codec config data)
>   */
> -#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1<<5)
> +#define MMAL_BUFFER_HEADER_FLAG_CONFIG                 (1 << 5)
>  /** Signals an encrypted payload */
> -#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1<<6)
> +#define MMAL_BUFFER_HEADER_FLAG_ENCRYPTED              (1 << 6)
>  /** Signals a buffer containing side information */
> -#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1<<7)
> +#define MMAL_BUFFER_HEADER_FLAG_CODECSIDEINFO          (1 << 7)
>  /** Signals a buffer which is the snapshot/postview image from a stills
>   * capture
>   */
> -#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1<<8)
> +#define MMAL_BUFFER_HEADER_FLAGS_SNAPSHOT              (1 << 8)
>  /** Signals a buffer which contains data known to be corrupted */
> -#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1<<9)
> +#define MMAL_BUFFER_HEADER_FLAG_CORRUPTED              (1 << 9)
>  /** Signals that a buffer failed to be transmitted */
> -#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1<<10)
> +#define MMAL_BUFFER_HEADER_FLAG_TRANSMISSION_FAILED    (1 << 10)

Maybe the BIT macro could be used for these instead?

>
>  struct mmal_driver_buffer {
>  	u32 magic;
> diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> index e730022..c4a2380 100644
> --- a/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> +++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-parameters.h
> @@ -22,17 +22,17 @@
>   */
>
>  /** Common parameter ID group, used with many types of component. */
> -#define MMAL_PARAMETER_GROUP_COMMON            (0<<16)
> +#define MMAL_PARAMETER_GROUP_COMMON            (0 << 16)
>  /** Camera-specific parameter ID group. */
> -#define MMAL_PARAMETER_GROUP_CAMERA            (1<<16)
> +#define MMAL_PARAMETER_GROUP_CAMERA            (1 << 16)
>  /** Video-specific parameter ID group. */
> -#define MMAL_PARAMETER_GROUP_VIDEO             (2<<16)
> +#define MMAL_PARAMETER_GROUP_VIDEO             (2 << 16)
>  /** Audio-specific parameter ID group. */
> -#define MMAL_PARAMETER_GROUP_AUDIO             (3<<16)
> +#define MMAL_PARAMETER_GROUP_AUDIO             (3 << 16)
>  /** Clock-specific parameter ID group. */
> -#define MMAL_PARAMETER_GROUP_CLOCK             (4<<16)
> +#define MMAL_PARAMETER_GROUP_CLOCK             (4 << 16)
>  /** Miracast-specific parameter ID group. */
> -#define MMAL_PARAMETER_GROUP_MIRACAST       (5<<16)
> +#define MMAL_PARAMETER_GROUP_MIRACAST       (5 << 16)

BIT would not be apporpriate for these.

julia

>
>  /* Common parameters */
>  enum mmal_parameter_common_type {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/f925ac589c9eaeb3815a6e6f537592abb1aa041f.1506413998.git.keerthigd4990%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>


X-GM-THRID: 6950352611043180544
X-Received: by 2002:a9d:4911:: with SMTP id e17mr7169346otf.38.1618320561405;
        Tue, 13 Apr 2021 06:29:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:664f:: with SMTP id q15ls2011474otm.3.gmail; Tue, 13 Apr
 2021 06:29:20 -0700 (PDT)
X-Received: by 2002:a9d:4f03:: with SMTP id d3mr5007588otl.357.1618320560783;
        Tue, 13 Apr 2021 06:29:20 -0700 (PDT)
Received: by 2002:aca:f513:0:b029:13d:58cc:a567 with SMTP id t19-20020acaf5130000b029013d58cca567msoih;
        Tue, 13 Apr 2021 04:10:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSLg+Ks0Yh6fVDSRZZAmnxbTzawKFOwi5GqbM9DWS2JBJBskpa1Ru5B/zY0iLT8fqOmODo
X-Received: by 2002:a9d:6e1a:: with SMTP id e26mr4662224otr.296.1618312213271;
        Tue, 13 Apr 2021 04:10:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618312213; cv=none;
        d=google.com; s=arc-20160816;
        b=XyEEAbjdZEtpanoldeYxJv5+SKq8iTCSFiizd9Vv/19QwB+7Ahbp6WV1nI4rheotgk
         eEKUXMiyhLqDpyQo4F/uMk4h6s7ey8B1PPjIPcfMa2syZzV9gHxDLNKE1tQDuJX4NKW3
         4qIU87y6SPJ2GM8l0ldlrEnwSvBL4DquVMdJ8RIWn0fy79b8h00ukje/ZYGrT/EpG3mp
         vvusRxXIVVlF39CZfB9aUx4vrq3WE+n+K7CvmDoNWaJ3RF0mkMgzsXAGICvxF6Xk8TmP
         tY7OliZ7QjvSoBTlxRBEWK627cSTII7h9ngT8ZEmZMb/6otgDU+3XaGOq580/+wQlLff
         2j4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :ironport-sdr:ironport-sdr;
        bh=vZwwOqvtazrv+nmu9GCOL4oJ1/9OB05dxqqkzUuwVko=;
        b=0ShN8Sy1Old/5gYrjOyocNh1CkiXX5QA+zyGe9hbiEC8BHuDtCPC/Wg0HXHkaRwvvQ
         CEw9nCfbB0pyXKKLaBJCUkwCJErjLaXffkX/hvwuzOOZUuc46cljtk289X+qSNvLfZdF
         PKQlQn6clU2FcMda55gGHdBkwA9emKSduIj244+a+zzmpqt/4mRHkJwDXCiWEV8tU7Zz
         7gFeYOxum/jYi/h5HjawOV5kG36ZCqgA9N77Agi9fHP+FN/OvUg58l5+cIX9CtGk/6c/
         J/uqkYe5e01YkPnLuB8rwCdfZHbIprbiKMVha/OitpqBmncpbbzO0+9DB5DIzH22N8UV
         PIcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of bingbu.cao@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=bingbu.cao@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <bingbu.cao@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id p9si909183oib.2.2021.04.13.04.10.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 04:10:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of bingbu.cao@linux.intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of bingbu.cao@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=bingbu.cao@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: KVZfZp0JISowRNn2aKNxF+TWURVe00MG/mATS4cQnNAwQgy8fBxqFvKbXU52ZNwBnbu+31t6eK
 bNH7W3y84Utw==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="193950892"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="193950892"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 04:10:12 -0700
IronPort-SDR: SWUMmDbHuMTJDMYpvyQoZhZ368xvZpvfFKjjB91AqHcy81mwyrQTl7wgqwLrSaZpvFkjH60U1x
 u7v1zoEaKKiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="451906319"
Received: from ipu5-build.bj.intel.com (HELO [10.238.232.202]) ([10.238.232.202])
  by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2021 04:10:09 -0700
Subject: Re: [PATCH 1/1] staging: ipu3-imgu: Move the UAPI header from include
 under include/uapi
To: Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Mitali Borkar <mitaliborkar810@gmail.com>, bingbu.cao@intel.com,
 tian.shu.qiu@intel.com, mchehab@kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mitali_s@me.iitr.ac.in, laurent.pinchart@ideasonboard.com
References: <20210412111120.31625-1-sakari.ailus@linux.intel.com>
From: Bingbu Cao <bingbu.cao@linux.intel.com>
Message-ID: <f94863a5-3e6a-7f4f-afef-634f66fec10d@linux.intel.com>
Date: Tue, 13 Apr 2021 19:03:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210412111120.31625-1-sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Reviewed-by: Bingbu Cao <bingbu.cao@intel.com>

On 4/12/21 7:11 PM, Sakari Ailus wrote:
> The header defines the user space interface but may be mistaken as
> kernel-only header due to its location. Add "uapi" directory under
> driver's include directory and move the header there.
> 
> Suggested-by: Greg KH <gregkh@linuxfoundation.org>
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
>  Documentation/admin-guide/media/ipu3.rst      | 35 ++++++++++---------
>  .../media/v4l/pixfmt-meta-intel-ipu3.rst      |  2 +-
>  .../ipu3/include/{ => uapi}/intel-ipu3.h      |  0
>  drivers/staging/media/ipu3/ipu3-abi.h         |  2 +-
>  4 files changed, 20 insertions(+), 19 deletions(-)
>  rename drivers/staging/media/ipu3/include/{ => uapi}/intel-ipu3.h (100%)
> 
> diff --git a/Documentation/admin-guide/media/ipu3.rst b/Documentation/admin-guide/media/ipu3.rst
> index f59697c7b374..d6454f637ff4 100644
> --- a/Documentation/admin-guide/media/ipu3.rst
> +++ b/Documentation/admin-guide/media/ipu3.rst
> @@ -234,22 +234,23 @@ The IPU3 ImgU pipelines can be configured using the Media Controller, defined at
>  Running mode and firmware binary selection
>  ------------------------------------------
>  
> -ImgU works based on firmware, currently the ImgU firmware support run 2 pipes in
> -time-sharing with single input frame data. Each pipe can run at certain mode -
> -"VIDEO" or "STILL", "VIDEO" mode is commonly used for video frames capture, and
> -"STILL" is used for still frame capture. However, you can also select "VIDEO" to
> -capture still frames if you want to capture images with less system load and
> -power. For "STILL" mode, ImgU will try to use smaller BDS factor and output
> -larger bayer frame for further YUV processing than "VIDEO" mode to get high
> -quality images. Besides, "STILL" mode need XNR3 to do noise reduction, hence
> -"STILL" mode will need more power and memory bandwidth than "VIDEO" mode. TNR
> -will be enabled in "VIDEO" mode and bypassed by "STILL" mode. ImgU is running at
> -�VIDEO� mode by default, the user can use v4l2 control V4L2_CID_INTEL_IPU3_MODE
> -(currently defined in drivers/staging/media/ipu3/include/intel-ipu3.h) to query
> -and set the running mode. For user, there is no difference for buffer queueing
> -between the "VIDEO" and "STILL" mode, mandatory input and main output node
> -should be enabled and buffers need be queued, the statistics and the view-finder
> -queues are optional.
> +ImgU works based on firmware, currently the ImgU firmware support run 2 pipes
> +in time-sharing with single input frame data. Each pipe can run at certain mode
> +- "VIDEO" or "STILL", "VIDEO" mode is commonly used for video frames capture,
> +and "STILL" is used for still frame capture. However, you can also select
> +"VIDEO" to capture still frames if you want to capture images with less system
> +load and power. For "STILL" mode, ImgU will try to use smaller BDS factor and
> +output larger bayer frame for further YUV processing than "VIDEO" mode to get
> +high quality images. Besides, "STILL" mode need XNR3 to do noise reduction,
> +hence "STILL" mode will need more power and memory bandwidth than "VIDEO" mode.
> +TNR will be enabled in "VIDEO" mode and bypassed by "STILL" mode. ImgU is
> +running at �VIDEO� mode by default, the user can use v4l2 control
> +V4L2_CID_INTEL_IPU3_MODE (currently defined in
> +drivers/staging/media/ipu3/include/uapi/intel-ipu3.h) to query and set the
> +running mode. For user, there is no difference for buffer queueing between the
> +"VIDEO" and "STILL" mode, mandatory input and main output node should be
> +enabled and buffers need be queued, the statistics and the view-finder queues
> +are optional.
>  
>  The firmware binary will be selected according to current running mode, such log
>  "using binary if_to_osys_striped " or "using binary if_to_osys_primary_striped"
> @@ -586,7 +587,7 @@ preserved.
>  References
>  ==========
>  
> -.. [#f5] drivers/staging/media/ipu3/include/intel-ipu3.h
> +.. [#f5] drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
>  
>  .. [#f1] https://github.com/intel/nvt
>  
> diff --git a/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst b/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst
> index 5f33d35532ef..84d81dd7a7b5 100644
> --- a/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst
> +++ b/Documentation/userspace-api/media/v4l/pixfmt-meta-intel-ipu3.rst
> @@ -78,4 +78,4 @@ hardware and algorithm details.
>  Intel IPU3 ImgU uAPI data types
>  ===============================
>  
> -.. kernel-doc:: drivers/staging/media/ipu3/include/intel-ipu3.h
> +.. kernel-doc:: drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
> diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
> similarity index 100%
> rename from drivers/staging/media/ipu3/include/intel-ipu3.h
> rename to drivers/staging/media/ipu3/include/uapi/intel-ipu3.h
> diff --git a/drivers/staging/media/ipu3/ipu3-abi.h b/drivers/staging/media/ipu3/ipu3-abi.h
> index e1185602c7fd..c76935b436d7 100644
> --- a/drivers/staging/media/ipu3/ipu3-abi.h
> +++ b/drivers/staging/media/ipu3/ipu3-abi.h
> @@ -4,7 +4,7 @@
>  #ifndef __IPU3_ABI_H
>  #define __IPU3_ABI_H
>  
> -#include "include/intel-ipu3.h"
> +#include "include/uapi/intel-ipu3.h"
>  
>  /******************* IMGU Hardware information *******************/
>  
> 

-- 
Best regards,
Bingbu Cao


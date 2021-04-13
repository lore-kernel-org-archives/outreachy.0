X-GM-THRID: 6950352611043180544
X-Received: by 2002:a2e:9184:: with SMTP id f4mr13473824ljg.144.1618321570907;
        Tue, 13 Apr 2021 06:46:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c07:: with SMTP id q7ls1676432ljb.11.gmail; Tue, 13 Apr
 2021 06:46:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDoltaboqYo2N4Ik/2W1oijBsrstVNEk03Ajv+8uHeBP+o0FpT18lO90XWZfuaCLHuQX2G
X-Received: by 2002:a2e:3913:: with SMTP id g19mr21209450lja.294.1618321568978;
        Tue, 13 Apr 2021 06:46:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618321568; cv=none;
        d=google.com; s=arc-20160816;
        b=NL0oQ4aQAtdcbd85spkXUXO8bq1GxjgMn9Px+NzmbOZ4rsXExgrgrSATY9lHprORui
         qhlNEllagWIvM5LnkR+tE9iyoX/dK43xmq6GuIS5j6GUkBqKW2w9OF4CcxAK6SH5ZKax
         cHsrkix/9PFh+IY8bEbxmFDIsPrfHNHUJZD7rdGuEkBBE0055S2KpiwlN9iDu1MDIvZ0
         nP+F/OLrEYIrWhfbjiWesl8x33iYFqF/Lny3UsY/MeH2bcRY0qwBvaQ/2TsiCddTL8Bt
         K9SjQz/9JiBP0YN66Tp9eImPcCqe+XJtARs8kIQ19LS9j1OwsSS4VHIVKpy7J5a4Qkiz
         oBRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=cuyFO2XoBppAWvF85wiVpBpvq1zTOiAno+6zHwWtuic=;
        b=H7Gl4CQnOH99d1qHUp8K7mic1NQYValv+7AWDPD0knPtsmXMzswk/bdeQZGBvOfc8k
         rFeJPC/vTpvoAoSjzSelVhKnNrZIU9Lb07b/0GqrV/kkdett6m6Z3Rqjvt1pAIoJ1AJJ
         CxafC/6fnoCPHylvj8U0MawaVUIQ1kpfppHLm1wat+MrhLNhoyzm1BKN7PL9fuVKHw+n
         Zr0a1zOCUR6zk7PwzKCk6llhny9UbMflbrLSd5Bzg8KFOBRUed5HxR9zO8/onHLaLn4E
         JqgKB+Ni0kAQIv2Cj+XfO4b7sfa8XJzb021OB8NK99hnUCE84AjD3wRj0GSx4bzSsz4Z
         P/fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=M+mVpGAN;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [2001:4b98:dc2:55:216:3eff:fef7:d647])
        by gmr-mx.google.com with ESMTPS id w18si98128lft.10.2021.04.13.06.46.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 06:46:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) client-ip=2001:4b98:dc2:55:216:3eff:fef7:d647;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=M+mVpGAN;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 2001:4b98:dc2:55:216:3eff:fef7:d647 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A3D1D8AF;
	Tue, 13 Apr 2021 15:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1618321567;
	bh=ERzFPHfwcC1rsN/DqiEKlswPknAmFAYpH+SlZCHO53s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M+mVpGANMD7po+3PLGrcQK+tltANs7uEpInW1c0IEonhQ3Rd/h5sawXyi0/08uqdD
	 1gf6EPhyF5ypqxn0ylQFS1KOOI+/qhlfpEJNlZTSMMjSlhM6QwW0qoCmmoQr37FJFF
	 bcfl9eWNSPHvuHH9tlsMlpoxghqi1IWm/oJdwLxs=
Date: Tue, 13 Apr 2021 16:45:17 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
	Mitali Borkar <mitaliborkar810@gmail.com>, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 1/1] staging: ipu3-imgu: Move the UAPI header from
 include under include/uapi
Message-ID: <YHWgbZTDAWBX9EpR@pendragon.ideasonboard.com>
References: <20210412111120.31625-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210412111120.31625-1-sakari.ailus@linux.intel.com>

Hi Sakari,

Thank you for the patch.

On Mon, Apr 12, 2021 at 02:11:20PM +0300, Sakari Ailus wrote:
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
> -“VIDEO” mode by default, the user can use v4l2 control V4L2_CID_INTEL_IPU3_MODE
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
> +running at “VIDEO” mode by default, the user can use v4l2 control
> +V4L2_CID_INTEL_IPU3_MODE (currently defined in
> +drivers/staging/media/ipu3/include/uapi/intel-ipu3.h) to query and set the
> +running mode. For user, there is no difference for buffer queueing between the
> +"VIDEO" and "STILL" mode, mandatory input and main output node should be
> +enabled and buffers need be queued, the statistics and the view-finder queues
> +are optional.

The reflow of the whole paragraph is a bit painful to review.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

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

-- 
Regards,

Laurent Pinchart


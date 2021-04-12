X-GM-THRID: 6950041041271521280
X-Received: by 2002:aa7:9ab7:0:b029:242:318e:6cba with SMTP id x23-20020aa79ab70000b0290242318e6cbamr23508606pfi.17.1618220596853;
        Mon, 12 Apr 2021 02:43:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:a45:: with SMTP id gw5ls602640pjb.2.experimental-gmail;
 Mon, 12 Apr 2021 02:43:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxOs/VyrGOmVyVCy1YZQcgIc1ABVl3BxDyccXfHeAGQZsRO+OP0nTgpV2BR1wmP8+fMJrPq
X-Received: by 2002:a17:90a:aa11:: with SMTP id k17mr27004987pjq.60.1618220594127;
        Mon, 12 Apr 2021 02:43:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220594; cv=none;
        d=google.com; s=arc-20160816;
        b=o9Bl+hJS7eWZddBw519kke1vCsLb0ZEhDRV2LoKdo9oel7t/2uca9VDzI6v/Sr0MVT
         o/Z/CSqQyaSbCw80xr2X5k+awHGR/2t4ND5SPHTdplpsqCHWP/Q5+CYYBMv3DcchEUUL
         2EQq/1c2ZYOmvlmxiT6+n4CovSo/odSu0XykB2YjrAfLVTGzJChZTqrd8iq7Z26V1RJ8
         iZht1DaK+Kj8k1LhraI1dnfr2Qs/0JW8wcgW/bjsrcEB4qEItGUuLlrelPJuYV6inxd3
         IbPphIsIt6gAl6UCM3AKyWHl8pzszTMNxWmIBPExy4D89TRRgL4sTdLp1+S3GGBTbE7t
         ix5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=CbVCjsZSQGqXZGgVfF3qLQH5qRzgrAgWEUeoXItVC2w=;
        b=c8uXtlF1TmgPz4jA1S5BamOfqJ48iIRD/qBv5Jb52X8VkaZbrYByvSQgfF9waboiSx
         feRNtVGp6k808ifMwWBGl4L6/S+SVB3a7I3D2ow5YQEvOn/CHMdQ3orR63JVo8c0Voxl
         5WiBqv+ezsVhhU3eyCddizxglzyde94FYqYpplTGZ0dbtmagsATHb5FstIhmdi/6JkHJ
         Chd4G5nFH+UD36VJ/pC3oe8wZiv3PZ7M5hOHRYIL8AtdXU2sd1Dqh+QibPpX9w62pHUV
         d7wa3JgcuLnxT4w66f7ji31kOy/ZYXPZowvL/OaS1ELgImRD/ZKktk/H9Ypi25QaxBZf
         M9Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id g23si1036986pfu.3.2021.04.12.02.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:43:14 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: MAD69qrD21brNnyfytvJGtHBiscFbYagLvaQMojGaUZotjMBbXtygvBV3dZ8Rh9flwm1Pr2WP4
 739XCDRZVtLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="181278420"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="181278420"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 02:43:06 -0700
IronPort-SDR: c3qofnFRJu4y+V5m3FVtUxb1haaRQdz6XGFkubCHPk2VHDvvzoGGQsabXKRtntCKT63wT/g8lS
 2J3/coYr/TPA==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="599915096"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 02:43:03 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 5DC89205AA;
	Mon, 12 Apr 2021 12:42:30 +0300 (EEST)
Date: Mon, 12 Apr 2021 12:42:30 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 1/6] staging: media: intel-ipu3: replace bit shifts with
 BIT() macro
Message-ID: <20210412094230.GI3@paasikivi.fi.intel.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <cc7b827a3264f08cedb76adddd16a34df48f935f.1618180659.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc7b827a3264f08cedb76adddd16a34df48f935f.1618180659.git.mitaliborkar810@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Mitali,

On Mon, Apr 12, 2021 at 04:38:39AM +0530, Mitali Borkar wrote:
> Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> This BIT() macro from linux/bitops.h is used to define IPU3_UAPI_GRID_Y_START_EN
> and IPU3_UAPI_AWB_RGBS_THR_B_* bitmask.
> Use of macro is better and neater. It maintains consistency.
> Reported by checkpatch.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/media/ipu3/include/intel-ipu3.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> index edd8edda0647..589d5ccee3a7 100644
> --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> @@ -5,6 +5,7 @@
>  #define __IPU3_UAPI_H
>  
>  #include <linux/types.h>
> +#include <linux/bitops.h>
>  
>  /* from /drivers/staging/media/ipu3/include/videodev2.h */
>  
> @@ -22,11 +23,11 @@
>  #define IPU3_UAPI_MAX_BUBBLE_SIZE			10
>  
>  #define IPU3_UAPI_GRID_START_MASK			((1 << 12) - 1)
> -#define IPU3_UAPI_GRID_Y_START_EN			(1 << 15)
> +#define IPU3_UAPI_GRID_Y_START_EN			BIT(15)

This header is used in user space where you don't have the BIT() macro.

>  
>  /* controls generation of meta_data (like FF enable/disable) */
> -#define IPU3_UAPI_AWB_RGBS_THR_B_EN			(1 << 14)
> -#define IPU3_UAPI_AWB_RGBS_THR_B_INCL_SAT		(1 << 15)
> +#define IPU3_UAPI_AWB_RGBS_THR_B_EN			BIT(14)
> +#define IPU3_UAPI_AWB_RGBS_THR_B_INCL_SAT		BIT(15)
>  
>  /**
>   * struct ipu3_uapi_grid_config - Grid plane config

-- 
Kind regards,

Sakari Ailus


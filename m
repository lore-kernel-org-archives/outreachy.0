X-GM-THRID: 6950506572644614144
X-Received: by 2002:ac5:c968:: with SMTP id t8mr16873758vkm.14.1618308113196;
        Tue, 13 Apr 2021 03:01:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:14ed:: with SMTP id f42ls1247300uae.8.gmail; Tue, 13 Apr
 2021 03:01:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGcgD7sf+X7pb4nseqPqC/vkupa31UMWvr+Qaj3a7/5h+oKnQASsNIu1m6bKHXHG90jbvP
X-Received: by 2002:ab0:36a3:: with SMTP id v3mr7553257uat.116.1618308112261;
        Tue, 13 Apr 2021 03:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618308112; cv=none;
        d=google.com; s=arc-20160816;
        b=aP16jJzWZcv86lgdTVtcuih4w2J+xT7NQsehahxvGrYk8ofNlcPUutbaKhieqkHFdb
         XLj47cb3C2C+x/8XiI/Db/E/lyEz0DT9DUnYKCgvCXEJIhdMe5hQQ33T4dD/bC59v4rr
         mAWWJLMTBBVLIV7+nHSP0s4hjNWFnz5ML3abgW/8x+SqF76Q/AzwdxQUTLf6N2klaup6
         Bpl4n8xR+lHpD3u8kSAEYjbN3br1YAPiaadWKA82MkwH2BeIEeXukMG//eo7pu7QuJfq
         KCgsc93cyeTYsWZ9CTjPgWc8m7smVQexCf7sjO6lXmZt2tdRbMdu/JY4jt87l+td8ecY
         bCWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=g/lBfyG45QqdWjW2puAfSN8iHf8hoU+PYi4AwHXUg+I=;
        b=eaN2sW4RKXmWSD1vcycCwhYz8c143E7CISSxp2VLSdnpkecGy5KZllhS5oRHzT5xSY
         DaLb2usFTQRW9DxPs0YYY+WW2u30hV6PoDA22rqk1hfpll7evlB2x+V8v0t7gzAeO1/D
         dz+yF0Cg/dO2JXsyRf/4soK11k0sRoCrdjO62sfoSWXBT+aCpr99MFhJ10lBK9XpGu6W
         Pr4TLKB1f0ihKiX4s2dD0+uWsZI1sN5jjCQ8ZEdvDQlzSAC7s7F8xtPtL3b8BRJrz2Lm
         78JegaG51QFR7/IdjpyU4go+HQyoyVUBlpBK90IGp6frB1vkdcFKkQmEV2hNj+xrM9R6
         p3MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id q5si257904vko.0.2021.04.13.03.01.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 03:01:52 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: EV4L8z1snfn2Y9x0O7CeTVEhrLB7iWqStzLuyhqop8gy1jJJUIR4U4gdePHznpxEPKXGRMQjDr
 EL/Fxy6qsYng==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194493270"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="194493270"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 03:01:39 -0700
IronPort-SDR: wPSHpWZ2SPGBSIeV8vi+6RojgHgS6TQ9C2Xj6mCzm2/GyS75cD55WA/fxK/3klNVAEJuGrQV2P
 jfJRyb3H1OKg==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="451889237"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 03:01:36 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 62258203D0;
	Tue, 13 Apr 2021 13:01:34 +0300 (EEST)
Date: Tue, 13 Apr 2021 13:01:34 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 3/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <20210413100134.GR3@paasikivi.fi.intel.com>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
 <f18b704654797e29f3bbbe49689eaa2c0ad28d59.1618289130.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f18b704654797e29f3bbbe49689eaa2c0ad28d59.1618289130.git.mitaliborkar810@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Mitali,

Thanks for the update.

On Tue, Apr 13, 2021 at 10:46:06AM +0530, Mitali Borkar wrote:
> Reduced length of the line under 80 characters to meet linux-kernel
> coding style.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
> 
> Changes from v1:- Reduced length of the line under 80 characters
> 
>  drivers/staging/media/ipu3/include/intel-ipu3.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> index 6a72c81d2b67..52dcc6cdcffc 100644
> --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> @@ -247,7 +247,8 @@ struct ipu3_uapi_ae_ccm {
>   */
>  struct ipu3_uapi_ae_config {
>  	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
> -	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);
> +	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
> +							__aligned(32);

Do you still have the other two patches in your tree? This doesn't apply
here due to the different attribute syntax.

>  	struct ipu3_uapi_ae_ccm ae_ccm __aligned(32);
>  } __packed;
>  

-- 
Kind regards,

Sakari Ailus


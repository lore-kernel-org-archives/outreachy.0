X-GM-THRID: 6950041383671431168
X-Received: by 2002:ab0:6989:: with SMTP id t9mr18831352uaq.60.1618220988731;
        Mon, 12 Apr 2021 02:49:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ee13:: with SMTP id f19ls832465vsp.1.gmail; Mon, 12 Apr
 2021 02:49:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/coSKQ/w0M2HHf5UURF/drrJxE4GAG8Jc+0mPFTHD/u421qF98VLzwjjEr/R3pxGEuUYa
X-Received: by 2002:a05:6102:b0f:: with SMTP id b15mr15839206vst.40.1618220987780;
        Mon, 12 Apr 2021 02:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220987; cv=none;
        d=google.com; s=arc-20160816;
        b=0BXmbXULJ+9o7b5TLNrgwTPc5Ac6WHnFSZdcHiZiC+Q8gjheqoxb6IpN53u3PJ3S76
         s+VNrgAr4M1z1U2vh+XCifPIz/LWjoQM3r6iwKCgRaBBG6wkL8tJF+oePAyRSE737gCg
         ye6z+mnraMui7bF6khxa3PiQYVtgzYTT8mYHq3o6Ti8xOZeVrsLUuPfWsVH716oBtDhA
         mL69PTNAHj2WZY2HokkGc+aN03t+nAr4+vIjNHNIoWHkLC3xZ9QVgMfTKFIRpjzydjZW
         /NMtDv0BZUOX4+mGPnw2pQig7kXL4w6UAdajZsI+xqvyOPRnY+wbGETpjbz/7qocH0r5
         w+2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=a0WyjGt3m8EIbKZlxBX50/WNS47HH1WchgQYzX2ZHFg=;
        b=nFzOAduvm6Q0Tba/2npqpbkPpSDR7BP4WkSY8HQW5S33wifW/d4tWk/iq83jGBgeX5
         6jFkDS/03yitUyORyHh0irsuTNLVbNkGTPjDKLY8NtuQFa7T/kw5wcmW9ENnk2Y2FM9E
         d0sNSRpF09umckSxDXIdU98XxmiUpnWY1XSBU/c2l9pkm9ka+vkm2VOuBkHRGmBVK6M8
         Rqzv45acuRVXrwJfU+4doFmkLwValTmUkcQL5HgfBAIocj6rRtlhyKR1j08nSjNaJZLu
         sdgJMCpGh4O18Ytw1R81Uq9exOMlProUTejiL1qNQ2RXOt/c+2qZVa6Jqxtlv7WVGrlI
         k8xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id r17si646880vsf.2.2021.04.12.02.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:49:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: cHIKw0e2jqLbBu7BjhRwByrj+5vVfbCdCeR5MGBHNWcUQ5VMsZHRhlvcCO3Vai6KkbeW8wVQSy
 Ks6/kR+onKkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="279453194"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="279453194"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 02:49:45 -0700
IronPort-SDR: /uH/qozKRs83kwg3Fusf37qVxeq+FBgDrIn9DfqqIgVcbBOWGdhg6qm/fx4UFMkTlQhm0ysKKu
 /kfDSS/Il+Bw==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="442996816"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 02:49:43 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 6B95C205AA;
	Mon, 12 Apr 2021 12:49:41 +0300 (EEST)
Date: Mon, 12 Apr 2021 12:49:41 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 5/6] staging: media: intel-ipu3: line should not end with
 '['
Message-ID: <20210412094941.GK3@paasikivi.fi.intel.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <7514b0a9f6b0ce736de3c9d13ae2629d9e67f04c.1618180660.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7514b0a9f6b0ce736de3c9d13ae2629d9e67f04c.1618180660.git.mitaliborkar810@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Mitali,

On Mon, Apr 12, 2021 at 04:39:58AM +0530, Mitali Borkar wrote:
> Fixed the issue of line should not end with '[' by moving arguments
> from next line to line ending with '['
> Reported by checkpatch.
> 
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>  drivers/staging/media/ipu3/include/intel-ipu3.h | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> index 53f8e5dec8f5..0451f8b7ba4f 100644
> --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> @@ -246,8 +246,7 @@ struct ipu3_uapi_ae_ccm {
>   */
>  struct ipu3_uapi_ae_config {
>  	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
> -	struct ipu3_uapi_ae_weight_elem weights[
> -			IPU3_UAPI_AE_WEIGHTS] __aligned(32);
> +	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);

Could you still wrap it to stay under 80?

>  	struct ipu3_uapi_ae_ccm ae_ccm __aligned(32);
>  } __packed;
>  

-- 
Sakari Ailus


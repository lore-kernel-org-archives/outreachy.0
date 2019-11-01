X-GM-THRID: 6754405077776072704
X-Received: by 2002:a37:b342:: with SMTP id c63mr944208qkf.311.1572632676481;
        Fri, 01 Nov 2019 11:24:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:49c6:: with SMTP id j6ls1326140qvy.9.gmail; Fri, 01 Nov
 2019 11:24:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz4nFQwsEBI34acD+KtGTZyS2RO/PtMaVGTdsE8EveHyUn63vSoGcG12eZQVghWFOW0Yc5e
X-Received: by 2002:a0c:e64e:: with SMTP id c14mr11659020qvn.13.1572632675479;
        Fri, 01 Nov 2019 11:24:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572632675; cv=none;
        d=google.com; s=arc-20160816;
        b=vlDd3gGrshakVsmMs5wlXzba5Ib9qNJs4rn4iVgJB6AoIrjfIwLfglg9B3ohRFfZj6
         48q+tYIixo2PYKBnpwyS30vsl2I3BFo2+RWrEHH4+0y+mvxExQU7kQQS5ORn1vO3cipl
         TIkkqxMuWNWCGZ1eBiuRci8l+CxZD3oGYSrVP+yjHQjgyURwU4gfRg7uGBa4sj8QDgE3
         ZuxdgxAjVEVSVP35qc5slKEo/ArPaz2dkN75LCkh8o6dEeRlLCZUcuUxHgFmc2MzXSt0
         P0M91K+p5L25J5nkFp5CAOc7HP+00bnA+g4pivwFwhMIeRkgvEgvvEKG5UO30JrA7dGr
         TCPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=a7BB6yUcIrMqQowPvRvHTnCxyZ9XzwtwKQtDkQqM2Vs=;
        b=XdN/GEbMDK4M6K7aogw6QYZK3WYB08hRP7vp0sNRgxVtGNBUwBpq18Z5QKmQqwJD4D
         asd4s8YjYv0QHdR2kUWNbAGDLMdH9GhDAYMEMef8QtQ1OB3pZsjW8xCxJSwFXU+tL36n
         lOXFHa+8Ei5M0T1zX+slawaB7zTAsHusIqXUlxw++lAH2sVu0nXhWxBfQiihamcdzu4o
         E7eHKahtL4WGLvbo1Ey3UAwuJM1Vz34UK73V2b6SbGukRYuNt76kxiR8PeRcNDhXssU7
         sXDbjWOQMmRgr5lJy8F38Uo/IP4Wh1MhZZY7AmfLHnanWW2ecfzPhHQlLAj4UcuchFUX
         0f+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of manasi.d.navare@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=manasi.d.navare@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <manasi.d.navare@intel.com>
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id z194si454732qka.5.2019.11.01.11.24.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Nov 2019 11:24:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of manasi.d.navare@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of manasi.d.navare@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=manasi.d.navare@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Nov 2019 11:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; 
   d="scan'208";a="203931779"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
  by orsmga003.jf.intel.com with ESMTP; 01 Nov 2019 11:24:33 -0700
Date: Fri, 1 Nov 2019 11:27:10 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com, daniel@ffwll.ch, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org, trivial@kernel.org
Subject: Re: [PATCH] drm/vkms: Fix typo in function documentation
Message-ID: <20191101182709.GA32264@intel.com>
References: <20191101182102.30358-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191101182102.30358-1-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Nov 01, 2019 at 03:21:02PM -0300, Gabriela Bittencourt wrote:
> Fix typo in word 'blend' in function 'compute_crc' documentation.
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/vkms/vkms_composer.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
> index d5585695c64d..15efccdcce1b 100644
> --- a/drivers/gpu/drm/vkms/vkms_composer.c
> +++ b/drivers/gpu/drm/vkms/vkms_composer.c
> @@ -43,7 +43,7 @@ static uint32_t compute_crc(void *vaddr_out, struct vkms_composer *composer)
>  }
>  
>  /**
> - * blend - belnd value at vaddr_src with value at vaddr_dst
> + * blend - blend value at vaddr_src with value at vaddr_dst
>   * @vaddr_dst: destination address
>   * @vaddr_src: source address
>   * @dest_composer: destination framebuffer's metadata
> -- 
> 2.20.1
> 


X-GM-THRID: 6951119987386875904
X-Received: by 2002:a63:1d1:: with SMTP id 200mr168843pgb.375.1618433740015;
        Wed, 14 Apr 2021 13:55:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b7c7:: with SMTP id v7ls1861371plz.0.gmail; Wed, 14
 Apr 2021 13:55:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyH7NNMSH2lKV1CNZzw0w1F3WdvX8XcjubQ31YoRKlcntu9gF+zJmQSSsURY84sIXwOxDtK
X-Received: by 2002:a17:902:b705:b029:e6:f027:adf8 with SMTP id d5-20020a170902b705b02900e6f027adf8mr141366pls.72.1618433738889;
        Wed, 14 Apr 2021 13:55:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618433738; cv=none;
        d=google.com; s=arc-20160816;
        b=BuBXxQIooAQrfnCaJUXnYZVRXFsvlWV6gfgSvAGElSa1Mlg+rl8c+ySSgx6GI8XA1O
         58Gf0ExRvkCvRlKa/vpku3zFrYIYz6AixPDhSAeK0UtHf2l+fvfvzVFy5/FffZIudsWR
         L6stqKQJNg4Tw9cXC1CI2QE//9jy1z5ihZ7IHikdlVfF0mdm8txH90C0HcK+oL4XvCU3
         OvrITs7nfC7JIs/Zkbu9yvMoO8kSdcoKG3+uPm3bkpQw5fp6qB6a7JSZouGlZzheoZgz
         dEwYWNZdz72J28hMu2Q5HO5+4ki3tK8Z5qEGAIlwj6t2j8b/CdgMEFMxSYzLhTQ3hf4K
         qzXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=FkBatygytp0yQjn6oOr2KmThRymxq/qtdxv5tEfLlsI=;
        b=jjbQ1cBI5xlp0v10aGFhri/7fDFEDvFcrMM6gX0NTOBcSKD4WPtl61dkxV2K0knP3f
         d3fEndQnj53MunwORUl/fcG5aI063s/o4w102oc42fF6S09jHU3TcdM6PtAfso8vZ/1K
         TG/53bAo3k/2z7WPCimgmEzQmysz8u8hLwVZtmvCMWwwi5TZTvvXTRGYyuSfwo4UWW5Y
         qk7SN1Gvmu7YvSffnX/S7plOpSK+Bp4niENe3Zv9UaaUG32D4zVDvNsdjso4Ntks3d3H
         Ndq6nU9XkcrD2ijnkljZGo+f9u2ZXfh4eBCylSYPf4SCdKhj/1YZgnEYMiEkRJi2Bsy3
         O+VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id p2si78056pli.3.2021.04.14.13.55.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 13:55:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: /tLJJCWhf0W3dMWFiGTAYwEXgBrny/vRblnsShcTKt9fITgV09Y20nXs8olBKTpUpHtR3Kf6sV
 RK2T98bddXQg==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="194757326"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="scan'208";a="194757326"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 13:55:38 -0700
IronPort-SDR: GLbey1GVBxh6cFzkyqokGMnywWDiujcWnFN8IJe7X1O8DersDr8SwtrvA0l7w2rgJTtazkNAlL
 nB1uyaqUTqGg==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; 
   d="scan'208";a="443946283"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 13:55:36 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 53E4A204F8;
	Wed, 14 Apr 2021 23:55:34 +0300 (EEST)
Date: Wed, 14 Apr 2021 23:55:34 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: media: atomisp: pci: Format comments
 according to coding-style in file atomisp_cmd.c
Message-ID: <20210414205534.GF3@paasikivi.fi.intel.com>
References: <20210414204244.GA8287@focaruja>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414204244.GA8287@focaruja>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Apr 14, 2021 at 05:42:44PM -0300, Aline Santana Cordeiro wrote:
> Format all comments according to the coding-style.
> Issue detected by checkpatch.pl.
> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>

Thanks!

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus


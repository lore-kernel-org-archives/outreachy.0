X-GM-THRID: 7016473009259020288
X-Received: by 2002:a17:906:2a0d:: with SMTP id j13mr8922601eje.545.1633649926985;
        Thu, 07 Oct 2021 16:38:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:8689:: with SMTP id qa9ls675097ejc.4.gmail; Thu, 07
 Oct 2021 16:38:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMqtLHC3A1fIKZDo6F94EVAoxSgSrG9+ca4LF4i1dTTOIxouASOi2xpVS+X7yA27EKa5Dh
X-Received: by 2002:a17:906:d937:: with SMTP id rn23mr9235334ejb.101.1633649925040;
        Thu, 07 Oct 2021 16:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633649925; cv=none;
        d=google.com; s=arc-20160816;
        b=ndC5ckFg6DwONOnYtedKBXhaTbrVpeWYdgZpF+dGoBsSTu5BKmWFW7BEgnoRdAjFdY
         v/qCFC4zHO6r3qj/aJBxOa7LiQx0gohzrrecYfYYgT5N/uv2Rv7y2P4gXP+nWcthAipy
         AMm1YQCYfRKCneD2V9+mZUtQDc3jZUQX5MN+t/Y83Vf5aGnZDAqdS1XVRFxDTyvLkyh/
         1Q7BMJIhfRBlkXIdicn921OhFcEXR7GsAVduUmZAODcZGdfHYx6jyTF76NF5d2Wwi/ix
         dqy77rbNOnNIn99n5SWwwoPrXRAzb2r2zx4wFpdeOuQ3hO7OXMeXah9j5efEHGoGJq38
         cXsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date;
        bh=F6nJTVHjYVIfbAVEsHHG9JEbj0V8qGNj8VHDPbi/boo=;
        b=m9FCKaVwmQ/FGWx99VsCvJiwBuCEXHnazyHfv3pCFl06vLd/9xn+bgmhETYJxF/HWC
         Rk4Psu5iGymBPrz5DjIl+G1KR5Bxuq1B4SpiMzbVGg2JV7rcBdz6mtG+k0z4Gp79EsHJ
         ykOfGlr6vw+NuyhTBc1u/zeVuDpb8NR6jmZVN8BcuuVpA8F+7YHPZQZe5wm8i0vRPU2I
         8ssk9K+pAiU0V3pMdTZg8MUEYE83OTHIj4iKQj+BinVcPrD9r3onMiay47wwDd8LMLT2
         pB/5ewLPMDyGqIJaz1aDtLMXyCoqtFWd4T/eNL3S0yVRexsJ8gx4ZMkVq5Gb/1FZTcQ0
         MTlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id r21si50373edq.2.2021.10.07.16.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Oct 2021 16:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="287275209"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; 
   d="scan'208";a="287275209"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2021 16:38:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; 
   d="scan'208";a="590352515"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2021 16:38:32 -0700
Date: Thu, 7 Oct 2021 16:46:51 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: Outreachy Patch Restrictions
Message-ID: <20211007234651.GA393313@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Hi Greg,

We are about to kick off the next contribution period for Outreachy Interns.
(October 8 - November 5)

I found this note and would like to know if this restriction still stands?

>> Please avoid sending patches for the drivers/staging/media directory
>> as Greg can't pick them in his tree during the contribution period.

Is there anything else contributors should be aware of for this round?

Thanks for your support,
Alison


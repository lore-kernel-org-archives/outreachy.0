X-GM-THRID: 7016473009259020288
X-Received: by 2002:a5d:47cb:: with SMTP id o11mr336473wrc.184.1633655205263;
        Thu, 07 Oct 2021 18:06:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:c782:: with SMTP id l2ls933963wrg.2.gmail; Thu, 07 Oct
 2021 18:06:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyPPDuE40RiW2WY/w3siTZWsF6afIPL6RHaN+jJ1TCXC+bd1I4a5UmnRWGxQVpLuhE0VM+C
X-Received: by 2002:adf:a40f:: with SMTP id d15mr308241wra.41.1633655203545;
        Thu, 07 Oct 2021 18:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633655203; cv=none;
        d=google.com; s=arc-20160816;
        b=ncKNfp3xtIKFcZHjFRp1JznOjytu1Vz75jBEb9pHrM/Uqrph0L5jH81pvsGDsFLLwf
         I1qIKXgDECBeZbiFkAhv3M8+IWlU3+1VT6BEN4JluzDC25Rw8Xuo7fsoYc1p23ez6rPL
         gyYEJBPV+ZFU9yewojRk7mKQBFXmSaQadHi7pyHph4RFGiIPBMvITpc9Zl3e37vw1Yx9
         PrcKb+qcTdEIJuD1lySb7gDSzWDz+zqnPkKdBmmrbVWCvhchu+S3RnxUjX1O4dSyNeqt
         nusN6u+JcgW1exc5i2HBP05nZnszZKxUgHkEFHj6tycz8MifzkT30CotvwAHTUBAv3je
         DTTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=XrTxuqA+F2rQD2faAgtssIiF0iA0/vKkwqcBzwkZRFw=;
        b=SEURrujjAocHWeSxZPo7JTy9Tv8esGS0sSLX1jnCi75t5nEqx+bbLc1KJ5nvTtEQhJ
         VF/hA08g6Xer5fUuRgEDVC/GiZs9W1c0cTgJL0cINDhcn4aoJU8K48WEZASvKLRTf3UH
         URZVt/f9KxdVX3beL25PWU9cga6U71fXwZxif0D9D02Ao0bNScXPYU+UC2F65Er1IkQN
         pNNdDPDLoBKR6Ojc6xjGHssoSTqTDsIH4Zcsa01FfHcTeDlaMxpqjeiMXVmETiAyGil0
         JaRjaRb8pG/OSMTFjAu7Tv62lzJyY3E1T//K9GtTu5il7UQa7jJWx7j1Ghez9sC7GRq9
         oOOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <alison.schofield@intel.com>
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id a10si677588wmb.0.2021.10.07.18.06.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Oct 2021 18:06:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of alison.schofield@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=alison.schofield@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289906611"
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; 
   d="scan'208";a="289906611"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2021 18:06:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; 
   d="scan'208";a="478783827"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Oct 2021 18:06:41 -0700
Date: Thu, 7 Oct 2021 18:14:59 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: hverkuil@xs4all.nl, gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: Re: Outreachy Patch Restrictions
Message-ID: <20211008011459.GA393580@alison-desk>
References: <20211007234651.GA393313@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211007234651.GA393313@alison-desk>

On Thu, Oct 07, 2021 at 04:46:52PM -0700, Alison Schofield wrote:
> 
> Hi Greg,
> 
> We are about to kick off the next contribution period for Outreachy Interns.
> (October 8 - November 5)
> 
> I found this note and would like to know if this restriction still stands?
> 
> >> Please avoid sending patches for the drivers/staging/media directory
> >> as Greg can't pick them in his tree during the contribution period.

Hans,

Just read through some more backlog and see that you (Hans) welcomed these
patches in the last round. If you are still able to support these
patches, I'll drop this restriction.

Thanks!
Alison

> 
> Is there anything else contributors should be aware of for this round?
> 
> Thanks for your support,
> Alison


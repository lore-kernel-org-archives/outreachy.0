X-GM-THRID: 6950506572644614144
X-Received: by 2002:a6b:3bc7:: with SMTP id i190mr28130344ioa.163.1618331366626;
        Tue, 13 Apr 2021 09:29:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:ece:: with SMTP id q14ls2580925jas.9.gmail; Tue, 13
 Apr 2021 09:29:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxbcNRMhmKnuy3GTbkyFWfM+fTo7MQ6ci9HR+lxfioePQyYohEfkpnJGJcyhWngTAXnUkNB
X-Received: by 2002:a02:ca56:: with SMTP id i22mr12193326jal.50.1618331365750;
        Tue, 13 Apr 2021 09:29:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618331365; cv=none;
        d=google.com; s=arc-20160816;
        b=sSoJ28IpYByvLstJtfDmPSa85CYt/2X3dw80UEnZGO14IpDejFeFo1OXYvxCczoL2d
         ptf+Zo9ll5D3vtB+K/6JQsj21j9NPYZU9X6SWG12lJpmd9rFy3k7F8bynx+jsFchOOzi
         s9GPsGdm8zTaVmQwa2Xqt9U1bRnJP9K2SIj5Tgyhs4cd4hB9QRMum45ZuWd3pgfB8ygo
         i5alSYQ+ePiuu+KhQHowmUTyAfnlbcg9tue4S3e/Mz/RxZpJjADi9Ii5kcuZYXTrNJyb
         GK5WLU6xcOcVrzu1+xtuYNBHMT++hYU7JJTMuDQLMj1BMhktvOjjg31HUSUAlbsrtdvN
         hE3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=XOekCZt/Pvx8ps2aXyEE8NvPxlS1zrknalNnrrh0YFc=;
        b=IEBjDqTNXGTtlMhMmCm2aKwkw/N+G9Zs6bKsCjOv5qzA1giCh5tdFyfxhOBkp9gkAc
         q/CukExpTtBCDx3pDxmhaufkrovN7x8d+PfnS9cHNKELdkSU66kS4WkTqM3zBwfnbOT3
         YY0U9gfjdBxSSrx7XngBNSNX6E+SzHw4fsq84mzdg+msEBR5sXKK3+AVOhtcd7nOdt/k
         zDTNM99oYHVINxMsj78vVdB08PrBcbDnWJmp9hZP75G2Ez6mcLhBzvf2VhuaDJr73+JT
         J+kRHioJRXtaIbvKKl1lcUHZ7AyyeYih72wB/s1DWytQGNz1TPGFkAm+YLBaxhKJyNer
         3bow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id j1si372686ilq.0.2021.04.13.09.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:29:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: d25K9KzyNxBJs/PnbKRORjuZ8oTxNg7Yrucnk5oSOKMAxarqiZgFWpwqgXFII1+Gr8MdrXUuz5
 VJhhUwMd6LTg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="181574908"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="181574908"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 09:21:18 -0700
IronPort-SDR: Q51ZUF7fUPgxel3O2ZVeJfjn/hFIrUOaCHA0a9nTOCojMvw50WfJKB6VLPSXbNQS/DgH8ZP5Ay
 AmhW2FitOWsQ==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="382016739"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 09:21:14 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id D28A62082C;
	Tue, 13 Apr 2021 19:21:11 +0300 (EEST)
Date: Tue, 13 Apr 2021 19:21:11 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v3 0/4] staging: media: intel-ipu3: Cleanup patchset for
 style issues
Message-ID: <20210413162111.GX3@paasikivi.fi.intel.com>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618326535.git.mitaliborkar810@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Apr 13, 2021 at 08:58:19PM +0530, Mitali Borkar wrote:
> Changes from v2:- Rebased these four patces and made changes against
> mailine code

Thanks for the update, Mitali.

For the set:

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus


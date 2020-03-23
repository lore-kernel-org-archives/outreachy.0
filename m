X-GM-THRID: 6807140134242222080
X-Received: by 2002:a05:6830:1bca:: with SMTP id v10mr7043109ota.286.1585583906125;
        Mon, 30 Mar 2020 08:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6750:: with SMTP id w16ls6595092otm.4.gmail; Mon, 30 Mar
 2020 08:58:25 -0700 (PDT)
X-Received: by 2002:a05:6830:1d90:: with SMTP id y16mr10028032oti.157.1585583905329;
        Mon, 30 Mar 2020 08:58:25 -0700 (PDT)
Received: by 2002:aca:c490:0:0:0:0:0 with SMTP id u138msoif;
        Mon, 23 Mar 2020 00:10:32 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt527WCa3hvcKMinPluut1+NEjvHN5uDMez4fBgsd1l9YYjdK2wb6APVp/cZv8J3CFbNCvA
X-Received: by 2002:a63:cf4a:: with SMTP id b10mr20827233pgj.354.1584947432604;
        Mon, 23 Mar 2020 00:10:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584947432; cv=none;
        d=google.com; s=arc-20160816;
        b=PLEcxhZT93i1optaKb+ysewxuthAltJH8f4aY8LNsR/ALBRE2xqna99VpTSI+xc+Pc
         70Mxu9mLvi5w3v0BCnTdmET9X19vC6eGfM4LYE7xsjmCXY/YACnurk/cQurDcZgMIFDL
         Ev8F0IX50nle2sz8QFHp7ADobye4/LX1VelhEinkzawgQeWpnIAiFZ1AzbNdnUI5Ny5j
         GT82h+etUT++169xZD//ON8zH5xKh/g8jnOchgBr9v98fXV3b6ewfWFbYwAaCo5j+gNj
         gBlIZkw/PtT3SkqKs76cR2se8mRgF9sSRncvDb3Sq39rLaMuCTc1zTjbLpFg5Yrj/d+x
         IeNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=p8GmO+SA69TjfOT+FLIa7cf8DEFfhRKNnfyDZiavcck=;
        b=VUosLaATV7Nq2ythwgS0sTlA/4DEKwLs+L95RwiEmLw2/VuDLegYN6PABxz7vkYJpM
         THofP/eDq4uCG+Z486794UInG8KdFkYEQdtjsB1Az6EjMgQ1WRH8kWU8/vta91WE68bg
         n9vt+ft6AyrAhex883Fdzr3nq04a8jIctgrgikPO8L5/hHm/VNz2MRxGIMbeQyYnPzuI
         bqRil+SM1m+zp7qWGwbEHqDY5ld/urKDSo1hBxLdDQusIUsyQ1NMUmSCFrzTGmrCLa0A
         Wkj4INHSJPZmPKhfbyarwJZzxVi8a2AirH/XM5fmpfk9Eikgw1KGQdpii0e4F9OVMFuu
         BCwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id 83si560367pge.4.2020.03.23.00.10.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 00:10:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: sWEjJRb+qomgu4P03Qzpvla1Ux7WOr2aFe4Z2ZrPeCesTJaxhvzNvMvgZNyTDPlV1Xjh7mVoBG
 Zrh6kXQavqjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 00:10:32 -0700
IronPort-SDR: UWrSdd15uyCHI0u0Tius4pP/1evgo2AFT4/vEx6mWnLQczFlexaD7Rev7Qef6J/BvVSFMuYeNI
 SlMJw9iWM+Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,295,1580803200"; 
   d="scan'208";a="445706921"
Received: from nisrani-mobl2.amr.corp.intel.com (HELO kekkonen.fi.intel.com) ([10.252.54.204])
  by fmsmga005.fm.intel.com with ESMTP; 23 Mar 2020 00:10:30 -0700
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
	id 3B64D21EF2; Mon, 23 Mar 2020 09:10:25 +0200 (EET)
Date: Mon, 23 Mar 2020 09:10:25 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH] media: staging/intel-ipu3: Remove extra blank lines
Message-ID: <20200323071024.GB20234@kekkonen.localdomain>
References: <20200322210005.GA27747@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200322210005.GA27747@deeUbuntu>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Deepak,

On Mon, Mar 23, 2020 at 02:30:10AM +0530, Deepak R Varma wrote:
> Remove extra blank lines from the code blocks.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

Thanks for the patches. They seem fine to me, but could you send them to
the linux-media list, please? That's where the media patches are reviewed,
including the staging tree.

-- 
Kind regards,

Sakari Ailus


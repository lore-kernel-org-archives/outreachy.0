X-GM-THRID: 6950352611043180544
X-Received: by 2002:a17:902:a502:b029:eb:1c07:482e with SMTP id s2-20020a170902a502b02900eb1c07482emr6477892plq.10.1618325605249;
        Tue, 13 Apr 2021 07:53:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2f88:: with SMTP id t8ls1816657pjd.1.gmail; Tue, 13
 Apr 2021 07:53:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyMPjvTkYH1S9gGtnK/F64mP8o0BMLaSnwnxnDk2iTW+0csjYfL/k3KFEdMvzpmwpX6yPq4
X-Received: by 2002:a17:902:d4c2:b029:ea:deb1:dfd5 with SMTP id o2-20020a170902d4c2b02900eadeb1dfd5mr14356178plg.79.1618325604107;
        Tue, 13 Apr 2021 07:53:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618325604; cv=none;
        d=google.com; s=arc-20160816;
        b=B2AhSa5+4E7osRcBEY0FSzi5S+jUi5J6vyuBDFURrTtTPk8Yh4NPVtP3hCThu4luW2
         3BapowhhigPl+tFtFuzAmn+7FifJ6tKviRNdE8JNZrSX0cy94kIZ06ZAunDaQf1RLEk+
         cNDCWzvgiZy5c4s0i7mzDjSxiyBFAR8OMxilxLKDX5Vs5YBs85ZiQgDZ8S3fKAA7rhnq
         s97VBbzj1NwTbuuCVXmeRkLRvznQO3xmbaAccu9KKfM/ru85Vo1zzohRJSNN+btfCAWf
         z0053VWmLVT+utT2Az8YmoW/8FtdGAdv105PTzqfj3jGGQVhdJi0NuR/czcrMB6WSCtr
         NbBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=q5pquHIEc4U25RCRjRUEDRmK7Dh4a2oVXyK/990PndM=;
        b=H2jlCg6A/IxE/X3r3CKqESRsuKj6/pwRIt+Tia20+gqTdSbrnFJNOuD9t5vyy/e84D
         HtNfLGbnBH7JtPZMM+Qf4Ue+gonV4ACZvqbluEClYh9DgqvGg64B5JQ1BqJwHTWcXxDg
         XiLGcSuDoPvB1G6LbJfdY7+rJHH6ZS09ztIWKEPU4x01xj82zwz/iBEuRYVOCBkCHmyk
         24LOA7935GsdfAdF4s0HrRWBVhyWMNs5XuMzpGZpzPVrI44FH53/Qs8RQf5Tdp0Vfuyn
         XxmaYqaq6TMof0yFGKEom7vovPxoIJT65gbUqqvJWlXnQMKx9NkWcQiADzxGWm7oNsE5
         Lhng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id f16si1504plg.0.2021.04.13.07.53.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 07:53:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: +/TA+Vl44XsBk05XNL3DzHjsNHatxeVgW2pHFHVoGqA+pb1wxI5nzs4dvavqLCTzFo++MvPBTO
 27UqXG0q2lWg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194456665"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="194456665"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 07:53:22 -0700
IronPort-SDR: ThDZnDaLHvuc3kj4p9CLOj8eCMjDN7c9Gh2EuxNxgL6sIYP7mPiWT3hhP/eptiuAKNHHa6pZn0
 geGfOVXQD4Gg==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="521623505"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 07:53:18 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with ESMTP id 5D7352082C;
	Tue, 13 Apr 2021 17:53:15 +0300 (EEST)
Date: Tue, 13 Apr 2021 17:53:15 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Greg KH <gregkh@linuxfoundation.org>,
	Mitali Borkar <mitaliborkar810@gmail.com>, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 1/1] staging: ipu3-imgu: Move the UAPI header from
 include under include/uapi
Message-ID: <20210413145315.GW3@paasikivi.fi.intel.com>
References: <20210412111120.31625-1-sakari.ailus@linux.intel.com>
 <YHWgbZTDAWBX9EpR@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YHWgbZTDAWBX9EpR@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Laurent,

On Tue, Apr 13, 2021 at 04:45:17PM +0300, Laurent Pinchart wrote:
> Hi Sakari,
> 
> Thank you for the patch.
> 
> On Mon, Apr 12, 2021 at 02:11:20PM +0300, Sakari Ailus wrote:
> > The header defines the user space interface but may be mistaken as
> > kernel-only header due to its location. Add "uapi" directory under
> > driver's include directory and move the header there.
> > 
> > Suggested-by: Greg KH <gregkh@linuxfoundation.org>
> > Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> > ---
> >  Documentation/admin-guide/media/ipu3.rst      | 35 ++++++++++---------
> >  .../media/v4l/pixfmt-meta-intel-ipu3.rst      |  2 +-
> >  .../ipu3/include/{ => uapi}/intel-ipu3.h      |  0
> >  drivers/staging/media/ipu3/ipu3-abi.h         |  2 +-
> >  4 files changed, 20 insertions(+), 19 deletions(-)
> >  rename drivers/staging/media/ipu3/include/{ => uapi}/intel-ipu3.h (100%)
> > 
> > diff --git a/Documentation/admin-guide/media/ipu3.rst b/Documentation/admin-guide/media/ipu3.rst
> > index f59697c7b374..d6454f637ff4 100644
> > --- a/Documentation/admin-guide/media/ipu3.rst
> > +++ b/Documentation/admin-guide/media/ipu3.rst
> > @@ -234,22 +234,23 @@ The IPU3 ImgU pipelines can be configured using the Media Controller, defined at
> >  Running mode and firmware binary selection
> >  ------------------------------------------
> >  
> > -ImgU works based on firmware, currently the ImgU firmware support run 2 pipes in
> > -time-sharing with single input frame data. Each pipe can run at certain mode -
> > -"VIDEO" or "STILL", "VIDEO" mode is commonly used for video frames capture, and
> > -"STILL" is used for still frame capture. However, you can also select "VIDEO" to
> > -capture still frames if you want to capture images with less system load and
> > -power. For "STILL" mode, ImgU will try to use smaller BDS factor and output
> > -larger bayer frame for further YUV processing than "VIDEO" mode to get high
> > -quality images. Besides, "STILL" mode need XNR3 to do noise reduction, hence
> > -"STILL" mode will need more power and memory bandwidth than "VIDEO" mode. TNR
> > -will be enabled in "VIDEO" mode and bypassed by "STILL" mode. ImgU is running at
> > -“VIDEO” mode by default, the user can use v4l2 control V4L2_CID_INTEL_IPU3_MODE
> > -(currently defined in drivers/staging/media/ipu3/include/intel-ipu3.h) to query
> > -and set the running mode. For user, there is no difference for buffer queueing
> > -between the "VIDEO" and "STILL" mode, mandatory input and main output node
> > -should be enabled and buffers need be queued, the statistics and the view-finder
> > -queues are optional.
> > +ImgU works based on firmware, currently the ImgU firmware support run 2 pipes
> > +in time-sharing with single input frame data. Each pipe can run at certain mode
> > +- "VIDEO" or "STILL", "VIDEO" mode is commonly used for video frames capture,
> > +and "STILL" is used for still frame capture. However, you can also select
> > +"VIDEO" to capture still frames if you want to capture images with less system
> > +load and power. For "STILL" mode, ImgU will try to use smaller BDS factor and
> > +output larger bayer frame for further YUV processing than "VIDEO" mode to get
> > +high quality images. Besides, "STILL" mode need XNR3 to do noise reduction,
> > +hence "STILL" mode will need more power and memory bandwidth than "VIDEO" mode.
> > +TNR will be enabled in "VIDEO" mode and bypassed by "STILL" mode. ImgU is
> > +running at “VIDEO” mode by default, the user can use v4l2 control
> > +V4L2_CID_INTEL_IPU3_MODE (currently defined in
> > +drivers/staging/media/ipu3/include/uapi/intel-ipu3.h) to query and set the
> > +running mode. For user, there is no difference for buffer queueing between the
> > +"VIDEO" and "STILL" mode, mandatory input and main output node should be
> > +enabled and buffers need be queued, the statistics and the view-finder queues
> > +are optional.
> 
> The reflow of the whole paragraph is a bit painful to review.

Yes. The only difference there is still the addition of "/uapi". :-)

> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Thank you!

-- 
Sakari Ailus


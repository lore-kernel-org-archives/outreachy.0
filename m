X-GM-THRID: 6950041041271521280
X-Received: by 2002:a25:e803:: with SMTP id k3mr35600691ybd.268.1618224313484;
        Mon, 12 Apr 2021 03:45:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6902:6ad:: with SMTP id j13ls7254487ybt.5.gmail; Mon, 12
 Apr 2021 03:45:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyrN7PyXUxJzE1vaPx7+60CqEKuE17h9FGbH/xJOdh5jHHYKkUFTKIQQ5SZ6+ywhGHd4lrT
X-Received: by 2002:a5b:1cf:: with SMTP id f15mr25472698ybp.305.1618224312571;
        Mon, 12 Apr 2021 03:45:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618224312; cv=none;
        d=google.com; s=arc-20160816;
        b=QuRV7sFheqv3Jg1RTnxFH00omzW+Phef+anMBhZZpopuANJyPeDFLYgqEcYx1MTWp2
         npLWGNtu7COs1J1BF6gejUvMNGxb+6WcxbmYPGeP2h+dSreEnyDK7PWkUVrhfXfxUnu5
         nT7pzu2+tEJAAPAtBRw87Bl8kVtHQ5/f8IOcQinV16ZbSMr57EWf1Rh4ky0iBq6ohr3R
         SxWuuuEAFT6rBBX+zF8FYSjJi0LWY4Fd5ipr3WuRjY0ZLW0FJuHSGFZ+H5dHTkobG/Bj
         oiRVbi6qLD8NJi/wzy7toLbgIk36y6z6B1WupvNVhY0lhFZxBjfRrn3yMQf5b2moHEJp
         vqrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=fpWcddzsXNk20kJH25Aswkw3Jc73uYjyPRk2YokpBkU=;
        b=hRfyAwxoRDt9JUYqwMdThnN89IcABPgAVLAsN8yi+JwnBL/LiMecYyXA+LM4Gz8hhY
         ORJ831DRRlAl5FYXiVlT0AakZIhC1Vf30u4WqPk9lThEx+38cRxcUlVvMGv9cZJgphkc
         cHKEAEY2TcE5OOwnDm3ShlmjcVoDpmgTmdMb76Mxcdxt46h3S+AVt8Mxy3kvTeooFJfZ
         N9knNfUgQ5JEDIPpAQ2pq1xBKxewQ+KlWEzK5Xjf5iuIOO/zqU2nCbA9EzUONHwWnipb
         9ARGU/E7iA3Kyx5WvQsdEyHDzqofpZKzqIirRtW8buFaekewr9OIu9HhhLkX+HRA1zV2
         puYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id i10si779178ybj.3.2021.04.12.03.45.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 03:45:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: GWW1PPW0DS/5N+/3WgsHC9xSYGIkctz/VnHSqWI2qIrBiJPMBYwtF5ash0x1O9HRX9pnmXrYMC
 aLmYYo6cNWXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="181680223"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="181680223"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 03:45:10 -0700
IronPort-SDR: wNP5upRSfj+0qPIFk8LsJTDQpXOAuI/yI0IsV5BdDAzF2k4P5ylFG7zOxzTKz9zCWyrpV17/cF
 Y0E4Ir68EnRA==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="420360141"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 03:45:07 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 54E71203D0;
	Mon, 12 Apr 2021 13:44:35 +0300 (EEST)
Date: Mon, 12 Apr 2021 13:44:35 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in, laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH 1/6] staging: media: intel-ipu3: replace bit shifts with
 BIT() macro
Message-ID: <20210412104435.GL3@paasikivi.fi.intel.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <cc7b827a3264f08cedb76adddd16a34df48f935f.1618180659.git.mitaliborkar810@gmail.com>
 <20210412094230.GI3@paasikivi.fi.intel.com>
 <YHQXty07oAP1L0W9@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHQXty07oAP1L0W9@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Greg,

On Mon, Apr 12, 2021 at 11:49:43AM +0200, Greg KH wrote:
> On Mon, Apr 12, 2021 at 12:42:30PM +0300, Sakari Ailus wrote:
> > Hi Mitali,
> > 
> > On Mon, Apr 12, 2021 at 04:38:39AM +0530, Mitali Borkar wrote:
> > > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > > This BIT() macro from linux/bitops.h is used to define IPU3_UAPI_GRID_Y_START_EN
> > > and IPU3_UAPI_AWB_RGBS_THR_B_* bitmask.
> > > Use of macro is better and neater. It maintains consistency.
> > > Reported by checkpatch.
> > > 
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > index edd8edda0647..589d5ccee3a7 100644
> > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > @@ -5,6 +5,7 @@
> > >  #define __IPU3_UAPI_H
> > >  
> > >  #include <linux/types.h>
> > > +#include <linux/bitops.h>
> > >  
> > >  /* from /drivers/staging/media/ipu3/include/videodev2.h */
> > >  
> > > @@ -22,11 +23,11 @@
> > >  #define IPU3_UAPI_MAX_BUBBLE_SIZE			10
> > >  
> > >  #define IPU3_UAPI_GRID_START_MASK			((1 << 12) - 1)
> > > -#define IPU3_UAPI_GRID_Y_START_EN			(1 << 15)
> > > +#define IPU3_UAPI_GRID_Y_START_EN			BIT(15)
> > 
> > This header is used in user space where you don't have the BIT() macro.
> 
> If that is true, why is it not in a "uapi" subdir within this driver?
> 
> Otherwise it is not obvious at all that this is the case :(

It defines an interface towards the user space and the argument has been a
staging driver shouldn't be doing that (for the lack of ABI stability),
hence leaving it where it is currently.

Also CC Laurent.

-- 
Kind regards,

Sakari Ailus


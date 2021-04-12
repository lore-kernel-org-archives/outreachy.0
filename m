X-GM-THRID: 6950041041271521280
X-Received: by 2002:a05:6a00:d41:b029:241:6449:e96 with SMTP id n1-20020a056a000d41b029024164490e96mr23671901pfv.75.1618225226525;
        Mon, 12 Apr 2021 04:00:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3fc1:: with SMTP id m184ls7049457pga.5.gmail; Mon, 12
 Apr 2021 04:00:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxq0TzVioTCn1aYNwnolE7LZYV0ymhQWd9cblaE/0qJVcxa5Als/svMAQIwwEY2vi7o/tz
X-Received: by 2002:a63:4281:: with SMTP id p123mr24150461pga.420.1618225224798;
        Mon, 12 Apr 2021 04:00:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618225224; cv=none;
        d=google.com; s=arc-20160816;
        b=0mnrEDY52E/4gwRF56K8qVSO38rdIOqwSB2+P8GD2FVVUW3Rwr/IDrejapS3WWsbWZ
         JnedMLwiUUZTK70csIJJhM1O7+cCDMadXys7FLf+K/0Moi7eGJMjC2aC8hx+egvXT9vD
         D012Htx5LKM0PWI0Gbawfc5G+NhA6d9Rnq6ElQV3IgS+Y0of0oUmZzMC5mpzcJqRRSOL
         xtvZ1QJuJ8eosCAUyaTX9Mr0x9D3CyxVH4z++cVdZ0Yy5VHOJU8XBkvwqq4TQ8U+1jwe
         PKaMxwBFocApFgGSnEm1OM94J1G2ahpBci2wZpS9By+Axu16FhkAj3wahVTMLkjkH+/y
         reyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=x84qivqkx9yJUwDBi9ohICIsuO+ry4JkvYV6+o0C+Zk=;
        b=GSKrPSWuTy1IkA2qh6j//LopP7tML0mfUT6jGMmJDVLQVbj10iHE3EbankJ224ExE3
         hvQ5290EG3T9PdtbAiudimktHg/9Aw6yFcNlkAmq5Xb+1D4O0bflE4sB6r8GGmmIgRN4
         lPNZ4h8WhgYdbUU0vwajTvfT5+oUZaq91IN2/nA2nZa1i4af4h9Cki4YmexpxLWtaHHe
         DiX/5sxqPGqKryqm+4BpMRhaXs7GCt7mqZeDxeUSdSRyN/8zLYFe5sWm2rQHYFNJMBeC
         K+OQzrYYsaKwH0pbWESLlUWPRJw4LJ9A286+D1OY0JeAjDs/CqeAmQpty10/4X/xcZST
         ffVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id r2si706024pjd.1.2021.04.12.04.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 04:00:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: eVHboXAjGDLZUWeepBGFJBEYYlCP85xTKR1+GmwMqwglNZcUHKyoqMFbJzl8VwlynwimZA1ABG
 PPV2R9Myxg5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="174260531"
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="174260531"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 04:00:23 -0700
IronPort-SDR: +S8E8BV1Dc2BzlBF8/6WPnhbTKYz9r1ME7efkhsT8jHc1YwtQorbKlYV2MeEezTE1fmx7imL74
 OF5Ro7iqytCA==
X-IronPort-AV: E=Sophos;i="5.82,216,1613462400"; 
   d="scan'208";a="599933660"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Apr 2021 04:00:19 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 6EF60203D0;
	Mon, 12 Apr 2021 14:00:17 +0300 (EEST)
Date: Mon, 12 Apr 2021 14:00:17 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in, laurent.pinchart@ideasonboard.com
Subject: Re: [PATCH 1/6] staging: media: intel-ipu3: replace bit shifts with
 BIT() macro
Message-ID: <20210412110017.GM3@paasikivi.fi.intel.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <cc7b827a3264f08cedb76adddd16a34df48f935f.1618180659.git.mitaliborkar810@gmail.com>
 <20210412094230.GI3@paasikivi.fi.intel.com>
 <YHQXty07oAP1L0W9@kroah.com>
 <20210412104435.GL3@paasikivi.fi.intel.com>
 <YHQnOJ2t0+q65La2@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHQnOJ2t0+q65La2@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Apr 12, 2021 at 12:55:52PM +0200, Greg KH wrote:
> On Mon, Apr 12, 2021 at 01:44:35PM +0300, Sakari Ailus wrote:
> > Hi Greg,
> > 
> > On Mon, Apr 12, 2021 at 11:49:43AM +0200, Greg KH wrote:
> > > On Mon, Apr 12, 2021 at 12:42:30PM +0300, Sakari Ailus wrote:
> > > > Hi Mitali,
> > > > 
> > > > On Mon, Apr 12, 2021 at 04:38:39AM +0530, Mitali Borkar wrote:
> > > > > Added #include <linux/bitops.h> and replaced bit shifts by BIT() macro.
> > > > > This BIT() macro from linux/bitops.h is used to define IPU3_UAPI_GRID_Y_START_EN
> > > > > and IPU3_UAPI_AWB_RGBS_THR_B_* bitmask.
> > > > > Use of macro is better and neater. It maintains consistency.
> > > > > Reported by checkpatch.
> > > > > 
> > > > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > > > ---
> > > > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 7 ++++---
> > > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > index edd8edda0647..589d5ccee3a7 100644
> > > > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > @@ -5,6 +5,7 @@
> > > > >  #define __IPU3_UAPI_H
> > > > >  
> > > > >  #include <linux/types.h>
> > > > > +#include <linux/bitops.h>
> > > > >  
> > > > >  /* from /drivers/staging/media/ipu3/include/videodev2.h */
> > > > >  
> > > > > @@ -22,11 +23,11 @@
> > > > >  #define IPU3_UAPI_MAX_BUBBLE_SIZE			10
> > > > >  
> > > > >  #define IPU3_UAPI_GRID_START_MASK			((1 << 12) - 1)
> > > > > -#define IPU3_UAPI_GRID_Y_START_EN			(1 << 15)
> > > > > +#define IPU3_UAPI_GRID_Y_START_EN			BIT(15)
> > > > 
> > > > This header is used in user space where you don't have the BIT() macro.
> > > 
> > > If that is true, why is it not in a "uapi" subdir within this driver?
> > > 
> > > Otherwise it is not obvious at all that this is the case :(
> > 
> > It defines an interface towards the user space and the argument has been a
> > staging driver shouldn't be doing that (for the lack of ABI stability),
> > hence leaving it where it is currently.
> 
> I think we are talking past each other here...
> 
> If you have a userspace api, then put that in a .h file that has a
> "uapi" in the path.  Just because you have this in a staging driver does
> not mean you should not have such a thing, otherwise you are going to
> constantly fight against people sending you patches like this as there
> is no obvious way to determine this.
> 
> So how about moving this file to:
> 	drivers/staging/media/ipu3/include/uapi/intel-ipu3.h

Ah, sure! I'll send a patch.

-- 
Sakari Ailus


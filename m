X-GM-THRID: 6950506572644614144
X-Received: by 2002:a37:f509:: with SMTP id l9mr9275487qkk.172.1618310679564;
        Tue, 13 Apr 2021 03:44:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:224c:: with SMTP id c12ls4304045qvc.1.gmail; Tue,
 13 Apr 2021 03:44:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytCYltC3DFL7WYIvQT4yxELd7IweYZaQP5FR0WbSQltpsHsiLKFMBb3M2XZIh4RaLApMrl
X-Received: by 2002:ad4:5630:: with SMTP id cb16mr6564160qvb.40.1618310678666;
        Tue, 13 Apr 2021 03:44:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618310678; cv=none;
        d=google.com; s=arc-20160816;
        b=IGWKmb5bk41xmPUvCZ3crGypUsKdI6H9Z+RlPebKlXlS8hssd0EjaN8DkktPiOHYCv
         ajYxsZBR8zbvdqJ/LZDluUDnqna3KSiG4ueAsacEH8vlp9+fd4AaU27ETd0OcXuF81su
         uJncfSQ/xArCmJSBy+T/wWNtA0ajg+A4xLrAikOxg3q8zRiYK81dLA9+d+RG+nTGYexI
         zMX95hA4c6ugQofhSmaoWNyzZbJBthHeB0mLfHRNdby/kivJJecDSf4SEtw2v7DS1rf9
         8E6o6z0RfjFvLKzZ49a68iCAT39YZ+uoftRd1ZXEWbrKKz2YPnnsiR2zuHgYyJv2H30Q
         W+FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=zmqlLRVqFHxNNfqul7wn+JH8qUW8/bQi7ooZUaHChyw=;
        b=JiLWjniSZkMtor6smkmSQTN9sE/PiiCSiuAPSIwuzaB0mPZ7swuSuXO+3G31LJDmhg
         RPW6eKTZWyB6iFfRw5M/GM78LlJ+O60nP4NZL+I84uBE58iy/Mbph9N4lNuEnykTnWMb
         Zl5C/dz1QSNDDd5ncuc/mSUgQ8M0an3O7MHtau9AILj+oTnhYFom2gNuU9sUxVy9b+YU
         5Nm5Sl2qIJkK6kZKIcl7X99RqPKBJI/BDV1YGBqZ4MEcp+cnIr/hNbTUget0y+8N/Uvc
         uu+tzHqxs4IO2BiXiGZfFpEnno4513M0eOOow/ZVj0OvrGeyUZQ1770J3kna0u1SwEqi
         c04g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id k1si1649955qtg.2.2021.04.13.03.44.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 03:44:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: p+BsbDaW4bObrxhfqCK4+80YEeQNyYIz/MLet8T1zjc/Vmuu+/urbiMqEFmZMxSWcL1teqs8v5
 nUTKrIoqAtCw==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="173878201"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="173878201"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 03:44:37 -0700
IronPort-SDR: 3PUF6PcGRPMdE3KsQleHMqmiukVuS53w9Xkb0qf1ik57NY6VgzQK+P0yyVBLftq4K/KDjGywbN
 MpgQ0qsyh78A==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="417813705"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 03:44:34 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id B0B5E200E8;
	Tue, 13 Apr 2021 13:44:32 +0300 (EEST)
Date: Tue, 13 Apr 2021 13:44:32 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 3/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <20210413104432.GU3@paasikivi.fi.intel.com>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
 <f18b704654797e29f3bbbe49689eaa2c0ad28d59.1618289130.git.mitaliborkar810@gmail.com>
 <20210413100134.GR3@paasikivi.fi.intel.com>
 <YHV1uOq9pXmGUD+x@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHV1uOq9pXmGUD+x@kali>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Apr 13, 2021 at 04:13:04PM +0530, Mitali Borkar wrote:
> On Tue, Apr 13, 2021 at 01:01:34PM +0300, Sakari Ailus wrote:
> > Hi Mitali,
> > 
> > Thanks for the update.
> > 
> > On Tue, Apr 13, 2021 at 10:46:06AM +0530, Mitali Borkar wrote:
> > > Reduced length of the line under 80 characters to meet linux-kernel
> > > coding style.
> > > 
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > > 
> > > Changes from v1:- Reduced length of the line under 80 characters
> > > 
> > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > index 6a72c81d2b67..52dcc6cdcffc 100644
> > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > @@ -247,7 +247,8 @@ struct ipu3_uapi_ae_ccm {
> > >   */
> > >  struct ipu3_uapi_ae_config {
> > >  	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
> > > -	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);
> > > +	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
> > > +							__aligned(32);
> > 
> > Do you still have the other two patches in your tree? This doesn't apply
> > here due to the different attribute syntax.
> >
> I have patch 1/6 and 2/6 in my tree which you asked me to drop.

Could you drop them and then submit v3?

Thanks.

-- 
Sakari Ailus


X-GM-THRID: 6950506572644614144
X-Received: by 2002:a25:cfc2:: with SMTP id f185mr25111717ybg.26.1618312308183;
        Tue, 13 Apr 2021 04:11:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:240a:: with SMTP id k10ls3512334ybk.10.gmail; Tue, 13
 Apr 2021 04:11:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzlYxiv+0HlNike1ZQJGgw2/OppiQ8aR1bF7xmL+uQeaIOMpVjqAutaOyexd/5RROsJtyqg
X-Received: by 2002:a25:188b:: with SMTP id 133mr43228816yby.65.1618312307245;
        Tue, 13 Apr 2021 04:11:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618312307; cv=none;
        d=google.com; s=arc-20160816;
        b=PH4pSmrtBbKG0Yxzczwmn3nsOsXe/1vgPKCVMoMQs6PAhhbBqaf9DfK+IrM3bzNsdS
         CTe8p0D5eNZZzqJaBGlPZZKol1PXqGn26hr1g8w3HAKtlXaEiSRjkMzH3qMzU9sHZLNv
         x+8XtfxRBGiREyC74jYFI6d9XFHAmSaqdF5edcMX7WeAEzWdDXkLwlFeryry6ww6VIKk
         F9WAbTBFfYbm2Q5OZpGCdSLIpDvYJWZRWaEhJCSY3gLLgu5AlSZhOGQaKLfHE7kiQm5f
         y08A667f3Hf0zPHihweEikBWwbb69YIYrfOU6UA9qrPupZDKuG1UVtht+DQw7onIVPKh
         XuWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=F338eQAeNjIVQuPV2yyYXlfdLKowacwLumWc4c+B/A8=;
        b=XUahHQmCYEYfSyTdUUWq7kYjjq1M5LeU2O+4hmKKAPnvCRKSuN4nl1j+GLW+xRNX5D
         GuxYP9PgI4wUUm+44a30arvBf7k4GusHAiZ4XDAbn7GfHnq40H8/B+YlXYQ+Tngaq1Oc
         1xM2JyfwE4CM5S/ZtYl0ecpyVUsylavgGtFc+CTQODcdNaFKcWrb0Ocp1m1oVPkUHhzB
         0VviciTam4XQGHdIRLpQSA6unHGBXdzcBmbNL0alXRHfibcXnEcbxCgDdTDqLSytmtPa
         bBNmIz1KhkVkAROQfwI8zzCOs8q//0AGLenfvuGipfjmAXSEpg4zrDEK6+MWHp3d9THD
         Axww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id k6si588267ybt.0.2021.04.13.04.11.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 04:11:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: wyFeQJ8yQbXaf3Bd69vJfqcqIy8kh16ChbKoOW6kKUm8UqJAGlrvhvqVG+fPGwgkLz9wcd3J51
 +lfIk2J7JtZg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="193951070"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="193951070"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 04:11:45 -0700
IronPort-SDR: 1IkuPvPYrc3t8CU6+XciUlWKhD+O/HFxILxn3xoyhU2kBYk6kSu2Zbgd2JTqL0CkYOx9I7RYw8
 1z1vNPio0Oxg==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="532247488"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 04:11:42 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id D8E38200E8;
	Tue, 13 Apr 2021 14:11:40 +0300 (EEST)
Date: Tue, 13 Apr 2021 14:11:40 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 3/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <20210413111140.GV3@paasikivi.fi.intel.com>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
 <f18b704654797e29f3bbbe49689eaa2c0ad28d59.1618289130.git.mitaliborkar810@gmail.com>
 <20210413100134.GR3@paasikivi.fi.intel.com>
 <YHV1uOq9pXmGUD+x@kali>
 <20210413104432.GU3@paasikivi.fi.intel.com>
 <YHV45I6ZDsXNwdiG@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHV45I6ZDsXNwdiG@kali>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Apr 13, 2021 at 04:26:36PM +0530, Mitali Borkar wrote:
> On Tue, Apr 13, 2021 at 01:44:32PM +0300, Sakari Ailus wrote:
> > On Tue, Apr 13, 2021 at 04:13:04PM +0530, Mitali Borkar wrote:
> > > On Tue, Apr 13, 2021 at 01:01:34PM +0300, Sakari Ailus wrote:
> > > > Hi Mitali,
> > > > 
> > > > Thanks for the update.
> > > > 
> > > > On Tue, Apr 13, 2021 at 10:46:06AM +0530, Mitali Borkar wrote:
> > > > > Reduced length of the line under 80 characters to meet linux-kernel
> > > > > coding style.
> > > > > 
> > > > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > > > ---
> > > > > 
> > > > > Changes from v1:- Reduced length of the line under 80 characters
> > > > > 
> > > > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 3 ++-
> > > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > index 6a72c81d2b67..52dcc6cdcffc 100644
> > > > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > @@ -247,7 +247,8 @@ struct ipu3_uapi_ae_ccm {
> > > > >   */
> > > > >  struct ipu3_uapi_ae_config {
> > > > >  	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
> > > > > -	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);
> > > > > +	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
> > > > > +							__aligned(32);
> > > > 
> > > > Do you still have the other two patches in your tree? This doesn't apply
> > > > here due to the different attribute syntax.
> > > >
> > > I have patch 1/6 and 2/6 in my tree which you asked me to drop.
> > 
> > Could you drop them and then submit v3?
> >
> I am extremely sorry Sir, but I am still learning to use git, drop them
> means to delete those commits? Even if I delete those, this patch was
> made after those, so the changes I made then will remain as it is, so
> what to do now? 

No worries.

Yes, please remove the two commits, as you need to use the same (or at
least non-conflicting) baseline for the patches compared to the tree where
the patches will be applied.

So in practice what you need to do is to rebase these four patches on
linux-media tree's master branch and resolve the resulting conflict in this
patch (as the preceding patches no longer have the attribute changes).

The -i option for git rebase in particular is useful.

-- 
Sakari Ailus


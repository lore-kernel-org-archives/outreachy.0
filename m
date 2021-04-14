X-GM-THRID: 6950506572644614144
X-Received: by 2002:a1f:a449:: with SMTP id n70mr27148800vke.14.1618385291133;
        Wed, 14 Apr 2021 00:28:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6122:2bb:: with SMTP id 27ls80499vkq.1.gmail; Wed, 14
 Apr 2021 00:28:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxWp4EFSIooZ2aEt9KKifxcN+TvJW2L9owhvztETSXmM5kWUzzNXMMaRVEvYsB+szvM4weL
X-Received: by 2002:a1f:2a95:: with SMTP id q143mr27158446vkq.8.1618385290238;
        Wed, 14 Apr 2021 00:28:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618385290; cv=none;
        d=google.com; s=arc-20160816;
        b=AUXOwDYapCvC5lSGhm5Ox8s0jcO+nH6YAFrLiB9tPZDGtxo4N6R1ulJWB5AgCRqDCV
         VuXWX3VTtzlSYqHFDxngbB4WZc47KDV8apQja4qeWndgsMAOAvnG3gPt3wHywzCjNgW0
         SH5hxYrCOVwS9LwYlMt7YBpMV2mVBpWOh9nb3OdehMftI4zWCU8D0pPG4bCVHgWkJZw4
         QAg0swb0OZ/9y8kerc/pfDGuqgPqml0Wf4G3LlFOmc7ld+Pmsb4zza3CB8KV4OSH+1cr
         vj/oEwYT/CCFdqvsRk3ZKFnvvGgnBY0TBzBrxzxJ/5u3k7Z/dUP9moGzUMCc/CXPL0hk
         9ZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=fKn986ELvTvHhGnvcdYHNW8hIp6Hcs85J0j7pbPCeH4=;
        b=oxTQGYwYvl3dEpN+QbN31UGqcHrL1aDh3Di218IbSFI5B0KzF+ZQOc7kHdzRnvGC+m
         o4KEIi2PrjzsZqBptcjp2f/QzOuAXIIQY/ttHgyfkrkAZMzH2aoNtFWdFHviL2XrVuCT
         +ceOzcQqWSxrieimc4bMexmOSTzwqIPjTAHQ4IRXY6yVngp3cS5zpZ7/r1IazPqQy2ci
         bTR3tUStRG4S6oUTQvXyur9wcx3epcmR/Ys+Cw+1Q+BcJ0gOcULhZCcBS0He40jg963z
         69bHi5qz4b2QUL1CmuL3X0B3TW4ztjkp4A9Jd6FIUO59DE4ba4ZneSdSE72CPAyt8ZUn
         jFHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id t16si831431vko.2.2021.04.14.00.28.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 00:28:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: ebflVXa8aLn0hmCpxhI0pXCAm0pKYlXsmEkJmz3jxAgXbKRsid9E3K/0l9cVZIw+av6z2CB+du
 q7eUj90Dlu6g==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="191400248"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; 
   d="scan'208";a="191400248"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 00:28:03 -0700
IronPort-SDR: G662FlIdTzBS+sgyF982vbTaYMXS791eapI1uQ7YZ9cmOYdI8Vm6F7ySXj2FWXxjdoBR/PvNKs
 7ga5mYfCzYww==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; 
   d="scan'208";a="382268190"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2021 00:28:00 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 1BBA1200E8;
	Wed, 14 Apr 2021 10:27:58 +0300 (EEST)
Date: Wed, 14 Apr 2021 10:27:58 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Mitali Borkar <mitaliborkar810@gmail.com>,
	Dan Carpenter <dan.carpenter@oracle.com>, bingbu.cao@intel.com,
	tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH v3 4/4] staging: media:
 intel-ipu3: remove space before tabs
Message-ID: <20210414072757.GY3@paasikivi.fi.intel.com>
References: <cover.1618326535.git.mitaliborkar810@gmail.com>
 <01ad7ff353f805dfc48e7bcc26ed974e7bb5ef9f.1618326535.git.mitaliborkar810@gmail.com>
 <20210413181712.GI6021@kadam>
 <YHX3iVCNXJlOsmuQ@kali>
 <alpine.DEB.2.22.394.2104140004430.14108@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104140004430.14108@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Apr 14, 2021 at 12:05:04AM +0200, Julia Lawall wrote:
> 
> 
> On Wed, 14 Apr 2021, Mitali Borkar wrote:
> 
> > On Tue, Apr 13, 2021 at 09:17:12PM +0300, Dan Carpenter wrote:
> > > On Tue, Apr 13, 2021 at 08:59:34PM +0530, Mitali Borkar wrote:
> > > > Removed unnecessary space before tabs to adhere to linux kernel coding
> > > > style.
> > > > Reported by checkpatch.
> > > >
> > > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > > ---
> > > >
> > > > Changes from v2:- No changes.
> > > > Changes from v1:- No changes.
> > > >
> > > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > index 47e98979683c..42edac5ee4e4 100644
> > > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > @@ -633,7 +633,7 @@ struct ipu3_uapi_bnr_static_config_wb_gains_thr_config {
> > > >   * @cg:	Gain coefficient for threshold calculation, [0, 31], default 8.
> > > >   * @ci:	Intensity coefficient for threshold calculation. range [0, 0x1f]
> > > >   *	default 6.
> > > > - * 	format: u3.2 (3 most significant bits represent whole number,
> > > > + *format: u3.2 (3 most significant bits represent whole number,
> > > >   *	2 least significant bits represent the fractional part
> > >
> > > Just remove the spaces, don't remove the tab.  It's looks silly now.
> > >
> > Okay Sir, do I have to send a v4 patch on this now?
> 
> Yes.  If you get feedback on a patch, you should send a new version.

v2 of this patch can be used as well, it's fine. (I missed this change in
v3.)

-- 
Sakari Ailus


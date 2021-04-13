X-GM-THRID: 6950041128990146560
X-Received: by 2002:a17:902:708b:b029:e6:77ca:3cb6 with SMTP id z11-20020a170902708bb02900e677ca3cb6mr31620096plk.84.1618307788875;
        Tue, 13 Apr 2021 02:56:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:4e:: with SMTP id i14ls6976127pfk.0.gmail; Tue, 13
 Apr 2021 02:56:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxdQa8QnOdrsBsQrBdugg3yJo9guIr1H+mCDZ1PpFTUO2MDU+H4frkLynJCdiCeKF1PUhf1
X-Received: by 2002:a65:4d4c:: with SMTP id j12mr30817091pgt.346.1618307787709;
        Tue, 13 Apr 2021 02:56:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618307787; cv=none;
        d=google.com; s=arc-20160816;
        b=06pYH/aNiv5IVg/KSqcXyLjrvIWHg/bLbB/Zfh1FjCOi7s8/3QfVgcshbfoD38+d2d
         rYDWj0UKlc1LX9SdWyrZg3noKM9BEQ11v4hfEQ1whk3dbt66zYWWw8vBc4ySR38VMDL7
         z4iw01EZC20gflcshC7H5YUR8QqJwZFGJJPoKVX1QmeTzyH09k974iJ3oJL9AJ9R/vvF
         6OvuLMUi1lG1LOa0pwdgwnxq3fMXyq5kah4q6VRYQB2inTXVaB/29gebOUiQj03CvUNR
         ezXvQeblaJCqw9kfbB+VVMLgAFPwbJxDKF6zJxhhZJBgz7wr0oUSb6vo1h6JZykjORG9
         bC4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=MLoT7/LTBUL6sj++/x565PBQEtKG/O1XZ+hBGdaBH4I=;
        b=IsmrzLNXiC+wbfbjvXvX2FfQkItnxj5I7SnxmutZisdlTVnMlNg0GNoOVUX9sQ2TfV
         1Vrzdepq482N7ouoUZKLbPw/ok1pV9NdWfeQwHWmkOuia2T4Z+QC1ESSagGXr7R5j/li
         JzG3WlnGGzSFDuiHO0mg5bob0jPLSjU4N4duRNcCoWzruC+i2NnaGRivehRPV4RfMJdT
         zX9QUMvIaYGD4U6Qyq2ad5fzO9nCmFr2SB5kXpHSrSNrTdg+//mjtkocLYQeDeSlWXCo
         HE1XPlvFD5f4n8jMBtLnKxwRaIPmO5IqVmviyQDI0AbMGQsPdrhWE2a1oYqq6m865B7q
         jKwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id j184si995580pfb.1.2021.04.13.02.56.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 02:56:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: LHCiB0prVj3JUTCaV4/qnK1EZDSwOQpX+65j1Jmqt4Lujie0FWHC7QU++tltG0+0foCW+5Y620
 IU3yxnsalyeA==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194410335"
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="194410335"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 02:56:26 -0700
IronPort-SDR: iaDTdlOYwaeA9p4vZouePjGF9f/FZnung/O5QEVXDkgmcycK5yateSs9xD7typ+Uv6xPnyvrJ9
 RNYLZaEMF61g==
X-IronPort-AV: E=Sophos;i="5.82,219,1613462400"; 
   d="scan'208";a="600297380"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 02:56:24 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id F2264203D0;
	Tue, 13 Apr 2021 12:56:21 +0300 (EEST)
Date: Tue, 13 Apr 2021 12:56:21 +0300
From: "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>
To: David Laight <David.Laight@ACULAB.COM>
Cc: 'Mitali Borkar' <mitaliborkar810@gmail.com>,
	"bingbu.cao@intel.com" <bingbu.cao@intel.com>,
	"tian.shu.qiu@intel.com" <tian.shu.qiu@intel.com>,
	"mchehab@kernel.org" <mchehab@kernel.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"mitali_s@me.iitr.ac.in" <mitali_s@me.iitr.ac.in>
Subject: Re: [PATCH 2/6] staging: media: intel-ipu3: preferred
 __aligned(size) over __attribute__aligned(size)
Message-ID: <20210413095621.GQ3@paasikivi.fi.intel.com>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <f618f1fe2d13417ebed185da392fb48811593a9f.1618180660.git.mitaliborkar810@gmail.com>
 <277be5f4da82449aaf0a635b60ad0728@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <277be5f4da82449aaf0a635b60ad0728@AcuMS.aculab.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi David,

On Tue, Apr 13, 2021 at 07:40:12AM +0000, David Laight wrote:
> From: Mitali Borkar
> > Sent: 12 April 2021 00:09
> > 
> > This patch fixes the warning identified by checkpatch.pl by replacing
> > __attribute__aligned(size) with __aligned(size)
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  .../staging/media/ipu3/include/intel-ipu3.h   | 74 +++++++++----------
> >  1 file changed, 37 insertions(+), 37 deletions(-)
> > 
> > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > index 589d5ccee3a7..d95ca9ebfafb 100644
> > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > @@ -84,7 +84,7 @@ struct ipu3_uapi_grid_config {
> >   */
> >  struct ipu3_uapi_awb_raw_buffer {
> >  	__u8 meta_data[IPU3_UAPI_AWB_MAX_BUFFER_SIZE]
> > -		__attribute__((aligned(32)));
> > +		__aligned(32);
> >  } __packed;
> 
> WTF?
> 
> It either has 1-byte alignment because it is just __u8,
> 32-byte because of the aligned(32),
> or 1 byte because of the outer packed.
> 
> What alignment does this (and all the other) structures
> actually need?

32 as noted above. Here packed makes no difference though.

Some of these structs are used embedded in other structs or alone. I
haven't checked this one.

It's also possible to have __packed and __aligned() conflict (in which case
a decent compiler would give you a warning) --- which does not happen
currently AFAIK.

> 
> Specifying 'packed' isn't free.

It may be free if the packed alignment of the fields corresponds to
architecture's packing. Here __aligned() is used to satisfy
hardware alignment requirements and __packed is used to ensure the same
memory layout independently of ABI rules.

-- 
Regards,

Sakari Ailus


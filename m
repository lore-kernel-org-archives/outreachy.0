X-GM-THRID: 6951120130932736000
X-Received: by 2002:a9f:368f:: with SMTP id p15mr5383433uap.14.1618563280839;
        Fri, 16 Apr 2021 01:54:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:3346:: with SMTP id z67ls1228395vsz.7.gmail; Fri, 16 Apr
 2021 01:54:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAAxb6UTxORnKE6Kjs3cW6qSW5zRraGvxxsJLNo1UEWEA8ov/ZPDPi2M/6sgVnN34p5MQq
X-Received: by 2002:a67:ee88:: with SMTP id n8mr5445388vsp.52.1618563279709;
        Fri, 16 Apr 2021 01:54:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618563279; cv=none;
        d=google.com; s=arc-20160816;
        b=BeBEgefnlwWImivpqYfG7fMAzE8j9NrH/dXi4HSVUOifoqlFCz9c2Hf/WSSG0SeHGX
         2k3fc3Tow0mSU0hWoEksqdwuSF43Us7StJpLATkhheuVijQBBKOCsepQBUkv3TagB39u
         TNJ6zHSL/ONoEgyQvbLGS20JM83FyMx2iGm7BBD4dDoMdOmjiVHMbDnKJKoG7tB5FKDM
         HMn3plkZ9w4K6f9BzMnGZdbUhznJTYKiBnjblb7tqEGfwaolE749r0FT0jqw+7FGebPn
         XQvNMiRZ6q5mHK5skUsITh2NIMdRjbsXfeuN6DccSxgIESZjfPM4vrld9zp6P5o5QIc1
         2LGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=kFUzG3CPTCWDFYGpQ+S6yrlk1mBiXuB0MAlxCc4XRZg=;
        b=IOMabFLD/hZ20tcfOYf7S9DaVPtWQ+L2dLpealb1BinsgH9rxcAxm4RLu7pJ2pzWfD
         5yRpuv896Wk6cvYb/YG7GYuvA9lcgrrJ1QsQLiIpyGsbvVwpwClWOfM+4t9h3yUUFmU/
         Y++XvcTzBiIz8HVFWRtouuW++qi4lMOAVaH91Fzi6OEA8kQvDqrA7AyM+EePB81q1+BK
         +DgVG6zoCLIer5w59ADEL+x9c9C9Xa9twBATkNXFJum8vvPWx4tLwmiHuZ6DXVz9l19X
         oohhHSPea1gOL6x2MWD4qtHCfKDewfHFiT/Asfq1uq4DqwxOG6hb7vXCmk+31AedXZIi
         n/fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id h7si473360uad.1.2021.04.16.01.54.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 01:54:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: dSyHiEc5cRgxiVfi534dn12CK41v45B4k2xmef8OWBobEqfsidFjvRBG5qJPEsaA7MSeQmX4nU
 ehkXLpHRyn0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="194570151"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="scan'208";a="194570151"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 01:54:36 -0700
IronPort-SDR: BYCOgwJ1gbYMUxmrO50htGnKHmyFxtbXuGOi1ipu6Pihc6LpDHJFD3MRAVOBN/I27YxthQiLyE
 sdpLtBM3Zokg==
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="scan'208";a="453267127"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 01:54:34 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 4BE3D20188;
	Fri, 16 Apr 2021 11:54:32 +0300 (EEST)
Date: Fri, 16 Apr 2021 11:54:32 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	Matthew Wilcox <willy@infradead.org>,
	Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210416085431.GM3@paasikivi.fi.intel.com>
References: <20210415170819.GA17534@focaruja>
 <20210415171409.GC2531743@casper.infradead.org>
 <20210415194955.GI3@paasikivi.fi.intel.com>
 <20210415195704.GE2531743@casper.infradead.org>
 <20210415195941.GF2531743@casper.infradead.org>
 <20210415212158.GK3@paasikivi.fi.intel.com>
 <20210416054941.GF6021@kadam>
 <20210416083728.GL3@paasikivi.fi.intel.com>
 <alpine.DEB.2.22.394.2104161045140.8503@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104161045140.8503@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Fri, Apr 16, 2021 at 10:46:54AM +0200, Julia Lawall wrote:
> > > If you're running into the 80 character limit, then it's fine to use
> > > two tabs.  I think we have been rejecting patches that push align the
> > > parameters but push past the 80 character limit.  Using one tab is
> > > confusing because it makes the decalarations line up with the code.
> >
> > Interesting. Do you have an example of this? I've thought checkpatch.pl
> > gave a warning if the line ended with an opening parenthesis no matter
> > what.
> 
> Checkpatch is a perl script that searches for patterns that often indicate
> code that is hard to understand.  It is not a precise definition of what
> is allowed in the Linux kernel.  Humans have to amke compromises.

Yeah... but I'd think if this is a preferred style then the warning could
be omitted. It might not be that difficult.

-- 
Sakari Ailus


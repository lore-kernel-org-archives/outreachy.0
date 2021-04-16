X-GM-THRID: 6951120130932736000
X-Received: by 2002:a17:902:7c94:b029:e6:e1d7:62b7 with SMTP id y20-20020a1709027c94b02900e6e1d762b7mr8180869pll.29.1618562254895;
        Fri, 16 Apr 2021 01:37:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bc47:: with SMTP id t7ls4728082plz.3.gmail; Fri, 16
 Apr 2021 01:37:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzhYvmit6/uoE449gWuFv9hy5DBsPzlXEAL3+Nm92WssDk16uP6a1dVNU3vsLPzUGQXFAeW
X-Received: by 2002:a17:903:31cc:b029:e4:bd48:c8e3 with SMTP id v12-20020a17090331ccb02900e4bd48c8e3mr8331917ple.40.1618562253760;
        Fri, 16 Apr 2021 01:37:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618562253; cv=none;
        d=google.com; s=arc-20160816;
        b=SrDK56QasKSlIDi9dAtECm7hOTLICPJfoMsts913GM38TpAfKoE4v0vMjTwXk1DdRE
         iO//uJTV0bDe1OqZ4Tcbk30lMxjvYKSRu7rFXB68bvdEpXC7jwEwAvfKpMS+f/ae9o7u
         Tc+kYjnem0usnIkldlwXkgxd5yHp7jSaqXPLEwltCYzfyT/WoBKbbNdh4n1W/Ada772e
         NIGJkSY2/8zQZ2XSz46ireuTnsh24tvyzIQ7DtblKfaIX8pC3+VZWjMws/KpqzXHHkvk
         Oal15e9bkuu3gbg8sQC+rpe6XwYHkdKHgu5PBXOMJl/lVvK1wdvt+QSIze81vCO152u6
         tY4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=vAV0Skp2A5VTzmG279oO4H3qgjA232PZX52b2Dp+AcE=;
        b=wBq52MXpHr/82oOSvxt1lO5u5UDA5dtQ0oOPab968PFoVAROhzDGStHtOUtgkXB36W
         gQUYLU5gM7VbxvjXFU3tH9BkTpdsEY7d3TJWtvNcY+lW4ZBEXf9Y+TDj7P/jYdBe6dGa
         /Ix9g17fN9LOuy1mBfmush6ivGnP1p2gnDshxQe4sQwONfWcumm/xIBY80mLHUnalSz7
         rabtYwAIcrme2NGq3ES4He4yZH3kjRhowV2GgJrlFi5SdfdN4k7J2UUiuRgFXhS8P4Vw
         lfiDY4vPgQ/gY9ntawaOifKZOLO6824cUZjFYjdlzBDqDqqoTnQD91/eSlYIYP4dOMFa
         Aq0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id t5si388101pgv.4.2021.04.16.01.37.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 01:37:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: yzlgENq5cluXVDb/CgizJYp83C3JmXId+lloZSpfB858r/ny/QDDIMVbgNb1D1FBSDKO8Ngr/Y
 HjaNJHNJYMSw==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="280328002"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="scan'208";a="280328002"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 01:37:33 -0700
IronPort-SDR: 0u3B25yUP3DkaMmFYZ3eX/OFY8cwgwhw61cjwZHiTxcc4h/6teNjzrjGE26MhQQ68prrJJNtyk
 7LkFIY8wKxuQ==
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="scan'208";a="522648878"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 01:37:30 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 74E3C20188;
	Fri, 16 Apr 2021 11:37:28 +0300 (EEST)
Date: Fri, 16 Apr 2021 11:37:28 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Matthew Wilcox <willy@infradead.org>,
	Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210416083728.GL3@paasikivi.fi.intel.com>
References: <20210415170819.GA17534@focaruja>
 <20210415171409.GC2531743@casper.infradead.org>
 <20210415194955.GI3@paasikivi.fi.intel.com>
 <20210415195704.GE2531743@casper.infradead.org>
 <20210415195941.GF2531743@casper.infradead.org>
 <20210415212158.GK3@paasikivi.fi.intel.com>
 <20210416054941.GF6021@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210416054941.GF6021@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Dan,

On Fri, Apr 16, 2021 at 08:49:41AM +0300, Dan Carpenter wrote:
> On Fri, Apr 16, 2021 at 12:21:58AM +0300, Sakari Ailus wrote:
> > On Thu, Apr 15, 2021 at 08:59:41PM +0100, Matthew Wilcox wrote:
> > > On Thu, Apr 15, 2021 at 08:57:04PM +0100, Matthew Wilcox wrote:
> > > > On Thu, Apr 15, 2021 at 10:49:55PM +0300, Sakari Ailus wrote:
> > > > > On Thu, Apr 15, 2021 at 06:14:09PM +0100, Matthew Wilcox wrote:
> > > > > > On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro wrote:
> > > > > > > -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> > > > > > > -    u32 mbus_code);
> > > > > > > +const struct atomisp_format_bridge*
> > > > > > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > > > > > 
> > > > > > No, this does not match coding style.  Probably best to break the
> > > > > > 80-column guideline in this instance.  Best would be to have a function
> > > > > 
> > > > > Having the return type on the previous line is perfectly fine. There should
> > > > > be a space before the asterisk though.
> > > > 
> > > > No, it's not.  Linus has ranted about that before.
> > > 
> > > Found it.  https://lore.kernel.org/lkml/1054519757.161606@palladium.transmeta.com/
> > 
> > Two decades ago, really?
> > 
> > This is simply one of the practical means how you split long function
> > declarations and avoid overly long lines. Not my favourite though, but
> > still better than those long lines.
> 
> I've always thought we allow either style, but it has to be done
> consistently within the file.  I was pretty sure that was policy but
> it's another thing that goes back decades so I don't have a reference.
> It shouldn't be about breaking up long lines.
> 
> > 
> > My personal preference would be to wrap at the opening parenthesis and
> > indent by just a tab, but I know many people who disagree with that...
> 
> If you're running into the 80 character limit, then it's fine to use
> two tabs.  I think we have been rejecting patches that push align the
> parameters but push past the 80 character limit.  Using one tab is
> confusing because it makes the decalarations line up with the code.

Interesting. Do you have an example of this? I've thought checkpatch.pl
gave a warning if the line ended with an opening parenthesis no matter
what.

-- 
Kind regards,

Sakari Ailus


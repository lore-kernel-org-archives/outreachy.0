X-GM-THRID: 6951120130932736000
X-Received: by 2002:a9d:812:: with SMTP id 18mr719263oty.158.1618516201882;
        Thu, 15 Apr 2021 12:50:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls1648621ots.0.gmail; Thu, 15
 Apr 2021 12:50:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyr3YVakte/6Q9HBQc0ojccF9IANwfaR5/fCl1+rTzvtHYrM2mgYf3WRKT/gHKJqcpqqezl
X-Received: by 2002:a05:6830:1e87:: with SMTP id n7mr727626otr.129.1618516201077;
        Thu, 15 Apr 2021 12:50:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618516201; cv=none;
        d=google.com; s=arc-20160816;
        b=a//8PMAn1T5Wpt9A2hEzqKgrqT4vQxVh3Mndc3rRUtvZRsNKYDtSaDp3zmllGvMYsY
         M2VY257XY8jnw3UCF8iuG0xyVA78wUZYsYexViEktzhvVFOM3VUf39VKyzKwwVxoR1rY
         sNd1j/iK4bsB4Ya5bawbxJkFhcwx1cvsyYUII0OPRgCz106NdMTV5aK7fGTwntgf4+XD
         bCyp4muv0QHqu6+WyAlKP3SecACb08HknXE8sJXXBQBl+/WgHBhudyc4QYx2VoSv00UY
         JSCRiVW/GuvEdme8NE+edYlCvaue4WAjAxPodudhGFN/Sr0RW1b6Vdo8BR5L6ExawMF1
         6/OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=NWE2gqupBj0m3DHq23FfdUvFQqeOi/HmcasD9114qBk=;
        b=d4ZLHMoRRp21DIus7RtglCfc0d6mTBIZG8+79p/AKU3FtwJNZ4eKb8LDpRKp7BPa1B
         hrdxorrxZLYj8MaX4Mhkut7whoatfCEyFzILmsGYT/FEW8UslbdpJBblenWpcaXKuj1s
         6+VbDT5LQjtevKm+8PyUMwt75K+AETEeI/ZLSG+fRWKETf5rtoXe6as5HSD/qy7H28uY
         iHqUlfe3toBkoFdDCpakvruaRuLwSsKjS1PqAnKazHr5xghhGsVsV1+4iYHCDXofkVI+
         mwFJn4sbQdS0qpSK+s6Ym+3pdVkRWGxeCsHxFGX2DuGYW0djwcB87Jn5ECf4jQj2qymn
         +BTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id b11si343882ots.2.2021.04.15.12.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 12:50:00 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: KBIkFPyYkuuZq4JN80GpFnfhOEcjnlxAOshWvL4AEouyHw6IS3HOCQ0SD2EsOtDqqyeOEzZFsa
 bJJQGjrGMI9g==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="256244760"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="scan'208";a="256244760"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 12:49:59 -0700
IronPort-SDR: eOU2zCcD3J55/9SE1uLBp57qUwy3FyckoLw/AMgywqjXcLADDBre4t1KbW/NcFUjDBDpz43G9S
 YC2gJK2tk/1Q==
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="scan'208";a="533244995"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 12:49:57 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 911F1200E8;
	Thu, 15 Apr 2021 22:49:55 +0300 (EEST)
Date: Thu, 15 Apr 2021 22:49:55 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210415194955.GI3@paasikivi.fi.intel.com>
References: <20210415170819.GA17534@focaruja>
 <20210415171409.GC2531743@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415171409.GC2531743@casper.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Apr 15, 2021 at 06:14:09PM +0100, Matthew Wilcox wrote:
> On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro wrote:
> > -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> > -    u32 mbus_code);
> > +const struct atomisp_format_bridge*
> > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> 
> No, this does not match coding style.  Probably best to break the
> 80-column guideline in this instance.  Best would be to have a function

Having the return type on the previous line is perfectly fine. There should
be a space before the asterisk though.

-- 
Sakari Ailus


X-GM-THRID: 6951120130932736000
X-Received: by 2002:a9d:730b:: with SMTP id e11mr993679otk.166.1618521725553;
        Thu, 15 Apr 2021 14:22:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls1626889oif.6.gmail; Thu, 15 Apr
 2021 14:22:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwRR+Ic+2kZBQs2OLTLJ4f7/QgYT6oShK/Kba688Zavf2GusMK8sK9BOs7l7fX/ZHEw0FLr
X-Received: by 2002:aca:ba03:: with SMTP id k3mr3900962oif.103.1618521724655;
        Thu, 15 Apr 2021 14:22:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618521724; cv=none;
        d=google.com; s=arc-20160816;
        b=J8J5AhEV89xsH6NKI7doLJAXQysR6FUZ85oQ0qs5RLOI+5p6y33SRaiZdbFYsqK5kB
         E3+kByfsNONd5ItuEOo3kQ1DkY+g7AcgJx6p+ERbNCXKhyfyDi6258X7OOryNUKOBgN9
         TN/3w9fkaLSheJ+PrYpTc23r+1nkQksohx5UhfKsg9dkR5aQUEBZio8bGnRl0uX25bb1
         vtsfIiGC5+TGddPT12jLtNOPS9zfPeaVTi3+zQfRlpch5b4AopzQBDDoL8yedzydD+3N
         XZfmnBZuO/D5clS4h7Z0WsWabJi/yRx/d/b1je9mnYBazBrMvt6njGfUmWMlcixdjDKm
         t9CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=wbDH6xYQi3dYGx0flWx7XY975R06rnzEPKtU3x5/zDk=;
        b=sfGZsWCH72kAiywmGl6CKzJVsWzoOUUwmeTl+3saqZyCtQOdQFds+KkaKFQM/agfgw
         GBE8cQWHzwjZCTFLIMet9TwWLVG1/rncnF8IwNVq+qgunO7zmcHK788/M5t3j6MN8mVE
         CwshLzVNslS8yCd8srOl3rmZfqtqOg4in9o2hMMOjqTVxsVHdoN4UE7bDOv4G0kAUhdR
         gb8VlEcHy4Tx5FRvLiNPr4r+h0vRY7VgCCE6FBURPOdYUxyF5NgQ+mLIvshmTYSkB76f
         e7vP884YjpWby9JmxqwS4nJ+R5OlCKLRW2Xum+p/+OF9fJ9LeITiGuRkcmGeL9vkhzDR
         DzyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Return-Path: <sakari.ailus@linux.intel.com>
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id m62si295307oig.5.2021.04.15.14.22.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 14:22:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
IronPort-SDR: BU5JLhwBe1eSDMip4DsHAkMkDPMrdl+R1ITUUm74VniWJRpdkXRmnAU9dloDOalBGRhqapK02O
 KpNXFjAURdZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9955"; a="280260606"
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="scan'208";a="280260606"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 14:22:02 -0700
IronPort-SDR: edfhmDWBq4D32ytRDaSJdaCo3lFDKzjLHcP4EAWXKQUPkEKrVTbYXKXBIceoIwGr8lx19WZnMn
 YI+F1VdRQubg==
X-IronPort-AV: E=Sophos;i="5.82,225,1613462400"; 
   d="scan'208";a="451258859"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2021 14:22:00 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 608852051E;
	Fri, 16 Apr 2021 00:21:58 +0300 (EEST)
Date: Fri, 16 Apr 2021 00:21:58 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210415212158.GK3@paasikivi.fi.intel.com>
References: <20210415170819.GA17534@focaruja>
 <20210415171409.GC2531743@casper.infradead.org>
 <20210415194955.GI3@paasikivi.fi.intel.com>
 <20210415195704.GE2531743@casper.infradead.org>
 <20210415195941.GF2531743@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415195941.GF2531743@casper.infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Apr 15, 2021 at 08:59:41PM +0100, Matthew Wilcox wrote:
> On Thu, Apr 15, 2021 at 08:57:04PM +0100, Matthew Wilcox wrote:
> > On Thu, Apr 15, 2021 at 10:49:55PM +0300, Sakari Ailus wrote:
> > > On Thu, Apr 15, 2021 at 06:14:09PM +0100, Matthew Wilcox wrote:
> > > > On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro wrote:
> > > > > -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> > > > > -    u32 mbus_code);
> > > > > +const struct atomisp_format_bridge*
> > > > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > > > 
> > > > No, this does not match coding style.  Probably best to break the
> > > > 80-column guideline in this instance.  Best would be to have a function
> > > 
> > > Having the return type on the previous line is perfectly fine. There should
> > > be a space before the asterisk though.
> > 
> > No, it's not.  Linus has ranted about that before.
> 
> Found it.  https://lore.kernel.org/lkml/1054519757.161606@palladium.transmeta.com/

Two decades ago, really?

This is simply one of the practical means how you split long function
declarations and avoid overly long lines. Not my favourite though, but
still better than those long lines.

My personal preference would be to wrap at the opening parenthesis and
indent by just a tab, but I know many people who disagree with that...

-- 
Sakari Ailus


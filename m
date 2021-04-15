X-GM-THRID: 6951120130932736000
X-Received: by 2002:ac2:592b:: with SMTP id v11mr520517lfi.600.1618516670313;
        Thu, 15 Apr 2021 12:57:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:c22:: with SMTP id z34ls2032023lfu.2.gmail; Thu, 15
 Apr 2021 12:57:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw3IJ81LHyStXjBIYYq33YpOWTM6jbU8I3umRemh+hgXwYgTRMdVKnvOEEolVedmaPPyC2m
X-Received: by 2002:a05:6512:6ca:: with SMTP id u10mr516586lff.560.1618516668700;
        Thu, 15 Apr 2021 12:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618516668; cv=none;
        d=google.com; s=arc-20160816;
        b=uFEpjYh5mTU1Q6BDcgmxYanZNWYH7LXLFhS6kmNxc1rroUC0PTBkZZ8Oj9TIEOLhBs
         S/luQ4tuqauznEQslQV67IKBF1InvSujKAyLt1WmEDFB4IgFM+h/v9ppIJ1ivo0dJLU8
         yas6B5kf/1fC0/bkYY46C1dMeN2H5V9E2fFKTYRZKQnAbuP9C4KKPjLxgAQSoiNL5Mku
         qF1So59wguB1jjzlknAHT1m95mCeA97BlTL0MtX2/Q3SAe42JIEjT6zNZgCusMfF2CCF
         0ROi984SeA8lVlMxSAyf+lzANciGJG30FY5TbaqnRSK9ZquGCIt5Y3JmESCMlGFhS8Te
         nAXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4GXPFxKdyq+7gB1Susv2wZJndNmxWkS7LuCF5KQHuQY=;
        b=Uqfmx3tgy2HvQH4sgTRg2FtmqJQLL6aNlwc22z8Tf3+DqWa9hdixTj70FkTfuY0Tds
         QBnc9tRCQmBX77CoWcX7xiyQ5e7TRxSMOBjEA/Th3VXj0ufi0RpfTnRKhp/jCRbvDet0
         pz8pAgS4JOnHvDLDrLjIz/7MVOZgzolqSHveCKxAemDRTxR8pW5yX1hLOkVU66rt2kag
         iYmceT5likhxgYbKOEgSCmVZrVxqcJmkvDSW5bMI5i92X909UHbYbvtd/Jtw4kCw4qkA
         0za1zVFlkNtD5hOD+QX1BYRDc24lcVz/8rqfBYxr8sH6XOpMdVfzzgQYy+PBsaI1zQXs
         cDdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Y4SXCkeA;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j7si188668lfm.9.2021.04.15.12.57.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 12:57:48 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Y4SXCkeA;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4GXPFxKdyq+7gB1Susv2wZJndNmxWkS7LuCF5KQHuQY=; b=Y4SXCkeAXvazsSvkYkiE2sv/Pv
	AFnQLfRsLbw3EfJa/blThV05+ruUaq+5QWnu4IGf8VxPEI/MaWMETP6OM+aDqntMSveNjJHPCMHQ9
	DyURa+XnTOOgxb4i+b+ig/wdjemKR9RQnkrDROQ++h+2Xd0CJ7MWen+N98LCOOHncqxoMDMsI8/aC
	69jcVea62je9MdgWzVhD5sw66UoB8EPPPBrpOo5VYNvsGgvRjtl/Yun8pnpwhW17ht+m8nuQ8p3Iy
	tX5+Fgl3pnsGfHdbexZPnotCQF8K+nWKKhOMcSfkb7L46SlJnVuzV0pNXSIFbB6jqADbOpUerCzRY
	bCqZOfvQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lX86q-0091RC-GQ; Thu, 15 Apr 2021 19:57:07 +0000
Date: Thu, 15 Apr 2021 20:57:04 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210415195704.GE2531743@casper.infradead.org>
References: <20210415170819.GA17534@focaruja>
 <20210415171409.GC2531743@casper.infradead.org>
 <20210415194955.GI3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415194955.GI3@paasikivi.fi.intel.com>

On Thu, Apr 15, 2021 at 10:49:55PM +0300, Sakari Ailus wrote:
> On Thu, Apr 15, 2021 at 06:14:09PM +0100, Matthew Wilcox wrote:
> > On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro wrote:
> > > -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> > > -    u32 mbus_code);
> > > +const struct atomisp_format_bridge*
> > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > 
> > No, this does not match coding style.  Probably best to break the
> > 80-column guideline in this instance.  Best would be to have a function
> 
> Having the return type on the previous line is perfectly fine. There should
> be a space before the asterisk though.

No, it's not.  Linus has ranted about that before.


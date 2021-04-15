X-GM-THRID: 6951120130932736000
X-Received: by 2002:a17:907:210a:: with SMTP id qn10mr5341785ejb.414.1618516809973;
        Thu, 15 Apr 2021 13:00:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:4c2:: with SMTP id n2ls6489520edw.2.gmail; Thu, 15
 Apr 2021 13:00:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMSIwJfTZBm2vgI5B9oytGoxcs2rCAerNGx+l1kM6l8W8X2CIU9INOYGvVYM+cta9HbhA2
X-Received: by 2002:aa7:da0e:: with SMTP id r14mr5996689eds.375.1618516808552;
        Thu, 15 Apr 2021 13:00:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618516808; cv=none;
        d=google.com; s=arc-20160816;
        b=e9OAC3396T4J/b7yZndla09GjlypUr3gnc8C6aQ7sF/8unYsulSxAgJIB47AyHoSpV
         Ik2T3MdvA8ucnsXtzQvjvh2uqUBi8JSei+qnKCFlSyNQtHkOOwQTLthnJSpwfcY0X4PK
         60T5fOV8wJmus0M4xtl9R9pxWjhD18uCfu5ffIbUDc7B8ooNSN+7PVrG34pBN77D5j9J
         oMcP0tB3IwWIi8ORqzeOd5boKpVP6sFvb1yvtxzeygNNohwv2dr9xtfLhtCvZe1NWsXt
         YWK5WlDaVHZ8DVWuEzvjPKntPdh0ODSODMzzxXYCPoNCWD5r0s7Y3XHOmId/Yioc/Lml
         Oweg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Jidstt2/GQtBM10h7qL1vxyo4ZsH+nyyJX9lVogApq4=;
        b=IkpXoXYMfx2ZrkT434ZEwbeDfB5j2foYt59dLl4ab0ybHi+rOni2WC8/fy+AMHqT0Q
         EMqPf7Y7jDBrJnxQulDz/yZ1m9Ct67YRrrQzEzCX1Iiiy4rPH/QJBoSStmFiRuYlEKwI
         yTRPaqHXB1Eh8crwwhC0d3mosxeIh28F61GBhH9pUrp64eG0iuOcxyca4ekK4g4z5l1q
         Ed/ntRiS13Y6sI90++bV6psJsNaAhTf+IZdlNxzYFX8clzYLDwcYnMoXoZ7kLLhJF5N3
         lsrpO5Uei7PHwbrpPe7NCI+mAoUPRgpG6dsOmWUSr1v19Q5sbj8iH1ZSqawLVjra6u7q
         Atyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GXqEg47I;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id h1si185871edw.3.2021.04.15.13.00.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 13:00:08 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=GXqEg47I;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Jidstt2/GQtBM10h7qL1vxyo4ZsH+nyyJX9lVogApq4=; b=GXqEg47IGUl3iUkF0KKQI28r5i
	dXx0qi4Ae6gDsIoXFQVAAC2MYV3sv4hydRUaejqig0bIuTdEbTa42bMVyWl2MjtkrJy/n115VvYWe
	AhMwH1m3yGKaa2KzY9fD65upkcgJwjyBdXpGxrkeOuUfulBaEqEom1khvrU0dhtXhi2ho7aYmCv4k
	Y5TA/PCz/aBcZNTXvPHp354+UrRhf1bXzp5uBCI5OxTIE4pA4x3zVKYWTJaDC/SR+ElSEke5nWeb8
	fjtpJh02CDA3xdPUdHKQD22nF2nG2kfSdC2bKHPdS4OR+BHsUsic7RIkbuyAARmJQRNr2BbsI1oyV
	qxcO1aIw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lX89N-0091Za-NN; Thu, 15 Apr 2021 19:59:44 +0000
Date: Thu, 15 Apr 2021 20:59:41 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: media: atomisp: pci:
 Change line break to avoid an open parenthesis at the end of the line
Message-ID: <20210415195941.GF2531743@casper.infradead.org>
References: <20210415170819.GA17534@focaruja>
 <20210415171409.GC2531743@casper.infradead.org>
 <20210415194955.GI3@paasikivi.fi.intel.com>
 <20210415195704.GE2531743@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415195704.GE2531743@casper.infradead.org>

On Thu, Apr 15, 2021 at 08:57:04PM +0100, Matthew Wilcox wrote:
> On Thu, Apr 15, 2021 at 10:49:55PM +0300, Sakari Ailus wrote:
> > On Thu, Apr 15, 2021 at 06:14:09PM +0100, Matthew Wilcox wrote:
> > > On Thu, Apr 15, 2021 at 02:08:19PM -0300, Aline Santana Cordeiro wrote:
> > > > -const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
> > > > -    u32 mbus_code);
> > > > +const struct atomisp_format_bridge*
> > > > +get_atomisp_format_bridge_from_mbus(u32 mbus_code);
> > > 
> > > No, this does not match coding style.  Probably best to break the
> > > 80-column guideline in this instance.  Best would be to have a function
> > 
> > Having the return type on the previous line is perfectly fine. There should
> > be a space before the asterisk though.
> 
> No, it's not.  Linus has ranted about that before.

Found it.  https://lore.kernel.org/lkml/1054519757.161606@palladium.transmeta.com/


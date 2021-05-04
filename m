X-GM-THRID: 6955401561206947840
X-Received: by 2002:adf:f60d:: with SMTP id t13mr23550635wrp.189.1620136897110;
        Tue, 04 May 2021 07:01:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4e87:: with SMTP id f7ls1330823wmq.1.canary-gmail;
 Tue, 04 May 2021 07:01:35 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzmxNJAe0T1Ogs6xckuYSflz5GAIXF8Dw4xJf7JGy5QBgKsbMnWq8GwOhxphf8rQrrTYiKn
X-Received: by 2002:a05:600c:1991:: with SMTP id t17mr4242900wmq.100.1620136892305;
        Tue, 04 May 2021 07:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620136892; cv=none;
        d=google.com; s=arc-20160816;
        b=tDRGRY63ELqTTAWsiHUPlKtzazBuAI9frB+E9Dg0g24VrWaK1Dnz0ohc5WxSLMLvmJ
         H7mywejWJzvqZ4JGhi/R2/UOQEPfcAYk5AWcwQwMVmQVXh3WI+lgfdQTjejUARK7s/XN
         Ve7fNeBSub3Lu70WL0CaAI6Fb50OXG818oFDzCIdC0lC5ZtmfX/5SVgV6A+YJaNrv/pV
         VsZ2Ldp24KYAkdkxY6Sccl70QSjIBdfyBQNIyqjaWAzby/5DhiYFfxLMuW/iQblmYKqz
         22vcf8FMUO2oBknfEfXS/LABqKeFZPu2n0uVEt/J2klowNulm95eK9QL1Wh07MaB7t/Y
         7ZMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V4U9OF/5A5A7+ex1Qlqu0+oFqFyil+2DW5bEVur773Y=;
        b=LcJ3R8HGydLAOTulkL6Bg1AKoXXktXpeyejFBnkTPEN4C2DeXGZLdNdd+i2e6yS+bU
         ZhzMMoANPPiKBGz/g4YqlwGKG4lHtcXx9nJVntYmgirXglGL2F1rO1lKo1XJ3v4K/umD
         6gPp1BsnIxyj87IhUxrLKr3G0yrPFJfgF8rOxcq7D9SFiPuywrDm5FHWHXcVbfRNxe78
         0Cp7DfKskDmHJlPo2syXNjcnen0CFq5lnD06UbZEVhTjmBCdryve2+GKZxawi/G2sJbJ
         MGxfiDHZbCy1AS5A5uBk2UNfEcr7JWv2wMMaUzJKgjWlaK/UDQ4uajI4pSNOrlJF/O3d
         jBVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=pazQueOh;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id l5si129627wrs.0.2021.05.04.07.01.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 07:01:32 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=pazQueOh;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=V4U9OF/5A5A7+ex1Qlqu0+oFqFyil+2DW5bEVur773Y=; b=pazQueOhDe2ARSKQLwocmk9zmx
	eUloDS38mmm+XUf0HA2b2cNeWLq8cyH8LB36OfpBrEgOo7TAHEC2wd+V3QmEp+K4JgkCErZecwCtd
	N/h+0hDGI8m9R6hYUgCLjZoHQebjj1W2rpDTRbPsqF7sEd8hU8z3rnLXuTGeF7GNQAHXL8pLdImnv
	dJEay8jYsdGVaIwCK6T2d8X8FGnpif/TdDsjpJrTbiWsX0Tb/GC373ohR+lx9NnSKXNMj/qZ6SG4W
	7cZj/XqdcxEpVeCApoyutZm3gYkNT+H/Ltc83JjRkYqXh5dwEmZPmWAqKUcc69Eix1l7wbtisNT0i
	ZobOxktg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1ldvbz-00GeEB-E3; Tue, 04 May 2021 14:01:23 +0000
Date: Tue, 4 May 2021 15:01:19 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	sparmaintainer@unisys.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v7] staging: unisys: visorhba:
 Convert module from IDR to XArray
Message-ID: <20210504140119.GH1847222@casper.infradead.org>
References: <20210504133253.32269-1-fmdefrancesco@gmail.com>
 <20210504134216.GG1847222@casper.infradead.org>
 <3550993.e1xmc6yJDa@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3550993.e1xmc6yJDa@linux.local>

On Tue, May 04, 2021 at 03:58:02PM +0200, Fabio M. De Francesco wrote:
> On Tuesday, May 4, 2021 3:42:16 PM CEST Matthew Wilcox wrote:
> > On Tue, May 04, 2021 at 03:32:53PM +0200, Fabio M. De Francesco wrote:
> > > Changes from v6; Added a call to xa_destroy() that I had forgotten.
> > 
> > What?  No!  Go back and re-read what I wrote about this previously.
> >
> I remember that explanation you gave me some days ago for not using it. But I 
> was mislead by a comment ("Do we not have to call xa_destroy()?") by Dan and 
> your "Correct" soon after the above comment. So I thought that I had 
> misunderstand and the put back that call to xa_destroy(). I lost something in 
> following the flow of the reviews, I suppose.

English doesn't have the equivalent of the French 'si' or German 'doch',
unfortunately.  I imagine Italian does.


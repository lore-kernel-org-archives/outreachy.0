Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F02F7A
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 20:42:38 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id g13so18586200ejb.4
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 13:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fZ2/OuEbTtlP/zbEoj+78SvWtB9uWMF+zESvUfUCBO4=;
        b=B7Hd84UyG0YttbYUhgQvL4d1pq3mxusUKlQRLFIQZs3auNE3kOIsG7+9OSj4DdysBG
         mqLQlVWTTHgeNKQi5dyXhHS0YYG7368eNfxkjYfKi+Qg36lYyXF+J/csTJvBGRfE2Umo
         V8fpyB9AaDpuEysiJ6ZtkspZ57PUfLgdtksqR1HIqwqt+EsGJOxQgnjt/xFVvbKxjHvh
         TXAYORwq9QCqRe3qJFlMsszhArFqyGW9e2AD9h/XFzEg16uXNgZqB1UQEyyWBZEjTD/n
         GwHLepHX0VOVcJaXF8zEazZVX0aDDC9paxe2rpLen6sUdcIKvwpKKzn4FTI+zLUC3HKm
         MGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fZ2/OuEbTtlP/zbEoj+78SvWtB9uWMF+zESvUfUCBO4=;
        b=BFHtU8z0P4Y/vtt7tyudV+vmlwdk/A/jH4p3uPhlqaH2vRifQT6Q5V/GAH/iC1Mabs
         slqaiIU5+XYKNiERuLHmwiZ+Vt8njUW4kK6DGcxE5jOlRavt3KTy9391qbt+YX/DnmeQ
         qhpLViDK+mpvEfE4xyDRoriAsckxQgnfzRPqvNlZQB3UAiJSwjWZF9yRk1yRCCHPNt9P
         lIUQ1ByZO7bP+F2/NiompL2CtSbDIDZ1Xr/iYEt0sbY7GHWr1SIdraUc75m0BChzT7A5
         UiwfVr+s8gGLFHJLhEBjlbvtLEl59ceIeLkk0gUN3r+Wok5EEM595gqEOs2H9vKKIGx4
         jzng==
X-Gm-Message-State: AOAM533KB64K9M5e0ZTKknSTgHV3KKeDPr0KfoP7758s3gq98yP0s3K3
	xIP+nF2q4vzeGfYAu6WDiko=
X-Google-Smtp-Source: ABdhPJx/sfbtZ0jZujbDr2K9gG27fiJ4Fj+BmJWojKiTW9YVnhEQi2DSVh9qIj34dyoZy+4/g81Cgg==
X-Received: by 2002:a17:907:7246:b0:6ef:828d:4b49 with SMTP id ds6-20020a170907724600b006ef828d4b49mr6055932ejc.172.1650660156563;
        Fri, 22 Apr 2022 13:42:36 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id fq6-20020a1709069d8600b006e891c0b7e0sm1072601ejc.129.2022.04.22.13.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 13:42:35 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, outreachy@lists.linux.dev, Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Fri, 22 Apr 2022 22:42:34 +0200
Message-ID: <2185371.iZASKD2KPV@leap>
In-Reply-To: <YmLvLvnZm0DJs0r4@iweiny-desk3>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com> <20220421180200.16901-2-fmdefrancesco@gmail.com> <YmLvLvnZm0DJs0r4@iweiny-desk3>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

(I don't know why it looks like my previous reply has not been sent and it=
=20
also disappeared from drafts. I apologize if for whatever reason you=20
receive this message twice)

On venerd=C3=AC 22 aprile 2022 20:08:46 CEST Ira Weiny wrote:
> On Thu, Apr 21, 2022 at 08:01:57PM +0200, Fabio M. De Francesco wrote:
>
> [snip]
>
> > diff --git a/include/linux/highmem.h b/include/linux/highmem.h
> > index 39bb9b47fa9c..c3d562b5f0c1 100644
> > --- a/include/linux/highmem.h
> > +++ b/include/linux/highmem.h
> > @@ -37,7 +37,7 @@ static inline void *kmap(struct page *page);
> > =20
> >  /**
> >   * kunmap - Unmap the virtual address mapped by kmap()
> > - * @addr:	Virtual address to be unmapped
> > + * @page:	Virtual address to be unmapped
>                 ^^^^^^^^^^^^^^^
> 		Page
>=20
> Not only was the name wrong but the description of an address is wrong.

Yes, correct. I'll rewrite this line the following way and send a v2 of=20
this series while addressing also what it is required by your review of 3/4=
  =20
(unless you have better suited suggestions):

=2D * @addr:	 	Virtual address to be unmapped=20
+ * @page:	 	Pointer to the page which was mapped by kmap()

> Other than that LGTM:
>=20
> Reviewed-by: Ira Weiny <ira.weiny@intel.com>

Thanks!

=46abio




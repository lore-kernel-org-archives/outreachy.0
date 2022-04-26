Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B61625
	for <outreachy@lists.linux.dev>; Tue, 26 Apr 2022 09:43:08 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id r13so34888592ejd.5
        for <outreachy@lists.linux.dev>; Tue, 26 Apr 2022 02:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UXpWaaRmGnZjQpqeRY15jGRgaTNc7B1+ySXCFXyXBRI=;
        b=pybP3w/+N+OcgwzWtmwntk3lxR6h9mQ391PMJx2VTma/UT4L7sQGvKIgZ25XhHZEwH
         b+xKL6/wkW1eUkxtmMTtIs34tCpl/fZW6F/DVwZzi/X7gza46AZJUovBvXttWt/jiB9l
         IKm1CUAyKOJjyeNJ/N8PUuNGfBdRVn0dSAojBCCfZVlqccAPwPF+aJ3siKwpdNLG4Dsb
         bYy1OTRf9rcQj17LbRxxrAqd5hV5DNuDRq/MSj3xSkDg9G0+VH0ckcqa8iggTlTnMVPn
         kR3JFwfjeknjMqA9nkkNcDLywIPOnuJyHeDmLDTbPsFh2nQDTMXrMXJ4+Nj7Y5BRQJYq
         xARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UXpWaaRmGnZjQpqeRY15jGRgaTNc7B1+ySXCFXyXBRI=;
        b=jIrt869TsgqUhxd3riRjq7JKoq5roVTC2sRKdLhmZgfZN/Yrm3U45cRDFNxdfGbd+Z
         vuxxqi7dbo2AvfmlFtWeJC2ahvQPiR3wpdNvwNIZGllTQxYY5uoWYfHD0QY/ChiQ+0SB
         G6eftcybmhp6VYSDKmHagwsZosBtz9ffo/Z+WHLsTHU5JakndALThohpKO++rT9rwqrb
         phcnq2iFDNCYaGrpnKMAzMdc00G7kZhFu7br0cVw2oI0HqOOjPl5k9gXxGwSHGGl7EGk
         CueNgzL3sk9bqa2jXgd+Dz1F2R9gWBTc2dnpyY9WsK2waEm+V0XuYQprMyb3Nzuk8YUk
         Ef+g==
X-Gm-Message-State: AOAM532Rh2k/Kp3/69HuHk1UbglQxH+EFizpy0sH6IdWEr/lbRVOW9G2
	nb8QW/NINcfZsUAnScT/HJQ=
X-Google-Smtp-Source: ABdhPJzjhE45gRePoeCjG0ZCGd5Mc7TMOr1O1ulUhWi+DgC4crSwYQkmHDFmKQQ5PqihkhjIduvqHQ==
X-Received: by 2002:a17:906:5d04:b0:6db:7262:570e with SMTP id g4-20020a1709065d0400b006db7262570emr20578793ejt.8.1650966186345;
        Tue, 26 Apr 2022 02:43:06 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id g16-20020a170906521000b006d58773e992sm4630221ejm.188.2022.04.26.02.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 02:43:05 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, outreachy@lists.linux.dev, "Acked-by : Mike Rapoport" <rppt@linux.ibm.com>
Subject: Re: [PATCH v2 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Tue, 26 Apr 2022 11:43:03 +0200
Message-ID: <4396926.LvFx2qVVIh@leap>
In-Reply-To: <YmeYzKT8Ikq5SfdE@linutronix.de>
References: <20220425162400.11334-1-fmdefrancesco@gmail.com> <20220425162400.11334-2-fmdefrancesco@gmail.com> <YmeYzKT8Ikq5SfdE@linutronix.de>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 26 aprile 2022 09:01:32 CEST Sebastian Andrzej Siewior wrot=
e:
> On 2022-04-25 18:23:57 [+0200], Fabio M. De Francesco wrote:
> > index a77be5630209..aa22daeed617 100644
> > --- a/include/linux/highmem-internal.h
> > +++ b/include/linux/highmem-internal.h
> > @@ -236,9 +236,17 @@ static inline unsigned long totalhigh_pages(void)=
=20
{ return 0UL; }
> > =20
> >  #endif /* CONFIG_HIGHMEM */
> > =20
> > -/*
> > - * Prevent people trying to call kunmap_atomic() as if it were=20
kunmap()
> > - * kunmap_atomic() should get the return value of kmap_atomic, not the=
=20
page.
> > +/**
> > + * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic()
> > + * @__addr:       Virtual address to be unmapped
> > + *
> > + * Unmaps an address previously mapped by kmap_atomic() and re-enables
> > + * pagefaults and preemption. Mappings should be unmapped in the=20
reverse
>=20
> You mind adding "Deprecated!" like kmap_atomic() has?=20

I might add "Deprecated!", however Ira Weiny asked me to rephrase an=20
earlier version of one of the patch which is is this series. I wrote that=20
"The use of kmap_atomic() is deprecated in favor of kmap_local_page()." and=
=20
Ira replied "I'm not sure deprecated is the right word. [] This series=20
should end up indicating the desire to stop growing kmap() and
kmap_atomic() call sites and that their deprecation is on the horizon.".

What Ira suggested is exactly what I'm doing in v2.=20

@Ira: what about adding "Deprecated!" for consistency with kmap_atomic()=20
kdoc?

> The part about
> disabling/ enabling preemption is true for !PREEMPT_RT.

To me it looks that this is not what Thomas Gleixner wrote in the cover=20
letter of his series ("[patch V2 00/18] mm/highmem: Preemptible variant of=
=20
kmap_atomic & friends") at=20
https://lore.kernel.org/lkml/20201029221806.189523375@linutronix.de/

=46or your convenience:

"[] there is not a real reason anymore to confine migration disabling to=20
RT. [] Removing the RT dependency from migrate_disable/enable()".

Is there anything I'm still missing?

> The part that
> worries me is that people use it and rely on disabled preemption like
> some did in the past.=20

This is something I'd prefer to hear also from other developers who are=20
CC'ed for this patch :)=20

> I've been told this API is about to be removed (or so I have been told)
> so I hope that it will be gone soon ;)
>=20
> > + * order that they were mapped. See kmap_local_page() for details.
> > + * @__addr can be any address within the mapped page, so there is no=20
need
> > + * to subtract any offset that has been added. In contrast to=20
kunmap(),
> > + * this function takes the address returned from kmap_atomic(), not=20
the
> > + * page passed to it. The compiler will warn you if you pass the page.
> >   */
> >  #define kunmap_atomic(__addr)				=09
\
> >  do {							=09
\
>=20
> Sebastian
>=20

Thanks for your review,

=46abio



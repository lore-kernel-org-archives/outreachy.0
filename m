Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC9D7B
	for <outreachy@lists.linux.dev>; Tue, 26 Apr 2022 10:45:16 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id l18so8560427ejc.7
        for <outreachy@lists.linux.dev>; Tue, 26 Apr 2022 03:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yT6MeZr7lrp+pl5JuXM90CrfagSL5tvHFlanqgPjJyY=;
        b=Eh6AA+i4KyqffI3eRab/pWanLJ7aZW9oDevFcQw82RRV2PPvtunCBBil6y0k9ESIcu
         SA1DCF4MrUk6nsGxk2OXzp0oQF2Ai+FRR7sDAka3wb/4Vc3v0OLicXbm3+//s2BlQlG0
         VL7F+GIShYom/wVK6kTpH18/FuspHEebkCzPFvjGDRgmpQMkukDIAm0p61iKs3c6Oc83
         thOfmaOrKTsudYzWs2LrTbcF/t1P+Yei6gM+d39nVfXxZaz6lDRh0Y6JSbiGK5p9gD5+
         XAdhGwYjvEdBQ+GeaPN/EOeUWbPV5peKdS2y/+b+qBkV3VX/DKJhGHsrNMJFBpQ/O3y5
         YI3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yT6MeZr7lrp+pl5JuXM90CrfagSL5tvHFlanqgPjJyY=;
        b=OKoLlVcFgsNqxTVe+0VVw5xEneV3n9fx6l2lBcKU/9v068SKqOthQsNUWepBGXLWpx
         Ux9kW6nfMJfhHzLw6EnGMRW9ovup8EH2N6ok+qAdL0+z5quJNy/oyAomeDk364WpXkth
         aDK0CwZd+fvmI585jjsqA5KvMBqsY9997WSei/mLEInnDkAsce58TYOr5GXLpSLLshQn
         Tpyz6wOjN8ZQzQEt/e6PBgEC2zFkhzhsC0StONcvSMs2gx9mrBB6sNKVOd7IuItAiiW7
         +HpK0XgDYIxDK3JHdiEhGEQWsN7WBtU5mGhruxAUn7thaHQVpAHntIrijhz50gedlaTE
         nAfA==
X-Gm-Message-State: AOAM533RD5WJfnBF7UGvqp3vCuAkiGDCWwvISgvBEYx20F3U/8tTJyTL
	mQM9N5XGyce9m7wb4G/gl1k=
X-Google-Smtp-Source: ABdhPJzA5ggTUsN9zCEkiGOvUxl5pVGQ+/cozLKTUfXtLV4X6wR9Kub9ICs5sVUhAX4HWJ/vMNNE4w==
X-Received: by 2002:a17:907:7da2:b0:6f3:a802:d52d with SMTP id oz34-20020a1709077da200b006f3a802d52dmr4684546ejc.706.1650969914613;
        Tue, 26 Apr 2022 03:45:14 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id b16-20020a170906709000b006f3a8aac0eesm1091139ejk.0.2022.04.26.03.45.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 03:45:13 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Ira Weiny <ira.weiny@intel.com>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, outreachy@lists.linux.dev, Thomas Gleixner <tglx@linutronix.de>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 4/4] Documentation/vm: Rework "Temporary Virtual Mappings" section
Date: Tue, 26 Apr 2022 12:45:12 +0200
Message-ID: <3610796.MHq7AAxBmi@leap>
In-Reply-To: <YmecctAD9XXYG8CR@linutronix.de>
References: <20220425162400.11334-1-fmdefrancesco@gmail.com> <20220425162400.11334-5-fmdefrancesco@gmail.com> <YmecctAD9XXYG8CR@linutronix.de>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 26 aprile 2022 09:17:06 CEST Sebastian Andrzej Siewior wrot=
e:
> On 2022-04-25 18:24:00 [+0200], Fabio M. De Francesco wrote:
> > index e05bf5524174..b09f1f9a81f2 100644
> > --- a/Documentation/vm/highmem.rst
> > +++ b/Documentation/vm/highmem.rst
> > @@ -50,26 +50,77 @@ space when they use mm context tags.
> >  Temporary Virtual Mappings
> >  =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
> > =20
> > -The kernel contains several ways of creating temporary mappings:
> > +The kernel contains several ways of creating temporary mappings. The=20
following
> > +list shows them in order of preference of use.
> > =20
> > -* vmap().  This can be used to make a long duration mapping of=20
multiple
> > -  physical pages into a contiguous virtual space.  It needs global
> > -  synchronization to unmap.
> > +* kmap_local_page().  This function is used to require short term=20
mappings.
> > +  It can be invoked from any context (including interrupts) but the=20
mappings
> > +  can only be used in the context which acquired them.
> > +
> > +  This function should be preferred, where feasible, over all the=20
others.
>=20
> feasible? It should always be used.=20

No, it cannot always be used. Please read again few lines above this that=20
"The mapping can only be used in the context which acquired them". We=20
cannot do blind s/kmap/kmap_local_page/.

> I don't see a reason why using
> kmap_local_page() would not be feasible.

Ditto.

> > -* kmap().  This permits a short duration mapping of a single page.  It=
=20
needs
> > -  global synchronization, but is amortized somewhat.  It is also prone=
=20
to
> > -  deadlocks when using in a nested fashion, and so it is not=20
recommended for
> > -  new code.
> > +  These mappings are per thread, CPU local (i.e., migration from one=20
CPU to
> > +  another is disabled - this is why they are called "local"), but they=
=20
don't
> > +  disable preemption. It's valid to take pagefaults in a local kmap=20
region,
> > +  unless the context in which the local mapping is acquired does not=20
allow
> > +  it for other reasons.
> > +
> > +  kmap_local_page() always returns a valid virtual address and it is=20
assumed
> > +  that kunmap_local() will never fail.
> > +
> > +  If a task holding local kmaps is preempted, the maps are removed on=
=20
context
> > +  switch and restored when the task comes back on the CPU. As the maps=
=20
are
> > +  strictly CPU local, it is guaranteed that the task stays on the CPU=
=20
and
>=20
> Maybe "thread local" instead CPU local? Another thread on the same CPU
> can not use this mapping.
>=20

Hmm, I might add "thread local" to convey that the local mappings should=20
stay in the same context that acquired them.=20

However, kmap_local_page() also disable migration. This is how Thomas=20
Gleixner talks about kmap_local_page() in his patch where it introduced=20
this function:=20

"The kmap_local.*() functions can be invoked from both preemptible and
atomic context. kmap local sections disable migration to keep the resulting
virtual mapping address correct, but disable neither pagefaults nor
preemption.".

Therefore, if it "disable migration" it is "CPU local". I mean that I might=
=20
also add "thread local" but I think (at least at this moment) that I won't=
=20
remove "CPU local".

@Ira: what about this proposal?

> > +  that the CPU cannot be unplugged until the local kmaps are released.
> > +
> > +  Nesting kmap_local_page() and kmap_atomic() mappings is allowed to a=
=20
certain
> > +  extent (up to KMAP_TYPE_NR) but their invocations have to be=20
strictly ordered
> > +  because the map implementation is stack based. See kmap_local_page=20
() kdocs
>                                                                        ^
> > +  (included in the "Functions" section) for details on how to manage=20
nested
> > +  mappings.
>=20
> While they can be nested I wouldn't encourage that.

I'm not encouraging this kinds of usages. I'm only saying that "it is=20
allowed to a certain extent".

> >  * kmap_atomic().  This permits a very short duration mapping of a=20
single
> >    page.  Since the mapping is restricted to the CPU that issued it, it
> >    performs well, but the issuing task is therefore required to stay on=
=20
that
> >    CPU until it has finished, lest some other task displace its=20
mappings.
> > =20
> > -  kmap_atomic() may also be used by interrupt contexts, since it is=20
does not
> > -  sleep and the caller may not sleep until after kunmap_atomic() is=20
called.
> > +  kmap_atomic() may also be used by interrupt contexts, since it does=
=20
not
> > +  sleep and the callers too may not sleep until after kunmap_atomic()=
=20
is
> > +  called.
> > +
> > +  Each call of kmap_atomic() in the kernel creates a non-preemptible=20
section
> > +  and disable pagefaults. This could be a source of unwanted latency,=
=20
so it
> > +  should be only used if it is absolutely required, otherwise=20
kmap_local_page()
> > +  should be used where it is feasible.
>=20
> Please add a note this function is deprecated and must not be used in
> new code.

I have already responded (in my other reply for 1/4) about the possible=20
addition of a notice of deprecation. But, as said, I also need to take into=
=20
account what other people think about it.

However, I agree that, since we have that "deprecated!" in the kdocs of =20
kmap_atomic(), I should be consistent everywhere.

Please let me wait for more reviews before making further changes.

Thanks,

=46abio

>=20
> Sebastian
>=20





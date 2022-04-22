Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6575423A4
	for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 09:36:33 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id t11so15195044eju.13
        for <outreachy@lists.linux.dev>; Fri, 22 Apr 2022 02:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jO/vxDbeCOIwMZpGyPBrJ93fKruvAZdChVh9tS+X+e8=;
        b=gAg4QfVMOQzg3Wo9SO5pjrLDbi8o6PVWL9VrsfN3oRTrmLA014Mjh/LdgUMNSjRSyB
         MDfMYemTjD74cjmMrubbhLrQwsTUmlkYmBeaLIIz/jK6WuGlxIUvJirJh7gR6Hb6LrKZ
         Jz9nRB28sBCSz7tDUJKEMO4E/w0MkFQoH5B9RlEGOhYi/PR8bAfOPduknHPaguvz32iw
         rrZSwMiUJQOXc9CBwfVcttyi4QKqEGZUG324pKKnfeIsrmJZF+Vn2hnNwEhzICCLFKR+
         jrv7Bh/UGwSumlQ5M272FIzlT+USYC8GPXPfoTItHzUa1FZY+X8Dg3PAp8nYLxsYpSlW
         NX8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jO/vxDbeCOIwMZpGyPBrJ93fKruvAZdChVh9tS+X+e8=;
        b=o8SjU1AynuIMTWIu+OII4wbh40AvtO+KoXtuURG/o06jnpPHU98cfPvVUN3h+5xd01
         KoIrSkPcKUkUnaTmJDY3K0vPTy67jLjAcweQo+JtSXmz/CERbOTr2LRT6QLG2uT1jrM1
         BKYAS5AKZe8pqjsATV3gA5lzBH2xt6ti7OvZBEXkF7SpNlT44RV5bOGc+THwvP/MZ5Ct
         voN8uJC5LtZV1cdsJzrP6/rH5TqStvti3QuJ58rVEN5hPkJ3a7ovu+gpZOqCUewl7bii
         bHl6imW8CSjzqvbybLqtbk052lD3BdKVrxdA2Uy2CR9iOqa/p0Akw27x9A3dryOZO9gM
         tWFw==
X-Gm-Message-State: AOAM533HwNkcVaBZssxy9SEiL6apmLkbDlKYglTKXzpfHd69ovceZQRc
	X6QLiVRjWs4C/oo2VLX4Zdg=
X-Google-Smtp-Source: ABdhPJxClEYIuim6d5CYgBJxMfNobumHE1XRkHMdvQqHDjpZ2pZa9HvT6M336UjanJpLS0f2QQCxWQ==
X-Received: by 2002:a17:906:9b89:b0:6da:ac6b:e785 with SMTP id dd9-20020a1709069b8900b006daac6be785mr3354360ejc.295.1650620191608;
        Fri, 22 Apr 2022 02:36:31 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id n25-20020a1709062bd900b006e8766b7907sm562323ejg.223.2022.04.22.02.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 02:36:30 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Mike Rapoport <rppt@kernel.org>
Cc: Ira Weiny <ira.weiny@intel.com>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, "Matthew Wilcox (Oracle)" <willy@infradead.org>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org, outreachy@lists.linux.dev, Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 1/4] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Fri, 22 Apr 2022 11:36:28 +0200
Message-ID: <1819415.CQOukoFCf9@leap>
In-Reply-To: <YmJmLrS3hPR6gOaw@kernel.org>
References: <20220421180200.16901-1-fmdefrancesco@gmail.com> <20220421180200.16901-2-fmdefrancesco@gmail.com> <YmJmLrS3hPR6gOaw@kernel.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On venerd=C3=AC 22 aprile 2022 10:24:14 CEST Mike Rapoport wrote:
> On Thu, Apr 21, 2022 at 08:01:57PM +0200, Fabio M. De Francesco wrote:
> > `scripts/kernel-doc -v -none include/linux/highmem*` reports the=20
following
> > warnings:
> >=20
> > include/linux/highmem.h:160: warning: expecting prototype for=20
kunmap_atomic(). Prototype was for nr_free_highpages() instead
> > include/linux/highmem.h:204: warning: No description found for return=20
value of 'alloc_zeroed_user_highpage_movable'
> > include/linux/highmem-internal.h:256: warning: Function parameter or=20
member '__addr' not described in 'kunmap_atomic'
> > include/linux/highmem-internal.h:256: warning: Excess function=20
parameter 'addr' description in 'kunmap_atomic'
> >=20
> > Fix these warnings by (1) moving the kernel-doc comments from highmem.h=
=20
to
> > highmem-internal.h (which is the file were the kunmap_atomic() macro is
> > actually defined), (2) extending and merging it with the comment which=
=20
was
> > already in highmem-internal.h, and (3) using correct parameter names.
> >=20
> > Cc: Mike Rapoport <rppt@linux.ibm.com>
> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Suggested-by: Matthew Wilcox <willy@infradead.org>
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  include/linux/highmem-internal.h | 14 +++++++++++---
> >  include/linux/highmem.h          | 15 +++------------
> >  2 files changed, 14 insertions(+), 15 deletions(-)
> >
> > [...]
> >
> > + *
> > + * Unmap an address previously mapped by kmap_atomic() and re-enables
>=20
> Unmap ... and re-enable
>=20
> or=20
>=20
> Unmaps ... and re-enables

Sorry, I should have read it twice before submitting :(

This entire series has already been taken by Andrew Morton for "-mm"=20
immediately after submission. I think that probably the better suited=20
solution is to send a correction when they show upstream.=20

Do you agree with me or you prefer that I resubmit the whole series as a v2=
=20
now?

>=20
> Other than that
>=20
> Acked-by: Mike Rapoport <rppt@linux.ibm.com>
>=20

I also saw your "Acked-by" tag in patch 2/4. Thanks!

Regards,

=46abio



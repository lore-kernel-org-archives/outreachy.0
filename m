Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947267A
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 13:25:20 +0000 (UTC)
Received: by mail-ed1-f45.google.com with SMTP id v4so21233693edl.7
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 06:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NYGYZ+AaeH1UkoR29hN0ONV45IHPGeVO496rVaCsOeg=;
        b=ZcP63KQbJe/fq2lztFobt+4aFZJsU7bmacoc7UrvUOEBPRCGkn8K2Uwgz1TudU1vVm
         m/AG5apYjCzvfnZjgqvfy3ERIKR46quwZkbQs6eqYdyzvjhjwgawy2pmk6QIFggBSFoT
         oOKSlIa+QZB5Z7Bi0bVwZYyRH3vmhvpt/+PYNbftMzYV9afjOcEAj3kVfmrGObuF8erl
         S1u/FdJMXedCwFu88jEuVQme82CXHn/xWoapZfPCRfd5muPPBWXap3gonUSvM6oHhfj4
         XeFBi/ldwlcGrKX5nmEVdrRi5ehZTc/DFaN3NTDOXvRCXPer+X26HBfyvbV7Q2q5oNP3
         6/CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NYGYZ+AaeH1UkoR29hN0ONV45IHPGeVO496rVaCsOeg=;
        b=N43gPqpa3Ati7c/fVeqDe+lWDaUfF4l0ATe2sNIOZJXlfJwUcSw1eVe0zZ5kRnZEHE
         OeoR88rutNEu5i63dnjUjjKhVkKXJgO7nG8jGfbgk196GXmL89lvNWkBLLBoOCLGXvJ/
         2sRPii5NFMJ6sZWUqUF7PpiN6jAjx+yPIsdiLd/FT2mn66gxhnt88WaLQxIoW38tnp70
         ZhA2gU83SDZOqbvN3C0Q4jqTRXTE23j4qQtP8tpIxJWuw0vKffuK9ql4/wZA1njE+2u3
         nm1C4pwK8fZj2hXCb0AAVdQfGyIRqgYwQpzpfEc1fK++1/SZOBCnlwrQ99hG/weUKVeg
         ueEw==
X-Gm-Message-State: AOAM531JzW0hm4Yl7cXXzEqHnLEU8OlpOMGxEGDrp2iplpzLX+gptJb5
	ciGVpDwVwg4lwUeFuJafDhA=
X-Google-Smtp-Source: ABdhPJyXcDMv8ru2Wi8pUK5GB8l76sJTEXGV6d+L1yqBCA/Bh8rnWTOm2dfGw8CclmZl5FbXqKjm4g==
X-Received: by 2002:a05:6402:2318:b0:413:7645:fa51 with SMTP id l24-20020a056402231800b004137645fa51mr17623149eda.201.1650374718896;
        Tue, 19 Apr 2022 06:25:18 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id fx3-20020a170906b74300b006daecedee44sm5661666ejb.220.2022.04.19.06.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 06:25:17 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Matthew Wilcox <willy@infradead.org>
Cc: Ira Weiny <ira.weiny@intel.com>, Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Peter Collingbourne <pcc@google.com>, Vlastimil Babka <vbabka@suse.cz>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Mike Rapoport <rppt@linux.ibm.com>, linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: Re: [PATCH v2] mm/highmem: Fix kernel-doc warnings in highmem*.h
Date: Tue, 19 Apr 2022 15:25:16 +0200
Message-ID: <4058661.1IzOArtZ34@leap>
In-Reply-To: <Yl6unkluUEeRZBbB@casper.infradead.org>
References: <20220418175638.30018-1-fmdefrancesco@gmail.com> <Yl6unkluUEeRZBbB@casper.infradead.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On marted=C3=AC 19 aprile 2022 14:44:14 CEST Matthew Wilcox wrote:
> On Mon, Apr 18, 2022 at 07:56:38PM +0200, Fabio M. De Francesco wrote:
> > +/**
> > + * kunmap_atomic - Unmap the virtual address mapped by kmap_atomic()
> > + * @__addr:       Virtual address to be unmapped
> > + *
> > + * Counterpart to kmap_atomic().
>=20
> I don't think this is a terribly useful paragraph?

I agree but let me remind you that this patch is _only_ about fixing=20
kernel-doc warnings. This warning was simply fixed by moving kdoc comment=20
from highmem.h to highmem-internal.h (which is the file where the=20
definition of kunmap_atomic() resides) and merging the text with few lines=
=20
that already were in highmem-internal.h.

=46urthermore, I've already had an "Acked-by:" tag from Mike Rapoport. I=20
suppose that if I changed the paragraph here I could not forward his ack to=
=20
the next version.

> > + * Effectively a wrapper around kunmap_local() which additionally=20
undoes
> > + * the side effects of kmap_atomic(), i.e. reenabling pagefaults and
> > + * preemption. Prevent people trying to call kunmap_atomic() as if it
> > + * were kunmap() because kunmap_atomic() should get the return value=20
of
> > + * kmap_atomic(), not its argument which is a pointer to struct page.
>=20
> I'd rather this were useful advice to the caller than documentation of
> how it works.  How about:
>=20
>  * Unmap an address previously mapped by kmap_atomic().  Mappings
>  * should be unmapped in the reverse order that they were mapped.
>  * See kmap_local_page() for details.  @__addr can be any address within
>  * the mapped page, so there is no need to subtract any offset that has
>  * been added.  In contrast to kunmap(), this function takes the address
>  * returned from kmap_atomic(), not the page passed to kmap_atomic().
>  * The compiler will warn you if you pass the page.

A change like this should go to a separate patch and indeed I'll send it=20
ASAP. Probably, when I'll rework this text in a separate patch, I'll also=20
copy-paste the paragraph you wrote as-is (too easy!).

However, since the rework of the text in paragraph can only be applied on=20
top of this patch, I'm not sure if I should either (1) make a series with=20
two patches or (2) make a separate patch with a warning to Maintainers that=
=20
the changes in the new patch can only be applied on top of this patch.

Actually, I don't yet know how the Community wants tasks like these to be=20
carried out. Any suggestion?

Thanks for your review and for suggesting a better suited text for the next=
=20
patch.

=46abio M. De Francesco



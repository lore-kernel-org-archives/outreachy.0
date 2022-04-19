Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607D47A
	for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 12:35:52 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id i27so32579309ejd.9
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 05:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BaNLhQu+QWWvZbpDFGtXSt3/5W9s0AKclZhaLjx4Bo8=;
        b=F7wPvxjsI3taT1eprbvJq5aN0oQ/3ONZTdNjhmhmAq9MYhceoNcHAeXrl2o7mHbafY
         bTZYbVi1qbJ9TFn3DtwyH540d6Ps+YRQxT4hlakrN/dkb6lKuWVS9cLgKO/ta6qLHn/a
         i2yF31VlQKf3hYHa6NOehBJNkgm00T3oUfJsOTkeAD8d8xGaYOsHy0Ax59P8OU74xTMe
         dsAJKkJ87Y5ugq0p3INoX8datsKRKAJ5Od1zeqb0RDifG8E03ApGz1uuU3CVnnfHbZ/P
         VYxSvN/vdOkoknlTL/c7CeKvMvaPmXKa6/8pK9tqimsRgBkp6Oey8IXVil+H6r4PsW5K
         zvDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BaNLhQu+QWWvZbpDFGtXSt3/5W9s0AKclZhaLjx4Bo8=;
        b=LlaUkkC8PtSck5Uft9fRmJgvtCqtFhwxbIFhq6YPOWljx5Pc7g7hHjY7HwXLKHC8s5
         wbVR29F89dl94swjyKNovB1ewigF7mGFs5Ex3nsUYOxLP7Qmv9HSLDImG6JDH3CVfSHh
         ee/GiIC6BiXjk/Uo7fTsjqd7hYfeSGLnmRwq+k+xenyKSoirkny41LKk9X3/SegGGy+D
         G5wDddkzipGbbzz/vuvwbFZEzZfokV+4/Sk9rRv+h1f+M1vsMi3nQSjr7nHeUNMngSjn
         yOAH7KRxuG54VjYSOPmOfT8FTusO4/FCacxWQtf173z25WC2EP06/4tFsewrw4/CdYiy
         +7gw==
X-Gm-Message-State: AOAM533IVKULA5wUtBgsBgU6I7b/gJj0CJf/Iia7QER5z8FSwPa1dBGE
	O6x9SFO/dKu8YhnvKA9/a3Y=
X-Google-Smtp-Source: ABdhPJzMKqFT9NsTEuV6XDc1/i5YPbX23EMYYcdpp9FAwsphV2nOFI2phUGBoYRO1oH977BD5TSmSg==
X-Received: by 2002:a17:907:1c2a:b0:6ef:e251:1611 with SMTP id nc42-20020a1709071c2a00b006efe2511611mr2186451ejc.532.1650371750557;
        Tue, 19 Apr 2022 05:35:50 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id fq6-20020a1709069d8600b006e891c0b7e0sm5568898ejc.129.2022.04.19.05.35.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 05:35:49 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>, SeongJae Park <sj@kernel.org>, Jiajian Ye <yejiajian2018@email.szu.edu.cn>, Thomas Gleixner <tglx@linutronix.de>, Matthew Wilcox <willy@infradead.org>, Peter Zijlstra <peterz@infradead.org>, outreachy@lists.linux.dev, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation/vm: Include kernel-doc from highmem-internal.h
Date: Tue, 19 Apr 2022 14:35:48 +0200
Message-ID: <2824835.e9J7NaK4W3@leap>
In-Reply-To: <Yl3Z8Qll+zGo4v/D@iweiny-desk3>
References: <20220418081740.21001-1-fmdefrancesco@gmail.com> <Yl3Z8Qll+zGo4v/D@iweiny-desk3>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On luned=C3=AC 18 aprile 2022 23:36:49 CEST Ira Weiny wrote:
> On Mon, Apr 18, 2022 at 10:17:40AM +0200, Fabio M. De Francesco wrote:
> > In Documentation/vm/highmem.rst the kernel-doc comments are missing,
> > therefore kunmap_local() and kunmap_atomic() are yet undocumented.
> >=20
> > Add a kernel-doc directive to include the above-mentioned kernel-doc
> > comments in highmem.rst.
> >=20
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Ira Weiny <ira.weiny@intel.com>
> > Cc: Matthew Wilcox <willy@infradead.org>
> > Cc: Peter Zijlstra <peterz@infradead.org>
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
>=20
> I thought I saw a patch fly by which changed the comment of=20
kunmap_atomic() in
> include/linux/highmem-internal.h?  Did I miss that somewhere?

Sorry, in my other email I responded after misunderstanding your question=20
because I had just noticed a typo so that I had something else in my mind.

It looks that you are talking about the following patch and, if so, you saw=
=20
it correctly:

"[PATCH v2] mm/highmem: Fix kernel-doc warnings in highmem*.h" at=20
https://lore.kernel.org/lkml/20220418175638.30018-1-fmdefrancesco@gmail.com/

I forgot to send it to the Outreachy list. I'm about to resend it only to=20
this list in order to make Outreachy's organizers to know about it. For v1=
=20
already had an "Acked-by:" tag from Mike Rapoport.

Thanks,

=46abio M. De Francesco



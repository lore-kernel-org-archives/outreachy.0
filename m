Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEE12567
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 22:05:12 +0000 (UTC)
Received: by mail-ed1-f44.google.com with SMTP id 21so19030829edv.1
        for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 15:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qvyMTbp6qzFtYs01g3/WRgGGqHIALLjUx9LyH/RZFQw=;
        b=jt8J3wmF1cufjRi2NhOBWl2z41tnRDI/8d1DDhxwtqFY2aY7Z+c5naIyB66DARgQm5
         OFWtN+Xanr8XKb9dBpX2mgE4orYXWKjQzPBHuKUYaVMSKbOEvFA0TqL106mQ1FC8ilPp
         jM0EW/UHmX8BdKPibC4iZFlGLDwEF/YqCs7ISQf8q5IP3g/7axKLNFlhVerJMf30Sqrp
         mWYO+5LhENR7b9PIo3mAh1BUMZzpCDdYQIhQj2keM+EUlxYya9kDruL48q1EZ6G8ZbzZ
         9+76fZGTMVEai3DOWgGkbWM+vMUrKE/gppTWtGCBVLmEe+JFT2cuynZ0NhXzX2/FvVSg
         0UoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qvyMTbp6qzFtYs01g3/WRgGGqHIALLjUx9LyH/RZFQw=;
        b=654s1AyQU3jVeLPr1/Jf7zK7e6awaNye7KsLmsJQIOAXKUeVrHonXOCwqAtWhj4hBI
         SSu6JtvAs6BNPBt5jDMgeDWjhUPzQ0VTExbb+FS9khvC40/jzgS6jrHicpbnsdzSNPJk
         lajoWyweKnYCD7OSfmQiH8znZ8xq8q/zycnLijsoCOn2vVSiBzyitA0zO8a6l8HXz337
         H1QwpaYTBegu13Fw5BgVJcmoKSQRtcUm3fxRJ0bywoRaQRObtb9cxAgHvfXPKWSXTgue
         1jysHshQ2lfQsUEXZmxpZfzDiQS/GWtC4nqsuWAxwOMYwWdfzIIL6tbgjJfA4oL5M9Sj
         uMKA==
X-Gm-Message-State: AOAM533Z5gTRhIzASM10ZraKoRdXCjVFQgG2uj51mGLIUtwtfEMt1p7t
	V7j5oY57N9mpq1IIZqNTEOw=
X-Google-Smtp-Source: ABdhPJyfCezo9Tr9RFzy90vhk2rAq++34sWEtmK4x+AGeOegyZ8ipPNU4litJv+L/weVN/9Oal7aUg==
X-Received: by 2002:aa7:c946:0:b0:416:226f:f8a6 with SMTP id h6-20020aa7c946000000b00416226ff8a6mr14172729edt.360.1650319510489;
        Mon, 18 Apr 2022 15:05:10 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id q19-20020a17090676d300b006e8ab621e6dsm5022698ejn.19.2022.04.18.15.05.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Apr 2022 15:05:09 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>, SeongJae Park <sj@kernel.org>, Jiajian Ye <yejiajian2018@email.szu.edu.cn>, Thomas Gleixner <tglx@linutronix.de>, Matthew Wilcox <willy@infradead.org>, Peter Zijlstra <peterz@infradead.org>, outreachy@lists.linux.dev, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation/vm: Include kernel-doc from highmem-internal.h
Date: Tue, 19 Apr 2022 00:05:07 +0200
Message-ID: <8118428.NyiUUSuA9g@leap>
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

No, you're right. I had noticed just some minutes before reading your=20
review that a made a typo.

I wanted to write: "In Documentation/vm/highmem.rst some kernel-doc=20
comments are missing" instead for some unknown reason I wrote "the" in=20
place of "some" :(

I'll fix it ASAP.

> This is a good inclusion for now.  However, I think I would rather see=20
this as
> part of a new series which puts the bulk of the documentation with the=20
code as
> I proposed in patch 1/2 in your other series.

I have also read your review of the patch above. I agree with you that the=
=20
"how" should be placed in the kernel-doc comments in the code. And I also=20
agree that this patch should be part of a new version of a reorganized=20
series.

I'll start working on your suggestions by tomorrow morning (it's midnight=20
here in Italy).

> For this particular change:
>=20
> Reviewed-by: Ira Weiny <ira.weiny@intel.com>

Thank you so much for your review,

=46abio

> > ---
> >=20
> > This patch must be applied and built on top of=20
> > "[PATCH v3 2/2] Documentation/vm: Include kernel-doc to highmem.rst"
> > https://lore.kernel.org/lkml/20220415231917.25962-3-fmdefrancesco@gmail=
=2Ecom/
> >=20
> >  Documentation/vm/highmem.rst | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/
highmem.rst
> > index 5dcee6233cd5..1a3e6a8f5d3e 100644
> > --- a/Documentation/vm/highmem.rst
> > +++ b/Documentation/vm/highmem.rst
> > @@ -161,3 +161,4 @@ Functions
> >  =3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =20
> >  .. kernel-doc:: include/linux/highmem.h
> > +.. kernel-doc:: include/linux/highmem-internal.h
> > --=20
> > 2.34.1
> >=20
>=20





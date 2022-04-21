Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B081FCD
	for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 17:52:33 +0000 (UTC)
Received: by mail-wm1-f49.google.com with SMTP id m15-20020a7bca4f000000b0038fdc1394b1so6378719wml.2
        for <outreachy@lists.linux.dev>; Thu, 21 Apr 2022 10:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7S1HS8zqtDyWf8mUL+p+GGCoIBRPIF5unnXiHhwzozc=;
        b=i0Qr1q9/gP1NrfI1K+c89R8JePSpH4attbPjr54V2XO0crTDa1URKKECloWEthvAA3
         n8bBS1lcbDBuIbVc0RNoFlpkaFqHwgxxSJfSnauspFBTtYxUNAGuwj0uKA0b42FeSqty
         fBN+STTSR2An+5dxbarlfB30S65gtU78gQNrZOX3NqOu3RlUgMEhAWyy3lVpFkuZ29qB
         rBCeHq7zq2uICjVHJTDioSwdox1mZAYBvXlYQO3MnTi5PdZ61tyQihJYMlMqpJqrhlTy
         dNYlekhMr3WTSzHhjgnIFIG3pqRb4NjDk/OFZwlFIQJF7l8zfyHY/ErW73+IXNNsjkXs
         pSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7S1HS8zqtDyWf8mUL+p+GGCoIBRPIF5unnXiHhwzozc=;
        b=b/nZqQ/rt53MlAqWKle7EBj+hnAozW8PJ0P3c35L+2wA4UvY6pa7DKQJTySvGUdIng
         Pcz0I/uKtyzMGDMlEmQwiC+LRflVw6gxSzN9LMfZ8hjL0SyJDPObzEuW+x9VQLgP5+Wu
         EE/KVgyASFfbQ7egnZfk8tNNOc7YCBICc8hRxRAe4pT+E9NVlRBpQauch+mNPpnVNKOC
         QYd/iM8TAQaFHXG5uhDHfHJnff2aZanr4hmyGdvtYQjTXcd5MtuwNVqjFUjEIiWH4/Iv
         pK1eeYpwjohcnqXpRC5Qs87z27F9qdCMuhPnopGjFxmzrwTTopJ56Z4GEwivdPU41rAk
         fFtg==
X-Gm-Message-State: AOAM533i422EWFrmrSYOKKXA/AuXvMw0CkmnHdt318vvmgDrs7SLA+Fw
	8qFO7YNf+BfHKadMaVrlfgU=
X-Google-Smtp-Source: ABdhPJxDOKGfEizTR3nTzgt4lViILYZF+pvyG4PygXgfeih6hNIDAYOtIQsB32LFFFHZDBuEKPwRRw==
X-Received: by 2002:a05:600c:6d3:b0:38e:c692:d50a with SMTP id b19-20020a05600c06d300b0038ec692d50amr9704777wmn.30.1650563552001;
        Thu, 21 Apr 2022 10:52:32 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id 100-20020adf806d000000b00205ba671b25sm2790717wrk.56.2022.04.21.10.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Apr 2022 10:52:30 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>, SeongJae Park <sj@kernel.org>, Jiajian Ye <yejiajian2018@email.szu.edu.cn>, Thomas Gleixner <tglx@linutronix.de>, Ira Weiny <ira.weiny@intel.com>, Matthew Wilcox <willy@infradead.org>, Peter Zijlstra <peterz@infradead.org>, outreachy@lists.linux.dev, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] Documentation/vm: Include kernel-doc from highmem-internal.h
Date: Thu, 21 Apr 2022 19:52:29 +0200
Message-ID: <1755877.Zkmt1EvEu4@leap>
In-Reply-To: <20220418081740.21001-1-fmdefrancesco@gmail.com>
References: <20220418081740.21001-1-fmdefrancesco@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On luned=C3=AC 18 aprile 2022 10:17:40 CEST Fabio M. De Francesco wrote:
> In Documentation/vm/highmem.rst the kernel-doc comments are missing,
> therefore kunmap_local() and kunmap_atomic() are yet undocumented.
>=20
> Add a kernel-doc directive to include the above-mentioned kernel-doc
> comments in highmem.rst.
>=20
> Cc: Jonathan Corbet <corbet@lwn.net>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Matthew Wilcox <willy@infradead.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>=20
> This patch must be applied and built on top of=20
> "[PATCH v3 2/2] Documentation/vm: Include kernel-doc to highmem.rst"
> https://lore.kernel.org/lkml/20220415231917.25962-3-fmdefrancesco@gmail.c=
om/
>=20
>  Documentation/vm/highmem.rst | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/vm/highmem.rst b/Documentation/vm/highmem.rst
> index 5dcee6233cd5..1a3e6a8f5d3e 100644
> --- a/Documentation/vm/highmem.rst
> +++ b/Documentation/vm/highmem.rst
> @@ -161,3 +161,4 @@ Functions
>  =3D=3D=3D=3D=3D=3D=3D=3D=3D
> =20
>  .. kernel-doc:: include/linux/highmem.h
> +.. kernel-doc:: include/linux/highmem-internal.h
> --=20
> 2.34.1
>=20
Dear Maintainers,

Please drop this patch because it has been reworked and inserted as part of=
=20
a new series whose subject is "Extend and reorganize Highmem's=20
documentation" and which is about to be submitted.

Thanks,

=46abio M. De Francesco




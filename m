Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2919184A
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 13:22:14 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id l7so3559497ejn.2
        for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 06:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ng4rT6I4vcHmv4/7ezO3PQ9fpnN0wzaNSUcZ6IscV4k=;
        b=hisOYUiR4cenD1rp5qPKSBG+WAk64wKCLuwUm8RftXBLSnJNAj+b10FaYqJQ3H8Y9I
         Ll8ySPsAvRZBbFLxQqCxiKgJ0Raz+OKxSEH123P/ID9N4IMOW/8S2ZkWhDmPtn4DAB/m
         CJXmIRJgEXBZ86KiTOsgJKbzAQqulyO6SC+rF1OBjPNBAOlcac+iA0cVT2Zag6WtfN5n
         hByBi+9SfZHZRP99RvjAjR8Z+1Dv2JwgaaEJBwfKpHlGXP9Cqug0aiqIne7waUJcKbUf
         gdKJgXh+ank2b2a3ZSQAavn0rdJK8My3fLILeOefKuQTSWeoq0kT/7SmppbOo6yXDD9L
         H7QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ng4rT6I4vcHmv4/7ezO3PQ9fpnN0wzaNSUcZ6IscV4k=;
        b=dwqSlFdQRPNmfCXVwDN6z/ttQ4T1Mgs87dzLJSrWKabUkB+XoL23Wruxb3Ph2ZhjXs
         zgyAZAARzl8oYytLR6jqx2JWm7/7C7FTopQWYQ0xs/ZCQSGd4pb+miIk8sJLigqzjmL2
         3xj0fD8HCzBFrhiCTSymaOkj/22MYw/3RODSCrFB9rBX5COdHASzkxV55s4F8Yk1hwog
         QX8OCtzzyUrHg42by3ftEF5idgD6Fanuwjy0VElMqWH76lzxuarku5zHq3jgd8p0pQBs
         0PvW+TWmIQN9FvqEu34Zd4q6zApa39Z0poBPd52qdPNJF7e1A53ZEIXuz5B+J5UGA+6s
         T4xQ==
X-Gm-Message-State: AOAM530+LvXXvXusvsdIbJo/ejRtoGfo4a8/Q7HOoakAYMw1OT///QA/
	cMAyxh998f6rThXMsEiyDX0=
X-Google-Smtp-Source: ABdhPJwU9wCOFteWozSkt5bu3lmUNtDTL6NNULRKJcKJoaUjbAjkFKxtS6lDaecx+VwibuEjcyEeBQ==
X-Received: by 2002:a17:906:60c2:b0:6e7:681e:b4b7 with SMTP id f2-20020a17090660c200b006e7681eb4b7mr18667712ejk.130.1650460932892;
        Wed, 20 Apr 2022 06:22:12 -0700 (PDT)
Received: from leap.localnet (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id w7-20020a1709061f0700b006ec8197e8a4sm6255708ejj.97.2022.04.20.06.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Apr 2022 06:22:11 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>, ira.weiny@intel.com
Cc: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>, outreachy@lists.linux.dev, boris.ostrovsky@oracle.com, jgross@suse.com, sstabellini@kernel.org, xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] xen:  Convert kmap() to kmap_local_page()
Date: Wed, 20 Apr 2022 15:22:10 +0200
Message-ID: <2940450.687JKscXgg@leap>
In-Reply-To: <alpine.DEB.2.22.394.2204200759080.2937@hadrien>
References: <20220419234328.10346-1-eng.alaamohamedsoliman.am@gmail.com> <alpine.DEB.2.22.394.2204200759080.2937@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On mercoled=C3=AC 20 aprile 2022 08:03:05 CEST Julia Lawall wrote:
>=20
> On Wed, 20 Apr 2022, Alaa Mohamed wrote:
>=20
> > kmap() is being deprecated and these usages are all local to the thread
> > so there is no reason kmap_local_page() can't be used.
> >
> > Replace kmap() calls with kmap_local_page().
>=20
> OK, so from a Coccinelle point of view, could we do
>=20
> @@
> expression e1,e2,x,f;
> @@
>=20
> e1 =3D
> - kmap
> + kmap_local_page
>     (e2)
> ... when !=3D x =3D e1 // not stored in any location and not passed to=20
another function
>     when !=3D f(...,e1,...)
>     when !=3D x =3D e2
>     when !=3D f(...,e2,...)
> -kunmap(e2)
> +kunmap_local(e1)
>=20
> julia
>=20

I've never spent sufficient time to understand properly the syntax and=20
semantics of expressions of Coccinelle. However, thanks Julia, this code=20
looks good and can be very helpful.

Only a minor objection... it doesn't tell when 'e2' has been allocated=20
within the same function where the kmap() call is.

In the particular case that I cite above, I'd prefer to remove the=20
allocation of the page (say with alloc_page()) and convert kmap() /kunmap()=
=20
to use kmalloc() / kfree().=20

=46ox example, this is done in the following patch:

commit 633b0616cfe0 ("x86/sgx: Remove unnecessary kmap() from=20
sgx_ioc_enclave_init()") from Ira Weiny.

Can Coccinelle catch also those special cases where a page that is passed=20
to kmap() is allocated within that same function (vs. being passed as=20
argument to this function) and, if so, propose a replacement with=20
kmalloc()?

Thanks,

=46abio




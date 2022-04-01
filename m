Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB9E1367
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 12:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648817840;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CT04+6k2M82jCrA8HTkhhdQaKYwD3bObYBizQJji4Co=;
	b=aeFI7s3crWiJduo5E7T2tf17ynJT/kNFmQoztuy/MSviP6df76xXsePhP+hw16daOyHuF3
	/T7H2RLE9W/UoVRwnbZ/dXRZyC5FkubTJm/QM+dE6MfXNpzBSzyv7PYD3a3V6WJJ8gi7yN
	aJbyFfTEqPp+Y1a1u2uBXtWMKRXmFhU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-623-e5Z4E2uLOdCcBBdiP2x6tw-1; Fri, 01 Apr 2022 08:57:19 -0400
X-MC-Unique: e5Z4E2uLOdCcBBdiP2x6tw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2DA2A801AAD;
	Fri,  1 Apr 2022 12:57:18 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BF6EA19648;
	Fri,  1 Apr 2022 12:57:17 +0000 (UTC)
Date: Fri, 1 Apr 2022 14:57:14 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Compilation errors
Message-ID: <20220401145714.5a0d826f@elisabeth>
In-Reply-To: <3410190.V25eIC5XRa@leap>
References: <3603561.MHq7AAxBmi@leap>
	<20220401121357.09ae33d7@elisabeth>
	<3410190.V25eIC5XRa@leap>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 01 Apr 2022 14:01:03 +0200
"Fabio M. De Francesco" <fmdefrancesco@gmail.com> wrote:

> On venerd=C3=AC 1 aprile 2022 12:13:57 CEST Stefano Brivio wrote:
> > Hi Fabio,
> >=20
> > On Fri, 01 Apr 2022 11:35:13 +0200
> > "Fabio M. De Francesco" <fmdefrancesco@gmail.com> wrote: =20
> > >
> > > [...]
> > >=20
> > > Can someone help me to understand what is happening and how to fix th=
is issue?
> > > Could it depend on a configuration option that, unintentionally enabl=
ed, make=20
> > > the build fail whenever "case label does not reduce to an integer con=
stant" is=20
> > > hit? If so, which option? =20
> >=20
> > Those would be warnings, but kernel builds switched to -Werror by
> > default a while ago, see commit 3fe617ccafd6 ("Enable '-Werror' by
> > default for all kernel builds") -- meaning that all warnings are
> > treated as errors. You can disable CONFIG_WERROR:
> >=20
> > =09scripts/config -d WERROR
> >=20
> > to double check.  =20
>=20
> Hi Stefano,
>=20
> Thanks for your prompt reply!
>=20
> I know that the kernel has switched to -Werror by default. I use a largel=
y=20
> customized .config and I can confirm you that CONFIG_WERROR is _not_ enab=
led:
>=20
> xp4ns3@leap> grep CONFIG_WERROR .config =20
> # CONFIG_WERROR is not set
>=20
> >
> > [...]
> >
> > As to why it started happening for you recently: maybe you just
> > switched to gcc 11 and a newer version of clang? Can you try with
> > gcc 10 if you have it still installed? =20
>=20
> I had it not anymore installed, so I had to re-install gcc v10. With it
> I ran "make clean && CC=3Dgcc-10 make -j12" but it still triggers the sam=
e=20
> errors and the build still fails.

Okay, then that's really an error.

> The last output line, just before exit, is:
>=20
> make: *** [Makefile:1838: drivers] Error 2
>=20
> Furthermore, I want to make you notice that I have no errors when I=20
> build Torvald's tree with gcc v11. In fact, I rebuilt it now again and=20
> got no failures.
>=20
> Why is this issue showing only with staging-testing? I cannot yet see=20
> any reasonable explanation.

It might simply be that the you're building some drivers on your
staging tree that you're not building on the mainline tree.

> Any other ideas? If I'm not able to figure out what's happening, I won't
> be able to contribute to staging anymore. Greg (reasonably) requires that
> all the changes get built before sending patches, therefore, this issue
> is a blocker. I'm losing the chance to be selected for the Outreachy
> internship.

You reported this issue three hours ago and, as far as I can tell,
there are 672 hours in four weeks...

> Since I have more or less 100 patches already in Torvald's tree, can I
> be exempted from working on those 10 required patches for staging?=20
> Otherwise I could simply send 10 clean-up patches that I can confidently
> send without trying to compile them. Or I can send patches for Torvald's
> tree. I really don't know what to do.

...well, then you could also try to debug this build issue I guess? On
which drivers it happens? You reported two. If you disable those two,
will it still happen? On how many? And what about fixing those cases?

--=20
Stefano


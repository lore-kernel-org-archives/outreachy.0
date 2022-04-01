Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B55DED5
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 10:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648808044;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Gf3p8FG/lFcTTBg9efi6YXsLyDuj0O3K5Yb4XtyRGkI=;
	b=Zn47tTUxnYzw5HzyKCs3hNNJLJJ6r3hXLqG6glC+QHGmCw+3bxEVT+Uq/Xgi7zARSygJXK
	EzoSAFkh4U1gvDB65VsBqgLddlHCRf5nlZv0I3cLxctdgQM6dl3EJP3qHPqEmQD5r2A5n2
	Uy6eUjh1bSjNLT7HcklSzBYL+BAfUvU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-155-nirNnh_2Npe4oud8Zv3Ypw-1; Fri, 01 Apr 2022 06:14:01 -0400
X-MC-Unique: nirNnh_2Npe4oud8Zv3Ypw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B1ACA1800DB7;
	Fri,  1 Apr 2022 10:13:59 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5479219648;
	Fri,  1 Apr 2022 10:13:59 +0000 (UTC)
Date: Fri, 1 Apr 2022 12:13:57 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Compilation errors
Message-ID: <20220401121357.09ae33d7@elisabeth>
In-Reply-To: <3603561.MHq7AAxBmi@leap>
References: <3603561.MHq7AAxBmi@leap>
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

Hi Fabio,

On Fri, 01 Apr 2022 11:35:13 +0200
"Fabio M. De Francesco" <fmdefrancesco@gmail.com> wrote:

> Hello everybody,
>=20
> I've made hundreds of Linux builds and never had problems, but since=20
> few days I'm not anymore able to compile the kernel with GCC or Clang.
>=20
> I get many errors like the following and the build crashes:
>=20
> # CC=3Dgcc-11 make -j12
> [...]
> drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c: In function =E2=80=98bn=
x2x_check_blocks_with_parity3=E2=80=99:
> drivers/net/ethernet/broadcom/bnx2x/bnx2x_main.c:4917:4: error: case labe=
l does not reduce to an integer constant
>     case AEU_INPUTS_ATTN_BITS_MCP_LATCHED_SCPAD_PARITY:
> [...]
> make[5]: *** [scripts/Makefile.build:289: drivers/net/ethernet/broadcom/b=
nx2x/bnx2x_main.o] Error 1
> make[4]: *** [scripts/Makefile.build:551: drivers/net/ethernet/broadcom/b=
nx2x] Error 2
> make[4]: *** Waiting for unfinished jobs....
>=20
> One more example...
>=20
> # make mrproper
> # CC=3Dclang make -j12
> [...]
> drivers/usb/typec/tcpm/tcpm.c:4724:3: error: case label does not reduce t=
o an integer constant
>    case BDO_MODE_TESTDATA:
>    ^~~~
> make[4]: *** [scripts/Makefile.build:288: drivers/usb/typec/tcpm/tcpm.o] =
Error 1
> make[3]: *** [scripts/Makefile.build:550: drivers/usb/typec/tcpm] Error 2
> make[2]: *** [scripts/Makefile.build:550: drivers/usb/typec] Error 2
> make[2]: *** Waiting for unfinished jobs....
>=20
> Can someone help me to understand what is happening and how to fix this i=
ssue?
> Could it depend on a configuration option that, unintentionally enabled, =
make=20
> the build fail whenever "case label does not reduce to an integer constan=
t" is=20
> hit? If so, which option?

Those would be warnings, but kernel builds switched to -Werror by
default a while ago, see commit 3fe617ccafd6 ("Enable '-Werror' by
default for all kernel builds") -- meaning that all warnings are
treated as errors. You can disable CONFIG_WERROR:

=09scripts/config -d WERROR

to double check. But I guess you just found a source of very useful,
relatively trivial patches. :) Of course, chances are that some of
those are already fixed in some other tree.

As to why it started happening for you recently: maybe you just
switched to gcc 11 and a newer version of clang? Can you try with
gcc 10 if you have it still installed?

--=20
Stefano


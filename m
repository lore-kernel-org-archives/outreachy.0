Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B63B6AC0
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 15:15:41 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso3583884wmo.0
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 08:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679066139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgP6w/djisLs89FSgE6v0SCjqHvKSFkEL9UvHosqWNw=;
        b=omGTMTN5qy/WN9+NGLG6XL3DvUFNSN3ZA6M3v0qSRkvZxJimjG2vXC/HjP7SoVQogI
         Iuqcc5ngk6pnE2jyDqPl5T0Yw2r1f2JgbsJzx45Hpb77HsMgpembcEcspBuA5zy8VtgK
         i7EwDfWjRTHBk+HkHc8bS7zywJA5LZ9EiXkYqWXEv+MwiCGlW2t00PNqU0J9NyGSI5Wu
         QLk85/V+zarxHPJ7upa1WEtZcFNEGBd9IK5iQjJOaZS2K69aFAR4zrV50QqGIYyocEUS
         6sgDMbnHs+RWCaOjUZw4jEnxnUGO2D3plcIHHNasuHS0vhTUeC1OSIdN24lQ9cMl53P8
         65sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679066139;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgP6w/djisLs89FSgE6v0SCjqHvKSFkEL9UvHosqWNw=;
        b=aYAKCKJim4zyisWTKEp3hUXaxzOGnnnG758wr7U0VqtjwY3RVy6QwmsHAOP6Ut9bqI
         X4Q2TDzKKUrAkFfMm7+r67HEbUDdkkxGX1UZM9xAdO6FnmZN2pNV5feMrrbGpAVVtyX3
         +coib8hWGF8uHMZAVje+DZCf2U4i0D8w5dwVL7WIHtcc2bdSGUxL1/L9iVMyVv5zxEFO
         NCsiuhNDmrYyhybf82lhd1Q9QN5DWEhPndRji/crZqFaRk8kj82AN2nEfOU5RVXr8O9a
         0dfdX64iEA2t4gRTDGWSp5fibUNQkv63xfyFT5BOVYll1dUPGDB3nrIVrBklh5aJ8RtA
         mmcg==
X-Gm-Message-State: AO0yUKX0T7ondr6P1Rm4a6FaJQWzBgFbT1WHZkvPforAz3qeVHZQ/Aec
	c5ao7923e/CL1ltf+f/XIfA=
X-Google-Smtp-Source: AK7set+33VP1jGvGKY0boDXLZb5Hjd2WISp3z+BdxZCR9kykkRBCXHplsB7IhtsdZpUtMCkTi6zClQ==
X-Received: by 2002:a1c:e913:0:b0:3eb:3912:5ae9 with SMTP id q19-20020a1ce913000000b003eb39125ae9mr24652108wmc.24.1679066139238;
        Fri, 17 Mar 2023 08:15:39 -0700 (PDT)
Received: from suse.localnet (host-79-35-102-94.retail.telecomitalia.it. [79.35.102.94])
        by smtp.gmail.com with ESMTPSA id y6-20020a05600c364600b003ed2c0a0f37sm2244161wmq.35.2023.03.17.08.15.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 08:15:38 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: sumitraartsy@gmail.com, outreachy@lists.linux.dev,
 Sumitra Sharma <sumitraartsy@gmail.com>
Cc: julia.lawall@inria.fr
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Date: Fri, 17 Mar 2023 16:15:37 +0100
Message-ID: <3190629.0WQXIW03uk@suse>
In-Reply-To: <10119311.0AQdONaE2F@suse>
References: <20230316083116.GB47053@sumitra.com> <10119311.0AQdONaE2F@suse>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On venerd=EC 17 marzo 2023 12:05:09 CET Fabio M. De Francesco wrote:
> On gioved=EC 16 marzo 2023 09:31:16 CET Sumitra Sharma wrote:
> > On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> > > 2. The outreachy document directly links the ".rst" file
> > > https://elixir.bootlin.com/linux/latest/source/Documentation/process/
>=20
> coding-
>=20
> > > style.rst at many places under different sections. And as noted by fa=
bio
> > > there is a difference between the .rst source files content and its
> > > corresponding .html file which can lead to confusions and missing
>=20
> important
>=20
> > > information. I would like to suggest to change the links to the=20
=2Ehtml/.pdf
> > > files rather than the > .rst source files.
> >=20
> > Hi mentors
> >=20
> > I would like to have some update on this.
> >=20
> > Regards,
> >=20
> > Sumitra
>=20
> Hi Sumitra,
>=20
> As you know I'm for this change.
> AFAIK, only Alison can grant you the permission to access that document in
> write mode.
> If she hasn't granted that access to you yet, please ask her directly wit=
h=20
an
> email to her address.
>=20
> Thanks for working on this (important, from my POV) change.
>=20
> Fabio

Sumitra,

When doing this change, please skim the whole document and replace _all_ th=
e=20
links to the .rst files (regardless they point to elixir.bootlin.com or not=
)=20
with the corresponding generated .html in kernel.org.

The document about the Highmem subsystem which I showed you is useless in .=
rst=20
format from the point of view of people who needs to learn its content. I'm=
=20
not sure whether or not we have the same problem with the Linux kernel=20
development guidelines, however it does not matter how much it differs from=
=20
the human readable counterpart.

We should make it clear that the source .rst is never the right document to=
=20
consult, unless one want to make changes. The generated documentation from=
=20
=2Erst with "make htmldocs" (or with other similar commands for .pdf and .e=
pub)=20
should be the only to consult for purposes of study (it does not matter if =
one=20
generates them locally or find them in the "documentation" section of the=20
kernel.org website).

Thanks,

=46abio

P.S.: I just saw the last message from Julia (in this same thread) regardin=
g=20
Mutt configuration. I want to echo her and ask you or other Applicants for=
=20
making also those changes. Don't forget that Alison said that they count as=
=20
contributions that you can add in your records.       =20



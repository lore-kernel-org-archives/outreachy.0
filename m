Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2038E79C5
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 19:25:02 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id j2so5376429wrh.9
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 12:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679081101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Fd+BVDH6t9gUWaK4VZeYMSMDb8lga3YpqQxeAS7hmY=;
        b=Yj5ydlgmWWBFsQ8caxOtsVfFriN734BlZKapLEHgw+2d9k5Mr1MA0aHO4xuEPptlGA
         llXwrwqknBxWMHiICyXH1frkREaKyyOWlSSeTnFByKDONVE2nn/zIvv0YeeIDtSb9BkD
         D8z3jYZi4Wz5rWZcJ0bsbQbXrmhCKMEWCjihlOUA07/EnAMcvW6A3Xp7Vh6WKLNRqEY2
         BD7jhOv1dDMC/PBDFcaIlWJljrKZUxC4EjVrohetRgSJor4d5JnZPdLQUIagJ4iDYgdD
         tUs2I7NakXvDMMv+8h5j5DKMA6QLLzaLrJ3YgveVYMoe5SdFBcJkymVona5CftuiZ1CM
         zWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679081101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Fd+BVDH6t9gUWaK4VZeYMSMDb8lga3YpqQxeAS7hmY=;
        b=QuKP5AE8xrSNAnecrK0VpIak4U2spp3/MOIZUNIvITWPHlEUzArA63IBHTysF6h0EJ
         j5v1jmKhzqEvE32MsEP5/dTfwHae97mVeWk2sbc3xHk3N1OEdyicRoXQDZjP+XwP3/8F
         m8D7m0KBXsxG48XxNDr28i5/B+nMNTLfj4ST7+PbByAgXCH9Q7Uio9fY13uj7LLDPOvl
         L3Km0oGtJYk/OudwrDyT69cr1nzA+K3dynRsc4/dbrW/fgKdtAlsTK3p1dEKA3UHhq8v
         r6MyeBRkveMmA0iS5aYN8BE9vK9zYv4lQroij+/efeMJmiYy3K9e4Q8QJmJGlp7t6FkQ
         qflA==
X-Gm-Message-State: AO0yUKWJHUhsZTBmRw7vt3KlKd+JhTGQ0rDFe4vobrZV8u5lrqkikaOA
	s0MimrOygM3/gwdxhiYPHcs=
X-Google-Smtp-Source: AK7set8/6a8ctFo9OsgUvHnp28vYcyixpjd2cmUFFb1d2c1cMm1nVPnhbesQsT0pPXKE2I5nV0M2pw==
X-Received: by 2002:a5d:410e:0:b0:2cf:ee28:5024 with SMTP id l14-20020a5d410e000000b002cfee285024mr7644453wrp.42.1679081101101;
        Fri, 17 Mar 2023 12:25:01 -0700 (PDT)
Received: from suse.localnet (host-79-35-102-94.retail.telecomitalia.it. [79.35.102.94])
        by smtp.gmail.com with ESMTPSA id d6-20020a5d6dc6000000b002c53f6c7599sm2636434wrz.29.2023.03.17.12.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 12:25:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: outreachy@lists.linux.dev, julia.lawall@inria.fr,
 alison.schofield@intel.com
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Date: Fri, 17 Mar 2023 20:24:59 +0100
Message-ID: <4774662.F8r316W7xa@suse>
In-Reply-To: <20230317180055.GA3391@sumitra.com>
References:
 <20230316083116.GB47053@sumitra.com> <3190629.0WQXIW03uk@suse>
 <20230317180055.GA3391@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On venerd=EC 17 marzo 2023 19:00:55 CET Sumitra Sharma wrote:
> On Fri, Mar 17, 2023 at 04:15:37PM +0100, Fabio M. De Francesco wrote:
> > On venerd=EC 17 marzo 2023 12:05:09 CET Fabio M. De Francesco wrote:

[snip]

> >=20
> > Sumitra,
> >=20
> > When doing this change, please skim the whole document and replace _all=
_=20
the
> > links to the .rst files (regardless they point to elixir.bootlin.com or=
=20
not)
> > with the corresponding generated .html in kernel.org.
> >=20
> > The document about the Highmem subsystem which I showed you is useless =
in
> > .rst format from the point of view of people who needs to learn its
> > content. I'm not sure whether or not we have the same problem with the
> > Linux kernel development guidelines, however it does not matter how muc=
h=20
it
> > differs from the human readable counterpart.
> >=20
> > We should make it clear that the source .rst is never the right documen=
t=20
to
> > consult, unless one want to make changes. The generated documentation f=
rom
> > .rst with "make htmldocs" (or with other similar commands for .pdf and
> > .epub)
> > should be the only to consult for purposes of study (it does not matter=
 if
> > one generates them locally or find them in the "documentation" section =
of
> > the kernel.org website).
>=20
> Hi Fabio
>=20
> Here it is
> https://lore.kernel.org/outreachy/20230317175007.GA3275@sumitra.com/T/#u

I just read the list of the links. You showed pairs of links: the first is =
the=20
current one pointing to .rst files, the second points to the output .html=20
file.

If I'm reading correctly, and you took special care to check that the web=20
pages you are linking are at the right URL, I'm OK with your list of change=
s=20
(I cannot check them one by one).=20

> > Thanks,
> >=20
> > Fabio
> >=20
> > P.S.: I just saw the last message from Julia (in this same thread)=20
regarding
> > Mutt configuration. I want to echo her and ask you or other Applicants =
for
> > making also those changes.=20

(Here it looks like you merged your message with mine. OK, don't worry abou=
t=20
it now but be careful next time).

> > Don't forget that Alison said that they count as
> > contributions that you can add in your records.
>=20
> I am also working on the Mutt configuration. Can you tell me how we are
> going to mention these kind of contributions when recording the
> contribution?=20

Alison will help you as soon as she can. I don't know how the contributions=
 to=20
the kernelnewbies website should be recorded, I think that they go to into =
the=20
same form you should use for the patches.

Please wait for her answers about this subject.=20

> Also, are we suppose to record the contribution for each
> and every patch separately or we have to compile them together in one go
> during the last days of contribution period?

Contributions can only be registered one at a time using the appropriate fo=
rm=20
accessible from the project(s) you wish to work on. I suggest choosing one =
or=20
two projects, no more than two. If you prefer to apply for your first choic=
e=20
and a fallback project you should record each contribution twice.=20

The sooner candidates start recording the contributions, the easier our job=
=20
will be.

Thanks,

=46abio

> Regards,
>=20
> Sumitra




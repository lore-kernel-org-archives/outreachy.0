Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2EE36F
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 11:05:13 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id bh21-20020a05600c3d1500b003ed1ff06fb0so3036990wmb.3
        for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 04:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679051111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kk3pgY2hHKapAKk9xWSvFHtgMkqcdDUJf2pf3AdXdP4=;
        b=RUOaO3jrqFvthgKvNEdbtPgZOY0iAYg7OrMJvoaJMJJh6SLcqhY6ngjNQqZ41iDG4I
         mdzBxquynWEmW6TjFDUjPgDeWgcc++XL5K1hVZsTExa6YeF0oJng/U1uT25QxRZSOVwJ
         2ZJvfx+Drb6BUh6hi9rH9b0j2BKflVKxvznycIxkpZr/MRxEEvuRLuzmx153zyWhqEAQ
         9r8DBhWFzpNya5AhCmg6729+qc+A7fw+A52v2nVFxi/vVJjn15qSAqOocL5s5RkbFAa8
         zvVdzmRA67BIkpKBhWs/LT6p1KFjrJtmgJ0YMiYBc+1gLiYETk9OOw9sBLz/4ekw3H1S
         Ppdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679051111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kk3pgY2hHKapAKk9xWSvFHtgMkqcdDUJf2pf3AdXdP4=;
        b=c7eW01//Lys9rtoEX8goTd+F2d48QKOyloxOah0gllFj2cYxMSPm6wwuw9hKbwGvr4
         v7AbgM80REY7XrSwLw7cd3h8gXd5yP5Lp8i3Js787AbcIozf2DaLeC6Og0/KlFmBeqSc
         sMXZhUrljeBSnHFAI/pgauD5WMankI+WMAr/exmg4FvUL+FSqoceAZpI4TXOv5OqOZms
         ltvYUGH2/RM0QNeDh+0vKTp4tAuvePaL92cBrx1tL/QXaHTHZmaro1YJfGxXhf+Kv5fY
         3l4TeS9w8S+H683qkhoIJ8ItnKZgM1Ob8muUL/s0Wt6EYDvZMbOBGPqvRK0XTODoGcZ/
         ANgA==
X-Gm-Message-State: AO0yUKX/OOHNAjBqBS8kASMweSMEHWNGr3wTnPp1aXAILH3ElosVjUfC
	q6S4PTbP6Q5jI5WSMQXr9NaX1/CFRwA=
X-Google-Smtp-Source: AK7set/JdE1Zf1tvKt/2zk6YGyGb8deVvYC7VwA+85FHoW1EHwcudiENOtyxNARoHA2sako6v1qvoQ==
X-Received: by 2002:a05:600c:4450:b0:3eb:36fa:b791 with SMTP id v16-20020a05600c445000b003eb36fab791mr23238082wmn.31.1679051110844;
        Fri, 17 Mar 2023 04:05:10 -0700 (PDT)
Received: from suse.localnet (host-79-35-102-94.retail.telecomitalia.it. [79.35.102.94])
        by smtp.gmail.com with ESMTPSA id f12-20020a1cc90c000000b003e20cf0408esm1651742wmb.40.2023.03.17.04.05.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 04:05:10 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: sumitraartsy@gmail.com, outreachy@lists.linux.dev,
 Sumitra Sharma <sumitraartsy@gmail.com>
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Date: Fri, 17 Mar 2023 12:05:09 +0100
Message-ID: <10119311.0AQdONaE2F@suse>
In-Reply-To: <20230316083116.GB47053@sumitra.com>
References: <20230316083116.GB47053@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On gioved=EC 16 marzo 2023 09:31:16 CET Sumitra Sharma wrote:
> On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> > 2. The outreachy document directly links the ".rst" file
> > https://elixir.bootlin.com/linux/latest/source/Documentation/process/
coding-
> > style.rst at many places under different sections. And as noted by fabio
> > there is a difference between the .rst source files content and its
> > corresponding .html file which can lead to confusions and missing=20
important
> > information. I would like to suggest to change the links to the .html/.=
pdf
> > files rather than the > .rst source files.
> Hi mentors
>=20
> I would like to have some update on this.
>=20
> Regards,
>=20
> Sumitra

Hi Sumitra,

As you know I'm for this change.
AFAIK, only Alison can grant you the permission to access that document in=
=20
write mode.
If she hasn't granted that access to you yet, please ask her directly with =
an=20
email to her address.

Thanks for working on this (important, from my POV) change.

=46abio=20




Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF81C20011B
	for <outreachy@lists.linux.dev>; Wed,  7 Aug 2024 13:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723038359; cv=none; b=P83YjZWKVZU15Tkj2XD3BtXE/e5YoYna/4D2V/RdZDG96jOu980ASiu8miPl7ivp3kbdj0JB6Vpao3Sfg32kHjKh1eNjDegYJsfP7SYdokegVRTVidvp0uoA7cwwtiEdw7iXzt4KDuW3d6IXy+VhdHw2Gt6g2XQ6ItfisGqLgDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723038359; c=relaxed/simple;
	bh=LxhoI9D8h91IiIrVyC3rOcVzclZdpcN98zJjVnIiLmQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Qesa88XMM/ZwhyosyNyES8WVaVEyRQBW0UbdNZP+CWUFvs37WBD2g/TIx8qAKemquDpw4fJGM2TWijFW+dIiYG1ArI8U56dQ8VNPP4LA0XYCT2lSl6cHEr+wPNO5R6pC/mWYEPGUsH9EE0yI40luqvQy6Dg0snYiTYze39J30h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=YzGRKtrT; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="YzGRKtrT"
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5b9fe5ea355so32489a12.0
        for <outreachy@lists.linux.dev>; Wed, 07 Aug 2024 06:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1723038355; x=1723643155; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qjk1I5coQs/nVar1+nTAzLmrHbTNOYHZ49zPGhWaB7k=;
        b=YzGRKtrT9K5fIXhrrBjxh5FFxEG9IzH2Hg0ZVsziicdeMhvi75ks4XE/0DzZtBB/m2
         rRISVeuCwruWYvWl9DTQ2fdi3WkF6Y5+kje9xaVRMYQVkvL6jl0Dqh/4LI0kuv5AqqfT
         q+ID/IzfPtT00jXgq40mFOpgKcFu9QLmr29UVJcuGwYNGWM6iizyVnr+S9ssMwzBFs5z
         agcps08iMh96zrDc7rfByHWhy/bDJHDW27orlPIehKXt1Wkps41vXIZSq58NYKNXcR+I
         m+UJEYhhAVfO0ZS0tWTSi19NoHXPv1iBibewbcJAwaOx/XbBdHB3MPZN1ixxrT+iPtzl
         HTPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723038355; x=1723643155;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qjk1I5coQs/nVar1+nTAzLmrHbTNOYHZ49zPGhWaB7k=;
        b=IFXCN6HWMNmyF7aUDZZEz4d/Yj86Oqzz99oBoNNyXPqsOz3emA4ZjluHGEezzOM84M
         VzF1/c6TpJkLvtATKHOt7jTTRUsFg5BUpKs4O8EFssy4rAWFEY2ll1oDu9IYd6s9BCD6
         rQKeLvUz14nRdfQecHh2nIqLostOvCt+S2FNFmVOZeUTTJqv7mIdb8m4SkGd4yEE97GO
         jfi+2+2PNGVnqasO8U83wgaV09m9PNtT/QFf2W6fJ3jYkoHTfLFhu7JfUyCRsseM+otN
         XEV58xSVJmEmls/1o56ReJSjuX1eXDD2qPv4gV6Kev+6fQXC/Tszxzb+zSg2P4CyeGwn
         ZYAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPFIiGPWhCYFaRQFg19kjtID+TJSoLv31mxdiUniNjeohUmh7U0A4svMYb90tyAonRy+V/NyAC0g+vrbehjAH/WJl7x/1KS+8N
X-Gm-Message-State: AOJu0YyWSpx3GP0JbUSZRGEWDm9N/guwnDoxEvCt/5GfxlJOZ4auVqsy
	GLmWH+2iaQ8uYspS+c7/Z0j3A4fz4JP/UtnyqNtdNNEf3aDRnPsNr652g1fqVOz0sFSOwfltNqt
	Wd2Gg+g2sl4H8zkGnpdUEW3kavT6Z9WaoP6I6
X-Google-Smtp-Source: AGHT+IGAwcSTpPPUvxvQtsojcOYxgyANBUtDcjLr//Ggm8SyirsP1mGKn0OgYNXn2QkdUw9HzCo+aw1tSHDVijLU5vU=
X-Received: by 2002:a05:6402:35d4:b0:5aa:19b1:ffc7 with SMTP id
 4fb4d7f45d1cf-5bba2837dccmr204357a12.2.1723038354385; Wed, 07 Aug 2024
 06:45:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <cover.1722570749.git.fahimitahera@gmail.com> <e8da4d5311be78806515626a6bd4a16fe17ded04.1722570749.git.fahimitahera@gmail.com>
 <20240803.iefooCha4gae@digikod.net> <20240806.nookoChoh2Oh@digikod.net>
 <CAG48ez2ZYzB+GyDLAx7y2TobE=MLXWucQx0qjitfhPSDaaqjiA@mail.gmail.com> <20240807.mieloh8bi8Ae@digikod.net>
In-Reply-To: <20240807.mieloh8bi8Ae@digikod.net>
From: Jann Horn <jannh@google.com>
Date: Wed, 7 Aug 2024 15:45:18 +0200
Message-ID: <CAG48ez3_u5ZkVY31h4J6Shap9kEsgDiLxF+s10Aea52EkrDMJg@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] Landlock: Add abstract unix socket connect restriction
To: =?UTF-8?B?TWlja2HDq2wgU2FsYcO8bg==?= <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>, outreachy@lists.linux.dev, gnoack@google.com, 
	paul@paul-moore.com, jmorris@namei.org, serge@hallyn.com, 
	linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org, 
	bjorn3_gh@protonmail.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 7, 2024 at 9:21=E2=80=AFAM Micka=C3=ABl Sala=C3=BCn <mic@digiko=
d.net> wrote:
> On Tue, Aug 06, 2024 at 10:46:43PM +0200, Jann Horn wrote:
> > I think adding something like this change on top of your code would
> > make it more concise (though this is entirely untested):
> >
> > --- /tmp/a      2024-08-06 22:37:33.800158308 +0200
> > +++ /tmp/b      2024-08-06 22:44:49.539314039 +0200
> > @@ -15,25 +15,12 @@
> >           * client_layer must be a signed integer with greater capacity=
 than
> >           * client->num_layers to ensure the following loop stops.
> >           */
> >          BUILD_BUG_ON(sizeof(client_layer) > sizeof(client->num_layers)=
);
> >
> > -        if (!server) {
> > -                /*
> > -                 * Walks client's parent domains and checks that none =
of these
> > -                 * domains are scoped.
> > -                 */
> > -                for (; client_layer >=3D 0; client_layer--) {
> > -                        if (landlock_get_scope_mask(client, client_lay=
er) &
> > -                            scope)
> > -                                return true;
> > -                }
> > -                return false;
> > -        }
>
> This loop is redundant with the following one, but it makes sure there
> is no issue nor inconsistencies with the server or server_walker
> pointers.  That's the only approach I found to make sure we don't go
> through a path that could use an incorrect pointer, and makes the code
> easy to review.

My view is that this is a duplication of logic for one particular
special case - after all, you can also end up walking up to the same
state (client_layer=3D=3D-1, server_layer=3D=3D-1, client_walker=3D=3DNULL,
server_walker=3D=3DNULL) with the loop at the bottom.

But I guess my preference for more concise code is kinda subjective -
if you prefer the more verbose version, I'm fine with that too.

> > -
> > -        server_layer =3D server->num_layers - 1;
> > -        server_walker =3D server->hierarchy;
> > +        server_layer =3D server ? (server->num_layers - 1) : -1;
> > +        server_walker =3D server ? server->hierarchy : NULL;
>
> We would need to change the last loop to avoid a null pointer deref.

Why? The first loop would either exit or walk the client_walker up
until client_layer is -1 and client_walker is NULL; the second loop
wouldn't do anything because the walkers are at the same layer; the
third loop's body wouldn't be executed because client_layer is -1.

The case where the server is not in any Landlock domain is just one
subcase of the more general case "client and server do not have a
common ancestor domain".

> >
> >          /*
> >           * Walks client's parent domains down to the same hierarchy le=
vel as
> >           * the server's domain, and checks that none of these client's=
 parent
> >           * domains are scoped.
> >

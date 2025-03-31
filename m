Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D52A1D7
	for <outreachy@lists.linux.dev>; Mon, 31 Mar 2025 13:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743427013; cv=none; b=H8b22DampU8QnfNECbVKt6MaxBMoAO96l5QnfSXLl3VqWo7Nmx5H3Er+3cMtbthsgehCFypyGJ8OyvVidow21HabgoyKbdBpeBcXbQ/3TnkMX1FiwVvpqnIzUfLXm+jx/iOcFXLj0j7xiYU+joF7PdQ8d1Drarcf69nS+6+Og6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743427013; c=relaxed/simple;
	bh=B/Lb1QNaqKFI1aMq9en/JiMffL1rsDsBqdeJJpjw5Fo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZoyLfCUGF4f4MviSXtQi/nxOZ1wqipZBkQKH5ttMufwfhMiOQpSK8KeXkn3raqKsdzGtfe1gFlXI9TzHSu8z9ltumZrTuv+liwusiPup3m8IllS0bBaElAcP/lc79iVJ+QWMCfUhhm+Eyo8FxfWmUOmwMryoJYvWzI+/oVOaKx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kan+LIAl; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kan+LIAl"
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-524168b16d3so4267220e0c.0
        for <outreachy@lists.linux.dev>; Mon, 31 Mar 2025 06:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743427011; x=1744031811; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tri+sKjN47JhcqfbusjDckaq4YSp5FfF8S9unE2QQQw=;
        b=kan+LIAl4zpILTCDeE2JqPETLwXH35T6h4B8ds2VwAMCcY42nZ8tStpfKQUgo5BDBa
         FoZ6lWg+Fbqvimel19UqNuoI4V1OvsrMwhZhZIIIzXEtLKLPjCFq3KdTvC8iBYcyzfkG
         PiZUhMaPis3V0qWHa5O1M/rNRcr1ClYfGi+DcwqqtxQNe16yy2MQX7pFbmU4owd6yWrJ
         GbU2Kzg5z6aU1lOyrCpofOIMbH2J0H5ufYrlYXD7U+qaPylwgz09mVDd6javpx57Ijgt
         SBdZlEQzXSIfxJuK3UpRNcIIF1tHkB9KZUCtWOYmEicMw9cJHrJ3KTTjOPCLEMxOko6w
         5uWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743427011; x=1744031811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tri+sKjN47JhcqfbusjDckaq4YSp5FfF8S9unE2QQQw=;
        b=SZ4zS08g3BKrF9JeHCXmXFRev85l2gDOl3qrg88qtNEFFomfbDpN2UFmayVs+vIJ7H
         YlAOhxyM0QxBfQHOUF+ZuUnKmtIo902ZIOSQwtJVdr9YQFsnc8ydVmsEsuSem3uGsNJZ
         KsGRgloDosDGKnbNRjpyLC8NBfoS7z1N8KXTH8kXUGnMH9DH4ys1QUEbr5WK/aArdv6f
         n+hB5FKtStZSYp/XDSUriPDyCMxcKij9YvhkJZIiM6faodtRT0fOGv9R2mpb3bS6qGeF
         oAPifjTSxWR/xslhC9V8+Gxcr+VktLA6jDqfaGyXdQfdhN0uyYg70tCPlJkjSu7Lj6fK
         KLvg==
X-Gm-Message-State: AOJu0YyazVuONpmMJp4y9fccjQ2Gtf+dBBfPWzVcfGkDixsaRW/xzSwt
	M2MN7plCbax53WkA3qYC934TfIvvBaO0xT5PAwTSFApKZZyyOf3JQgiSvKLJ+/q7jfwiJNX7Uta
	QTgq3wz6wIvoVrQYZ/UnEREQ1Wgc=
X-Gm-Gg: ASbGncuO7w28tBvLVp3Qd4ZYJnpzvP2bxo/9hIbkgiorjP3pYD1S0rD2yXgoYtXHWhJ
	tEmKpysiiR3kqqXdQTROcIBPwrJJsTyUcb2jl3sCXL+VjDQiV0521KQDQoXuxogvdXmhpHLxlan
	j6OuOJ5IeXTIY3+q+DL78wXyS3ng==
X-Google-Smtp-Source: AGHT+IFM2drhscXH4zfk9oMNWTCKbF/ClfZzkzb49jf2coiA6e421O0TkH0vlAaQ5csWFmfns4c4ifOrP533IEqL11I=
X-Received: by 2002:a05:6122:d8f:b0:520:6773:e5ba with SMTP id
 71dfb90a1353d-5261d349e2amr4800251e0c.2.1743427007930; Mon, 31 Mar 2025
 06:16:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2503301654260.23941@hadrien>
 <CADYq+fZJd03PNRbrAaVyzWjXN9GZw9mZFV_M6F9AkKyrRY5gVQ@mail.gmail.com> <5fa9ca8-d225-4fa8-aa32-1acdffe7530@inria.fr>
In-Reply-To: <5fa9ca8-d225-4fa8-aa32-1acdffe7530@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Mon, 31 Mar 2025 14:16:39 +0100
X-Gm-Features: AQ5f1JoySNu_GKtJ3Nyj-Ez2-aZHk6OPwZfuMpcajyN-v7RtuljSRpTqbMUJPC4
Message-ID: <CADYq+fby2sPRqG9r+Q1NhYhYEgkSy_=8+xbUQ5+y+ELCD70Y-Q@mail.gmail.com>
Subject: Re: Coccinelle
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 31, 2025 at 9:52=E2=80=AFAM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Mon, 31 Mar 2025, Samuel Abraham wrote:
>
> > On Sun, Mar 30, 2025 at 3:56=E2=80=AFPM Julia Lawall <julia.lawall@inri=
a.fr> wrote:
> > >
> > > Hello,
> > >
> > > The actual internship project will involve using Coccinelle.  Some wa=
rm up
> > > examplesin using Coccinelle are available at the following URL:
> > >
> > > https://who.paris.inria.fr/Julia.Lawall/outreachy25/
> >
> > Hello Julia,
> > I have been studying the SmPL examples and some documentation.
> > But I have some questions as regards the flow of execution of the SmPL.
> >
> > Firstly, I found out you are the writer and maintainer of Coccinelle, a=
nd I just
> > want to say a job well done.
>
> Thanks :)
>
> > Looking at the first example of the SmPL,
> >
> > @initialize:ocaml@   =3D> This defines an ocaml function
> > @@
> >
> > let same_function p q =3D
> >   (List.hd p).Coccilib.current_element =3D (List.hd
> > q).Coccilib.current_element. =3D> This checks if both p and q belong to
> > the same function
>
> Actually, this defines any data that you want to be global to the semanti=
c
> patch execution.  It is also possible to define a finalize that is
> executed after all of the files have been handled.

Okay that is like @finalize:python@?

>
> You can also use python.  Then it would be eg initialize:python.

That's great.
>
> >
> > @r@.   =3D> Defines a named rule 'r'
>
> Yes.  You dont' have to name all your rules.  But if you want to refer to
> the metavariables defined in this rule from a later rule, then this rule
> needs a name.

This is understood
>
> > expression e;  =3D> matches an expression
> > position p;       =3D> Does this store the match's position like the
> > line number in the file?
>
> Yes.  You can also get the function name and the starting and ending line=
s
> of the containing function.

Okay, I think that was done in the third SmPL example.
>
> > symbol true,false;
> > @@
> >
> > e =3D@p \(true\|false\)
> > This line above is where I am majorly confused.
> > Please clarify: Are we setting the value of the expression to true or
> > false and storing the position of the match?
>
> This rule doesn't say it is an ocaml or python script, so it's a pattern
> matching rule.  This is matching an assignment where the right hand side
> is either true or false.  The left hand side is any expression e.  You ca=
n

Oh I get now. So we are not assigning \(true\|false\) to e rather, we
are defining what to match
on both the left and right hand side of an assignment.

> also write the true or false pattern as:
>
> (
>   true
> |
>   false
> )
>
> where the ( | ) are in column 0.  Outside column 0, without \, they are
> interpreted as somethign to match in the code.
>
> >
> > @@
> > expression r.e;          =3D> Here, we are referencing the expression i=
n
> > rule 'r' to replace the expression we have matched?
>
> e is going to be an expression, but now it has to look the same as the on=
e
> matched in rule r.  It doesn't have to be at the same position, though.

Oh, Noted, so we specify that the expression e looks the same as the
one in rule r.
We are not modifying the one matched earlier
>
> > position q : script:ocaml(r.p) { same_function p q };  =3D> we are
> > setting position q if it the same as position p from the same_function
>
> r.p is the position that was noted in rule r.  Here we want to note a
> position and see if that position is in the same function as r.p.  The
> idea here is that we may have x =3D true and then we may have x =3D 1.  B=
ut if
> the second x is declared in a different function than the first x, then i=
t
> might be the case that the second one is really intended to be an integer=
.
> So we take x =3D true as evidence that x should be a boolean only when th=
e
> two occurrences of x are in the same function.
>
Okay this is understood too

> This is of course a heuristic.  You can try something different, for
> example getting rid of q entirely, and see what the result is.

Okay I will do that.

>
> > @@
> >
> > e =3D@q
> > (
> > - 1
> > + true
> > |
> > - 0
> > + false
> > )
> >
> > Then this line above replaces the 1 with true or 0 with false in the
> > expression that had been set previously above.
> > But my question is, are we setting the value of e =3D@p \(true\|false\)
>
> No.  Pattterns don't change anything.  The only way to change the state i=
s
> to write OCeml or python code (script:ocaml or script:python).

Okay noted.

>
> > or it just a place holder that will be replaced by any expression
> > we match
> > Then we can now check the matched expression if it is 0 and replace
> > with true and if is 1 we replace with false?
>
> The two matches of e are intrinsically at different places in the code,
> since in one case there is true and in the other case there is 1 (or fals=
e
> or 0).

Okay this is very well understood now

>
> >
> > @s@
> > type T;
> > T e;
> > identifier fld;
> > symbol true,false;
> > @@
> >
> > e.fld =3D \(true\|false\) =3D=3D> Same question applies here too
>
> Same answer.  No assignment is executed here.  We find a random
> expression of some type, and this expression has some random structure
> field named fld.  The whole thing is found somewhere to be assigned to
> true or to false in the source code.
>
> I hope it's clearer now.  You may want to try running it on some small
> example to see what it does.

Yes it is much clearer now.
I will try that
Thanks a lot

Adekunle.

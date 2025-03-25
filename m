Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C88138385
	for <outreachy@lists.linux.dev>; Tue, 25 Mar 2025 06:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742884037; cv=none; b=oqHu7d8i+4LNziBY4jA/U6NZsYnO8Nf3UYYsQeGwdKeuAqVzoeEuaEQ5wGIS/WbqeRgjxe7DhFUUSYi6P+KxMhg3BSMAtNmAZ3wwDgSFktw8mqASOQtWzVk5rNnwDQ1F59wjgmT79cc4KvGgFBbXLZ7p07NOCmroU413DLbZHpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742884037; c=relaxed/simple;
	bh=seWUrqMpIQovuCQTMjJb7cvisIEgVSt2mNnzJUCkhvM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C+dqDDSEsb88pjZf0ZoTDqIlD1fuh8YbpR1niCR7AtGmWVm1jAkRS/RZ+eDhlX3jbY9WpNJLawqP6w4gBUSMjNR3sEEhrOlGU3Vmxze2LeSX1+zDoMGegfeBQx8MU2rRZOGW0d/1ZyAcWRa5rmSbCEYT80ppgFDGHW6azIDAlqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lgFQr27X; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lgFQr27X"
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-60009c5dd51so1401144eaf.1
        for <outreachy@lists.linux.dev>; Mon, 24 Mar 2025 23:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742884035; x=1743488835; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=27PFsJuLeDvTTYLZxa8BNoacw+WjUHCzfr4tDHHjbNs=;
        b=lgFQr27XrXC3LjRyIDFXvEXYEjRkmckRWli+SWM04zkYZbcmwoD1xWoQ3NvmO0JOuq
         SiXDfeY+R8vHslYDVfmvHps1rk2cczkMNJCI/Nk2M6WLvTCRvzOBGz/6Js+EWsVsnuwi
         76KkrjXJCBThL6C5AMupfKgVWs1sE07SQPI7BUWCiIksTXXWTZFF6WNNVBNmmpkXqu7x
         NBw+6sba2RhAIWKdre162hhsjXg+4Zg8Fguqi6V8L84+H8PuaUiHOavefBrhs/uB8tol
         IoSQiCZNkPbQDOLOO3k/FJhpLwcg08Q5moTWWMDjmkiqOEQ2n8U+qwEBxDeSb9UIFZFY
         BSRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742884035; x=1743488835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=27PFsJuLeDvTTYLZxa8BNoacw+WjUHCzfr4tDHHjbNs=;
        b=Hoyy1ObJqk6goobjZD75CnEbWPJdRSlTsED+Nw3f17ahiWo3RfZPNUpoHAwE7cXXmk
         Z4aIqXWvVYup/YGOc+ZKGLoCxMIxPn8fLb5ugigUfedEb4hQNmWyiq/22elO0cGsfkpA
         Kd0Z3ueAZVyF5SW3cEfGFH+//o+noCRWS9jS7Kwn1kP6KKG3EMkueOq8j9APz+fE8prS
         ukql6x8cHYB9wVNcWaoVkbCf2jKYbLSYRTDxidoW7seSQ3eEpEWP7z8TraE9JklJ7TNA
         fvPQyHqBIo00/tRELoNyQDq9+mJNN8M6picyb1eMeAaMKIwwN3l6wdeCgPXUk7/VBAN1
         cuqg==
X-Gm-Message-State: AOJu0YxX3kEqjmnBbZABcn7E6UymlD0IgP6GW2ABwh8iuFUoiudDcaOv
	Ea1YDhJ7TrbxcH+QtU7PKknzJ1DJ6bi5Whjwcd2C00kfCZzI/U5uhemzlseQtoVKSgpLYCSQ4rC
	9n/e+ri/G6xH3ld+jJaXTst5KK9k=
X-Gm-Gg: ASbGncuc8FoMBzfroc/2oGmpFtmQ7jeuhxtwisVYvMvDz2IHfCKguFb9vhvaAZ/BWcR
	sUG+ePpdg3OotOqXxQ3F1fHN635WUAHzGWwA48RNig1Wq1X5k6IpOkzedbSHU5biSXUiOYGvEbK
	egdTZtJqtGrXdI0SFZ+Wra6eH1l9M=
X-Google-Smtp-Source: AGHT+IHOwZTWqzzFfcZrpXIHPSz4Id34T6rbafiQdSUbUA6UnsRqjTJ0i4hGQhJ4bgvNnSKbOV4I7BXnkKzQmJHR4h0=
X-Received: by 2002:a05:6870:ff81:b0:29e:69d9:8834 with SMTP id
 586e51a60fabf-2c77fe5e984mr9383466fac.0.1742884034994; Mon, 24 Mar 2025
 23:27:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <e1364a17-c954-b674-d736-d456e2df813a@inria.fr>
 <CAK=KnqQ4HmEVjWQZiv2xzVhLEwJMZxtWfKb51XyhVyBQOziYEg@mail.gmail.com>
 <7a7648c5-2731-dc20-224-d5bb639b1c58@inria.fr> <95e69530e3b03f56f4218b8c03a2ca520a0ae6bf.camel@gmail.com>
 <8e95cbac-6b5d-f6fa-e0f5-4c4b42321cd2@inria.fr> <CAK=KnqRsZdAq5FAJo4S0gQbs_PFAm0YrXdBwc-jA7-K1QJhGNg@mail.gmail.com>
 <617cbba7-67a6-8ebd-bde8-e5e39a786d2@inria.fr> <CAK=KnqS_PC-zKp0yjq4SBFicv+j+PYnpAkCRjpjeKb5OXjNeHQ@mail.gmail.com>
 <721cf04a-5ef1-1829-54ca-96d07f498422@inria.fr> <CAK=KnqRnHK=fma-s63ppm=vZEYhe7SWhKSB6H0cb8i69pUW7FA@mail.gmail.com>
 <CAK=KnqTbWps0B6B+XgP9gY+Jy8ATJqz0Qb8kPMvyHb0wDkNSKA@mail.gmail.com> <alpine.DEB.2.22.394.2503250722170.3736@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503250722170.3736@hadrien>
From: erick karanja <karanja99erick@gmail.com>
Date: Tue, 25 Mar 2025 09:27:03 +0300
X-Gm-Features: AQ5f1JokQk-ktVQ52B0R1uVjmvOsA6GMtwCk0sI1iNAXk2rUtxoKXNx5SPPe7ts
Message-ID: <CAK=KnqS5R=q+GZkSqTL2SRAyG42wiNEEerY5R_bBiY8a5gz5Ng@mail.gmail.com>
Subject: Re: patches
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you for the clarification.

On Tue, Mar 25, 2025 at 9:24=E2=80=AFAM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
> [Added the list because others may have this question[
>
> On Tue, 25 Mar 2025, erick karanja wrote:
>
> > Hello Julia hope you are well.I was seeking clarification on a
> > checkpatch warning "Avoid CamelCase: <VME_2eSST>" this is defined as a
> > macro in a header file but on further research I have observed that
> > "2eSST" is a conventional protocol name. Should I ignore this
> > warning.Thank you.
>
> Indeed, you should ignore this warning for the reason you have cited.
> Checkpatch is worried about identifiers like ThisIsAVariable, which kerne=
l
> style prefers as this_is_a_variable.  When it relates to the hardware
> documentation, that needs to stay as is.
>
> thanks,
> julia

Received: from mail-ej1-f74.google.com (mail-ej1-f74.google.com [209.85.218.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647A7176237
	for <outreachy@lists.linux.dev>; Fri, 26 Jul 2024 06:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721976665; cv=none; b=IsusMHx0bxV3mgGGYAn1zKxGrEoAP72+z5GKhsnYFCParkZOfLY4Yrmnc6Sr/3k6MH2pPi7TQ2qrhQlp/YNulShq0QwNvbUzqPdx9c0HOgoELr2Fg7iLh198Itcvk/ptq3+vxna716JJdZOw9tRplV4thPA0bOOLXY+xVSSJyhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721976665; c=relaxed/simple;
	bh=bOrdCKvguQC+YaB6h3s3lVZl3WBnLHpu+JUwcZnQ2Yo=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=VBGTDdCwdqiu4WTQJdbJTpNx4OTcIGp9UdMYjcA5vGgMJbnh+M6M1Xki8Ipb9hkYdSulrxGzXFSJRN/CsbfXhCBkCLiayHO6SCNHlfRjH9tIT88sV1OZmFJhwk/9vcFA/azc1hQNPhWD6KExLokV18ejvEOMVL8I37rW9So4CiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wCXxRW97; arc=none smtp.client-ip=209.85.218.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wCXxRW97"
Received: by mail-ej1-f74.google.com with SMTP id a640c23a62f3a-a7aa26f342cso120208466b.1
        for <outreachy@lists.linux.dev>; Thu, 25 Jul 2024 23:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721976661; x=1722581461; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bOLKGqHkSptnv/m/NuKOIAdG2X8Tq9WhgZPqQX5CUc0=;
        b=wCXxRW97aieDDw7kPyaiclH3VBUhinu1lcFbQyiyxNMxUcB+kPCOxYSdVrvEE650v9
         fdt7u0ezNk2GCDv+hgLJn1LyK/d0LXxpGhNiPJJeLcWuS7SSeuAzMoF/qrZAyyPvpYra
         WgGex+SAQJ3T2s4/9JLtQU/WGQqqBIWYc+anv8AAW/XqjeTeqwOe4rvK+ABe2U8U+aBB
         2op15wv4Y0ej5m3NHXHHrkw5m40sN6Np8Z84UXUT6sEzjS8Kzu3Tfp+QvtE6tiwVXmq7
         OJQWCYfHcFNsxyaIxBCI6hRZ79xlId5PccIKlKjz2MnB/EQRDFMkLUA6GTqH25kr9fRL
         qpew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721976661; x=1722581461;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bOLKGqHkSptnv/m/NuKOIAdG2X8Tq9WhgZPqQX5CUc0=;
        b=ML7tpy8LMdJLm/vpQGg55U5n/vI3XlL3o133VB4CcYs4lqbOrpv2V3AfDkNJ1AuGYq
         tG81L44aInI1MWnqPwDPxtF3KOSFYhQBLdv+i9DSbf6+IJwdkqHQcAk4y0uhYajEPpl5
         uY6nARuBJdE0PspYc+fGPo8fARDdzE1Ze1lnoQGZQSEXWlsz2ssoYp/J+2eXSXdkbx0Y
         FzYPx8+MKIE4GBXQmsp2FFm+nHdoXnnxw2tq4eZQykr1YbGx8zruUnokiYTdzTwfoB21
         fev2HF73eta5lRL2tuW+1PP/TXWnxVPwOaXTk/YQngKfmib0liBznDW2D0BQn/ptt37Q
         zwPg==
X-Forwarded-Encrypted: i=1; AJvYcCXEeLTJvJzVcTO/fR+tzcSbcVSbO6wS/8CupRGffTT0qz19cz9IsPrZJdrkt6VIL5K0R4s3Vq+8TAM=@lists.linux.dev
X-Gm-Message-State: AOJu0YypsuGQcwP7De1nkVhOl5UvB+/CJRhUPGjpiIO8ltDH3YUe5xUt
	sjHtV4rVcduZv0FsIYTOPJD/UfGjTOuo7H7+tNUH83Y3n9H0vqczCEaC1xJSMgEqIbClM20NXUW
	NzA==
X-Google-Smtp-Source: AGHT+IFx9VhTiVJ6SOadIa9dxcURzunfi3a2JEINT2ESVsbZ2/OWjU51l+q8FY6uKZeu50wlnGWFGbQrjdc=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a17:906:dff1:b0:a7a:825a:de55 with SMTP id
 a640c23a62f3a-a7ac51735d4mr300366b.5.1721976660485; Thu, 25 Jul 2024 23:51:00
 -0700 (PDT)
Date: Fri, 26 Jul 2024 08:50:58 +0200
In-Reply-To: <20240725.wahChei0Hoo4@digikod.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
References: <cover.1721269836.git.fahimitahera@gmail.com> <d7bad636c2e3609ade32fd02875fa43ec1b1d526.1721269836.git.fahimitahera@gmail.com>
 <20240725.wahChei0Hoo4@digikod.net>
Message-ID: <ZqNHQcqPuMUUjOc9@google.com>
Subject: Re: [PATCH v7 1/4] Landlock: Add abstract unix socket connect restriction
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>
Cc: Tahera Fahimi <fahimitahera@gmail.com>, paul@paul-moore.com, jmorris@namei.org, 
	serge@hallyn.com, linux-security-module@vger.kernel.org, 
	linux-kernel@vger.kernel.org, bjorn3_gh@protonmail.com, jannh@google.com, 
	outreachy@lists.linux.dev, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 25, 2024 at 04:18:29PM +0200, Micka=C3=ABl Sala=C3=BCn wrote:
> On Wed, Jul 17, 2024 at 10:15:19PM -0600, Tahera Fahimi wrote:
> > diff --git a/security/landlock/syscalls.c b/security/landlock/syscalls.=
c
> > index 03b470f5a85a..799a50f11d79 100644
> > --- a/security/landlock/syscalls.c
> > +++ b/security/landlock/syscalls.c
> >  /**
> >   * sys_landlock_create_ruleset - Create a new ruleset
> > @@ -170,7 +171,7 @@ static const struct file_operations ruleset_fops =
=3D {
> >   * Possible returned errors are:
> >   *
> >   * - %EOPNOTSUPP: Landlock is supported by the kernel but disabled at =
boot time;
> > - * - %EINVAL: unknown @flags, or unknown access, or too small @size;
> > + * - %EINVAL: unknown @flags, or unknown access, or uknown scope, or t=
oo small @size;
>=20
> You'll need to rebase on top of my next branch to take into account
> recent G=C3=BCnther's changes.

Actually, I have missed this particular line in my recent documentation cha=
nges,
but I agree, we should follow the advice from man-pages(7) consistently -- =
the
preferred style is to list the same error code multiple times, if there are
multiple possible conditions under which it can be returned.

(Please also fix the typo in "uknown".)

Thanks,
=E2=80=94G=C3=BCnther

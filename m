Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC51E1F3B9C
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 17:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743009025; cv=none; b=R/zkQkQf5rCTvMDzuHyfn8CqZHytjKMmgwz29Kfv90ZOSbEi0IpIHQiPgoxMXtXT6CBLShcLAKklkUhktS41WKwqM5RphNy4cKJBj94eSoS6S6y+zEA19kHYuQZqGiPBKwV0L6y3V5bUj7rDUPKUU8CsT5+3L9kvUQ2ZvAl48t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743009025; c=relaxed/simple;
	bh=Xxx3GcFvl1ILVi/cWaCORR4epl3RQZ1KcwT9/shLx7E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qPSiq14mk4WzGdt8OxE2Z/nMQJm3D2qynRXOi8eYDsHU90DTDDvkdqUgsx0Hy4oOJYZKoFBxbP6ccWs0O4QHh9M71OvaONU+0ZE5XkI/4M01R0XalvsEDYw9CAWrsxBTcInNCI12ftuoAGfowmaPshgf+yzzwjWrWpKh4Rid5qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WWOCtYcV; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WWOCtYcV"
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-523eb86b31aso49305e0c.0
        for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 10:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743009022; x=1743613822; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jNoeofZl66v6JkcakbomP2QqARvmUDDsMVMEQF/jZPM=;
        b=WWOCtYcVz0rW7QrUkhfE6yR9O3cuTZQ72Oso1SnApQOgqIO3BN31oQKx4gNPLU914s
         U1quitIJZcokrYhm6PHZh5oC3zUMjAnU3E9oZL1yHxAkuKgJkQgfLeXeqQfsPHntMBwm
         33wyUFuqaEBQ8hvebwAqmN08zvuRrwIJrxsmrTUAQFTUi2HUg3/aSA+++c9gNnFOoghs
         Us6bP9gvl5JCPbmQqRF3Ei4ESV/c4/FWbUTkcnBb4p9xMKbyA/lBqFMJPtQiWUdB2mdy
         fa4j9KvVh0AhAPNjq6PIqxDPr/+Pxju9hO4Qp+xPuxC6Q6Z89Bddbs7UhIYMw6ya8A/x
         re3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743009022; x=1743613822;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jNoeofZl66v6JkcakbomP2QqARvmUDDsMVMEQF/jZPM=;
        b=VRTckMbdakjrsScBSxfKGCQErjQeXpViUDdgqZ7zl3IGCpl4vwFFLvnr119nzjD3nU
         1QwTrbQ7+tqdxSMEjhodhBE71GfC9gt1VuncnerTT751RDa2Z6DC1x08mjX8PJU8aQUy
         X6M24eECeyZ9r51YkK4xQOmJeuSMtRZCMqgDYCaJl6oyA06ODlh0CvhkqHE+LU1nY7Ar
         gIawZCqfG6EvPVRP0zFcKl6g8ip5v7FGrVEd86N5qYWTjeYeGL5iiQVtLW1k8cD0Plke
         QVSY87icliXDQEc489SyfECIZfDk/Os7bgugDhD2fFZOPvk5eUvh0y6Q4VlvMZqHQv2O
         1jLQ==
X-Gm-Message-State: AOJu0Ywc7iO49/RFIoQxkZeoqKuc5CBQHtPzgbN9NocoCSNLkqBo1uNJ
	pTtXW8f7mhXvnoMgFb5Wvfq/kZERFLdDCOXaLu4/wRSe1xBOWLy9H52icSWfpGJFhgxWmz2K8YP
	xNLZrlVXbZxi2A/DKvuKj5F/xM2i+Tu0z
X-Gm-Gg: ASbGnctZgiK2RHwvDzT1+OmEOOVRhoZod2MMC9vQ8sUdnYw91Ir0fHPpp5attosbWm0
	Pp6Y2AvISFrxFMu78ocpYLfkKMWKhNYz3En23fjHlgKsBchQYv1YSWUq0KhW2pi62D33sdXwtc8
	tNerEvrD/ePS7t3OOMFSK0Tt/HLZtd
X-Google-Smtp-Source: AGHT+IHKcqpBlTObSU0FeiHt0eZFe1dtlKRPxCrmRUJDfgCvLhJFiHUoo8K4I7UKOI1WqvNH8DJwxHqhEbVfUeg3aKA=
X-Received: by 2002:a05:6122:3289:b0:525:aeb7:f22e with SMTP id
 71dfb90a1353d-52600a324afmr764367e0c.7.1743009022465; Wed, 26 Mar 2025
 10:10:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com>
 <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr>
In-Reply-To: <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 26 Mar 2025 18:10:13 +0100
X-Gm-Features: AQ5f1JpZaIeAD4LDKk7c7Xgvv5iM3WNpCmmIiLu27g-12RKD1hZ5ofaAYbDJC18
Message-ID: <CADYq+fYrDqmFS=+U2jhGAqNr19rp1ChFaog6C=o5DCQFS7FxCA@mail.gmail.com>
Subject: Re: Confirmation on next steps for contribution
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 5:57=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Wed, 26 Mar 2025, Samuel Abraham wrote:
>
> > Hello Julia,
> >
> > I hope you are having a great day.
> > I just wanted to confirm the next steps for our contribution.
> > Do we send more clean-up patches and how many accepted ones
> > should we have before we can move forward?
>
> Previously we asked for 20, but there are not that many opportunities at
> the moment, so I would say 5.  Basically, you should get your patches
> acepted on the first try.  And try to look around to find more interestin=
g

Okay thank you for your response.
So do you mean we should try to get our patches accepted with
the very first version we send? Like it should be accepted without any
corrections?

Also how do we know when a patch has been accepted. Is it when the "Reviewe=
d-by"
tag has been added by a reviewer?

> things to do.  How does the code look different from other Linux kernel
> code?
>
> I will post some more pointers to suggested cleanups on the weekend.

Okay thank you for this

Adekunle.

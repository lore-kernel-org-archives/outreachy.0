Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B0522332D
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 17:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743010977; cv=none; b=rEMvor2ruoo0mzaAHms6hkgSpzguc1UUTMw9Z1kPnsa7rUbS+SFMTpeX1mIkUK7Pq8HeiydE3Y+mVD7qvCR0HTcnxbMsV2Egr4/QRBUMyXHWMfRtIZV6yPgAt6QUWVPfnoEMfX3NvlOjMdLMFnuUC4txHOYaSIf1Zr/dKtrt8xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743010977; c=relaxed/simple;
	bh=SEvTfoeHyrQO6mKr1rEgaOS2Iihs9i3z6Zjes7C3Izo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DnRnL6rRxYN+PXfRrUp3o2YE+bVRpbZmZ5RuUNoNnujYICtkzbMb7Np7PX5kYQw0raEuemmuwdQe7normpf69yV8pMNJNrlFSaBSi4y/cmX7+dmr6jypl6cHQH/vjwRdkbBYkLwq++pAStLihUiinbK0U2vzPpy15O+k+sW0FXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FQyKtJY/; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FQyKtJY/"
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-52403e39a23so87588e0c.2
        for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 10:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743010974; x=1743615774; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JL7J6GneLv4d47o+RXRu/NQjpOvyqoS663DaWoxHyc4=;
        b=FQyKtJY/4ttwSlFUdgiqfH3KqPCQrAutAO0DsRSJ9X0Q3PVwfTuwaPWcAJ6KvJg8yl
         tS0EsKe750p8t/B1MFCjOpHzWAEXafDkbrX7yYp9g/vO6bGWy0biX7RYLiHdovxn7p/Z
         bRLngxcMiCHn1TpcHg5U6TCKO96Qn+8k7S+9qq4L1bPeCDpPRkxmgJn9uVdx/ZvYotf6
         3yTRLPeSYb/+VPgTU4e9ukECT3wOQYLuhkNiBzV+1X1e5Ovyy5EKxQx6KwlnAI3OE+NS
         O7l2r9zWYpyWymbTLcmKQQvv3w09TBEkGKm2vdvDNV33KZYJ9q/7i1ZBost7fRodbuzt
         7kvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743010974; x=1743615774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JL7J6GneLv4d47o+RXRu/NQjpOvyqoS663DaWoxHyc4=;
        b=emHU0Lqzgy40l6HmsVlXjFyPh5XiqenFvpyxB4E9gBtGgei3nZrqq9LHzqPYCv1aA1
         Noh7zuqEJiOMBKAc08PYaXPG3Yi9CGByeR/rDSNII7Qjvevh5cHaGl8wTOST++TIzeDX
         oVHIi4cGYARFpFBV+ZEaT8VR7NRi0Z9CgJ7skh2G+kFsrO2Z+YYy4U3rEtnG3kjgVsr/
         +qODp/KKBf6PMXnxJrcNB5IYJmgic6RmBz4aYxvopQuizs6nYrXNYYYUjIQenuybhAGk
         kD/nobujj6moqvVtO8PDUOlp2lad1OE3V8h+F5Uo+u+1diiyTDxr25T06F7vAjTH+HRf
         aoXw==
X-Gm-Message-State: AOJu0Yyoy0FVCDgGKyHujvwrPht7uuimXJ0LjDt6c1rGTg+Jmze1vYOh
	iXvOCxTNsRhU1/hesZTkBiU7pZVkLC6Ck+d0LRvRCsCMAyc0+mQ2w9Wne+4IdrVER/nZLxsMQ+1
	JfyEFg9caFzMjYgpu/ZywnioX1uHV4+PY
X-Gm-Gg: ASbGncvUD54DQjir036n/EzJ9A3WeT5Xulz0iXN1q68EqKOTk+iAFL1YhbIiUIFv+T6
	92Vfaf4S1o91NNBBIIIp+kBaKHHfXNvzUsi8jVTYAQ6W4VrjRMGMhjcpJ55T5iA0zdOPHbgRCUF
	0KDzDeFFy/GAvUlwkOfcX6Jhq52iH7
X-Google-Smtp-Source: AGHT+IFXMkjZqhz06byEOvzggfTxSH+APxx54hSbteFe9l70zw3wipeaU67T67wiyrD6KihKo0c8w1dPVWDKYeheSIY=
X-Received: by 2002:a05:6122:32d1:b0:520:61ee:c7f9 with SMTP id
 71dfb90a1353d-52600a31f2bmr943297e0c.7.1743010974492; Wed, 26 Mar 2025
 10:42:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CADYq+fbMox6e7AJMkoEmYjjt-V4L29oy9WyDcL0W8pw_KL3b=w@mail.gmail.com>
 <ff7f6d0-3efc-d977-d1fd-2349f331a6d0@inria.fr> <CADYq+fYrDqmFS=+U2jhGAqNr19rp1ChFaog6C=o5DCQFS7FxCA@mail.gmail.com>
 <d273923a-3833-9bcb-9771-dca770d0d8a8@inria.fr>
In-Reply-To: <d273923a-3833-9bcb-9771-dca770d0d8a8@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 26 Mar 2025 18:42:45 +0100
X-Gm-Features: AQ5f1JqhkXQfF3_PZYpTt_3YmFHCBKaWQ8FKrorLZPvQw_PCbKobHx_Fm_a5FK4
Message-ID: <CADYq+fa76jcWrs-qJVEmMJ1-GCYx59N1V3Wtj+YARTXnqNQB2w@mail.gmail.com>
Subject: Re: Confirmation on next steps for contribution
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 6:35=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Wed, 26 Mar 2025, Samuel Abraham wrote:
>
> > On Wed, Mar 26, 2025 at 5:57=E2=80=AFPM Julia Lawall <julia.lawall@inri=
a.fr> wrote:
> > >
> > >
> > >
> > > On Wed, 26 Mar 2025, Samuel Abraham wrote:
> > >
> > > > Hello Julia,
> > > >
> > > > I hope you are having a great day.
> > > > I just wanted to confirm the next steps for our contribution.
> > > > Do we send more clean-up patches and how many accepted ones
> > > > should we have before we can move forward?
> > >
> > > Previously we asked for 20, but there are not that many opportunities=
 at
> > > the moment, so I would say 5.  Basically, you should get your patches
> > > acepted on the first try.  And try to look around to find more intere=
sting
> >
> > Okay thank you for your response.
> > So do you mean we should try to get our patches accepted with
> > the very first version we send? Like it should be accepted without any
> > corrections?
>
> Yes.

Okay thank you.

>
> >
> > Also how do we know when a patch has been accepted. Is it when the "Rev=
iewed-by"
> > tag has been added by a reviewer?
>
> When it is in Greg's git tree.

Alright noted.

> > > I will post some more pointers to suggested cleanups on the weekend.

Okay Lastly, please do we continue sending more clean-up patches we find or
we should wait for your pointers on the weekend before we continue.
Thanks for your patience.

Adekunle.

Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD3714D2A0
	for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 12:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742991108; cv=none; b=Cu3qEnMg1sP+IULONRUIuXkFu54InxvrU5dI4rsMiiEa1odZU300T1hBgJRH7lHc8LhkIjWIVGAfzFqcBTFPpnSPLAwyEwfCNXPoygL93AHACmMCYZqXYWovH3m438QAXW9eoeGqyaCQqfp016k8cTmgFwbEdZeCOM7xI3XXKxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742991108; c=relaxed/simple;
	bh=9TuINaX/8jr53YX8Hmfn7gQjP8q2rE4os0kvCZcXtMQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lpKqG49SGhL8WPIA2dhwa9q4gF3PS+/JZxSzwwadcpW3Rl5GjMeCOKdWz5IxeIJqDah8KoMsvxxX6RhQ1o1WE3N9O53emd+vF80wIIHUtdaVaIpDSb2HHPPV9ugeZmw5wE8GcnrNouutGtnetJzSUo9Zn6jlhVgQ0oaKSJMnmeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xq+Y/Dh2; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xq+Y/Dh2"
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-520847ad493so6465180e0c.1
        for <outreachy@lists.linux.dev>; Wed, 26 Mar 2025 05:11:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742991105; x=1743595905; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9TuINaX/8jr53YX8Hmfn7gQjP8q2rE4os0kvCZcXtMQ=;
        b=Xq+Y/Dh2HNra2VZQTfh6w/5ujkbwlkJGaVFBCDt+w1cYOE279rNn8pXkuQJMhHenzA
         5XWtbrAbLDGtWUDkBmdbt9MS/lyMKwXTR0H62o2qcocCM+okw3hkD0/ptTVqsYnEUhlq
         /YVO24OP2/VUmuMlJnRPu9wPN6mOB5f3/LGxAOJUsEZbny+/4BxJn87O2YxC5v7LZEIL
         dOsg4grOe6BrFrpTLSJaKU9LObfXpeLmI+R4N0CKavOv8wrRVMFNswyhd4MVf3w2odUV
         xTyr/8e9czriLFkUBdWsI387l5ADOW9GhL9BUtqoqt0kYYw3Ee4l8n3ctEd/O2dMgUKK
         WOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742991105; x=1743595905;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9TuINaX/8jr53YX8Hmfn7gQjP8q2rE4os0kvCZcXtMQ=;
        b=CnAuvERHGUOvkGm88lTB8XEaaDF5ba2MsOI3Hsx32tHS5l2ZyluEQElOG3wFXwyGDO
         Y8/SKgQDyelcq22lFTgGb60ZrxHyPZCGjFLVGsC/GdoWN7Eer7gZUnKw9TmRvcW8Y+yP
         kt+LIrUdsVidp+mSupKQg5aJd9abekOD+eAhYILFx41sJUBCJUHY4bQDoFm8UaSwoiQF
         Nxqa69HkTf8xiBQYHLf0ha0GvNKPQomiwRwJK7CIZNlsHrR6XV6f5X9Y1ujYrIUpfl9Y
         R2jtLXcNNSZ8B95Tp0GDDmKkP6OfU2YajJIlwSFnaWKTKa0GMA9j8XgZHhUGeuwx2xUY
         RPuQ==
X-Gm-Message-State: AOJu0YyuZ06sjSB2cG2ucgzUiuB9mzHqxm9L7CyWNm4RuEOeap9JY+rD
	c68gTwc0Gp+MSD8gpg/OxTrsUrFKI6zM2Vv3/gCJRAgCjw1QmNBoPCtZBHTBdPFn0TQ4w/Biyrv
	iON+VfGH9j8jA63eU9ZV796i4D52Ad722
X-Gm-Gg: ASbGncvdLE/QAGLwSwnGeahIt7OSnW2Z3mmU4kPVzUaDhknVVkYFphHInbIRgaI5lXR
	Qjgeb+ESRmanot10a7WC56g/7ciQV2C6la91P9QIjoKIjVJ5HmP49EWO8NELG6tbSYtW2O+FyFi
	MxySAfa1wI3Z9F/kcdyu3Qvt/tQhvS
X-Google-Smtp-Source: AGHT+IE5kJaLa/2T8ckyxPy0dRfFDI0oRkLttfePGz4UA+PXIfSZOBrk03RY2vyNmmBZWBDXWdIZC09QJDPv6RxMjH0=
X-Received: by 2002:a05:6122:d95:b0:520:63e6:79d1 with SMTP id
 71dfb90a1353d-525a85412bcmr12756327e0c.10.1742991103395; Wed, 26 Mar 2025
 05:11:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <Z+PP5xLvTltjFKF2@HP-650> <5cc238fb-e5e5-a8c1-7d18-444b1865bdcb@inria.fr>
In-Reply-To: <5cc238fb-e5e5-a8c1-7d18-444b1865bdcb@inria.fr>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Wed, 26 Mar 2025 13:11:35 +0100
X-Gm-Features: AQ5f1JoO6r_kKCTCdyC0cbKwcqBjIZc-v70OhSabrPn_RbUSKMRUvLxh-IcbT7I
Message-ID: <CADYq+fbdMogrV6OH+tykLzxPgCa14uQjpr8EwrW2zL0rhyTi+Q@mail.gmail.com>
Subject: Re: [PATCH v2] staging: rtl8723bs: remove braces around single statements
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2025 at 11:06=E2=80=AFAM Julia Lawall <julia.lawall@inria.f=
r> wrote:
>
>
>
> On Wed, 26 Mar 2025, Abraham Samuel Adekunle wrote:
>
> > The code contains braces around single statements in the if blocks
> > which are unnecessary according to the Linux kernel coding style.
> >
> > Remove the braces to improve readability and maintain consistency.
> >
> > Reported by checkpatch:
> >
> > WARNING: braces {} are not necessary for single statement blocks
>
>
> Are there no other email addresses that shoudl receive this patch?
>
> julia
>

Yes I mistakenly omitted the Outreachy mailing list in the first v2
patch I sent. I will update and add all
recipients in a patch v3. Thank you

Adekunle

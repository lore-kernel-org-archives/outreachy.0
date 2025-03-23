Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA7B77104
	for <outreachy@lists.linux.dev>; Sun, 23 Mar 2025 22:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742767949; cv=none; b=qqXFV2Wg7MSAXK5jHWlIxt4nagOKWC9aamdF91iDjinaYRKfSqAZE9GkOlOaJpPv8dViuQeZ5/3naxYj3PQ3sji8mlZVnhN1Upi5qnOwNwyRMTTFCHxaeUHL0+6Vi8+f2DdNDVqdYvPHagSSkx9ygtvIaSuE6cksQ3NGEsmaaf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742767949; c=relaxed/simple;
	bh=/JHod6pt3wdjEOPsLXe4XVnUhNje8vUkwyXOI64huMM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jmbk6AvSXi/cD3SXjm3+ilZ4eXeIham/4WHqCf/rr6B2i+Xkz583/+wBFlOHIWJ5IhrL/DAoZzyk+tw7TtL4kjSn5dfXcnzSqoUAxRNzR2WpBPT37X9QoA898Hn7Ra7b+gOTJ3apXQ77rPc9cjVAdqTwCuhGicLVjzFwhlWIK/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ifP0qbRn; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ifP0qbRn"
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-51eb18130f9so1865822e0c.3
        for <outreachy@lists.linux.dev>; Sun, 23 Mar 2025 15:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742767946; x=1743372746; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwYmcHhtUyY06D4jdaYYSD4/ihtjK3ew31m+965fP/E=;
        b=ifP0qbRn9IneZFCaI2XwXz+zFVTLmPS9PfG929Em2wndtzCHl/Z07HZKOdIkEEnW7V
         DxEY98MfcXzO1/Aop4Oy/kM9LC0nQW/ECKPtq/nAZu15BFs3rhtRZ0aQVHufyH3DS2FI
         ZKzoW9RgVoNxpolT5ps76FrR/2aKp+4ARUCJwurHHOzLPpPOssuaghA+XaGQrb/tiPkI
         Uw8AX4vMDez73XS9fyEifQg+16wzeXQrumhcF6of09QPzLNUQ40F/tGVcw7bc8GbXHm5
         1vAwSSAfgXRPxuLdXdpHuODIgOz9F6DoDVExYtmGSGL3r86nal/YPa6e4nsDdFw4Jkmp
         92KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742767946; x=1743372746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwYmcHhtUyY06D4jdaYYSD4/ihtjK3ew31m+965fP/E=;
        b=OZwWRoXucUi/8g9D4pmOggTzMxgnYtonxBv0H+9j5EiByXTVKbwI9F47BdNfeyMShI
         N92dZjgtANzutrqX7HqiWdxV84tWs/wUqbW9c5r+nDaeBF4k5W9Zbnazwm+fzE+KQ+2N
         7bs4f5KvKL+xYRp+mvrllpFLSAxmjpwNpqrkFSGC8Qraf8M9TMqksMyUxiGdQlJ0QwWZ
         6WQaVyTnKX6HZW+0pRXYci7nVGRmFssFNKD/fPz86Ieg/OWoDmXpGUjdeLvjEiP6mb1C
         0NS/dP4gYIG7zO/UoLv+xfDFEvuNHG3TfzI/f17AD3VG23YtelDj/u2ai0O98szCzqbj
         9p5A==
X-Gm-Message-State: AOJu0YyFPUonI64gu1ux041kknxtledyXNPnPWQLWMLQUtcL6WjJDaW/
	1lLr08y84pGR99yVmduw6OHqGJ8Y4VeS0eG7/V1JcmNf/0H3N84noY4hi3JF5WRPPPtSc5jFs0H
	5VSVcuK+xsmc/xuPKPv10R0STfto=
X-Gm-Gg: ASbGnctq6Ydpnlu/jK4SoXkPCPhXoUqVZr37R0w8ipgwtPQvvaGuP33wPhZ6LWm4ddm
	WpaL4bylVRBORT1GO/nYeOkxadm4SpWEgBQkCK7a+AhGjI5QgMIITGzBvS0UbZtEXWlajHv/wMw
	j581VKI0j8SmMoKyWaPbvNJIZ+2hgZ
X-Google-Smtp-Source: AGHT+IHk8emxBr6P9+UusOJ5hyUmHTnR23cTNIceeN4igoUB/JcCG5iiAyhvws0DDmUa2f5XhT5H2638hOEJanjPauI=
X-Received: by 2002:a05:6122:322b:b0:520:9b05:4cb6 with SMTP id
 71dfb90a1353d-525a80d1963mr8048437e0c.0.1742767946218; Sun, 23 Mar 2025
 15:12:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <alpine.DEB.2.22.394.2503231814050.3562@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503231814050.3562@hadrien>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Sun, 23 Mar 2025 23:12:18 +0100
X-Gm-Features: AQ5f1Jr_YmOuFoSifSnzHapTdmJ2La3MVpgoiyC6hPZjD8XfSKO05SVOY_kDljI
Message-ID: <CADYq+fbpR-T9TDGi6NWZcMW58sag1UbHYnEm9nx1ix0__2nmNg@mail.gmail.com>
Subject: Re: [Outreachy] cleanup opportunities
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 23, 2025 at 6:19=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
> Hello,
>
> If you are wondering what would be interesting to work on, you can
> consider:
>
> drivers/staging/gpib
> drivers/staging/rtl8723bs
> drivers/staging/vme_user
>
> For all of these, you can find a number of cleanup opportunities with
> checkpatch.  Remember though that checkpatch is just offering suggestions=
.
> You need to decide whether what it highlights is a real problem.  For thi=
s
> it may be helpful to look at other similar kernel code.  Sometimes it may
> be clear that what checkpatch is complaining about is indeed likely a
> problem, but it's not clear what to do about it.  At this point, the goal
> is to learn how to submit patches, write a good commit message, etc.  So
> don't hesitate to make change that seem quite trivial to get started.
>
> Let me know if you have any questions.
>
> julia
>
Thank you very much for the guidance. It's very well appreciated.
I'll indeed send my questions if I have any

Adekunle

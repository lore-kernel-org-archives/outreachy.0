Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAC343F8B6
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 11:40:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.169
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792323640; cv=pass; b=sZMgRJaiEt8lNLSWPbL8P+1p5maHUW5Kd58sFvxPwCtit234oORK9C2EfUOCCxuVkSkzAynPDk8+B2jyyw28VajClpFm4qZoNv2tHrhgv85PxUC/0C2ZZCYGTz1d8Roy+Ow4sMNCI11fQSoY298TzqxQvW9FhYiNfpf1EGBkRtk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792323640; c=relaxed/simple;
	bh=J+qzQBx4Mr6fCAVYOrqBy+Zy8Q4P2fu3jRXS9sHToJo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iDuhLMTMs5wPCoKVACQ8Gj3TVJzMDieIWrXk9+wKTu6fKUz/8XPNvY6i/XUlzxLCJqAocLQIKm9keRCEVfWXCUwlDbKFP8opg+HWd5agmYFHcnapzx2hyLT4IX1g2uByf+/2A0vj2uWe2JtnhVFifwWBrgolVCpHxHsw7UvyeNs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=sPcEC7iT; arc=pass smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="sPcEC7iT"
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-4a4cb36ae00so796232b6e.0
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 04:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1792323638; cv=none;
        d=google.com; s=arc-20260327;
        b=CgDHZAlKwwDrCg3pK9jjw/TYDQiq6ItGeSBKhoXgMHoakFzF4ffN1bpMo6eKWEMtRT
         vE+hHhSe/jFoO3tWKaVp5XKt4QY0AzJizxH/1+Q4RQ6KEYySS0ykd6GONXKcjWCQUTab
         PyZOyoq71UHzM7wRIF7taiBoHJL7p0dWtgDm8ghnv/OveaF1cCnWrl51ivTV7lbbApiI
         fAHdpkv22LQiewvFLwVx47SIGxPS03sIPx9nHVBCxoBCzVGc/Jo4dsyqqve7bfZkv91q
         q/Tk94fY/MiQuLOLmEoPaHNV/G9nrXeYPu4gDgAaIwDuAaqtX406F9E0QGizczIHLxff
         tKGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=J+qzQBx4Mr6fCAVYOrqBy+Zy8Q4P2fu3jRXS9sHToJo=;
        fh=9/exsoqcmAi1OPOPImyz7OG1cdIFGkX1Kdyg7+AOZ5Q=;
        b=o+vkSNWemPNIFFwv7/UW52KrIE3QGgFwlPiolkyTucANx86nd9muZfvws3DAJyxv8X
         YhEosKbHqeD9czHsqGNkmO8OCbtJmzZS7rJ+GJRyOH6yp0r2s1JbhcD5+T7RRNAn2dsp
         tD6hfl/4jTkujgnUtqog9TYYu7JHogTy85AXX7+g3z7QmyY1qWuD8ZmCcqkDzr06R2MM
         orRHFPl7FEx/H5cC33lBEFFV7be7MFgE2Mzqztrvo7LqUUMJ6O9j1xhQb1RB5iHLMtsD
         q4qW0+SzqzXep9YORbU5NAdyabkwqMO1hgNrkMRRKwtiCRaFNvBRjFXQx5tL65gAyM9i
         sXIg==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792323638; x=1792928438; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=J+qzQBx4Mr6fCAVYOrqBy+Zy8Q4P2fu3jRXS9sHToJo=;
        b=sPcEC7iT0i15CAO1DpCOc9ARGtEsGtO3rqwpnGnDfk7vXI1d2bpCoA4Hgr3qr2xZkR
         09Uha+4BX+Hs13ZoIlB7Vw52/SGzxIyTsNgmVYzqpPiBvBeBbcS0FpUO1WBKuK0QQjLm
         DFaIS39Uqrq8taG89Ah1wj08K0CjC7mvBvXuRrqiNM3i/3t7OecPQ1bsjKa7IkwfRAXx
         AGBnPnCnFIXK25Xzgw7t+nLPjfCAgiFqINKxn/zzjEYoY7/XHLBjPjKbshU+NKbOOSUJ
         K7J4egqDoloWArklCy+iuwFHN2YXybQQ6YGR+A0T4qemBJ6gHkqhqOAB41oRmCncbn6f
         8TpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792323638; x=1792928438;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J+qzQBx4Mr6fCAVYOrqBy+Zy8Q4P2fu3jRXS9sHToJo=;
        b=s8XJw8vDQ/uV+VZ1VogbfzyVH7qemlCsj69ehhCCVJzEbbGN3e/qoqCjZaXorIJS8T
         oR5uQJlPk3W9TkZQ9M1qgs9xlDTH2d9dsQnnRGN+Mb1aNVj8GDCZEXXZ4X3XHLv21LQD
         l7wqbxdVAWdAdZbsbRfhcfkVZmDeD0lY8+8UIKKqX5LuC6vVdigRUKpetsyigw6k0so6
         U57mx3sodQbFhQeAjCJHW2eeISP8kSR2LK/RtQJYLPTjrzwGm6YSMXYkQERHu2UdPplf
         H7OJd7n2SDiRsL07kyOdcVWrdQIAP+mvtoZeV7/p7yJddMHXQwVddqTwpEyu6uFs8m+l
         Dw1Q==
X-Gm-Message-State: AFq9FYKSkj7dcKSM4tQanC6/p175yJaHRqqpXODhOFcjTIAfC1DxBYtC
	UMuPprHPqcDICYBhlIv1QexasAjO4lhx2HKD0jjU0hARyxYoT5Q/p1YA60CzvodvdsHB1xrP1Oy
	ivJN9KhqscNjypp+xUq/oxC0JWSa3864=
X-Gm-Gg: AYBFou2LBr9aSQPj+Dw6dF5etAzCDjwuyVyxh+dSs6OgfcZ2tgXkC8V2OVTdqSZIve7
	A1n3H6dHVnSuyoKM7xi3ckQkFAKsPtC+qw6OeEEloXuNL82nBf9a78pn8PtXxWXLV9N2zAdZOuh
	7YS2cY8rX5+VOlLR6/vpQlxNpqsTN/ja9OLkHhmG8vdvs8NNdG+9O7ARFIV8dyvOOujBNBl/yce
	yRqRcloN5BarhAy9YBjvbmP9d7LqrjH8eag+pw5HwAoWMO9CUeruqGIBrHdx+ulDGdZraFB3W5L
	FiYl2eSX++CycbcpV7AyG+P3btkMxBelrS5T0JXeLeTswpCSlEyiMPLM6zXkVsC/K/p8wv3+D5K
	gbOBYk0f+bPeB
X-Received: by 2002:a05:6808:3a0a:b0:4f4:857c:98ae with SMTP id
 5614622812f47-53cd1cb5c28mr3730760b6e.11.1792323638136; Sun, 18 Oct 2026
 04:40:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAFsBPPk1=n13pk0BX-y2F6VP_WT50PyrxonAahV-=spiscnf2Q@mail.gmail.com>
 <6d9cfaf7-f37c-4ee1-6412-f05667457aa@inria.fr>
In-Reply-To: <6d9cfaf7-f37c-4ee1-6412-f05667457aa@inria.fr>
From: Sowmya Torra <sowmyatorra@gmail.com>
Date: Sun, 18 Oct 2026 17:10:26 +0530
X-Gm-Features: AclHuK8lfudDIpqlcbhqnHTm51VY2JVslQCZ_iQ5gIyNjRBVxv_GVBsHn4aPXlE
Message-ID: <CAFsBPPm4cHwB9gG7cREBHHJ65M2Udk8s-gi6SzPhcMeoW-ULHQ@mail.gmail.com>
Subject: Re: Clarification on a possible rtl8723bs cleanup patch
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julia,

Thank you for the clarification. I'll continue exploring other staging
drivers to find a suitable cleanup.

On Sun, Oct 18, 2026 at 4:49=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Sun, 18 Oct 2026, Sowmya Torra wrote:
>
> > Hi everyone,
> >
> > I'm an Outreachy applicant currently working through the Linux kernel
> > first-patch tutorial. I'm using Debian installed directly on my system
> > rather than a VM.
> >
> > I've been going through the drivers/staging/ directory and looking at
> > recent cleanup patches to understand the kind of changes I could start
> > with.
> >
> > While exploring the rtl8723bs driver, I came across the function
> > rtw_validate_bssid() in core/rtw_ioctl_set.c. I noticed that it's also
> > declared in include/rtw_ioctl_set.h.
> >
> > I checked its references using git grep on the latest staging-testing
> > branch and found that it's only called within rtw_ioctl_set.c. I'm
> > considering making the function static and removing the header
> > declaration.
> >
> > Does this seem like a reasonable first cleanup patch, or is there
> > anything else I should check before proceeding?
> > I would appreciate any feedback or suggestions to help me improve.
>
> The concept is fine, but apparently the driver is being removed from
> drivers/staging, so it is not possible to make patches on it.
>
> Maybe you can find such an issue in another driver.
>
> julia

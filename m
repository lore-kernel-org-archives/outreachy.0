Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6F5E8633F
	for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 09:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744708327; cv=none; b=SapdSMkYh9FfclbaxdUgI5IFDszUfn/oM8dSl2vkIxbcHJE1iE6QvWRMGu5J0u178741gxVd3rHNuE4F/PzyJTwNrTZV8kh+XS0dMI6NIPNiS+hpJFqFehz+imHBZaCpnSiZuDmBD5i0xJtAQGpW6NYCYNPUO63pWzvwpCBNQC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744708327; c=relaxed/simple;
	bh=qJ9ygpq3LY77igDebfoXjZWQAxz7WaZUZIj6HvjI+70=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=n9Hbe/0KM+KwKq4q4lKlkgDpDwt0fEPlQDTelfgmB2lEAL8EBN+ABfiStp8CYOYhfnyWYD4oI6psZwDcRuJWKzyu9bbX9fa+Jix/Fsd0fNBwADQ0e9me8X/P8LjNkVvuf7p2Lreqif0HKdvn1K6U/rU+lpfU/UdwWqpLPUWy10s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g7BEYURn; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g7BEYURn"
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5f3f04b5dbcso4418914a12.1
        for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 02:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744708323; x=1745313123; darn=lists.linux.dev;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+YMC8rKw86i3htCklScr+2CJzW/5NdbKiK83PbmpR+Q=;
        b=g7BEYURnWucUgporVdLGhEIvDovhJ8r1GjSABvLi6dF4IU0rJ6IV8nME08MR7BbLRH
         gGPfzLx1rfsD+hIUUyi5S49Hwy0+HYiQjM6VTWizikBDdsDYO49KgQYi0jyCnzbBqOyv
         En5bkKcUsaLWf/oV/RORt3TpODjiVYHzWuLxcPA5COO2eS5rguKJeQNnboIQc3JciA+T
         /RkuJeFLYPC3sY4X6fbhy4jcXFKEpMRgBa91FSn2VNrifGQSN7chWQC+CN+OUc1sPfPQ
         k6O461WfvqQaa9+fE98P7BsX944f8S7zXicQIltZbqwpxOL8ohWKgXaHP31qxgsr1x4l
         600Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744708323; x=1745313123;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YMC8rKw86i3htCklScr+2CJzW/5NdbKiK83PbmpR+Q=;
        b=xPZL+VVbOHBGJ/CHapnnZIpfDplyYnvvD9L/1Nu9y8OLoG3E14Cg/foYQr5MtfjOoq
         D1LVeXdKyZ43G+m3K6B+LZjaCRXi2qBQ0K6/mWY1/j+v1Ppe/3oJIO7AdY7M9VS3bE5U
         ZnlTSY9Mz82VswuF39mUj5vNhPHMSFCjeHyMG8C2IiydN+DPc6dlDMe+SAUBC195/fh6
         cJnMcxCLVavHTgSqpVJRSEjkWlHtXJTswapqrJxNjDzvG8lzR780YWjJ6JFdOq/aXRlh
         hbkGDdqrsjxQkjCcoZqASdW6E6ndAY7F8qBURGkNr3gA/SB7W9SIgXXckjKCLVxdcBhT
         9q8w==
X-Gm-Message-State: AOJu0Yx3dU1cp1Di3YDF5wfvX+P3//mgyQ+j9LAUF55hL3cNZ2HNFhu7
	GDwA3Kq5gE1C4O3Pu+3vkli6ZLgDHMw4ks2waIQtblFgs1ARoxPf8z96P8naYsh/g+FWs4c9rkS
	oT5U6v+wt/uWdwJblagAn2AH8u3cUceiIgpBrhg==
X-Gm-Gg: ASbGncuZ6SRkKecM3skC5YjcbfeXQ9IEmg0lsbkl7q4uw1z4YT4x7Zn7Ka06j4jVeAJ
	Ce8Nhwa2WH8kJUOMfA4wlLRT6BujRvFY/9AdmnqDbaFBWrcWbwqrdo2QP9Im/1zmbPUDee4FmMK
	EFxOH7zN83AGFXQ5ihAV+BCNs=
X-Google-Smtp-Source: AGHT+IF5hrjDgVHdPBc89zGT0UkuQSeai4DcSX+qHcI0/gBFwnNV//WGCvpCMRydgI85zJyd/lEYjQ1Yqq6MMW2xO+w=
X-Received: by 2002:a05:6402:3484:b0:5de:c9d0:6742 with SMTP id
 4fb4d7f45d1cf-5f36f64bbd4mr11612969a12.9.1744708323313; Tue, 15 Apr 2025
 02:12:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com>
In-Reply-To: <67ebe607.050a0220.396ffc.2dd5@mx.google.com>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Tue, 15 Apr 2025 10:11:53 +0100
X-Gm-Features: ATxdqUEuk0tjvekCdhtt9rFNb_m1YWrd_-CH9uu3A18MkB9dP0kY7SngFVlqBxs
Message-ID: <CAMyr_b+C3qH2_ob7H2TQ=NTukc8_dpWf4ns1OYDNG95Zo+1P8A@mail.gmail.com>
Subject: Re: Setup for sending mail via Mutt
To: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 1, 2025 at 2:11=E2=80=AFPM Richard Akintola
<princerichard17a@gmail.com> wrote:
>
> The following assumes that you have installed Esmtp or Exim4 (default on =
Debian)
> and you have generated password using App Password (for Gmail)
>
> Configure Esmtp
> 1. Added the following to ~/.esmtp file
> identity "my.email@gmail.com"
> hostname smtp.gmail.com:587
> username "my.email@gmail.com"
> password "passwordGeneratedByAppPassword"
> starttls required
>
> 2. Make sendmail point to esmtp using the command
> sudo update-alternatives --install /usr/sbin/sendmail sendmail /usr/bin/e=
smtp 50
>
> 3. Test if esmtp can send mails
> echo "Testing email via esmtp" | /usr/sbin/sendmail -v recipient@gmail.co=
m
>
> 4. Add the following to ~/.muttrc file
> set sendmail=3D"/usr/bin/esmtp"
> set envelope_from=3Dyes
> set from=3D"My Name <my.email@gmail.com>"
> set use_from=3Dyes
> set edit_headers=3Dyes
>
> 5. Setup Done
>
>
> Configure Exim4 (default mail transfer agent - MTA on Debian)
> 1. Make sendmail point to exim4 using the command
> sudo update-alternatives --install /usr/sbin/sendmail sendmail /usr/sbin/=
exim4 100
>
> 2. Run the command below to add gmail and password to exim4 in the format=
 below
> sudo vi /etc/exim4/passwd.client
>
> smtp.gmail.com:my.email@gmail.com:passwordGeneratedByAppPassword
>
> 3. Add the following configuration to update-exim4.conf.conf via sudo
>  e.g sudo vi /etc/exim4/update-exim4.conf.conf
>
> dc_eximconfig_configtype=3D'smarthost'
> dc_other_hostnames=3D''
> dc_local_interfaces=3D'127.0.0.1; ::1'
> dc_readhost=3D''
> dc_relay_domains=3D''
> dc_minimaldns=3D'false'
> dc_relay_nets=3D''
> dc_smarthost=3D'smtp.gmail.com::587'
> CFILEMODE=3D'644'
> dc_use_split_config=3D'false'
> dc_hide_mailname=3D'true'
> dc_mailname_in_oh=3D'true'
> dc_localdelivery=3D'mail_spool'
>
> 3. Test if Exim4 can send mails
> echo "Testing email via Exim4" | /usr/sbin/sendmail -v recipient@gmail.co=
m
>
> 4. Add the following to ~/.muttrc
> set sendmail=3D"/usr/sbin/exim4"
> set use_from=3Dyes
> set realname=3D"Your Name"
> set from=3D"my.email@gmail.com"
> set envelope_from=3Dyes
>
> 5. Setup Done.

Building Linux Kernel on Debian

The command "make bindeb-pkg" is a Debian-specific command and is used
to build Debian (.deb) kernel packages from the Linux kernel source,
these packages are created in the parent directory of the directory
where the make command was used.

Installation
After running "make bindeb-pkg or make -jN bindeb-pkg", you can install the
kernel with:
cd ..
sudo apt install ./*.deb

And if needed, remove it safely using:
sudo apt remove linux-image-<version> linux-headers-<version>

Richard Akintola

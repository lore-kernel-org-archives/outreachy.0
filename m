Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C10E204F6A
	for <outreachy@lists.linux.dev>; Tue,  1 Apr 2025 16:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743524172; cv=none; b=ZGs9hy4rQXjL8Ek6AIJ5J3tMDG1Gl15u80YLKygVE6T+ChsgHHIMmxM7EfNWGzWTyPcd6lNU6PxPdzpzibDI4hfzyibWbLvErKRbJWQB7AEqy3J/jSBpY89W1bLwk8UVJz9D+jr/LSrTwgclv4iivYZf9YZkBIHNDgvtpTBmNiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743524172; c=relaxed/simple;
	bh=TNgC/50WUZ0Uiz288S8CCdT4kzx0OGBDzBKKnPk8PMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WzsznGmqcDqbMmUrpvdkD+/iMU09CIqqDV0hgC9/oqs/29SqbXRAI2U+VyNFHmYKFRJ6vCcxLT6sO6aG/l1kq9s0Nvmi1FB/8j9uRurR3OzdmEL/2LR/4bD11nzclDEVcsaUaoRDwsssTRhkSJBgIRNPzlVLnEh6PzJxvkJlAeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P6Q/9oiz; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P6Q/9oiz"
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-523dc190f95so2862982e0c.1
        for <outreachy@lists.linux.dev>; Tue, 01 Apr 2025 09:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743524170; x=1744128970; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=twDlPM1HFtmrc8o2/295bfmkHWRXG7IYs+Z41T+KrX4=;
        b=P6Q/9oizV0O27mLQyTseeVVXAqHXUvf/myr+Gu/qE+SsCguaMhz34ZwP96m8+VmIAN
         ME5WU2EPqvlXgEs65+BoExZ9+C8LDeRYQvgLu3XwYKNCd9GVq6stLI1qrPqJwzRpVcjM
         myDi8E42y3Sr3zhU15pxJShi9nzk9yXYRPrZr2JZXAZ4YVh0DRUH1SCjE+4W4M2S3ZcX
         MImfZsLCnRttJGA69ZYY12E73dTFG65ygmtiCFxS3z5JX9LA4KWJxgZjJLgC51EWvBah
         TdxkhvHP4dJIWCbFNPM/TnyJw318AbRDedYICMU+vk6jvW2Yl4/FMEvyy5/mLrns7aHB
         mqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743524170; x=1744128970;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=twDlPM1HFtmrc8o2/295bfmkHWRXG7IYs+Z41T+KrX4=;
        b=Edlvm3j1ptROBtCGMlIRss1gW1spos+NkwSMGY6+1psAoSGvCQuQcxn3bHdh2BbIrN
         283dVD64li7jj68vnkiZbowvdxzu0kE4XNqGaspHoV4DpfrpHPYNeYshDgCJSZHUAyG8
         bOvN4l5TVrMoSOQ2paJ6m9D1NqmHMlq/eMUl3i2tQQKy0WBo69RDHD8YDowjT2P5aTY+
         R/XhiatCcbdWthq2Og0ozbD9pmauS0Y8f3SzAF7zDnrVlf1Pl5hJUjLdor/IEFLH3vJ/
         KYUpnVv+awZf5Gn8Hq0bOAyiOwBkzsRz8Dv+P0AVQ5xO51Y1zBysukP/7gYsmw7cqZMl
         WYrQ==
X-Gm-Message-State: AOJu0YxUt7oyFuVEQdQlXI7acU4f6mBotbf3R/A0m0BdeUv7jQ4GSyIc
	XbkFRYHCZRtnadUW6UPsatl+uEtc++ua7Ydm3wSb4FfeVRq3kj6wrHfJdL5ZnPXdAFm4HqhpN+N
	2/VijSltiB5I5/FIBYYfHVuzlll8=
X-Gm-Gg: ASbGncux+NYPBBbbffJMKYCYXlbbjM46PVAtDwem2Cfcm8T8HsAczHdcn4zXPJklOJC
	2uksC7xTsXJhObQ/6JKr1LkgIoG3/z6NJYPDl8Kj/vx/Paxlgjlf2VjbJdmnj5/VIe+j6wwHoGv
	GGY8LiPLhLsGh2VM0vRtr6ei1+
X-Google-Smtp-Source: AGHT+IHqlE5RppvZjRuvNMrjr3h7IXiXvkoXyrgwTKmROBHqk+PGAoF0fgu9fwRu50DRNWlEWUqG/H5eqbpbqYF0BrA=
X-Received: by 2002:a05:6122:4592:b0:51b:a11f:cbdb with SMTP id
 71dfb90a1353d-5261d38c536mr9780046e0c.4.1743524169957; Tue, 01 Apr 2025
 09:16:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com> <CADYq+fYe2o6goZthVjmNqtNRnFT+PATGKwzuZJiDzhEYgfBYXQ@mail.gmail.com>
 <CAMyr_b+jCO2k+VbAB=Ahv9=Xi8adSUF3SM7UrO8FLa5JSfro6A@mail.gmail.com>
In-Reply-To: <CAMyr_b+jCO2k+VbAB=Ahv9=Xi8adSUF3SM7UrO8FLa5JSfro6A@mail.gmail.com>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Tue, 1 Apr 2025 17:16:00 +0100
X-Gm-Features: AQ5f1JpfNppdRvom0igKJ_0nLiM--cEGpf8wpUK5MGD9d5qW1Z6LHe8A1TlXYD4
Message-ID: <CADYq+fa94LXFe=sZbEYYKMN4wX7bWFkTtBOSD3_OpjjkhkRnFA@mail.gmail.com>
Subject: Re: Setup for sending mail via Mutt
To: Richard Akintola <princerichard17a@gmail.com>
Cc: outreachy@lists.linux.dev, Julia Lawall <julia.lawall@inria.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 1, 2025 at 4:24=E2=80=AFPM Richard Akintola
<princerichard17a@gmail.com> wrote:
>
> Hi Samuel,
>
> Thank you for the observation, I believe the Gmail Setup section should b=
e updated in the coming days with something like this:
>
> Gmail set up

Okay

> Starting January 2025, the option to choose =E2=80=9CEnable IMAP=E2=80=9D=
 or =E2=80=9CDisable IMAP=E2=80=9D won't be available. IMAP access is alway=
s turned on in Gmail (by default).

I do not think this line is necessary since the user does not need to
do anything. It is enabled by default

>
> Next, make sure two-step verification (https://myaccount.google.com/signi=
noptions/two-step-verification) is enabled on your gmail account, then gene=
rate and use App Password (https://support.google.com/accounts/answer/18583=
3?hl=3Den).

This is Okay without the 'Next' after the first paragraph is removed.
Then we could add the text below
"To configure Mutt to send patches through Gmail, scroll down to the
MUTT (TUI) section of the page
<Email clients info for Linux >
https://www.kernel.org/doc/html/latest/process/email-clients.html
and follow the configuration steps shown.

Then, in the "Note" section of the  <configure esmtp> section, we
should also indicate in another paragraph
that if they have followed the link in the <Set up Gmail> section
above to configure mutt to send patches
via Gmail, they should skip that section to avoid conflicting configuration=
s.
>
> The mail I sent was only for configuring Esmtp pending the time the chang=
es are effected.

Yes, then you can add your previous esmpt commands to point send mail
and test esmtp after the esmtp
configuration since your configuration and the one in the
documentation are the same.

Adekunle.

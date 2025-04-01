Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C5D2040AB
	for <outreachy@lists.linux.dev>; Tue,  1 Apr 2025 14:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743518331; cv=none; b=Ene5Be6yBgNMHqAXHPu/VqJwthA4G5AVC4lSN9HQQes6y12XsYadYUuoQ4fMa8v5Qc/wPm941VtqLR1NHRDtO7onvjhegHUiA5tTN71cODRcOjtpqGuxKlPfIXSvHckulJ/8RtV5GwTQJUn5rLCjfHwFNf9ay+QL8qFhk3gc9Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743518331; c=relaxed/simple;
	bh=rwT6exvjP/vnIe7Il9st/yxGlCg32GEHnN4n7l6X4rU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RgfIwblG5o8yU4zWMNWP2V4e8UJIXvxC4rI1SWOQWxuWDEQ/JqdW3TWiaLlm9jqlU2iamA/D4cnjRJGFA8uG/za7UnnSKPb11ng9huCUrVOOj5UWr6z8XA9BrukTxhka33cRFBeQCHHZCttYaIDxhLhE9cwDYlkmHXqQCJDtpUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hD82947u; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hD82947u"
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-523ed8ac2a3so2626126e0c.3
        for <outreachy@lists.linux.dev>; Tue, 01 Apr 2025 07:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743518329; x=1744123129; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hEC8xxs5WHYs5guCylyuzvsihY7XlFhY/sfChBp7UG8=;
        b=hD82947uG3wv4bX/rwWJtbVXOg+UwzDJ7J/kLGToW3r57tjad9mT53cC7uWUqMUXhe
         FyPPg9vJ9y7XJID4UUxXe+3FoVe0Hr89hqVvlx/WiDDRvdJoe+jwa95bWoPxoT3wND0l
         0aOFH/7Hvm/GzKFR7wBqw1+3DuVR6diJNzYdZJcNfm3t3zU5GHiGjSKqrYeoEED8PHS2
         7d+ZhSABAfy2Wb+59bYmnjAlph+VnUa7p89LV0FN3pRIvSSZiMcKECjgNbRcdXTZUQ2K
         QhmoFC3O531eosGc1B3h+qTWzPtDer0Ge9Wa8gJZq2XJdteRax1NXWHrEof4zlsLMC30
         8L5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743518329; x=1744123129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hEC8xxs5WHYs5guCylyuzvsihY7XlFhY/sfChBp7UG8=;
        b=TdtQBPJ9IYI+uy4xiCEUsioGc7qJFKjh6uYr1g7rBodGZPQtenJQRDKnxqFKDmrZZ0
         hQ6KLYcxcrjdna0RKGe00vU8f4EDk2nPkFJVzrefT7mVgJlXRmUQAYCqNhdDaZ0H8TJI
         8XwdAI1035nHnvfY98XL/v2qTUphFmmdwpObrzVVV2x68nv7ZQKSXp/vJLel49JSphew
         t+tnBqbt/FHZDEonRzSFfD549nq5/tvIpDT+4YGYh/xQxTV6j6eB75sHMvS+UohIl03n
         gHvNkAjJ2SItSHuAZzbGakEec9X0iW4Vwwn95NmG/GbJ5uQAeDmBA+EsrViQZBE8NAHp
         hC8Q==
X-Gm-Message-State: AOJu0YyTt2ZBziiGqhTHBvtgUy7i0qipni0UUojiC9HdFBx09e6CtKYT
	HDd9Gt7XjERSEbYJfMaITDN/N/818TIKWOzyCqujbiFJ+aykRqq/Q2AH8zPK0juIcy+s3rGi/Rw
	AtaVv/BlJ3GFiXjNQzLt6f/RhviIeWOoF/QA=
X-Gm-Gg: ASbGncu62SR3K0rNdFQq+wfWr5YBVV7M9e2LA/USRrLxr4gwkwG1m8QIqTKumMEIo1Q
	ow1fd3lwl6fBhyr5mkzP3CHwwlnueVPmI0E6CCxz7ZrInKqR2S70rhzRxLmRCxlnbT8b+lCr1nT
	KdqnYr6ahBhEFqRpr6T4cEnbLL
X-Google-Smtp-Source: AGHT+IF/Mt5/XKRu7LL/FFx7Q+1DfRyxx+0mzEbfxEfPsYCvXOFD/ZsuUQD+vytXiEmP/01ufLzmop4VIuVnk8JWIyQ=
X-Received: by 2002:a05:6122:46a1:b0:523:bf8b:5dc3 with SMTP id
 71dfb90a1353d-5261d4b4ab1mr7098135e0c.9.1743518328681; Tue, 01 Apr 2025
 07:38:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com>
In-Reply-To: <67ebe607.050a0220.396ffc.2dd5@mx.google.com>
From: Samuel Abraham <abrahamadekunle50@gmail.com>
Date: Tue, 1 Apr 2025 15:38:38 +0100
X-Gm-Features: AQ5f1JolFvqXR9YtHdt6EupcCpFg0aC1TIH2_5NrHK2tcnrOJRKZT-0udAQ0ouU
Message-ID: <CADYq+fYe2o6goZthVjmNqtNRnFT+PATGKwzuZJiDzhEYgfBYXQ@mail.gmail.com>
Subject: Re: Setup for sending mail via Mutt
To: Richard Akintola <princerichard17a@gmail.com>
Cc: outreachy@lists.linux.dev, julia.lawall@inria.fr
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

Hello Richard

I have an observation.
The initial challenge the person faced was that he could not send
patches with mutt via Gmail.
But there is a link in the <Set up email>  section of the firstPatch
documentations that shows how to send
patches using mutt via Gmail using IMAP.
<approved email client>
 https://www.kernel.org/doc/html/latest/process/email-clients.html
The MUTT(TUI) section shows the complete configuration that allows
mutt to be used to send mails
using Gmail as a MTA and SMTP server, via IMAP, without the need for
esmpt. This is what I used to set up and it allows
 me to see the mails I sent via MUTT in the Sent Box of my Gmail account.
I think the update that should be done in the documentation is to
remove first paragraph
of the <Gmail setUp> section that talks about enabling IMAP and
Forwarding POP/IMAP
since according to the settings page on Gmail, IMAP and Forwarding
POP/IMAP are enabled
 automatically starting. January 2025, so no need to enable anything.

I think the above link should be inputted in the second paragraph of
the <Gmail setup>
after the two-factor authentication and the App password have been
generated since the Mutt
configuration needs them and so that no one can easily miss the link
since the link is hidden in the
<approved email client> text.

You can wait to hear more from Julia.

Adekunle.
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
>

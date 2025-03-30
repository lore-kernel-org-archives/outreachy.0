Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245093FE4
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 14:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743344592; cv=none; b=Ff3gNt0q0bYogsSAoy0O18Si9R4zO6aO126yjvRbMWqhwLbueewc2XPheKaHLH3MVJRaoAuDp0h7haRMhUmBCBSssYvU7lkXfsfw3NqpqowhJfJbSPEhcCqFCzwhT6wXXQ6ELN27zRNv55iOgwVemdTrkyQQLmAt6Po7Dzl83Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743344592; c=relaxed/simple;
	bh=k9v98jKakZPp8+lMWQEePASO0pSMi88FgXYGLKBG7R4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=X/LYIijpFUiRt0NTHS/zwTwI/z84XIQMM9F9vSiHOskcxcArqGCWesNuVg/KwIMmnhjnvWdNbPbhHs+hvAssEOftnSwcQGv72xvttIvwfZIicn2xa0MZd7WKlUBYhdHyiUH+LbfKnYaekBlxmAgAWPMe7qV5MX28qEBedBJ+hbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fXYqBEsl; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fXYqBEsl"
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5ed43460d6bso6113809a12.0
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 07:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743344588; x=1743949388; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wI8aCi1nxRdO96rDjZtIwal9btHQtjjiQIZisfSX0Bw=;
        b=fXYqBEsl8SUKNQeOekPA1RtDdI1al+EeDROAS73LMKBtI40BaqyM/4IO39kumeERD/
         HJk2jJV6+JqHwyTk5d+WqOgqZgK7tOurMZ4FbpK/i2owiu9ZhPFOm7OG5AHpdicbbb/K
         Ttf6gRsvoKTte/uIoggV8ifqVqpHtHJOdedAs3dyN6lIe2gheHO2/fZzyCuHV6z/uP5a
         AvL0n8fsAhzKuy8e0E/U6vRKWcWbYobIU/4MF0fyeqlegs37dDPfmOHMVKdByB+cShzU
         axWtxcCxJ/SnbjOF6EOJ3wVDOR+m4X2bsb6Err/UH18Xqj4xk93XLIU2k3GSmVGU1cI/
         kHxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743344588; x=1743949388;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wI8aCi1nxRdO96rDjZtIwal9btHQtjjiQIZisfSX0Bw=;
        b=sgs28ARISFCrG6dsPAsNRefrXMq65Q7WY0FxdjIY7xyXYBEDMlXZRhJmN6a/oSXEgT
         00780yZPF37sHWaCFV76Vo/VqWN9TuqntfIyAo9HoBOimjk+SrF7ckKpd+/m1HV2lmkm
         OoDkQEGQ9e7bE7+GtMIHX7ip4K+QSoS6RtLzBNccY7gtjS9ZOEkAQdyf5hZZrDgwea8P
         oT3xxRT7GqHIxw8xn4f7Kry2DS4iPeW1+WK9vqk0LRtn+74nRZjVg0tkWlbRp4yOHCni
         Qv/1Ldo/yC0pmuv/7d98w5uNiss2mxQEPi7pqMgBJxO6+BOmH4Av3qr3JxLvVNN4IYX3
         8bgA==
X-Forwarded-Encrypted: i=1; AJvYcCUNAJLB7kpsoNyXZ51Gm2jnVq1sZJQjYguH7Q8FuCMKkciR9Cv0MMH0AWMxXV99AG/oriQOnqTtHYs=@lists.linux.dev
X-Gm-Message-State: AOJu0Yz2v/768JgUZ9RHHQWQHu9E7Eo10jv5G1AIN+v/5LSn0VHAFLcp
	uClBOVlJr8Z3ZcD4WN0O7lgBblvcXhTgPoYM6VqM7qtI3dFfYKDFA+Gzwo0VwPE/IGCRaDR9Vom
	B+Xe0shxNEnU5WHz590UxUEdRFnqsR3YQECjHaA==
X-Gm-Gg: ASbGnctNQotgoPF7dLEWRiXiUkEzEy35UG7PryMn4PolCt1IGKNlOEAqZBNMrm55M2l
	pGF9/cmqyKPQ3GwO8UTwo04dqN0PoUMZfPNdpwOrNhiR0KSI6iyA1uQk+twceKABNRx11wpMw26
	OL2cA2K/WEZA+ARxLKayt/CUbyn3j78Z4W/HHmAbU=
X-Google-Smtp-Source: AGHT+IH2Z6h6gsM3Q2zeQoaFP7ukzl0ReYEOyFluL8mNOjVYVbDIA46xLMSYjWA3yF4oyqKG9UyMjQraBR3NDEEJFqo=
X-Received: by 2002:a05:6402:3488:b0:5e5:bfab:51f with SMTP id
 4fb4d7f45d1cf-5edfb467613mr4961463a12.0.1743344588191; Sun, 30 Mar 2025
 07:23:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAG+54Da-77BH_+fEUscGoPXdDPgV00zuGC6OaLDE20V2t3eZYA@mail.gmail.com>
 <alpine.DEB.2.22.394.2503301502440.3689@hadrien> <CAG+54DaDAKJrx7GohFNNcmF8xr9Yd6TjpRCzKDXfUSkRoSJD=w@mail.gmail.com>
 <alpine.DEB.2.22.394.2503301522210.23941@hadrien> <CAG+54DZcFiH2SrAR_Hiquw6LxZ8wJmOBYKfh0HWM+dR2i6LqCA@mail.gmail.com>
 <alpine.DEB.2.22.394.2503301535470.23941@hadrien> <CAMyr_bJw27fvKr75ow9h4ZhroiG7=zEbpBDNi3Jtz2cx0RjAAw@mail.gmail.com>
 <alpine.DEB.2.22.394.2503301609430.23941@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503301609430.23941@hadrien>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Sun, 30 Mar 2025 15:22:56 +0100
X-Gm-Features: AQ5f1JqzoLOPg6zIM-uHhfZfY0DEWoXv1HQSURzqs8FyV51ExdVHSdYRrGH0UX0
Message-ID: <CAMyr_bJoBj1aHpM9Xcun3i33UCtd+X_2492WzKCtufYTgJOYaQ@mail.gmail.com>
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing my
 all muttrc and everything
To: Julia Lawall <julia.lawall@inria.fr>
Cc: rujra <braker.noob.kernel@gmail.com>, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, and we also need to help ensure that esmtp or any other Message
Transfer Agent (MTA) is configured properly (exim4 is the default MTA
on Debian).

On Sun, Mar 30, 2025 at 3:10=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Sun, 30 Mar 2025, Richard Akintola wrote:
>
> > Hi,
> >
> > Here is how I solved it.
> > After installing esmtp, I followed the steps below to configure it:
> > 1. Enabled two-step verification in order to generate App Password.
> >
> > 2. Added the following to my ~/.esmtp file
> > identity "my.email@gmail.com"
> > hostname smtp.gmail.com:587
> > username "my.email@gmail.com"
> > password "passwordGeneratedByAppPassword"
> > starttls required
> >
> > 3. sudo update-alternatives --install /usr/sbin/sendmail sendmail
> > /usr/bin/esmtp 50
> > This handles the sendmail
> >
> > 4. Test if esmtp can send mails
> > echo "Testing email via esmtp" | /usr/sbin/sendmail -v recipient@gmail.=
com
> >
> > 5. Step 4 was successful, so I added the following to my ~/.muttrc
> > set sendmail=3D"/usr/bin/esmtp"
> > set envelope_from=3Dyes
> > set from=3D"My Name <my.email@gmail.com>"
> > set use_from=3Dyes
> > set edit_headers=3Dyes
> >
> > I hope this helps.
>
> Should we update the Gmail instructions in the first patch tutorial in
> some way?
>
> julia
>
>
>
> >
> > On Sun, Mar 30, 2025 at 2:38=E2=80=AFPM Julia Lawall <julia.lawall@inri=
a.fr> wrote:
> > >
> > >
> > >
> > > On Sun, 30 Mar 2025, rujra wrote:
> > >
> > > >
> > > > hi Julia,
> > > > Yes I have checked this solution:
> > > > < have solved it by heading Google's less secure apps page. And tur=
n on the less secure apps. Now I can send mail through mutt application.>
> > > >
> > > > but my gmail account is not authorized to do that changes. as it su=
ggest
> > >
> > > I don't actually have a gmail account.  Has someone else solved the
> > > problem?  If I click on that link it tells me about something that ha=
s
> > > changed since January 2025:
> > >
> > > Starting January 2025, less secure apps, third-party apps, or devices=
 that
> > > have you sign in with only your username and password will no longer =
be
> > > supported for Google Workspace accounts. For exact dates, visit Googl=
e
> > > Workspace Updates. To continue to use a specific app with your Google
> > > Account, you=E2=80=99ll need to use a more secure type of access that=
 doesn=E2=80=99t
> > > share password data. Learn how to use Sign in with Google.
> > >
> > > But I don't know if that is relevant to your case.
> > >
> > > Have you followed these instructions from the Outreachy tutorial?
> > >
> > > ------------------------
> > >
> > > In gmail, go click the gear icon, go to "Settings", go to the tab
> > > "Forwarding POP/IMAP", and click "Enable IMAP", then click on "Save
> > > Changes".
> > >
> > > Then click the "Configuration instructions" link at the very bottom o=
f the
> > > page. Note the outgoing mail server information in "Step 2", and copy=
 it
> > > into the .esmtprc file, as shown in the next section.
> > >
> > > Next, make sure two-step verification is enabled on your gmail accoun=
t,
> > > then generate and use App Password.
> > >
> > > ------------------------
> > >
> > > julia
> > >
> > >
> > >
> > >
> > > >
> > > >
> > > > On Sun, 30 Mar 2025, 6:53=E2=80=AFpm Julia Lawall, <julia.lawall@in=
ria.fr> wrote:
> > > >
> > > >
> > > >       On Sun, 30 Mar 2025, rujra wrote:
> > > >
> > > >       > Hi Julia,Here I am unable to send message from my CLI :
> > > >       > Error: "Error sending message, child exited 70 (Internal er=
ror.)"
> > > >       > I am asking that , here when I am trying to send via CLI us=
ing mutt , I am unable to send it and says error as above.
> > > >       > is this related to my sendmail path ? =3D <set sendmail=3D"=
/usr/bin/esmtp"> ?
> > > >       > kindly help , and thank you for your prompt response/help.
> > > >
> > > >       Did you try the suggestion at the end of the page here:
> > > >
> > > >       https://stackoverflow.com/questions/38372023/ubuntu-sendmail-=
exited-with-error-70
> > > >
> > > >       I added back the mailing list because others may have this qu=
estion in the
> > > >       future, or know the answer to it now.
> > > >
> > > >       julia
> > > >
> > > >
> > > >       > Thanking you,
> > > >       > Rujra Bhatt
> > > >       >
> > > >       > On Sun, Mar 30, 2025 at 6:33=E2=80=AFPM Julia Lawall <julia=
.lawall@inria.fr> wrote:
> > > >       >
> > > >       >
> > > >       >       On Sun, 30 Mar 2025, rujra wrote:
> > > >       >
> > > >       >       > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D ~/.muttrc =3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >       >       > set sendmail=3D"/usr/bin/esmtp"
> > > >       >       >   2 set envelope_from=3Dyes
> > > >       >       >   3 set from=3D"Rujra Bhatt <braker.noob.kernel@gma=
il.com>"
> > > >       >       >   4 set use_from=3Dyes
> > > >       >       >   5 set edit_headers=3Dyes
> > > >       >       >   6
> > > >       >       >   7 set imap_user =3D 'braker.noob.kernel@gmail.com=
'
> > > >       >       >   8 set imap_pass =3D 'mfpdcwklatrzlhbu'   #applica=
tion password 16-digit.
> > > >       >       >   9
> > > >       >       >  10
> > > >       >       >  11 set folder=3D"imaps://imap.gmail.com"
> > > >       >       >  12 set spoolfile=3D"imaps://imap.gmail.com/INBOX"
> > > >       >       >  13 set record=3D"imaps://imap.gmail.com/[Gmail]/Se=
nt Mail"
> > > >       >       >  14 set postponed=3D"imaps://imap.gmail.com/[Gmail]=
/Drafts"
> > > >       >       >  15
> > > >       >       >  16 set header_cache =3D "~/.mutt/cache/headers"
> > > >       >       >  17 set message_cachedir =3D "~/.mutt/cache/bodies"
> > > >       >       >  18 set certificate_file =3D "~/.mutt/certificates"
> > > >       >       >  19
> > > >       >       >  20 set from =3D 'braker.noob.kernel@gmail.com'
> > > >       >       >  21 set realname =3D 'rujra bhatt'
> > > >       >       >  22
> > > >       >       >  23 #set smtp_url =3D 'smtp://braker.noob.kernel@sm=
tp.gmail.com:587/'
> > > >       >       >  24 #set smtp_pass=3D'aplication'
> > > >       >       >  25
> > > >       >       >  26 set move =3D no
> > > >       >       >  27 set imap_keepalive =3D 900
> > > >       >       >  28
> > > >       >       >  29 # Gmail-style keyboard shortcuts
> > > >       >       >  30 macro index,pager ga "<change-folder>=3D[Gmail]=
/All<tab><enter>" "Go
> > > >       >       > to all mail"
> > > >       >       >  31 macro index,pager gi "<change-folder>=3DINBOX<e=
nter>" "Go to inbox"
> > > >       >       >  32 macro index,pager gs "<change-folder>=3D[Gmail]=
/Starred<enter>" "Go
> > > >       >       > to starred messages"
> > > >       >       >  33 macro index,pager gd "<change-folder>=3D[Gmail]=
/Drafts<enter>" "Go to drafts"
> > > >       >       >  34 macro index,pager e "<enter-command>unset trash=
\n
> > > >       >       > <delete-message>" "Gmail archive message    " # dif=
ferent from Gmail,
> > > >       >       > but wanted to keep "y" to show folders.
> > > >       >       >
> > > >       >       >
> > > >       >       > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >       >       > Also I am attaching debug report here
> > > >       >
> > > >       >       How does the error manifest?  i didn't see anything a=
larming in the debug
> > > >       >       output, but I may have missed something.
> > > >       >
> > > >       >       julia
> > > >       >
> > > >       >
> > > >       >
> > > >
> > > >
> > > >
> >

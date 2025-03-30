Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAB018DF6E
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 14:04:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743343482; cv=none; b=VYjFlKmyj3SxZcSOdZBadezBsW3OFhNlHyxaCaAYxxbXZNOBSiXMEQ+R9l0QkSOVLPLulGJ34daCnp7gtq9VMgQAWL/3TC4U1EGgqVRcDnVPQsuvLFE5Pif6IcI7IgeiZ75Pqf3+gq+/JRTF6LokooA0v62GraD33ZcRQGh/9GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743343482; c=relaxed/simple;
	bh=yolZ66PmdWJ+ne7Wl/Kt2TRfA33oo3Tbzun+nMBrerA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u+yuq6A5fdCV8CQ/wPpZLJiBjJOfAWI0pxzzJ8Lm/OyOwZ71RgVyKOVs58SvTIoyJ+62j0wP95ocZiaVF+N16ir37zb1zZPlyS7jJCe8Yw+fyntZppm6TJc/yT0kVEFwrq/V64E0UR4f1uV0gDqwyexGfKNVjnsB9L63jRF6fQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lS3nrKo/; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lS3nrKo/"
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e614da8615so2583410a12.1
        for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 07:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743343479; x=1743948279; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AfloC7Gk+CrS4kSYma1k7/wn4pZZkL3+ilyzmAj6LCs=;
        b=lS3nrKo/yw4uSR6GqAznALDc3e/W10u1KqXWrGuJkHdk632/1jfpZobEGFqmz4uNuC
         fDgxAhv2SHHbFV0mQZbr0ClhgPDpHvbxMKZ66sLwIJ2GzSIuRpCGw4jMiTdwTtk89VPH
         +LPU/+FvxuT6CBqbH5gTCs0B6k56Peai2BVZOmwF5L/ysq5BeCis7vM1TM7AXzpNESEk
         hLtVlkmhurhsFJSh4L4csetI1zxA6dmzEqwOUUX6Nl2c/5Ty5IInhxWtC44Jw5SD3dFF
         XWh0dCOhXagW4VMESv1hd3VpTwMvd8HTOOOV5iVJnld4wccwhlQryqc6vRMKu+RRGuT6
         813w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743343479; x=1743948279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AfloC7Gk+CrS4kSYma1k7/wn4pZZkL3+ilyzmAj6LCs=;
        b=KRkD/GP/Fw/Qj7wHta2E1ZRtR7tqJwsVHz1WezYBUbzSWjzuVd8oenWwn/jLRzHtKu
         0TyjR0bc/EuBepIlEapjDN4P3sdLOQ0CunKl7mhjIw4YVLz5igdjbAdwoWHd93/+R+dN
         DmS2epqRCVgeYINnfPHWKDygTn0GNd+1WEo9KzM/cTBnrvIPBr5B9vlgrHH6N66kEnKL
         vZJlho9yfueUtr3IiZaUAdz535X/wIumlyfJtHQuxyooQ6b8cmwCYp741LJJJKna+uq7
         t6Gdmdc3p9EArV/lmlTMGizFGRqj4x3YDM+w7jvfjP6dT797VSn+ClgS+tDbTpyXowPk
         OgDA==
X-Forwarded-Encrypted: i=1; AJvYcCWRVVILrlEHu8ps59R8h0C/wc0/9fca+tpeRE8LMowgJe1NseyDdlC9hXq1dlVv8QqpH8Oo8yKAWxY=@lists.linux.dev
X-Gm-Message-State: AOJu0YzTMfeOQAPSC1bmBz4N0KoFfEw6z+kKofEYAS4/6BHyH9f5+4u2
	LfiUSZ8erkMkbpb9YaSCvRMs3jZydqCrXoLpqiNuJgy+DZUegV8VJCRS2aFj4/PSNfQP1TJ/YXt
	WEdoljvtrbyDG/BKYdLEmFIMpiu4=
X-Gm-Gg: ASbGnctOZ5ye8UDOLTGr+l30bTSlybCjm+3BEf7nT5QUMZQohBrBzRI9JIiKwR6Q9fd
	5TSVHIxPDhWgvnwMAOC517Dr1mXAvN7HQLChv28lSeBwAqIymhJnKzO9C8mMTk+GE0k+NisqypY
	Oaf1uw7bqRmoRTxSmCedQQZ1oWI7EC
X-Google-Smtp-Source: AGHT+IHH1+Uu3Ikd1tl1DizBk2B3PAK26NC6PDCCCLyxBTrbrRV7jM/RuUGB7t0fKLLDsxOSDJntfnVAAJC5kSURmfs=
X-Received: by 2002:a05:6402:360f:b0:5e8:bcf2:832a with SMTP id
 4fb4d7f45d1cf-5edc46379e5mr9397325a12.10.1743343478292; Sun, 30 Mar 2025
 07:04:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAG+54Da-77BH_+fEUscGoPXdDPgV00zuGC6OaLDE20V2t3eZYA@mail.gmail.com>
 <alpine.DEB.2.22.394.2503301502440.3689@hadrien> <CAG+54DaDAKJrx7GohFNNcmF8xr9Yd6TjpRCzKDXfUSkRoSJD=w@mail.gmail.com>
 <alpine.DEB.2.22.394.2503301522210.23941@hadrien> <CAG+54DZcFiH2SrAR_Hiquw6LxZ8wJmOBYKfh0HWM+dR2i6LqCA@mail.gmail.com>
 <alpine.DEB.2.22.394.2503301535470.23941@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2503301535470.23941@hadrien>
From: Richard Akintola <princerichard17a@gmail.com>
Date: Sun, 30 Mar 2025 15:04:26 +0100
X-Gm-Features: AQ5f1JpgGB0BH90n4nCctFvjdvMhcuU7Q0ZACEu-juk0sRrOJ83ugp3d7Eu9FDE
Message-ID: <CAMyr_bJw27fvKr75ow9h4ZhroiG7=zEbpBDNi3Jtz2cx0RjAAw@mail.gmail.com>
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing my
 all muttrc and everything
To: Julia Lawall <julia.lawall@inria.fr>
Cc: rujra <braker.noob.kernel@gmail.com>, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Here is how I solved it.
After installing esmtp, I followed the steps below to configure it:
1. Enabled two-step verification in order to generate App Password.

2. Added the following to my ~/.esmtp file
identity "my.email@gmail.com"
hostname smtp.gmail.com:587
username "my.email@gmail.com"
password "passwordGeneratedByAppPassword"
starttls required

3. sudo update-alternatives --install /usr/sbin/sendmail sendmail
/usr/bin/esmtp 50
This handles the sendmail

4. Test if esmtp can send mails
echo "Testing email via esmtp" | /usr/sbin/sendmail -v recipient@gmail.com

5. Step 4 was successful, so I added the following to my ~/.muttrc
set sendmail=3D"/usr/bin/esmtp"
set envelope_from=3Dyes
set from=3D"My Name <my.email@gmail.com>"
set use_from=3Dyes
set edit_headers=3Dyes

I hope this helps.

On Sun, Mar 30, 2025 at 2:38=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Sun, 30 Mar 2025, rujra wrote:
>
> >
> > hi Julia,
> > Yes I have checked this solution:
> > < have solved it by heading Google's less secure apps page. And turn on=
 the less secure apps. Now I can send mail through mutt application.>
> >
> > but my gmail account is not authorized to do that changes. as it sugges=
t
>
> I don't actually have a gmail account.  Has someone else solved the
> problem?  If I click on that link it tells me about something that has
> changed since January 2025:
>
> Starting January 2025, less secure apps, third-party apps, or devices tha=
t
> have you sign in with only your username and password will no longer be
> supported for Google Workspace accounts. For exact dates, visit Google
> Workspace Updates. To continue to use a specific app with your Google
> Account, you=E2=80=99ll need to use a more secure type of access that doe=
sn=E2=80=99t
> share password data. Learn how to use Sign in with Google.
>
> But I don't know if that is relevant to your case.
>
> Have you followed these instructions from the Outreachy tutorial?
>
> ------------------------
>
> In gmail, go click the gear icon, go to "Settings", go to the tab
> "Forwarding POP/IMAP", and click "Enable IMAP", then click on "Save
> Changes".
>
> Then click the "Configuration instructions" link at the very bottom of th=
e
> page. Note the outgoing mail server information in "Step 2", and copy it
> into the .esmtprc file, as shown in the next section.
>
> Next, make sure two-step verification is enabled on your gmail account,
> then generate and use App Password.
>
> ------------------------
>
> julia
>
>
>
>
> >
> >
> > On Sun, 30 Mar 2025, 6:53=E2=80=AFpm Julia Lawall, <julia.lawall@inria.=
fr> wrote:
> >
> >
> >       On Sun, 30 Mar 2025, rujra wrote:
> >
> >       > Hi Julia,Here I am unable to send message from my CLI :
> >       > Error: "Error sending message, child exited 70 (Internal error.=
)"
> >       > I am asking that , here when I am trying to send via CLI using =
mutt , I am unable to send it and says error as above.
> >       > is this related to my sendmail path ? =3D <set sendmail=3D"/usr=
/bin/esmtp"> ?
> >       > kindly help , and thank you for your prompt response/help.
> >
> >       Did you try the suggestion at the end of the page here:
> >
> >       https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exit=
ed-with-error-70
> >
> >       I added back the mailing list because others may have this questi=
on in the
> >       future, or know the answer to it now.
> >
> >       julia
> >
> >
> >       > Thanking you,
> >       > Rujra Bhatt
> >       >
> >       > On Sun, Mar 30, 2025 at 6:33=E2=80=AFPM Julia Lawall <julia.law=
all@inria.fr> wrote:
> >       >
> >       >
> >       >       On Sun, 30 Mar 2025, rujra wrote:
> >       >
> >       >       > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D ~/.muttrc =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >       >       > set sendmail=3D"/usr/bin/esmtp"
> >       >       >   2 set envelope_from=3Dyes
> >       >       >   3 set from=3D"Rujra Bhatt <braker.noob.kernel@gmail.c=
om>"
> >       >       >   4 set use_from=3Dyes
> >       >       >   5 set edit_headers=3Dyes
> >       >       >   6
> >       >       >   7 set imap_user =3D 'braker.noob.kernel@gmail.com'
> >       >       >   8 set imap_pass =3D 'mfpdcwklatrzlhbu'   #application=
 password 16-digit.
> >       >       >   9
> >       >       >  10
> >       >       >  11 set folder=3D"imaps://imap.gmail.com"
> >       >       >  12 set spoolfile=3D"imaps://imap.gmail.com/INBOX"
> >       >       >  13 set record=3D"imaps://imap.gmail.com/[Gmail]/Sent M=
ail"
> >       >       >  14 set postponed=3D"imaps://imap.gmail.com/[Gmail]/Dra=
fts"
> >       >       >  15
> >       >       >  16 set header_cache =3D "~/.mutt/cache/headers"
> >       >       >  17 set message_cachedir =3D "~/.mutt/cache/bodies"
> >       >       >  18 set certificate_file =3D "~/.mutt/certificates"
> >       >       >  19
> >       >       >  20 set from =3D 'braker.noob.kernel@gmail.com'
> >       >       >  21 set realname =3D 'rujra bhatt'
> >       >       >  22
> >       >       >  23 #set smtp_url =3D 'smtp://braker.noob.kernel@smtp.g=
mail.com:587/'
> >       >       >  24 #set smtp_pass=3D'aplication'
> >       >       >  25
> >       >       >  26 set move =3D no
> >       >       >  27 set imap_keepalive =3D 900
> >       >       >  28
> >       >       >  29 # Gmail-style keyboard shortcuts
> >       >       >  30 macro index,pager ga "<change-folder>=3D[Gmail]/All=
<tab><enter>" "Go
> >       >       > to all mail"
> >       >       >  31 macro index,pager gi "<change-folder>=3DINBOX<enter=
>" "Go to inbox"
> >       >       >  32 macro index,pager gs "<change-folder>=3D[Gmail]/Sta=
rred<enter>" "Go
> >       >       > to starred messages"
> >       >       >  33 macro index,pager gd "<change-folder>=3D[Gmail]/Dra=
fts<enter>" "Go to drafts"
> >       >       >  34 macro index,pager e "<enter-command>unset trash\n
> >       >       > <delete-message>" "Gmail archive message    " # differe=
nt from Gmail,
> >       >       > but wanted to keep "y" to show folders.
> >       >       >
> >       >       >
> >       >       > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >       >       > Also I am attaching debug report here
> >       >
> >       >       How does the error manifest?  i didn't see anything alarm=
ing in the debug
> >       >       output, but I may have missed something.
> >       >
> >       >       julia
> >       >
> >       >
> >       >
> >
> >
> >

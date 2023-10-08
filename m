Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9BE8487
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 11:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YOgddE/w"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3247cefa13aso3315217f8f.1
        for <outreachy@lists.linux.dev>; Sun, 08 Oct 2023 04:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696764302; x=1697369102; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pwFw2FNeuMb6LuvZ93r3boX0NKvoUebnrJ2aHjTW/2I=;
        b=YOgddE/wYNDPT7ec2yZJwgNlvx19yEXjyP4x/YWFrC37qUu+QusxGQkfmVlg/CTPkK
         2jgz6HGp1N3bcWp5mqG8UTfkQciJ1H13PlMmr9kxzdCwX1t5EVGvpQUpQ0Mo5lp1bpMX
         7Syf+gLcDDZutS/cnL81hUKDTHYs5mB5xDD4iktpg7ZOWepDoBDqoP9KGEL6tpR2GtcS
         LdosTXzveV+MWjT5RAsmqkbw0vj8viG/2uOJ9xz/grb8FccUnS6SgwOFz1p1HfY8YM23
         K2hgfsyelpDDtzLsoPFJzmMwPUZ7bFejx3YiNGfJ5AkHSlzu0hB9ZRf6VsoSKZc/uAFu
         JO1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696764302; x=1697369102;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pwFw2FNeuMb6LuvZ93r3boX0NKvoUebnrJ2aHjTW/2I=;
        b=lQIOizVKdr6GphLtbkYaOlt1eEBbX/hAlytFQlomthIsB2CtRH4SglhhoF3+YzUFC+
         kjg7l4w0l2cGKQ+8VHsZ6U7UWvrgMiAzeTPPoZJMm0nJwa1DuHa47UFsOZzCN7iiI7Ij
         kOpr143b/1EkFH2fHlnS6Pmep3NEwsqKb5BXst2SDkzZdsxEdhjV2UwkCwZTXsEjJIdu
         t1RGW8WFYsgRdq0nAr9fE1iNuCRU2DeJaJorfyPuD09fVj0gN9Gwt79cE0b+MviL3b+F
         5q2zWrP60wl4RbVivH2qL2eL2s6x78HOOr3hfPC0MwZ3WLxIvtLWvm4NBqNb2eti+CwC
         VMew==
X-Gm-Message-State: AOJu0Yw2ezJveNWAYo2p8MVH5X0mVnYvD7nJNy3HO3Q6EgwSLW5kYyZ5
	1+8lXi8QIKUVRzYA5PEnR52qRMaUBA1+ZOrdGm8=
X-Google-Smtp-Source: AGHT+IGsBq5wxUZxnrtaG6UUHoX6xQmARlPaE5bcCpz+uBS1fcnHg5ym4VsK3RArgXCoXuL5Qhi2I7bgadcWi/ijizk=
X-Received: by 2002:a5d:4144:0:b0:321:7093:53f5 with SMTP id
 c4-20020a5d4144000000b00321709353f5mr10511785wrq.64.1696764302201; Sun, 08
 Oct 2023 04:25:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081225160.3223@hadrien> <CAOJCLCvJC5eoMCWPD_WkREYX0xftE80P+oPSrbqDvh+yVimg7g@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081254370.3223@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2310081254370.3223@hadrien>
From: NAKITYO JOANITA <nakityojoanita51@gmail.com>
Date: Sun, 8 Oct 2023 14:24:50 +0300
Message-ID: <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com>
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I tried that, and it worked! =F0=9F=98=8A Thank you!


On Sun, Oct 8, 2023 at 1:55=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr>=
 wrote:
>
>
>
> On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
>
> > I attempted to follow these steps, but when I visited Google's 'Less
> > Secure Apps' page, I encountered two issues. Initially, I received a
> > message stating, 'The setting is not available for accounts with
> > 2-step verification enabled.' After disabling 2-step verification, I
> > encountered another message, 'This setting is not available for your
> > account.' I have included screenshots of both pages for reference.
>
> The first screen shot mentioned the possibility of an application-specifi=
c
> password.  Maybe you can use that?
>
> julia
>
> >
> > On Sun, Oct 8, 2023 at 1:27=E2=80=AFPM Julia Lawall <julia.lawall@inria=
.fr> wrote:
> > >
> > >
> > >
> > > On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
> > >
> > > > Hello,
> > > >
> > > > I hope this message finds you well.
> > > >
> > > > I am currently testing my email setup using Mutt and have encounter=
ed
> > > > an issue that I could use some assistance with. When attempting to
> > > > send a test email, I receive the following error message:
> > > > Error sending message, child exited 70 (Internal error.).
> > > >
> > > > To provide some context, I have followed the previous steps to set =
up
> > > > my email configuration, which involved creating both a .esmtprc and=
 a
> > > > .muttrc file. Below is the content of the email I am trying to send=
:
> > > >
> > > > From: nakityojoanita51@gmail.com
> > > > To: nakityojoanita51@gmail.com
> > > > Cc:
> > > > Bcc:
> > > > Subject: Greetings
> > > > Reply-To:
> > > > Fcc: ~/sent
> > > > Mix: <no chain defined>
> > > > Security: None
> > > >
> > > > If you could offer any insights or guidance on resolving this issue=
, I
> > > > would greatly appreciate it.
> > >
> > > Maybe the following page will help you:
> > >
> > > https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exited-w=
ith-error-70
> > >
> > > Look at the answer at the very bottom of the page.
> > >
> > > julia
> > >
> > >
> > > >
> > > > Thank you for your time and assistance.
> > > >
> > > > Warm regards, Joanita
> > > >
> > > >
> >

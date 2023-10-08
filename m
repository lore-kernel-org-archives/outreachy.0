Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC76C12F
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 12:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ad85Pcm8"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-405361bb94eso36278345e9.0
        for <outreachy@lists.linux.dev>; Sun, 08 Oct 2023 05:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696766809; x=1697371609; darn=lists.linux.dev;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PmF03Egbis1r0PMba/GwE1//0XI1lfekBgSXrakOzvg=;
        b=Ad85Pcm8CTz/OSRKO3Se3n9H5trFkm+akNKj7I94e7CHE+xeCty0UM7lWUvxwbNkRq
         wTy668QcHoJ6icrVw362gRnLX8tLHqFLRU9EZM2FD5a3Nlq95QWCpS6NcWD9W5Hv9Mnk
         jbklUy9z3Q8T0ewVvLX6UbenuAAJso1ivu6qaolIa4b11NzMYJXgdei1CHpgx78TAoOt
         u5RB5lZu4U8cPxazrAud+Xk56HpLxvdRrHoGNdTkZjOi7vguo18BO17k0aw034yka/fY
         3KVOh5lq/QCa+1cbkbRnVP/BbLzXmeRWCxQX023tsglBNE4bPzcMdmw+38Qy9SRmeKG4
         3LiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696766809; x=1697371609;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PmF03Egbis1r0PMba/GwE1//0XI1lfekBgSXrakOzvg=;
        b=cvv/8adf5DAB9rI7dpI+95iOnTeKeBJdWgwCKUHjjNxFxlR2pMe6cX16kq856Ucvks
         ECHCtnAwGWHA68EdelH6KxJmpvnD9t1cvAKDfETLzyiXkIzA9VZ81cJmJstACTunGlYH
         JFzUY17+YCN0Sb7Sahpj8hVBqXWlDz4Pr2lYWbFIsdXwMW2haRybf78C6ztTdQTjKSKS
         c0mqMhah2mslhCxgJh6Xqvm+Ap2c6oNhxdU5m7a/Se0mGl682Co5fZvpiR77useqI4WI
         XuzaTs1SPxIMBa5kaosmSrSterTmv4kjqUjposzc6ci0A/FAIHDcFr9+3thwaUvcOlst
         cgTg==
X-Gm-Message-State: AOJu0YzFl/aUO9cbTm36oeRJ1aGr42kJ8ozfeSTYYyeZ3oAGfBNpkO80
	JOVQR/lJTny42nUUSkaI/IaYKI9hGfHQ/Y9hjqXkWJbfvDU=
X-Google-Smtp-Source: AGHT+IGv6UC3W66Iwx0biZ87onYnvkyP+2V8tovBarsSHNLF1pO/RTX+vR8XYcEtODa5SUxRSTyYt+16xP46MZn/bAg=
X-Received: by 2002:a05:6000:4d2:b0:322:dbe8:e18f with SMTP id
 h18-20020a05600004d200b00322dbe8e18fmr12984368wri.46.1696766809426; Sun, 08
 Oct 2023 05:06:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081225160.3223@hadrien> <CAOJCLCvJC5eoMCWPD_WkREYX0xftE80P+oPSrbqDvh+yVimg7g@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081254370.3223@hadrien> <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081349520.3223@hadrien>
In-Reply-To: <alpine.DEB.2.22.394.2310081349520.3223@hadrien>
From: NAKITYO JOANITA <nakityojoanita51@gmail.com>
Date: Sun, 8 Oct 2023 15:06:38 +0300
Message-ID: <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com>
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm sorry about the top posting I don't know why it keeps happening,
maybe because I was hitting the reply button instead of reply all. I
am happy to offer help since the messages won't be clear, maybe I can
write an article or send a detailed email. Thank you

On Sun, Oct 8, 2023 at 2:52=E2=80=AFPM Julia Lawall <julia.lawall@inria.fr>=
 wrote:
>
>
>
> On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
>
> > I tried that, and it worked! =F0=9F=98=8A Thank you!
>
> Wonderful!
>
> Do you have any more detailed advice for other applicants who may have th=
e
> same issue?
>
> Please stop top posting, though.  You can even see the problem in the
> current message.  The message starts with "I tried that".  What is "that"=
?
> I know, because I remember what I suggested a few minutes ago.  But if
> someone else has the same problem and looks in the archives later, they
> will have to hunt around in all of the text below to see what "that" coul=
d
> be.
>
> thanks,
> julia
>
>
> >
> >
> > On Sun, Oct 8, 2023 at 1:55=E2=80=AFPM Julia Lawall <julia.lawall@inria=
.fr> wrote:
> > >
> > >
> > >
> > > On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
> > >
> > > > I attempted to follow these steps, but when I visited Google's 'Les=
s
> > > > Secure Apps' page, I encountered two issues. Initially, I received =
a
> > > > message stating, 'The setting is not available for accounts with
> > > > 2-step verification enabled.' After disabling 2-step verification, =
I
> > > > encountered another message, 'This setting is not available for you=
r
> > > > account.' I have included screenshots of both pages for reference.
> > >
> > > The first screen shot mentioned the possibility of an application-spe=
cific
> > > password.  Maybe you can use that?
> > >
> > > julia
> > >
> > > >
> > > > On Sun, Oct 8, 2023 at 1:27=E2=80=AFPM Julia Lawall <julia.lawall@i=
nria.fr> wrote:
> > > > >
> > > > >
> > > > >
> > > > > On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
> > > > >
> > > > > > Hello,
> > > > > >
> > > > > > I hope this message finds you well.
> > > > > >
> > > > > > I am currently testing my email setup using Mutt and have encou=
ntered
> > > > > > an issue that I could use some assistance with. When attempting=
 to
> > > > > > send a test email, I receive the following error message:
> > > > > > Error sending message, child exited 70 (Internal error.).
> > > > > >
> > > > > > To provide some context, I have followed the previous steps to =
set up
> > > > > > my email configuration, which involved creating both a .esmtprc=
 and a
> > > > > > .muttrc file. Below is the content of the email I am trying to =
send:
> > > > > >
> > > > > > From: nakityojoanita51@gmail.com
> > > > > > To: nakityojoanita51@gmail.com
> > > > > > Cc:
> > > > > > Bcc:
> > > > > > Subject: Greetings
> > > > > > Reply-To:
> > > > > > Fcc: ~/sent
> > > > > > Mix: <no chain defined>
> > > > > > Security: None
> > > > > >
> > > > > > If you could offer any insights or guidance on resolving this i=
ssue, I
> > > > > > would greatly appreciate it.
> > > > >
> > > > > Maybe the following page will help you:
> > > > >
> > > > > https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exit=
ed-with-error-70
> > > > >
> > > > > Look at the answer at the very bottom of the page.
> > > > >
> > > > > julia
> > > > >
> > > > >
> > > > > >
> > > > > > Thank you for your time and assistance.
> > > > > >
> > > > > > Warm regards, Joanita
> > > > > >
> > > > > >
> > > >
> >

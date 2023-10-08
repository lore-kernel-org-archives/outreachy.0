Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6AA7FBE3
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 18:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Km3Ge9qa"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=8BrhxRxpR5ZWBOzOKSHbHreEOcUw34hlTIRA0VdKhB0=;
  b=Km3Ge9qaxTqYQCe7cLzIm/44BBkvM3NB84B2Zw51+6QEi1aZ6M9sQ01S
   2el/5OKLWSA/5EzCJSJNRKdDVvHKgpHeQNdL3ow090sThDLyvscqfLFR+
   2KACNvFQLfEoejVZzH1SIsAqUzZBDCrJQ76xAbpU/PSfXWU8KOP4sh7jX
   Y=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="68090725"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 20:47:09 +0200
Date: Sun, 8 Oct 2023 20:47:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak R Varma <drv@mailo.com>
cc: NAKITYO JOANITA <nakityojoanita51@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
In-Reply-To: <ZSL3Jm9LfQwt6O7M@runicha.com>
Message-ID: <alpine.DEB.2.22.394.2310082046560.3223@hadrien>
References: <alpine.DEB.2.22.394.2310081254370.3223@hadrien> <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com> <alpine.DEB.2.22.394.2310081349520.3223@hadrien> <CAOJCLCswxE=xNorJ3XROW1DRLBGRNyF=YY0BoOdW=9pdj2U6wA@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081411300.3223@hadrien> <CAOJCLCsxH8jFPW9+o01hWJmNwPVTKMMdn0aB3R3-r-rySmpCtQ@mail.gmail.com> <alpine.DEB.2.22.394.2310081423550.3223@hadrien> <CAOJCLCsBxra_E30bb5kzSdSotJfaj546LJ_r1qLW-RXpOhjLhw@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081454060.3223@hadrien> <CAOJCLCv39n+W4VPwXTwqsKPo6XmaQ9XcCDVqLb4j3=t-cCQjEQ@mail.gmail.com> <ZSL3Jm9LfQwt6O7M@runicha.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-747515514-1696790829=:3223"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-747515514-1696790829=:3223
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 9 Oct 2023, Deepak R Varma wrote:

> On Sun, Oct 08, 2023 at 09:33:47PM +0300, NAKITYO JOANITA wrote:
> > When sending an email with Mutt, I'm prompted to enter a KeyID for
> > outreachy@lists.linux.dev as shown in the screenshot at the bottom of
> > the screen. What specific value should I enter for this?
>
> If you are using GPG, the configuration may need to be corrected. Check if this
> thread helps: https://stackoverflow.com/questions/49332245/cant-reply-to-email-via-mutt-with-gnupg-asks-for-keyid

How does one not use GPG?

julia


>
> deepak.
>
> >
> > On Sun, Oct 8, 2023 at 3:55 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> > >
> > >
> > >
> > > On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
> > >
> > > > I think it's due to the different applications we're using. In Gmail,
> > > > messages are displayed in a conversation view, similar to the
> > > > screenshot attached below.
> > >
> > > Yes, I see that point.  But the point is that you can't use that interface
> > > when working on the Linux kernel.  Now that you have mutt working, maybe
> > > you can use mutt for all of your communication about the project.
> > >
> > > Or maybe someone else has a suggestion about how to avoid the
> > > conversation view in the Gmail interface?
> > >
> > > julia
>
>
>
>
>
--8323329-747515514-1696790829=:3223--

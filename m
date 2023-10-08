Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E495BE7F
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 11:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="PtDFBDNo"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=3bDpuVbnb93rBwZ+UU23wTCrffCDYTkt7PoPcX+3qyY=;
  b=PtDFBDNo3THoCUTYWae7/G6pq5hl99+ZHEv8+eO0XpFwnPfLrRlIi+x+
   BN4gVQsT4pPsSMzboXdk9lOA//z3pfi7TCpUsJCOvF6/OWH85e3ydwjGt
   dMpEgLklOCOL2xlM9oOpqO2zgzU2ajeoQYL5SivCXb8+3asnP12+PpRJZ
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="68078131"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 13:52:18 +0200
Date: Sun, 8 Oct 2023 13:52:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
In-Reply-To: <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310081349520.3223@hadrien>
References: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com> <alpine.DEB.2.22.394.2310081225160.3223@hadrien> <CAOJCLCvJC5eoMCWPD_WkREYX0xftE80P+oPSrbqDvh+yVimg7g@mail.gmail.com> <alpine.DEB.2.22.394.2310081254370.3223@hadrien>
 <CAOJCLCsbVPuN9S1GK0g0XmPp8hW26vrbiPOCUSBo7pbCQdDtNQ@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1680731850-1696765937=:3223"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1680731850-1696765937=:3223
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:

> I tried that, and it worked! 😊 Thank you!

Wonderful!

Do you have any more detailed advice for other applicants who may have the
same issue?

Please stop top posting, though.  You can even see the problem in the
current message.  The message starts with "I tried that".  What is "that"?
I know, because I remember what I suggested a few minutes ago.  But if
someone else has the same problem and looks in the archives later, they
will have to hunt around in all of the text below to see what "that" could
be.

thanks,
julia


>
>
> On Sun, Oct 8, 2023 at 1:55 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> >
> >
> > On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
> >
> > > I attempted to follow these steps, but when I visited Google's 'Less
> > > Secure Apps' page, I encountered two issues. Initially, I received a
> > > message stating, 'The setting is not available for accounts with
> > > 2-step verification enabled.' After disabling 2-step verification, I
> > > encountered another message, 'This setting is not available for your
> > > account.' I have included screenshots of both pages for reference.
> >
> > The first screen shot mentioned the possibility of an application-specific
> > password.  Maybe you can use that?
> >
> > julia
> >
> > >
> > > On Sun, Oct 8, 2023 at 1:27 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> > > >
> > > >
> > > >
> > > > On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:
> > > >
> > > > > Hello,
> > > > >
> > > > > I hope this message finds you well.
> > > > >
> > > > > I am currently testing my email setup using Mutt and have encountered
> > > > > an issue that I could use some assistance with. When attempting to
> > > > > send a test email, I receive the following error message:
> > > > > Error sending message, child exited 70 (Internal error.).
> > > > >
> > > > > To provide some context, I have followed the previous steps to set up
> > > > > my email configuration, which involved creating both a .esmtprc and a
> > > > > .muttrc file. Below is the content of the email I am trying to send:
> > > > >
> > > > > From: nakityojoanita51@gmail.com
> > > > > To: nakityojoanita51@gmail.com
> > > > > Cc:
> > > > > Bcc:
> > > > > Subject: Greetings
> > > > > Reply-To:
> > > > > Fcc: ~/sent
> > > > > Mix: <no chain defined>
> > > > > Security: None
> > > > >
> > > > > If you could offer any insights or guidance on resolving this issue, I
> > > > > would greatly appreciate it.
> > > >
> > > > Maybe the following page will help you:
> > > >
> > > > https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exited-with-error-70
> > > >
> > > > Look at the answer at the very bottom of the page.
> > > >
> > > > julia
> > > >
> > > >
> > > > >
> > > > > Thank you for your time and assistance.
> > > > >
> > > > > Warm regards, Joanita
> > > > >
> > > > >
> > >
>

--8323329-1680731850-1696765937=:3223--

Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16122AE96
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 14:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743343813; cv=none; b=i8nObNgoizwnnkbqU+EVJxYKNRuOsajId9+jjlxSJRUN3SWlojN0fz2ux1wiBot82m7qesERtNVTbp0Xz9d4KeinTzbEpBK/auDaRDFp/1VCQJ/+n44CQShCR2MPGcXxmsryiz04VGqEkhnA0dyiWITKp7rYV5I3I99HeE7Fy5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743343813; c=relaxed/simple;
	bh=ARlBLjDhxf3vw+Ll0M5/v39yhEjTVv6osinMDXarbjo=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=Hnp3GA/qx+gCVgGR5zkBSSDxAzUu6TJY6vcgJa3Mf+MJEUMRxdtpMxoHEDq4IpJR0aoHxEXC6ClpFE68taPRJckuiqm16fisqe4Pw2Vxf4pfrdNOWKedO3NRDyO89EqmnSGzvMG1G+pESErJYH8TJJs6FM0S88208usQz9DTcRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=h+UlU2Jz; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="h+UlU2Jz"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=LgopTT+4vo6CH3TGuYP7Tyv1SyOt0m1/6qbjIfANTmI=;
  b=h+UlU2JzZ1bZARH2ij77Nq0+wIkSQl20gY5GftIsPAyLFg2lf0Mu9uJV
   S2qCh1iBk5uq27n6KZDNFYr/5+Uuz1T1TTFwKoHktYAMOVKAghH7PvcX/
   LZ37sktty2IKr50Pg1V9rpg/HyfnSW39+ceXtQj81Ayazazoajf1XnF1k
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,289,1736809200"; 
   d="scan'208";a="112963520"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2025 16:10:08 +0200
Date: Sun, 30 Mar 2025 16:10:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Richard Akintola <princerichard17a@gmail.com>
cc: rujra <braker.noob.kernel@gmail.com>, outreachy@lists.linux.dev
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing
 my all muttrc and everything
In-Reply-To: <CAMyr_bJw27fvKr75ow9h4ZhroiG7=zEbpBDNi3Jtz2cx0RjAAw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2503301609430.23941@hadrien>
References: <CAG+54Da-77BH_+fEUscGoPXdDPgV00zuGC6OaLDE20V2t3eZYA@mail.gmail.com> <alpine.DEB.2.22.394.2503301502440.3689@hadrien> <CAG+54DaDAKJrx7GohFNNcmF8xr9Yd6TjpRCzKDXfUSkRoSJD=w@mail.gmail.com> <alpine.DEB.2.22.394.2503301522210.23941@hadrien>
 <CAG+54DZcFiH2SrAR_Hiquw6LxZ8wJmOBYKfh0HWM+dR2i6LqCA@mail.gmail.com> <alpine.DEB.2.22.394.2503301535470.23941@hadrien> <CAMyr_bJw27fvKr75ow9h4ZhroiG7=zEbpBDNi3Jtz2cx0RjAAw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1049695399-1743343807=:23941"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1049695399-1743343807=:23941
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 30 Mar 2025, Richard Akintola wrote:

> Hi,
>
> Here is how I solved it.
> After installing esmtp, I followed the steps below to configure it:
> 1. Enabled two-step verification in order to generate App Password.
>
> 2. Added the following to my ~/.esmtp file
> identity "my.email@gmail.com"
> hostname smtp.gmail.com:587
> username "my.email@gmail.com"
> password "passwordGeneratedByAppPassword"
> starttls required
>
> 3. sudo update-alternatives --install /usr/sbin/sendmail sendmail
> /usr/bin/esmtp 50
> This handles the sendmail
>
> 4. Test if esmtp can send mails
> echo "Testing email via esmtp" | /usr/sbin/sendmail -v recipient@gmail.com
>
> 5. Step 4 was successful, so I added the following to my ~/.muttrc
> set sendmail="/usr/bin/esmtp"
> set envelope_from=yes
> set from="My Name <my.email@gmail.com>"
> set use_from=yes
> set edit_headers=yes
>
> I hope this helps.

Should we update the Gmail instructions in the first patch tutorial in
some way?

julia



>
> On Sun, Mar 30, 2025 at 2:38 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> >
> >
> >
> > On Sun, 30 Mar 2025, rujra wrote:
> >
> > >
> > > hi Julia,
> > > Yes I have checked this solution:
> > > < have solved it by heading Google's less secure apps page. And turn on the less secure apps. Now I can send mail through mutt application.>
> > >
> > > but my gmail account is not authorized to do that changes. as it suggest
> >
> > I don't actually have a gmail account.  Has someone else solved the
> > problem?  If I click on that link it tells me about something that has
> > changed since January 2025:
> >
> > Starting January 2025, less secure apps, third-party apps, or devices that
> > have you sign in with only your username and password will no longer be
> > supported for Google Workspace accounts. For exact dates, visit Google
> > Workspace Updates. To continue to use a specific app with your Google
> > Account, you’ll need to use a more secure type of access that doesn’t
> > share password data. Learn how to use Sign in with Google.
> >
> > But I don't know if that is relevant to your case.
> >
> > Have you followed these instructions from the Outreachy tutorial?
> >
> > ------------------------
> >
> > In gmail, go click the gear icon, go to "Settings", go to the tab
> > "Forwarding POP/IMAP", and click "Enable IMAP", then click on "Save
> > Changes".
> >
> > Then click the "Configuration instructions" link at the very bottom of the
> > page. Note the outgoing mail server information in "Step 2", and copy it
> > into the .esmtprc file, as shown in the next section.
> >
> > Next, make sure two-step verification is enabled on your gmail account,
> > then generate and use App Password.
> >
> > ------------------------
> >
> > julia
> >
> >
> >
> >
> > >
> > >
> > > On Sun, 30 Mar 2025, 6:53 pm Julia Lawall, <julia.lawall@inria.fr> wrote:
> > >
> > >
> > >       On Sun, 30 Mar 2025, rujra wrote:
> > >
> > >       > Hi Julia,Here I am unable to send message from my CLI :
> > >       > Error: "Error sending message, child exited 70 (Internal error.)"
> > >       > I am asking that , here when I am trying to send via CLI using mutt , I am unable to send it and says error as above.
> > >       > is this related to my sendmail path ? = <set sendmail="/usr/bin/esmtp"> ?
> > >       > kindly help , and thank you for your prompt response/help.
> > >
> > >       Did you try the suggestion at the end of the page here:
> > >
> > >       https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exited-with-error-70
> > >
> > >       I added back the mailing list because others may have this question in the
> > >       future, or know the answer to it now.
> > >
> > >       julia
> > >
> > >
> > >       > Thanking you,
> > >       > Rujra Bhatt
> > >       >
> > >       > On Sun, Mar 30, 2025 at 6:33 PM Julia Lawall <julia.lawall@inria.fr> wrote:
> > >       >
> > >       >
> > >       >       On Sun, 30 Mar 2025, rujra wrote:
> > >       >
> > >       >       > ============ ~/.muttrc ================
> > >       >       > set sendmail="/usr/bin/esmtp"
> > >       >       >   2 set envelope_from=yes
> > >       >       >   3 set from="Rujra Bhatt <braker.noob.kernel@gmail.com>"
> > >       >       >   4 set use_from=yes
> > >       >       >   5 set edit_headers=yes
> > >       >       >   6
> > >       >       >   7 set imap_user = 'braker.noob.kernel@gmail.com'
> > >       >       >   8 set imap_pass = 'mfpdcwklatrzlhbu'   #application password 16-digit.
> > >       >       >   9
> > >       >       >  10
> > >       >       >  11 set folder="imaps://imap.gmail.com"
> > >       >       >  12 set spoolfile="imaps://imap.gmail.com/INBOX"
> > >       >       >  13 set record="imaps://imap.gmail.com/[Gmail]/Sent Mail"
> > >       >       >  14 set postponed="imaps://imap.gmail.com/[Gmail]/Drafts"
> > >       >       >  15
> > >       >       >  16 set header_cache = "~/.mutt/cache/headers"
> > >       >       >  17 set message_cachedir = "~/.mutt/cache/bodies"
> > >       >       >  18 set certificate_file = "~/.mutt/certificates"
> > >       >       >  19
> > >       >       >  20 set from = 'braker.noob.kernel@gmail.com'
> > >       >       >  21 set realname = 'rujra bhatt'
> > >       >       >  22
> > >       >       >  23 #set smtp_url = 'smtp://braker.noob.kernel@smtp.gmail.com:587/'
> > >       >       >  24 #set smtp_pass='aplication'
> > >       >       >  25
> > >       >       >  26 set move = no
> > >       >       >  27 set imap_keepalive = 900
> > >       >       >  28
> > >       >       >  29 # Gmail-style keyboard shortcuts
> > >       >       >  30 macro index,pager ga "<change-folder>=[Gmail]/All<tab><enter>" "Go
> > >       >       > to all mail"
> > >       >       >  31 macro index,pager gi "<change-folder>=INBOX<enter>" "Go to inbox"
> > >       >       >  32 macro index,pager gs "<change-folder>=[Gmail]/Starred<enter>" "Go
> > >       >       > to starred messages"
> > >       >       >  33 macro index,pager gd "<change-folder>=[Gmail]/Drafts<enter>" "Go to drafts"
> > >       >       >  34 macro index,pager e "<enter-command>unset trash\n
> > >       >       > <delete-message>" "Gmail archive message    " # different from Gmail,
> > >       >       > but wanted to keep "y" to show folders.
> > >       >       >
> > >       >       >
> > >       >       > =========================================================
> > >       >       > Also I am attaching debug report here
> > >       >
> > >       >       How does the error manifest?  i didn't see anything alarming in the debug
> > >       >       output, but I may have missed something.
> > >       >
> > >       >       julia
> > >       >
> > >       >
> > >       >
> > >
> > >
> > >
>
--8323329-1049695399-1743343807=:23941--

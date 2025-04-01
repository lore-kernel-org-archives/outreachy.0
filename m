Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A85F20408A
	for <outreachy@lists.linux.dev>; Tue,  1 Apr 2025 14:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743518848; cv=none; b=G9X2xjv6K432KSrGinUjqQXvZTRb1baFV3jc/isJ3Za73DfGnYwo8lmn99OfB4msRL0ljBGwegFciftDzQTQkDleBaU5JVxy5JYNbdNOEQ0e4jazEJieAhdJr/qpL3AodGVA6w2TIa3yzjQlPaOjt1zpaky4Hv8C1mOzDPgsJLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743518848; c=relaxed/simple;
	bh=qwYPJWHtIFbztBGat3IR9LbxKvgHggEm8ZcjTyE9oQA=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=cPE2qxziXNMwTB5mhwUeO0GASuIi0cd0GPEMjcYN0u62fRZMHM2RWQmwLZ++T6eqysDjSz/d+i87Chrh0BPL+nx2zHCrYvFjQgxlPKJESjSZxC2RtUOX7S25yM4gl29zW8rLOq75rVMzQrVmzNHxI19+1/dMKh+jsVcACjSBNWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=L9WkHXJJ; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="L9WkHXJJ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=KafGmfujtE/12HARV0SYzdqfJxanBZQXOUOxCqKv+QM=;
  b=L9WkHXJJqeW0QdDbGCPGk2tedoK8I1hGzFR4zs68oSOhOF5ECPsIa0z9
   Lnfa9xNRjufR0yCopQCNEfSO3pWvNveHF6hbRjblG/5cNz7hY0pY662PG
   SW6EaqCx+EwRI3s5I4qaTyNb1rH3BJEwMiEZNo4PaaQJiF9s3oIxPlVdx
   M=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,293,1736809200"; 
   d="scan'208";a="215838265"
Received: from a81-173-67-6.dsl.pocosnet.nl (HELO hadrien) ([81.173.67.6])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Apr 2025 16:47:15 +0200
Date: Tue, 1 Apr 2025 16:47:13 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Samuel Abraham <abrahamadekunle50@gmail.com>
cc: Richard Akintola <princerichard17a@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Setup for sending mail via Mutt
In-Reply-To: <CADYq+fYe2o6goZthVjmNqtNRnFT+PATGKwzuZJiDzhEYgfBYXQ@mail.gmail.com>
Message-ID: <4efefa35-528c-2726-fb42-a8ac10ce2270@inria.fr>
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com> <CADYq+fYe2o6goZthVjmNqtNRnFT+PATGKwzuZJiDzhEYgfBYXQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1179399608-1743518835=:5124"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1179399608-1743518835=:5124
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 1 Apr 2025, Samuel Abraham wrote:

> On Tue, Apr 1, 2025 at 2:11 PM Richard Akintola
> <princerichard17a@gmail.com> wrote:
> >
> > The following assumes that you have installed Esmtp or Exim4 (default on Debian)
> > and you have generated password using App Password (for Gmail)
> >
> > Configure Esmtp
> > 1. Added the following to ~/.esmtp file
> > identity "my.email@gmail.com"
> > hostname smtp.gmail.com:587
> > username "my.email@gmail.com"
> > password "passwordGeneratedByAppPassword"
> > starttls required
> >
> > 2. Make sendmail point to esmtp using the command
> > sudo update-alternatives --install /usr/sbin/sendmail sendmail /usr/bin/esmtp 50
> >
> > 3. Test if esmtp can send mails
> > echo "Testing email via esmtp" | /usr/sbin/sendmail -v recipient@gmail.com
> >
> > 4. Add the following to ~/.muttrc file
> > set sendmail="/usr/bin/esmtp"
> > set envelope_from=yes
> > set from="My Name <my.email@gmail.com>"
> > set use_from=yes
> > set edit_headers=yes
> >
> > 5. Setup Done
>
> Hello Richard
>
> I have an observation.
> The initial challenge the person faced was that he could not send
> patches with mutt via Gmail.
> But there is a link in the <Set up email>  section of the firstPatch
> documentations that shows how to send
> patches using mutt via Gmail using IMAP.
> <approved email client>
>  https://www.kernel.org/doc/html/latest/process/email-clients.html
> The MUTT(TUI) section shows the complete configuration that allows
> mutt to be used to send mails
> using Gmail as a MTA and SMTP server, via IMAP, without the need for
> esmpt. This is what I used to set up and it allows
>  me to see the mails I sent via MUTT in the Sent Box of my Gmail account.
> I think the update that should be done in the documentation is to
> remove first paragraph
> of the <Gmail setUp> section that talks about enabling IMAP and
> Forwarding POP/IMAP
> since according to the settings page on Gmail, IMAP and Forwarding
> POP/IMAP are enabled
>  automatically starting. January 2025, so no need to enable anything.
>
> I think the above link should be inputted in the second paragraph of
> the <Gmail setup>
> after the two-factor authentication and the App password have been
> generated since the Mutt
> configuration needs them and so that no one can easily miss the link
> since the link is hidden in the
> <approved email client> text.
>
> You can wait to hear more from Julia.

Not me.  You all are the experts :)

Please conclude and then I will update the web page.

Thanks for your help!

julia


>
> Adekunle.
> >
> >
> > Configure Exim4 (default mail transfer agent - MTA on Debian)
> > 1. Make sendmail point to exim4 using the command
> > sudo update-alternatives --install /usr/sbin/sendmail sendmail /usr/sbin/exim4 100
> >
> > 2. Run the command below to add gmail and password to exim4 in the format below
> > sudo vi /etc/exim4/passwd.client
> >
> > smtp.gmail.com:my.email@gmail.com:passwordGeneratedByAppPassword
> >
> > 3. Add the following configuration to update-exim4.conf.conf via sudo
> >  e.g sudo vi /etc/exim4/update-exim4.conf.conf
> >
> > dc_eximconfig_configtype='smarthost'
> > dc_other_hostnames=''
> > dc_local_interfaces='127.0.0.1; ::1'
> > dc_readhost=''
> > dc_relay_domains=''
> > dc_minimaldns='false'
> > dc_relay_nets=''
> > dc_smarthost='smtp.gmail.com::587'
> > CFILEMODE='644'
> > dc_use_split_config='false'
> > dc_hide_mailname='true'
> > dc_mailname_in_oh='true'
> > dc_localdelivery='mail_spool'
> >
> > 3. Test if Exim4 can send mails
> > echo "Testing email via Exim4" | /usr/sbin/sendmail -v recipient@gmail.com
> >
> > 4. Add the following to ~/.muttrc
> > set sendmail="/usr/sbin/exim4"
> > set use_from=yes
> > set realname="Your Name"
> > set from="my.email@gmail.com"
> > set envelope_from=yes
> >
> > 5. Setup Done.
> >
>
--8323329-1179399608-1743518835=:5124--

Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB8FA1CEAA3
	for <outreachy@lists.linux.dev>; Tue, 15 Apr 2025 09:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744708639; cv=none; b=kssumMTwZtNbiXOtns0DFdLr2G8mjkgkEoWI6wj/9H6PjaRAKh5aagqjBoabnH//8hbmrfvkY2+lkjVpEMJkYGlkAbDBp+4VxgAqCjiJJffzFaVjE7tHgE1w3FQWlSGjO74JamGTBFINer4ZQqROxyJ2eP5t7wMm/kd2rADqCNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744708639; c=relaxed/simple;
	bh=6Vt92CmURxi/MPKRjr5pdQsgeSHwAvGOdLCwjyWKog0=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=P+zQMO9AAXTBPiyJW+ClEDYNzA96gGLTA8e/bhZFrNNi5olEAkL2YkIFZhzIiyckkP3nZg1Ok2KZSss9tHrjOIbliwpvTVs8x0778BbJ48Esf1miIZ6Hy7T27pN9d5pbW0NNyMHRTtU1HUjpq/MKAHwWgwmfW5iu+xuX/NJFu2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=j25Zx6vY; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="j25Zx6vY"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=e2B3AnYeF8XdpGrIaMMh9O3zRj+cx+Fb2qgPYv2yA2o=;
  b=j25Zx6vYXCma+FJQqKCxHCnPM8vY4Sn7BpqRn+JtSb0w01x7vmIt0D8b
   QdsIIK+f64d34SK7xSgs54zRfkWG8q7mrcccmp7A1j+5Fdg5ELaOQdcsS
   u4rNTJ9QI5hFFRppItskELOlNJkHsR6/RIP36iBJkqO+laxngA52D+nk/
   s=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.15,213,1739833200"; 
   d="scan'208";a="217921053"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Apr 2025 11:17:14 +0200
Date: Tue, 15 Apr 2025 05:17:14 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Richard Akintola <princerichard17a@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Setup for sending mail via Mutt
In-Reply-To: <CAMyr_b+C3qH2_ob7H2TQ=NTukc8_dpWf4ns1OYDNG95Zo+1P8A@mail.gmail.com>
Message-ID: <efc078ff-8529-57c6-1ff0-2f1d7d8bebf@inria.fr>
References: <67ebe607.050a0220.396ffc.2dd5@mx.google.com> <CAMyr_b+C3qH2_ob7H2TQ=NTukc8_dpWf4ns1OYDNG95Zo+1P8A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-522222188-1744708634=:3460"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-522222188-1744708634=:3460
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hello,

Again, please be more clear about what shoud be done.  What page is this
referring to, for example?

thanks,
julia

On Tue, 15 Apr 2025, Richard Akintola wrote:

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
>
> Building Linux Kernel on Debian
>
> The command "make bindeb-pkg" is a Debian-specific command and is used
> to build Debian (.deb) kernel packages from the Linux kernel source,
> these packages are created in the parent directory of the directory
> where the make command was used.
>
> Installation
> After running "make bindeb-pkg or make -jN bindeb-pkg", you can install the
> kernel with:
> cd ..
> sudo apt install ./*.deb
>
> And if needed, remove it safely using:
> sudo apt remove linux-image-<version> linux-headers-<version>
>
> Richard Akintola
>
>
--8323329-522222188-1744708634=:3460--

Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EC4A47
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 13:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743341020; cv=none; b=OQpzsKyJzQj5+2sVfbtPxT5nVTjPN+kTu5NsaOKw8nn/ePMtDdp2UYBDNfkkzMNrsdRSqDwuJCCUDHF7w2+9VbIjWvE+Drjl8HUUG47e7fVGf6h7w8PjdoL0JO9FACHTA3+sLActNi8NYOjlr5ySAaq1mrpNKvtwDj5jBwdAfm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743341020; c=relaxed/simple;
	bh=KEifAlYDpn3jbzb2uP/CPMxug1XyQEvVJLdnmuDPUkc=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=LPFE+L0uxWmg5zMRxtz86pMraeOk5OBkE4LssHZ/Jp4vcVHtQOrfJdz8yrYkja3VWmmD0pbuR7CWpBOniy+6R+eWeZ+qFHwLVDu/vQrHKZ/ekyEoz/KHIQC7Us2Jz0pFAoaAoajZK5wB/fxsLI0pgK26YZgVHP8YYNM5byfvxjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=ew0yzbhZ; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="ew0yzbhZ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version:content-id;
  bh=0HMh0LXAVx4SLgKwaho0q4uTHBwwFbIl0Qc8UH+PMjo=;
  b=ew0yzbhZyzGubJ0DVIHqvResFd1GveIsFSMVgYZVC/YbLlQv3rttK3Oz
   CaJnqRydXeCSOEiyyWAr5Ys/p0Gd9FJHzRx55CC81KhJcZuBQGHrWNUM3
   QhMgF2uVA3lTajf2cQXYiBTBYJ7IUqnD0wAk+Vm5r3dZQrj/MHW9Q8SY9
   s=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,289,1736809200"; 
   d="scan'208";a="112962414"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2025 15:23:35 +0200
Date: Sun, 30 Mar 2025 15:23:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: rujra <braker.noob.kernel@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing
 my all muttrc and everything
In-Reply-To: <CAG+54DaDAKJrx7GohFNNcmF8xr9Yd6TjpRCzKDXfUSkRoSJD=w@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2503301522210.23941@hadrien>
References: <CAG+54Da-77BH_+fEUscGoPXdDPgV00zuGC6OaLDE20V2t3eZYA@mail.gmail.com> <alpine.DEB.2.22.394.2503301502440.3689@hadrien> <CAG+54DaDAKJrx7GohFNNcmF8xr9Yd6TjpRCzKDXfUSkRoSJD=w@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-272430149-1743340961=:23941"
Content-ID: <alpine.DEB.2.22.394.2503301523030.23941@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-272430149-1743340961=:23941
Content-Type: text/plain; CHARSET=UTF-8
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.22.394.2503301523031.23941@hadrien>



On Sun, 30 Mar 2025, rujra wrote:

> Hi Julia,Here I am unable to send message from my CLI : 
> Error: "Error sending message, child exited 70 (Internal error.)"
> I am asking that , here when I am trying to send via CLI using mutt , I am unable to send it and says error as above. 
> is this related to my sendmail path ? = <set sendmail="/usr/bin/esmtp"> ? 
> kindly help , and thank you for your prompt response/help. 

Did you try the suggestion at the end of the page here:

https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exited-with-error-70

I added back the mailing list because others may have this question in the
future, or know the answer to it now.

julia


> Thanking you,
> Rujra Bhatt
>
> On Sun, Mar 30, 2025 at 6:33 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>       On Sun, 30 Mar 2025, rujra wrote:
>
>       > ============ ~/.muttrc ================
>       > set sendmail="/usr/bin/esmtp"
>       >   2 set envelope_from=yes
>       >   3 set from="Rujra Bhatt <braker.noob.kernel@gmail.com>"
>       >   4 set use_from=yes
>       >   5 set edit_headers=yes
>       >   6
>       >   7 set imap_user = 'braker.noob.kernel@gmail.com'
>       >   8 set imap_pass = 'mfpdcwklatrzlhbu'   #application password 16-digit.
>       >   9
>       >  10
>       >  11 set folder="imaps://imap.gmail.com"
>       >  12 set spoolfile="imaps://imap.gmail.com/INBOX"
>       >  13 set record="imaps://imap.gmail.com/[Gmail]/Sent Mail"
>       >  14 set postponed="imaps://imap.gmail.com/[Gmail]/Drafts"
>       >  15
>       >  16 set header_cache = "~/.mutt/cache/headers"
>       >  17 set message_cachedir = "~/.mutt/cache/bodies"
>       >  18 set certificate_file = "~/.mutt/certificates"
>       >  19
>       >  20 set from = 'braker.noob.kernel@gmail.com'
>       >  21 set realname = 'rujra bhatt'
>       >  22
>       >  23 #set smtp_url = 'smtp://braker.noob.kernel@smtp.gmail.com:587/'
>       >  24 #set smtp_pass='aplication'
>       >  25
>       >  26 set move = no
>       >  27 set imap_keepalive = 900
>       >  28
>       >  29 # Gmail-style keyboard shortcuts
>       >  30 macro index,pager ga "<change-folder>=[Gmail]/All<tab><enter>" "Go
>       > to all mail"
>       >  31 macro index,pager gi "<change-folder>=INBOX<enter>" "Go to inbox"
>       >  32 macro index,pager gs "<change-folder>=[Gmail]/Starred<enter>" "Go
>       > to starred messages"
>       >  33 macro index,pager gd "<change-folder>=[Gmail]/Drafts<enter>" "Go to drafts"
>       >  34 macro index,pager e "<enter-command>unset trash\n
>       > <delete-message>" "Gmail archive message    " # different from Gmail,
>       > but wanted to keep "y" to show folders.
>       >
>       >
>       > =========================================================
>       > Also I am attaching debug report here
>
>       How does the error manifest?  i didn't see anything alarming in the debug
>       output, but I may have missed something.
>
>       julia
>
>
>
--8323329-272430149-1743340961=:23941--

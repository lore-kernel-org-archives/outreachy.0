Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA49111CAF
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 14:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743343440; cv=none; b=FF4HrxVIp4evM9dX/9MWPfMBI7cr8uSGhQ8ASjVZ2gdBcx1vDBq/vitYkmnlvY/OrUKDkigpM5S4/goI5YVDx2GLzxeCZI4B8CyEgF019iYZRDQZ8Frnp4uZQzFQsW/6Jh1tSYp2qTqPvuNtMeG0vv7g3s2FJgTNm1uS34tN5/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743343440; c=relaxed/simple;
	bh=nbgvjPQj2uzO5W9PvMrA+VREJnnzZHcawxFvyyugGHE=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=TWMN6sHPpoH++wk952+wuzqpVfoXvBoGIFIU46VLQOFpXQkN5zV67PjK66JyCVE3Qgd6CqnRjmYoEMT2LqVUeaiWAn6Xd3Jv3XKLHnMESM12JHAsSsPf8E3BJjM38nrWosagwBVD/F1OJkR+D5HTo2nYJoXamlpp1CrGuGc33Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=brTCyENU; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="brTCyENU"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version:content-id;
  bh=mS/wSKNbDoF5CvjGjWBIZPQ6caNXfQPHw5xB0s080/M=;
  b=brTCyENUyTJpfrxmnAQPZuZ4BpGCwl699TBUDPF8koupSSSa2eTRjraK
   q2s15Tbdp4hrFgCwgUqmw1DCpssur35ZZfQK/J8NLprdE90JoxZS/SueE
   +6ysodv0fFnAdg6hodhDF42EnlZW/xGh20arHJrtrRkH2u/v29UeCTFTI
   w=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,289,1736809200"; 
   d="scan'208";a="112963288"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2025 16:03:56 +0200
Date: Sun, 30 Mar 2025 16:03:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: rujra <braker.noob.kernel@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing
 my all muttrc and everything
In-Reply-To: <CAG+54DY4hqe3nBkKrZnvbnZRWT4QfPH1DuEXEv=Bgan2KyVEbg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2503301603130.23941@hadrien>
References: <CAG+54Da-77BH_+fEUscGoPXdDPgV00zuGC6OaLDE20V2t3eZYA@mail.gmail.com> <alpine.DEB.2.22.394.2503301502440.3689@hadrien> <CAG+54DaDAKJrx7GohFNNcmF8xr9Yd6TjpRCzKDXfUSkRoSJD=w@mail.gmail.com> <alpine.DEB.2.22.394.2503301522210.23941@hadrien>
 <CAG+54DZcFiH2SrAR_Hiquw6LxZ8wJmOBYKfh0HWM+dR2i6LqCA@mail.gmail.com> <alpine.DEB.2.22.394.2503301535470.23941@hadrien> <CAG+54Dac4tBcwWAF5MhCWbd58Cg2rN64_T_a6RxyLRM0Wyj07A@mail.gmail.com> <CAG+54Dan8jsG9fxaToQungwGV9Zt-o-RnfXfU=WW3oSZgsPLmQ@mail.gmail.com>
 <CAG+54DY4hqe3nBkKrZnvbnZRWT4QfPH1DuEXEv=Bgan2KyVEbg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-44476160-1743343413=:23941"
Content-ID: <alpine.DEB.2.22.394.2503301603490.23941@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-44476160-1743343413=:23941
Content-Type: text/plain; CHARSET=UTF-8
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.22.394.2503301603491.23941@hadrien>

On Sun, 30 Mar 2025, rujra wrote:

> On this page: "Configuration instructions" 
> I am able to see only this : 
> here I have attached Screenshot

Have you tried this video?

https://www.youtube.com/watch?v=sKJ_Mzc7hM8

julia

>
> On Sun, Mar 30, 2025 at 7:19 PM rujra <braker.noob.kernel@gmail.com> wrote:
>       regarding the second step : 
>       Then click the "Configuration instructions" link at the very bottom of the
>       page. Note the outgoing mail server information in "Step 2", and copy it
>       into the .esmtprc file, as shown in the next section. 
>
>       Here I am unable to find "Outgoing Mail Server information" on "Configuration instructions" this page. 
>       that is what causes the error / problem ? 
>       kindly help.
>
> On Sun, Mar 30, 2025 at 7:17 PM rujra <braker.noob.kernel@gmail.com> wrote:
>       Hi Julia, 
>       I have done this : In gmail, go click the gear icon, go to "Settings", go to the tab
>       "Forwarding POP/IMAP", and click "Enable IMAP", then click on "Save
>       Changes". 
>       and by default it was enabled for me , as I can see my mails on CLI , using mutt 
>
>
>
> On Sun, Mar 30, 2025 at 7:08 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>       On Sun, 30 Mar 2025, rujra wrote:
>
>       >
>       > hi Julia,
>       > Yes I have checked this solution:
>       > < have solved it by heading Google's less secure apps page. And turn on the less secure apps. Now I can send mail through mutt application.>
>       >
>       > but my gmail account is not authorized to do that changes. as it suggest
>
>       I don't actually have a gmail account.  Has someone else solved the
>       problem?  If I click on that link it tells me about something that has
>       changed since January 2025:
>
>       Starting January 2025, less secure apps, third-party apps, or devices that
>       have you sign in with only your username and password will no longer be
>       supported for Google Workspace accounts. For exact dates, visit Google
>       Workspace Updates. To continue to use a specific app with your Google
>       Account, you’ll need to use a more secure type of access that doesn’t
>       share password data. Learn how to use Sign in with Google.
>
>       But I don't know if that is relevant to your case.
>
>       Have you followed these instructions from the Outreachy tutorial?
>
>       ------------------------
>
>       In gmail, go click the gear icon, go to "Settings", go to the tab
>       "Forwarding POP/IMAP", and click "Enable IMAP", then click on "Save
>       Changes".
>
>       Then click the "Configuration instructions" link at the very bottom of the
>       page. Note the outgoing mail server information in "Step 2", and copy it
>       into the .esmtprc file, as shown in the next section.
>
>       Next, make sure two-step verification is enabled on your gmail account,
>       then generate and use App Password.
>
>       ------------------------
>
>       julia
>
>
>
>
>       >
>       >
>       > On Sun, 30 Mar 2025, 6:53 pm Julia Lawall, <julia.lawall@inria.fr> wrote:
>       >
>       >
>       >       On Sun, 30 Mar 2025, rujra wrote:
>       >
>       >       > Hi Julia,Here I am unable to send message from my CLI : 
>       >       > Error: "Error sending message, child exited 70 (Internal error.)"
>       >       > I am asking that , here when I am trying to send via CLI using mutt , I am unable to send it and says error as above. 
>       >       > is this related to my sendmail path ? = <set sendmail="/usr/bin/esmtp"> ? 
>       >       > kindly help , and thank you for your prompt response/help. 
>       >
>       >       Did you try the suggestion at the end of the page here:
>       >
>       >       https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exited-with-error-70
>       >
>       >       I added back the mailing list because others may have this question in the
>       >       future, or know the answer to it now.
>       >
>       >       julia
>       >
>       >
>       >       > Thanking you,
>       >       > Rujra Bhatt
>       >       >
>       >       > On Sun, Mar 30, 2025 at 6:33 PM Julia Lawall <julia.lawall@inria.fr> wrote:
>       >       >
>       >       >
>       >       >       On Sun, 30 Mar 2025, rujra wrote:
>       >       >
>       >       >       > ============ ~/.muttrc ================
>       >       >       > set sendmail="/usr/bin/esmtp"
>       >       >       >   2 set envelope_from=yes
>       >       >       >   3 set from="Rujra Bhatt <braker.noob.kernel@gmail.com>"
>       >       >       >   4 set use_from=yes
>       >       >       >   5 set edit_headers=yes
>       >       >       >   6
>       >       >       >   7 set imap_user = 'braker.noob.kernel@gmail.com'
>       >       >       >   8 set imap_pass = 'mfpdcwklatrzlhbu'   #application password 16-digit.
>       >       >       >   9
>       >       >       >  10
>       >       >       >  11 set folder="imaps://imap.gmail.com"
>       >       >       >  12 set spoolfile="imaps://imap.gmail.com/INBOX"
>       >       >       >  13 set record="imaps://imap.gmail.com/[Gmail]/Sent Mail"
>       >       >       >  14 set postponed="imaps://imap.gmail.com/[Gmail]/Drafts"
>       >       >       >  15
>       >       >       >  16 set header_cache = "~/.mutt/cache/headers"
>       >       >       >  17 set message_cachedir = "~/.mutt/cache/bodies"
>       >       >       >  18 set certificate_file = "~/.mutt/certificates"
>       >       >       >  19
>       >       >       >  20 set from = 'braker.noob.kernel@gmail.com'
>       >       >       >  21 set realname = 'rujra bhatt'
>       >       >       >  22
>       >       >       >  23 #set smtp_url = 'smtp://braker.noob.kernel@smtp.gmail.com:587/'
>       >       >       >  24 #set smtp_pass='aplication'
>       >       >       >  25
>       >       >       >  26 set move = no
>       >       >       >  27 set imap_keepalive = 900
>       >       >       >  28
>       >       >       >  29 # Gmail-style keyboard shortcuts
>       >       >       >  30 macro index,pager ga "<change-folder>=[Gmail]/All<tab><enter>" "Go
>       >       >       > to all mail"
>       >       >       >  31 macro index,pager gi "<change-folder>=INBOX<enter>" "Go to inbox"
>       >       >       >  32 macro index,pager gs "<change-folder>=[Gmail]/Starred<enter>" "Go
>       >       >       > to starred messages"
>       >       >       >  33 macro index,pager gd "<change-folder>=[Gmail]/Drafts<enter>" "Go to drafts"
>       >       >       >  34 macro index,pager e "<enter-command>unset trash\n
>       >       >       > <delete-message>" "Gmail archive message    " # different from Gmail,
>       >       >       > but wanted to keep "y" to show folders.
>       >       >       >
>       >       >       >
>       >       >       > =========================================================
>       >       >       > Also I am attaching debug report here
>       >       >
>       >       >       How does the error manifest?  i didn't see anything alarming in the debug
>       >       >       output, but I may have missed something.
>       >       >
>       >       >       julia
>       >       >
>       >       >
>       >       >
>       >
>       >
>       >
>
>
>
--8323329-44476160-1743343413=:23941--

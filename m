Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6610D4879B
	for <outreachy@lists.linux.dev>; Sun, 30 Mar 2025 13:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743339816; cv=none; b=B3KOAybZasx5bz4XBtZkrPRAgyMZ7vcSP0QqiOUpVXDDUbSzAlQQNtSBPqDpnawnDSscVnt0w6WR9AjdjzajdLIgSMaAJslPsmGIiXej2R/COiCVfJexRrq5EbgyHn6xQcfz9fPp2XiLGrn2z9M56ojzNV+CjpT1xblF/nBq2f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743339816; c=relaxed/simple;
	bh=/L8A/CHxwvji9LmqNhn/HnYr/TwjCRuSL5b+cHXyRSo=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=nHJ/WsgR6aYjTf7CpoakS96j4N4spRaY2f854ecBhhEv6FYr2c+/bBrsbmuMqi1u3FGjId+t0L6wuUV+JU1L/1LiULOpTvK/KdA8vwuXxsklq/S/34UNej6gwjb2uPJO/xZ33bSh5SssAe9LehFExwbzkg4NQ944C+SKypXUgCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=uJZsccj4; arc=none smtp.client-ip=192.134.164.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="uJZsccj4"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=YVqFrTFm+8O7e/Rj0+e92yPbHhO9XkTDIyf862QbNTk=;
  b=uJZsccj4hNj2RBOR8sZiy0raf69vm4H19bf59iB3+TePBRXDto2yuMK+
   Oemt59MCiIW07V9aWCIWt3c/VP2CDHiLUPs1Fgrrcrv4HPzpOrb79A/WB
   AGLpztg4mCGVOs8pgiXrEz2DPGhwMbMBlorNBN0nqh9z0Quun3ErCTMIw
   4=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.14,289,1736809200"; 
   d="scan'208";a="112962062"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2025 15:03:24 +0200
Date: Sun, 30 Mar 2025 15:03:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: rujra <braker.noob.kernel@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: I am unable to setup and send mail via mutt Here I am sharing
 my all muttrc and everything
In-Reply-To: <CAG+54Da-77BH_+fEUscGoPXdDPgV00zuGC6OaLDE20V2t3eZYA@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2503301502440.3689@hadrien>
References: <CAG+54Da-77BH_+fEUscGoPXdDPgV00zuGC6OaLDE20V2t3eZYA@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 30 Mar 2025, rujra wrote:

> ============ ~/.muttrc ================
> set sendmail="/usr/bin/esmtp"
>   2 set envelope_from=yes
>   3 set from="Rujra Bhatt <braker.noob.kernel@gmail.com>"
>   4 set use_from=yes
>   5 set edit_headers=yes
>   6
>   7 set imap_user = 'braker.noob.kernel@gmail.com'
>   8 set imap_pass = 'mfpdcwklatrzlhbu'   #application password 16-digit.
>   9
>  10
>  11 set folder="imaps://imap.gmail.com"
>  12 set spoolfile="imaps://imap.gmail.com/INBOX"
>  13 set record="imaps://imap.gmail.com/[Gmail]/Sent Mail"
>  14 set postponed="imaps://imap.gmail.com/[Gmail]/Drafts"
>  15
>  16 set header_cache = "~/.mutt/cache/headers"
>  17 set message_cachedir = "~/.mutt/cache/bodies"
>  18 set certificate_file = "~/.mutt/certificates"
>  19
>  20 set from = 'braker.noob.kernel@gmail.com'
>  21 set realname = 'rujra bhatt'
>  22
>  23 #set smtp_url = 'smtp://braker.noob.kernel@smtp.gmail.com:587/'
>  24 #set smtp_pass='aplication'
>  25
>  26 set move = no
>  27 set imap_keepalive = 900
>  28
>  29 # Gmail-style keyboard shortcuts
>  30 macro index,pager ga "<change-folder>=[Gmail]/All<tab><enter>" "Go
> to all mail"
>  31 macro index,pager gi "<change-folder>=INBOX<enter>" "Go to inbox"
>  32 macro index,pager gs "<change-folder>=[Gmail]/Starred<enter>" "Go
> to starred messages"
>  33 macro index,pager gd "<change-folder>=[Gmail]/Drafts<enter>" "Go to drafts"
>  34 macro index,pager e "<enter-command>unset trash\n
> <delete-message>" "Gmail archive message    " # different from Gmail,
> but wanted to keep "y" to show folders.
>
>
> =========================================================
> Also I am attaching debug report here

How does the error manifest?  i didn't see anything alarming in the debug
output, but I may have missed something.

julia

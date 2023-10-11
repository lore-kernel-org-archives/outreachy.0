Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF8EA101FF
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 10:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="mWEbxn6A"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=SPvYibMDpekVo9Xt3Xh2IDMW6rPqKdZ20lalqdzefZ0=;
  b=mWEbxn6AR/XtENqysDh75IcEZ5gfRYfKrSKR1yeCu/ENDIv4dfVyG4pk
   HR2Sl0AvyH5LsWWE2eWgEplOv9/FVs2L68DVKrDJ3ebfEmFJHrbpmH9W+
   SFwEZ83O7aAsUzhGTqaWqn8RNmxNrzlVLuHaPsHK+dCdwEE+fBua8OiB5
   4=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,214,1694728800"; 
   d="scan'208";a="68392302"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 12:33:58 +0200
Date: Wed, 11 Oct 2023 12:33:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy tip] Guide to setup mutt for Gmail
In-Reply-To: <ZSZ5ZfwTdkHcG5WL@gilbert-PC>
Message-ID: <ef8462f-a4bf-3659-126-488f1d478d55@inria.fr>
References: <ZSZ5ZfwTdkHcG5WL@gilbert-PC>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Oct 2023, Gilbert Adikankwu wrote:

> Hello,
>
> This is a guide to setup mutt, the recommended text-based email client
> for the Outreachy Linux community.
>
> If you have not read the newbies tutorial, please read it first to see the
> steps for the initial setup of mutt. This guide is a follow-up to the initial
> setup steps decribed in the newbies tutorial.
>
> Here, you will learn how to setup your mutt to access emails in
> your Gmail inbox and reply to them.
>
> Next, set up the mail client, mutt, with some defaults, by creating a
> .muttrc file in your /home and add the following lines to it:
>
> set sendmail="/usr/bin/esmtp"
> set envelope_from=yes
> set from="Your name <your_username@gmail.com>"
> set use_from=yes
> set edit_headers=yes
> set editor="vi"
> set send_charset="us-ascii:utf-8"
> set sort_aux =  last-date-received
> set sort = reverse-threads
>
> # IMAP settings
> set imap_user = "your_username@gmail.com"
> set imap_pass = "mailbox/app password"
>
> # SMTP settings
> set smtp_url = "smtps://your_username@smtp.gmail.com"
> set smtp_pass = "mailbox/app password"
>
> # Remote Gmail folders
> set folder = "imaps://imap.gmail.com:993"
> set spoolfile = "+INBOX"
> set record = "+[Gmail]/Sent Mail"
> set trash = "+[Gmail]/Trash"
> set postponed = "+[Gmail]/Drafts"
>
>
> Note: The imap_pass and smtp_pass can be your App password or email
> password
>
> I hopes this helps

Thanks!

julia

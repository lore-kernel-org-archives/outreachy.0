Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B806A44
	for <outreachy@lists.linux.dev>; Sun, 19 Mar 2023 08:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Rvm2jsgK+161Zahh8TTCEIp+evnc8Frj6KpxdnITrZU=;
  b=WQMzqaGC153QvaGF/Won1BSFmmYvw46qE08M+19/ioPi4PN13MS7P3kl
   ZG51QCwGuIlMF9mayBhTDnRRisLMEEIaY3giNkX9NxqbF3oDqiFNg4jBM
   U/fnGUhvhQhorMHg5hej/uJcYqCnbhS84K/ig6oG8mlJLNL9xQ8wyBm2y
   U=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,273,1673910000"; 
   d="scan'208";a="50598029"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2023 09:35:50 +0100
Date: Sun, 19 Mar 2023 09:35:50 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: bagasdotme@gmail.com, outreachy@lists.linux.dev
Subject: Re: your mail
In-Reply-To: <20230319080955.GA50179@sumitra.com>
Message-ID: <alpine.DEB.2.22.394.2303190934200.2867@hadrien>
References: <20230319080955.GA50179@sumitra.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Actually, the only issue I faced was that the outreachyfirstpatch
> document does not contain the information of how one can set their inbox in mutt.
> Due to which I had problems to send and reply mails. This below
> configuration update will enable the inbox at the client side.
>
> How about this...
>
> Under the section "Configure esmtp":
>
> ###
> Next, set up the mail client, mutt, with some defaults, by creating a .muttrc file in your homedirectory:
>
> Note: The imap_pass, smtp_pass would be the App password or
>  	  the mailbox password.
>
>  		set sendmail="/usr/bin/esmtp"
>  		set envelope_from=yes
>  		set from="Your Name <my.email@gmail.com>"
>  		set use_from=yes
>  		set edit_headers=yes
>
>  		# IMAP settings
>  		set imap_user = "username@gmail.com"
>  		set imap_pass = "<mailbox password>"
>
>  		# SMTP settings
>  		set smtp_url = "smtps://username@smtp.gmail.com"
>  		set smtp_pass = "<mailbox password>"
>
>  		# Remote Gmail folders
>  		set folder = "imaps://imap.gmail.com/"
>  		set spoolfile = "+INBOX"
>  		set postponed = "+[Gmail]/Drafts"
>  		set record = "+[Gmail]/Sent Mail"
>  		set trash = "+[Gmail]/Trash"
> ###

Does this have anything to do with esmpt?

Does "<mailbox password>" mean that you have to put your password in plain
text?

julia

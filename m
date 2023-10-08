Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABDEE8BE7
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 10:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="GDnbhmUc"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=LoO4SLoewgvKaN0oo9I3wbwGH+Rlm9/HWwTDCp3ktq0=;
  b=GDnbhmUcxKtK9hXKf6p+LHC8YGEzqgKVJwzJbRxXInXWc531n5aMIHCp
   +mtrgPQ3Yn+sC2YKCofsW1v22VxL478Q0QB26APlI3zl9xPOqeyrQ+66v
   ekx5XCor2QsNwJcynfm8O+4wynmlybKlN/seIV4+qP8PyZGzDvwN6Cn8A
   k=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="68076304"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 12:27:20 +0200
Date: Sun, 8 Oct 2023 12:27:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Assistance Needed: Error sending message, child exited 70
 (Internal error.).
In-Reply-To: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310081225160.3223@hadrien>
References: <CAOJCLCujLWVgMy-DrPsj2LLWz07t6UZOoSJU7jcVLgpbemyfpw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:

> Hello,
>
> I hope this message finds you well.
>
> I am currently testing my email setup using Mutt and have encountered
> an issue that I could use some assistance with. When attempting to
> send a test email, I receive the following error message:
> Error sending message, child exited 70 (Internal error.).
>
> To provide some context, I have followed the previous steps to set up
> my email configuration, which involved creating both a .esmtprc and a
> .muttrc file. Below is the content of the email I am trying to send:
>
> From: nakityojoanita51@gmail.com
> To: nakityojoanita51@gmail.com
> Cc:
> Bcc:
> Subject: Greetings
> Reply-To:
> Fcc: ~/sent
> Mix: <no chain defined>
> Security: None
>
> If you could offer any insights or guidance on resolving this issue, I
> would greatly appreciate it.

Maybe the following page will help you:

https://stackoverflow.com/questions/38372023/ubuntu-sendmail-exited-with-error-70

Look at the answer at the very bottom of the page.

julia


>
> Thank you for your time and assistance.
>
> Warm regards, Joanita
>
>

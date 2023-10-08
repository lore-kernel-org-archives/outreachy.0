Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F16D3D82
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 06:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="oMQBEm85"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=b4GK87Wp5/xvK8ii5kefRWMwaO6Qm8rfMhGkbnoy334=;
  b=oMQBEm85Odz2Hlmc/cydrvM5CMILcyz1XxgReSurjHiIrDzBQBFfHmoB
   EZ+qk5BoaWujOc6TCaVGEpfKtWsFc+pESkRiB4YNqSG3smFyJTyr/O0Ou
   YOK4mRz/tVb5N71307ZmtxAvJaLHb3oyqhINSihurv0nMLqlX3Gib8mIv
   I=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="130048087"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 08:06:19 +0200
Date: Sun, 8 Oct 2023 08:06:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Seeking assistance on Creating a new patch
In-Reply-To: <CAOJCLCvdcAqAN=DEE9Yx7gfW7fLhfDaYoU-zK1_KWNd5-Chh-w@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310080804100.3223@hadrien>
References: <CAOJCLCvdcAqAN=DEE9Yx7gfW7fLhfDaYoU-zK1_KWNd5-Chh-w@mail.gmail.com>
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
> I am currently following the instructions outlined in the
> KernelNewbies Outreachyfirstpatch guide
> https://kernelnewbies.org/Outreachyfirstpatch and have reached the
> "Set up email" section. My operating system is Ubuntu 22.04, and I am
> attempting to send my first patch to myself using Git, as per the
> provided directions.
>
> To set up my email software, I executed the following commands:
> sudo apt-get install esmtp
> sudo apt-get install mutt
> sudo apt-get install git-email

So now you have mutt working?  Like you can use it to send mail?  I think
there is more to do than just download the software.

>
> I referred to the official documentation on email clients
> https://www.kernel.org/doc/html/latest/process/email-clients.html.
> However, when I attempted to run the command git am raw_email.txt, I
> encountered the following error message:
> fatal: not a git repository (or any of the parent directories): .git

When you run git am raw_email.txt, raw_email.txt should be a patch that
you have sent to yourself.  This patch should be created within a git
repository, such as the Linux kernel.  You should run the git am command
within that same repository.

Maybe you can provide a more detailed trace of all of the commands that
you have run.

julia

> I am unsure about how to proceed from here. Any assistance or guidance
> you can provide would be greatly appreciated.
>
> Thank you in advance for your help.
>
> Best regards, Joanita
>
>

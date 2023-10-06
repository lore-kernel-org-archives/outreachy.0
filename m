Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4024414
	for <outreachy@lists.linux.dev>; Fri,  6 Oct 2023 06:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="DiXr30cw"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=X+8hLhkAmf757Do2o7Xik+pQfS19V/DjzPWGnWokhZo=;
  b=DiXr30cwzpc3G6bx71xgSlP1IzOWWR11rayltNM+nSdAlFilIRyiFUfy
   fzYVxnMNqzmf8hjtokeJk0JOQxI+vL4xS7meJDZF8AgFr5oHcOtQeO4XX
   QjoDyVHMeBzWGUz3C6FF8BKCpYMq4homMNwnrRWg88L+wp2RtPAY3N3RG
   4=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,203,1694728800"; 
   d="scan'208";a="129796412"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Oct 2023 08:48:53 +0200
Date: Fri, 6 Oct 2023 08:48:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Jeremiah John <jeremiahjohn08706@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Checkpatch.pl throws an error for an object file
In-Reply-To: <ZR8t36IHi65t900o@DESKTOP-EVNFDUR.home>
Message-ID: <alpine.DEB.2.22.394.2310060847230.3197@hadrien>
References: <ZR8t36IHi65t900o@DESKTOP-EVNFDUR.home>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 5 Oct 2023, Jeremiah John wrote:

> I have ran checkpatch.pl on drivers/staging/rtl8192e/ to find any drivers that need modification, and I received the following error:
>
> drivers/staging/rtl8192e/dot11d.o
> ---------------------------------
> ERROR: Does not appear to be a unified-diff format patch
>
> all other files checked within the rtl8192e folder had no formatting errors reported by the script. My question is why checkpatch would throw a formatting error for object code?

I ran checkpatch on all the .c files in drivers/staging with thf following
command line:

find . -type f -name "*c" -exec ../../scripts/checkpatch.pl -f {} \; > & checks

I found issues in rtl8192e.

Note that one could extend the above command line to include header files
too.

Did you try compiling and booting the kernel already?

julia

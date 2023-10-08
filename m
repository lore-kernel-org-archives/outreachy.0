Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6F95380
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 06:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="pvuJXoxS"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=mUEzwYeHFrIvKwXUZ6A5iliHU6qZGhMf3zSH8N4g4AU=;
  b=pvuJXoxSF4OOH3/AP8Slsl54aRP57PPTOm6o4JoOM6F7oIqxb+J+LgBr
   UKOc91Y7Xu76STDEz6rkN9LnM526w0wYMlBxW/awkxY1rgj1iBDwooVjs
   d10nu2jhfpyiQ/gogTwYAh1WvEszKWtF/xL4B+T0XG8cSkM0HymZyUPRs
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="130048344"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 08:12:52 +0200
Date: Sun, 8 Oct 2023 08:12:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
cc: outreachy <outreachy@lists.linux.dev>
Subject: Re: [ERROR] HELP NEEDED
In-Reply-To: <CAKrXSsbDAA=VXpy5kO33S9LkjLVGyZNKsmN2ttk_fK0kKRRLAw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310080811050.3223@hadrien>
References: <CAKrXSsbDAA=VXpy5kO33S9LkjLVGyZNKsmN2ttk_fK0kKRRLAw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 8 Oct 2023, Gilbert Adikankwu wrote:

> Hello fellow community member,
>
> I'm trying to build the kernel on Ubuntu 22.04 LTS natively installed
> on my computer and I'm getting this error message:
>
> arch/x86/entry/thunk_64.o: warning: objtool: missing symbol table
> make[2]: *** [scripts/Makefile.build:361: arch/x86/entry/thunk_64.o] Error 1
> make[2]: *** Deleting file 'arch/x86/entry/thunk_64.o'
> make[1]: *** [scripts/Makefile.build:497: arch/x86/entry] Error 2
> make: *** [Makefile:1764: arch/x86] Error 2
>
> It seems like a file is missing but I don't know if that is possible
> because I just cloned the repository and didn't touch any file.

Maybe there was a previous error.  Start over with make clean and then use
just make without the -j option.  It will take time, but you can see
better what is going on.  You can also do make >& out.  Then you will have
all of the output in the file out, and you can look through it to see what
succeeded and what failed.

julia


>
> Please advise
> Gilbert
>

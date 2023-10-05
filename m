Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C475387
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 08:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="C+tyhEYt"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=fbh2xlAvrEJr1PEm5VHceiz7s1+2Bpheov9ZpPyi390=;
  b=C+tyhEYtiUflnx/WhLExnKfA82TxP6hOargkeKGtBOYO9g85vDQuOYvT
   RvO/eAI8CH0SwYwHs7M6FRskU0l+9ApDeAUuYCFdUR/4neEH+K99ad6c1
   5YX6rCDiL7PlnwdS/hUmYDqCyPazjlZc5FiLIyjJwbH5zyWf3d69B1smV
   s=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,202,1694728800"; 
   d="scan'208";a="129591863"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 10:24:37 +0200
Date: Thu, 5 Oct 2023 10:24:36 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Isoken Ibizugbe <isokenjune@gmail.com>
cc: sumitra sharma <sumitraartsy@gmail.com>, 
    Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: [Error]
In-Reply-To: <CAJHH8bF7D5dREdF=4fmGhC6rnEWPyZ7+vW1C2mwuy_jAwaJ8Bw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310051021430.3375@hadrien>
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com> <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan> <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com> <CALPt=awuCRF3_Z5-Qh3biBBEuS7fVkvxQyfFcxuv8Snww6csMA@mail.gmail.com>
 <CAJHH8bEvLeEytHH7FR-eiGeshLmjfj9syjNa0ekuDbgT2q+=3w@mail.gmail.com> <CALPt=aznty=FRpmNXMvVVJKSH48OibdrQ5cr68ubEO2b8b+atg@mail.gmail.com> <CAJHH8bF7D5dREdF=4fmGhC6rnEWPyZ7+vW1C2mwuy_jAwaJ8Bw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1886426607-1696494277=:3375"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1886426607-1696494277=:3375
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:

> Thank you for the clarification.

I think your configuration is too big.  You can try make localmodconfig
and see if you get a smaller configuration.

Does your VM actually have 4 cores?

julia


>
> On Thu, Oct 5, 2023 at 8:01 AM sumitra sharma <sumitraartsy@gmail.com> wrote:
> >
> >
> >
> > On Thu, 5 Oct, 2023, 12:24 pm Isoken Ibizugbe, <isokenjune@gmail.com> wrote:
> > Yes I copied the .config file of the currently running kernel and I'm
> > using Ubuntu 20.04LTS on a virtual box, I renamed the
> > CONFIG_LOCALVERSION in the .config and commented out these lines
> > CONFIG_SYSTEM_TRUSTED_KEY
> > and CONFIG_MODULE_SIG_KEY, then ran make -j4, but the kernel has been
> > compiling for 10 hours now. please is this normal?
> >
> > Hello Isoken,
> >
> > Yes, it is normal. The compilation time depends upon how much RAM you have allocated to your virtual machine. I still use virtual machines and sometimes the kernel building takes two days  :)
> >
> > Regards
> > Sumitra
>
>
--8323329-1886426607-1696494277=:3375--

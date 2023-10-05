Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496887F
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 09:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="g6sOf5Qd"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version:content-id;
  bh=UbcmBJtM+8yU7TqNoYpHoXN8pfDW9EW48IqVKZIBNQ8=;
  b=g6sOf5Qdot7w7VYUY+1+JC7Dyn6AJ7wgzVNTbiC3lB5SNSzr18uotVRy
   +1+d03X8XCSEMi2+uK/OGkMfWP++6iCnRzY/EYUQqer2G23neJq6BxfYm
   hbWUX2krx0A3WWPj6LbpZ6fcV420g4YTShyLxhx/VN2CfMTDAqfdXOx1+
   E=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,202,1694728800"; 
   d="scan'208";a="129622211"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 11:44:50 +0200
Date: Thu, 5 Oct 2023 11:44:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Isoken Ibizugbe <isokenjune@gmail.com>
cc: Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: [Error]
In-Reply-To: <CAJHH8bFETe6cfkG-w9H=UywxTC9xGss40+2r_EhDJT3k8Z5fvg@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310051143580.3375@hadrien>
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com> <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan> <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com> <CALPt=awuCRF3_Z5-Qh3biBBEuS7fVkvxQyfFcxuv8Snww6csMA@mail.gmail.com>
 <CAJHH8bEvLeEytHH7FR-eiGeshLmjfj9syjNa0ekuDbgT2q+=3w@mail.gmail.com> <CALPt=aznty=FRpmNXMvVVJKSH48OibdrQ5cr68ubEO2b8b+atg@mail.gmail.com> <CAJHH8bF7D5dREdF=4fmGhC6rnEWPyZ7+vW1C2mwuy_jAwaJ8Bw@mail.gmail.com> <alpine.DEB.2.22.394.2310051021430.3375@hadrien>
 <CAJHH8bGGship88xdjep302+wq0jbaC6VUbcwEW7DotUKY4bysw@mail.gmail.com> <alpine.DEB.2.22.394.2310051048360.3375@hadrien> <CAJHH8bFETe6cfkG-w9H=UywxTC9xGss40+2r_EhDJT3k8Z5fvg@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2126115087-1696499042=:3375"
Content-ID: <alpine.DEB.2.22.394.2310051144150.3375@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2126115087-1696499042=:3375
Content-Type: text/plain; CHARSET=UTF-8
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.22.394.2310051144151.3375@hadrien>



On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:

> Thanks for the help, I set the .config to default and commented out the former instructions like before and ran make. It compiled successful.

I'm not sure to understand.  You mean that after 10 hours it finally
completed?  Or that you started over and it became faster?

julia


>
> On Thu, 5 Oct 2023 at 9:56 AM, Julia Lawall <julia.lawall@inria.fr> wrote:
>
>
>       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>
>       > I just checked and the virtual machine has 4 CPUs but is set to 2, should I end the building process and use make localmodconfig?
>
>       I think you can run make localmodconfig from another directory, to have
>       the generated files be put in that other directory.  You could do:
>
>       make O=/path/to/mydir localmodconfig
>
>       https://stackoverflow.com/questions/15969694/make-o-files-in-separate-folder-in-linux-kernel-compilation
>
>       I have not tried this though.  Copy your .config file to some other file
>       first for easy reference.
>
>       In this way, maybe you can keep your current compilation running and see
>       if make localmodconfig would be beneficial.
>
>       julia
>
>       >
>       > On Thu, 5 Oct 2023 at 9:24 AM, Julia Lawall <julia.lawall@inria.fr> wrote:
>       >
>       >
>       >       On Thu, 5 Oct 2023, Isoken Ibizugbe wrote:
>       >
>       >       > Thank you for the clarification.
>       >
>       >       I think your configuration is too big.  You can try make localmodconfig
>       >       and see if you get a smaller configuration.
>       >
>       >       Does your VM actually have 4 cores?
>       >
>       >       julia
>       >
>       >
>       >       >
>       >       > On Thu, Oct 5, 2023 at 8:01 AM sumitra sharma <sumitraartsy@gmail.com> wrote:
>       >       > >
>       >       > >
>       >       > >
>       >       > > On Thu, 5 Oct, 2023, 12:24 pm Isoken Ibizugbe, <isokenjune@gmail.com> wrote:
>       >       > > Yes I copied the .config file of the currently running kernel and I'm
>       >       > > using Ubuntu 20.04LTS on a virtual box, I renamed the
>       >       > > CONFIG_LOCALVERSION in the .config and commented out these lines
>       >       > > CONFIG_SYSTEM_TRUSTED_KEY
>       >       > > and CONFIG_MODULE_SIG_KEY, then ran make -j4, but the kernel has been
>       >       > > compiling for 10 hours now. please is this normal?
>       >       > >
>       >       > > Hello Isoken,
>       >       > >
>       >       > > Yes, it is normal. The compilation time depends upon how much RAM you have allocated to your virtual machine. I still use virtual machines and sometimes the kernel building takes two days  :)
>       >       > >
>       >       > > Regards
>       >       > > Sumitra
>       >       >
>       >       >
>       >
>       >
>       >
>
>
>
--8323329-2126115087-1696499042=:3375--

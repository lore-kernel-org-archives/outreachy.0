Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F99B1094A
	for <outreachy@lists.linux.dev>; Wed,  4 Oct 2023 16:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=v8qNV/ARKhQjemsQ0PBD0DLpDh0b6mP4nRSVqMzu1yQ=;
  b=s3rr1+J/5Q/Sym36SaBU8b+UnH6dXzTDfPGbhaoZBq70BOpw4fRjcAn+
   XbVFNCozfkn7OEmWfIm1ia97FH+S5AgUvsaTzXMfVHTuoG1vva1yKtMXN
   8L3zbh07WM4YaiYwX2daXpiPeWc6JWMWHbJ6Ks2wtIrZNO3RqseEl857E
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,200,1694728800"; 
   d="scan'208";a="129503535"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Oct 2023 18:32:29 +0200
Date: Wed, 4 Oct 2023 18:32:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Isoken Ibizugbe <isokenjune@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Error]
In-Reply-To: <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310041830080.3108@hadrien>
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com> <ZRyTH0WyHd3JJnNv@ashyti-mobl2.lan> <CAJHH8bEtKMYJ2RUn71uHuzNDUzEFNLQMxumKnp8ezb6pvxvGhQ@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-48170293-1696437149=:3108"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-48170293-1696437149=:3108
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 4 Oct 2023, Isoken Ibizugbe wrote:

> Thanks for helping me resolve the former issue, but I have an issue
> when running make in the "building kernel step" of the tutorial. Here
> is the error message:
> make[3]: *** No rule to make target 'debian/canonical-certs.pem',
> needed by 'certs/x509_certificate_list'.  Stop.
> make[2]: *** [scripts/Makefile.build:480: certs] Error 2
> make[1]: *** [/home/vagrant/git/staging/Makefile:1913: .] Error 2
> make: *** [Makefile:234: __sub-make] Error 2

This is discussed here:

https://stackoverflow.com/questions/67670169/compiling-kernel-gives-error-no-rule-to-make-target-debian-certs-debian-uefi-ce

You can just follow the instructions about removing the whole key thing:

This thread might help you :
lists.debian.org/debian-kernel/2016/04/msg00579.html. In the .config file
copied from /boot find and comment out the lines CONFIG_SYSTEM_TRUSTED_KEY
and CONFIG_MODULE_SIG_KEY. –
Altaf
May 24, 2021 at 11:17

Then you can run make olddefconfig before trying again to compile.

julia


>
> On Tue, Oct 3, 2023 at 11:18 PM Andi Shyti <andi.shyti@linux.intel.com> wrote:
> >
> > > while cloning the Linux kernel repo, I had this error, please I need
> > > help in resolving it;
> > > git clone -b staging-testing
> > > git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> >
> > try with https instead of git:
> >
> > git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git
> >
> > Andi
>
>
--8323329-48170293-1696437149=:3108--

Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E838D30E
	for <outreachy@lists.linux.dev>; Wed, 11 Oct 2023 05:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="GB8fEJu7"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=MCa1D+WIi+xKEO5H071z870R9xqW7r6CAx116Ps88MM=;
  b=GB8fEJu7e83mUe56+s20bqAwCZ4ywskRARRzg8J31Vyuop5khRRP1zJs
   sRw795Mk/kKEOZUtDeCaD9ofCWOsF4hkxLi2VDLFbF54nqsqrVpzzDvTU
   JhTU6LdVu0LFo4e/SZlMOn4sdDyVtkapUPmsTLl+yXRAWrJO5mZljsMrH
   I=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,214,1694728800"; 
   d="scan'208";a="130553687"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Oct 2023 07:43:55 +0200
Date: Wed, 11 Oct 2023 07:43:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Dorcas Litunya <anonolitunya@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy Applicant]Building Linux Kernel failed,help Needed
In-Reply-To: <CAKh3C7SoERYPTHV_pZN_6fmr32esPMEoCisLCnJZ+_sfmvO=4Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310110741530.3208@hadrien>
References: <CAKh3C7SoERYPTHV_pZN_6fmr32esPMEoCisLCnJZ+_sfmvO=4Q@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Oct 2023, Dorcas Litunya wrote:

> Hi everyone,
> My name is Dorcas Litunya and I am interested in participating in the
> Outreachy Linux project.
> Thank you for this reminder. I have been trying to build the Linux Kernel
> for the last day but I have faced this error that I am not sure how to
> navigate:
>
> libbpf: failed to find '.BTF' ELF section in vmlinux
> FAILED: load BTF from vmlinux: No data available
> make[2]: *** [scripts/Makefile.vmlinux:36: vmlinux] Error 255
> make[2]: *** Deleting file 'vmlinux'
> make[1]: *** [/home/dorcaslitunya/Desktop/Outreachy/LinuxProject/git/kernels
> /staging/Makefile:1165: vmlinux] Error 2
> make: *** [Makefile:234: __sub-make] Error 2
>
> I am currently working with linux Ubuntu distribution on a Virtual Box. My h
> ost machine is a windows device.
>
> This happens when I run the make command as indicated here:
>                             Building the kernel
>
> Run
>
> make
>
> Any guidance or assistance will be greatly appreciated. I really want to set
> this up and get started.

Maybe you had an error previously in the compilation process.  Try make
clean  (to start over) and then make without -j.  Then it will stop
precisely at the place that didn't work.

Be sure that you have engough disk space accessible to your VM.  The Linux
kernel consumes a lot of space.  You can also run make localmodconfig,
because the complete configuration offered by ubuntu contains a lot of
things you don't need.

julia



>
> Thank you.
>
> Kind regards,
> Dorcas Litunya
>
>

Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D6E27B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 08:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=C/xvuksUnvW4NDUO5Jgyz7c66HsPFTcXlYGLuzjazOE=;
  b=eztXKDouuGnkMklpPBTMiJkhSIs/Qdf8KbU4d+1KgBe96wxjJOYv2Xcg
   02/Onn3eHtK91W3HEbqyJCKWuf7JfYiCmVku+mu+hkSUzYdwuhdcVJtLc
   wubiSv/wW3DFnMyWpIfobDgMt2B6qXUA5TXcq72g9vFC/Q/HxnvblpTLn
   o=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,252,1673910000"; 
   d="scan'208";a="96627571"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2023 09:49:59 +0100
Date: Sat, 11 Mar 2023 09:49:59 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: fmdefrancesco@gmail.com, outreachy@lists.linux.dev
Subject: Re: Help in loading modules
In-Reply-To: <20230311073128.GA11242@ubuntu>
Message-ID: <alpine.DEB.2.22.394.2303110948550.2802@hadrien>
References: <20230311073128.GA11242@ubuntu>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2023, Sumitra Sharma wrote:

> Hi,
>
> whenever I am trying to load the modules I am receiving this error. I am unable to rectify it. Kindly suggest me ways.
>
> ##
> sumitra@ubuntu:~/git/kernels/staging$ sudo modprobe pi433
> modprobe: ERROR: could not insert 'pi433': Invalid argument
> ##

You should CC the mailing list to maximize the chance of getting a useful
response.

Check whether the module is avaialble on your machine, using lsmod.

julia

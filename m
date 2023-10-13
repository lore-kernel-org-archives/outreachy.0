Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC4D11CA9
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 10:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="QUyhqmXX"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=GGsS0dSydjHGV0z6fLRNbrmHH0TKgvLZbugg/r7GADs=;
  b=QUyhqmXXaUEV5Hen7yV9Pw0sExZH455U+uZn+YFQYTYasgXtdZkQHbze
   KqlB7uZQGHFFfQVuaJ/2fYzTT3mvELipgSqCZUXgdu7LzGG600dq27Po8
   SwA1KrB6G0wNAke7ll7U2x9CntsT8z6dzZoVQlZ60AQZaDRFH7EFB3uA8
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,221,1694728800"; 
   d="scan'208";a="131082524"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2023 12:19:28 +0200
Date: Fri, 13 Oct 2023 12:19:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Joanita Nakityo <nakityojoanita51@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Kernel Log Message Not Found After Adding printk Statement
In-Reply-To: <ZSkDgdL0slUiu/JW@anita-HP-EliteBook-840-G2>
Message-ID: <863df32-485e-c673-befe-f9f12b951c70@inria.fr>
References: <ZSkDgdL0slUiu/JW@anita-HP-EliteBook-840-G2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Oct 2023, Joanita Nakityo wrote:

> Hello, hope you are doing well.
> I inserted a printk line into the probe function, compiled and installed the changes successfully. However, when I run 'dmesg | less' to check the kernel logs,
> I cannot locate the message from my printk statement. how can i go about this?

Maybe you don't have the device, so your code won't get executed?  DSid
you pick a module that is loaded one your machine?  Try lsmod.

But don't get stuck on this point.  You can start submitting some patches,
and work on this issue in parallel.

julia

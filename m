Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5CFB79F5
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 17:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=iT8j3R5GFbUkk+GX7HEkQ2FmAeP+W+b3K3ZXZJCUjLw=;
  b=MUCdWPvglLvZAWqUy5SrK8SvNGjiOLJTndGgCzUIqf4IjX5SfYrl1AN5
   xA2uZEqHtJA7n8nis6WskcpH+rBcQRKMtmp57/yrjrQIbwffnp38NhQez
   GWdpIgI7mdorJvcjwLSaHLv8OnZ4gpbgMHmJ66gzRWn94uC56qazxy19t
   8=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,244,1673910000"; 
   d="scan'208";a="49604625"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 18:27:39 +0100
Date: Wed, 8 Mar 2023 18:27:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: Sumitra Sharma <sumitraartsy@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Help to setup enviornment
In-Reply-To: <20230308171509.GA4056@ubuntu>
Message-ID: <dd924cf4-ddd6-45aa-292d-5762b769ca22@inria.fr>
References: <20230308171509.GA4056@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2023, Sumitra Sharma wrote:

> Thank you Julia for your response. I followed your instructions and  get rid of the earlier mentioned error. But on running the command "make -j2" it shows the error:
> ##
> Killed
> make[1]: *** [scripts/Makefile.vmlinux_o:61: vmlinux.o] Error 137
> make[1]: *** Deleting file 'vmlinux.o'
> make: *** [Makefile:1231: vmlinux_o] Error 2
> ##
> As per the system logs, the process is killed due to insufficent memory.
> I am running the linux on windows machine in VMPlayer and I have provided 4.6 GB of RAM to this machine. My systems RAM has a limit of 8 GB. I would appreciate some more help in it. Thank you.

Maybe just add more memory?  6 instead of 4?

julia

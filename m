Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A075E79D6
	for <outreachy@lists.linux.dev>; Fri, 17 Mar 2023 21:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=iVKwKPrFZGYEVIpL086PkPVwmJfrhmEbvjW9qZrZdeI=;
  b=FzU+jRz42Tp4SmRZ3suKOW3tl5QTc3v0AESQFrCXm3CTIygp5Lv9iprd
   0ojyeGNA7+Ht2PnDntScbdpSmWZTzl98vm+MB0FoGOauSMFgHZsOpPvp1
   fLUGkIV4zuzfpU7Dzu0/+S6SNHTgDS84NVYtkSNQ85YU/gxQLactVedoU
   E=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,268,1673910000"; 
   d="scan'208";a="97837917"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 22:07:04 +0100
Date: Fri, 17 Mar 2023 22:07:05 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mark Heim <questioneight@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Patching spelling errors
In-Reply-To: <20230317205743.GA78907@pikachu-Z97-D3H>
Message-ID: <alpine.DEB.2.22.394.2303172201370.4097@hadrien>
References: <20230317191154.GA57413@pikachu-Z97-D3H> <alpine.DEB.2.22.394.2303172116300.4097@hadrien> <20230317205743.GA78907@pikachu-Z97-D3H>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> There is a quirk with how my directories are set up due to the commands
> I used to check out.

It's not at all clear to me what you mean by this.  The one and only
proper way to get the code is to clone the complete repository.  YOu can
use

git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git

(I can't access the tutorial at the moment, so I don't know what it
recommends).

Do you have a problem with disk space?

If you don't have the whole repository organized in the expected way, you
won't be able to compile the code properly.  I would suggest to just
desctroy what you have and start over.

> Thus, I think "drivers staging" is ambiguous in
> regards to my setup. Is the drivers staging directory the one that has
> (e.g.) these directories?
>
> accel, accessibility, acpi...

No, I don't think so.

If your tree is called linux, then it would be linux/drivers/staging

> Or, these directories?
>
> axis-fifo, board, emxx_udc...
>
> Doing a simple spelling error patch might be good practice for me since
> the last one I submitted might not be worth patching.

It's fine, as long as it is on a file in drivers/staging and not in
drivers/staging/media.

julia

Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8519A328BD
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 14:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=yEpcvu3SowigaAloE2IArvg5omrIkbhmBABye6lTKu4=;
  b=tfczM03+Vm702CrwRCi5lZYVK6f30D9gvi6riHyMqCTehDkm/NcMzTvH
   8QYoEta7hUIBAcXFvzlAg5utIf3Bh85ZcKogmkBC5UxY8cp9uAApN/zFT
   TsgfGra5cAPwCBda6CC/tt1u/uyhBiW+VpkYypEBG2l3E2QM1hpLrn9Ce
   g=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,197,1694728800"; 
   d="scan'208";a="67653160"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2023 16:31:03 +0200
Date: Tue, 3 Oct 2023 16:31:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Isoken Ibizugbe <isokenjune@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Fwd: [Newcomer] Introduction and Interest in Contributing to
 Linux Kernel community
In-Reply-To: <CAJHH8bG_uay6v+P5Q==ioKOZaNaZv+K3wgNtuJEkoiAAV+dFrQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310031628190.3220@hadrien>
References: <CAJHH8bFD0i8eNOW0KObCBx9CnZxjUzXaXL2BYc33EA9u03SmXA@mail.gmail.com> <CAJHH8bG_uay6v+P5Q==ioKOZaNaZv+K3wgNtuJEkoiAAV+dFrQ@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 3 Oct 2023, Isoken Ibizugbe wrote:

> Dear Linux Kernel Community,
>
> My name is Isoken Ibizugbe an outreachy applicant, and I am writing to
> express my keen interest in contributing to the Linux Kernel project,
> specifically regarding the project "Extend the number of devices
> supported by DRM/CI." I am excited about the opportunity to
> collaborate with the community on this important endeavor.
>
> I am eager to learn, contribute, and be part of the Linux Kernel
> community's journey. If there are specific resources, tasks, or
> guidelines I should follow as I get started, please don't hesitate to
> let me know.
>
> Thank you for your time and consideration. I look forward to
> contributing to this essential project and being a part of the Linux
> Kernel community's collaborative efforts.

Hello Isoken,

Thanks for your interest in the Linux kernel!

All of the information that you need is available here:

https://kernelnewbies.org/Outreachyfirstpatch

You can also look at the email list archives (the link is on the above
page) and look for the message with the subject ANNOUNCE.  That explains
what you should do and gives some hints for the contribution process.

Please don't hesitate to contact the list if you have any questions.

julia

Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC985690
	for <outreachy@lists.linux.dev>; Thu,  5 Oct 2023 09:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="bXZBULij"
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=VhU4P6ECE3J8xNv1caOSL7yrJ6SdiIaJFIKD3EIG39k=;
  b=bXZBULijwO0zxOW+R8wHZJVmhFLYUsAeEjsiEsLea67Ah/ZwBFFIfjRW
   SNuOmD4jPCuunQzx7GRt2OBjiQykc8y3n0hlPm+5kmvFu5qk6rGPWJBMU
   ZrmQ2KDg5qisZsVn7w7qypqUb/Ql62xh3H5EZARrvQbCyHldDmYPFsz3T
   M=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,202,1694728800"; 
   d="scan'208";a="129616554"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 11:27:15 +0200
Date: Thu, 5 Oct 2023 11:27:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
cc: outreachy@lists.linux.dev, Julia.Lawall@inria.fr
Subject: Re: [Outreachy Applicant] Introduction and Interest in Contributing
 to Linux Kernel
In-Reply-To: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310051126480.3375@hadrien>
References: <CAKrXSsZ-1AKg3FLmZj=Kt_7NqHhty0k3ob89LuNUgFBqdjgduw@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 4 Oct 2023, Gilbert Adikankwu wrote:

> Dear Outreachy Linux Kernel Community,
>
> I am Gilbert Adikankwu, an Outreachy applicant for the December Cohort
> 2023. I want to use this medium to introduce myself to the community.
>  As a Linux user,  I appreciate the quality work that has gone into
> making Linux a rewarding experience. On this note, I'm interested in
> contributing to the Linux Kernel. Specifically, I want to contribute
> to the Linux Kernel through the project titled; "Improve i915 sysfs
> interface implementation". I am excited about collaborating with
> community members on this project.
>
> I am eager to learn, contribute, and be part of the Linux Kernel
> community's journey. I'm reading the first patch tutorial to learn how
> to push my first patch. Any help you can offer me to make the process
> easier is welcomed.
>
> Thank you for your time and consideration.

Have you had a chance to start on the tutorial?  Any questions?

julia

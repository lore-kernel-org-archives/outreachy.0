Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B831FD0
	for <outreachy@lists.linux.dev>; Mon, 17 Jul 2023 05:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=tMsEHBY9XSeQFrTWBaFutGdYndTK0ESytcYe7Z9XJ/o=;
  b=PaPJT9Hrh65MyNJzLs6OLZ1Y7LP0IwEAjhBLMzZT6p++I8rbk7EMpyro
   Ppw2TeQnK/PnpxMatij4uRTQKTsrnF4iKwKCqlP8sHyjo2PkaOSvByXcs
   MvtEhTddaRTz/K+28oxZjO0j/5/17qZny703UacUdDd2RBPTHMFPRiPmm
   Q=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.01,211,1684792800"; 
   d="scan'208";a="61513166"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jul 2023 07:36:53 +0200
Date: Mon, 17 Jul 2023 07:36:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Jeremiah John <jeremiahjohn08706@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Cannot see custom debug message in dmesg
In-Reply-To: <ZLRxV4CciqmQ4EYS@DESKTOP-EVNFDUR.home>
Message-ID: <alpine.DEB.2.22.394.2307170735350.3217@hadrien>
References: <ZLRxV4CciqmQ4EYS@DESKTOP-EVNFDUR.home>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 16 Jul 2023, Jeremiah John wrote:

> hey everyone.
>  I have just taken up kernel development. or at least I am starting, and
>  I have run into an issue. I saw that qrtr was a module loaded by running lsmod,so I modified static int qcom_mhi_qrtr_probe() in net/qrtr/mhi.c
>  so that it prints "I can modify the Linux Kernel" to KERN_DEBUG. Yet once I compiled and
>  booted up my new kernel I couldn't find the debug message i set in dmesg. is it because qrtr (or mhi.c) is not a module loaded at start time?
>
> I asked this in the IRC chat but then disconnected, forgetting that I would not be able to see subsequent replies after I disconnected. So I am retrying my query here.

To see the message you need to modify the driver of a device that exists
on your machine.  Or maybe you can insmod the module, if it was actually
compiled.

But it's not the outreachy application period now, so the mailing list is
not active.

julia

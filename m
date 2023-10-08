Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A368E15C3
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 10:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="HA5Qdd9f"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version:content-id;
  bh=ZIb259h/xZcFDt35JJmzo+HbbdNCrAMIHCtnrs6L1Ps=;
  b=HA5Qdd9fNXMqQN050sUpms/C3wChJi4FfGde39wHszdRMPU0n29qO4Qp
   xphhD7U43lhavNwX/XOm1WlBWYTTSeuajsv9Rlvg/D/J5s/LVJs5LBXtk
   RzojSBbQOB5dc+bevnqUeS59DLeWgYiV+hniGOIz0nKIz3DZ2BzjVQe3J
   I=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,207,1694728800"; 
   d="scan'208";a="68076542"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2023 12:38:07 +0200
Date: Sun, 8 Oct 2023 12:38:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: NAKITYO JOANITA <nakityojoanita51@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: Seeking assistance on Creating a new patch
In-Reply-To: <CAOJCLCsH9YYdRnQfV9hbgTVkF8WPiJeakqevhqkiFrb8hDBb8w@mail.gmail.com>
Message-ID: <alpine.DEB.2.22.394.2310081236080.3223@hadrien>
References: <CAOJCLCvdcAqAN=DEE9Yx7gfW7fLhfDaYoU-zK1_KWNd5-Chh-w@mail.gmail.com> <alpine.DEB.2.22.394.2310080804100.3223@hadrien> <CAOJCLCv3JsK-BOG=0Xq2FQXkuc+gu_6HJxJPNhE6TWpRC+yGcA@mail.gmail.com> <CAOJCLCuTfWaYusLW1fO-o0n_-DJjCKZu2-dnzpf4En3veBkOAQ@mail.gmail.com>
 <alpine.DEB.2.22.394.2310081223400.3223@hadrien> <CAOJCLCsH9YYdRnQfV9hbgTVkF8WPiJeakqevhqkiFrb8hDBb8w@mail.gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; CHARSET=US-ASCII
Content-ID: <alpine.DEB.2.22.394.2310081237211.3223@hadrien>



On Sun, 8 Oct 2023, NAKITYO JOANITA wrote:

> I'm not able to receive the email, could it be that the information I
> have put in the patch file needs to be modified?

First just get it to work that you can send yourself and receive an email
with mutt. Any email.  Not necessarily a patch.

Please keep the mailing list in CC.

Also, don't top post.  Your text should appear under the comments that you
are responding to.

julia

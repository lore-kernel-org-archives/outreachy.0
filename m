Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA8422EE6
	for <outreachy@lists.linux.dev>; Thu, 12 Oct 2023 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="YtRj+SdE"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=b42Ra+4ao2E8xtDkEgrP8cCYJDXt784V/8ek6o4Aabc=;
  b=YtRj+SdEt5Kayjh7pBTf/Gdsel/ikYhWf+cVaHOcSZ3j6hYNKPA0RLG4
   y1+VPBEZtZy7ul4as0qM5A2p5RbHyO6YxDuYlIs8nj7TV7oRgwH24EDJj
   8spSBzYQw06xPSaFGw5jo92pjWOJm8EUgZLM14k70cJuzflr4sqQwFo4X
   U=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.03,218,1694728800"; 
   d="scan'208";a="68512118"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2023 13:58:26 +0200
Date: Thu, 12 Oct 2023 13:58:25 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Dorcas Litunya <anonolitunya@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [Outreachy]Inquiry on checkpatch.pl
In-Reply-To: <ZSfUR5xFB42BxNFf@dorcaslitunya-virtual-machine>
Message-ID: <aafeed60-60c4-877d-b97a-d42fbe1364@inria.fr>
References: <ZSfQSSvna4hX0tnM@dorcaslitunya-virtual-machine> <ZSfUR5xFB42BxNFf@dorcaslitunya-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Oct 2023, Dorcas Litunya wrote:

> On Thu, Oct 12, 2023 at 01:54:01PM +0300, Dorcas Litunya wrote:
> > Hi Julia,
> >
> > A general inquiry on the checkpatch.pl link in the documentation page
> > is not working. This is found in the "Start creating first patch"
> > section. When you click the link, it seems to be broken, as it returns a
> > 404 error message. Any assistance with regards to this will be
> > appreciated.
> >
> To think of it, I don't think the link should be working since the
> script is in the script directory. So you can just ignore this message.
> :-)

Thanks for the information.  I put a working link.

julia


> > Kind regards,
> > Dorcas
> >
>

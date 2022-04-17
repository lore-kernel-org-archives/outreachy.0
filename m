Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D336D7B
	for <outreachy@lists.linux.dev>; Sun, 17 Apr 2022 07:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Xslmo18B+P691F4xGqGhy/BzY+rUPsZOnC0J/Lz4blw=;
  b=KTPvcZ8uL/Z4llI+CqsiJa9GXDW4mqDPFxLk8bBXBynf4PaPKhYPQH84
   8OBTXjWKVxKT9O2b8mRB3JpL4uZiznsgkOXtH7NUC2cIy31RPBpupeEZz
   bDg3gCeLyN9gqZWVAaBv8aCto36YkiFufxuO0gDMNcsnXJurRBMBFI0xX
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,267,1643670000"; 
   d="scan'208";a="32068411"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2022 09:07:11 +0200
Date: Sun, 17 Apr 2022 09:07:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH v3] intel: igb: igb_ethtool.c: Convert kmap() to
 kmap_local_page()
In-Reply-To: <2149490.72vocr9iq0@leap>
Message-ID: <alpine.DEB.2.22.394.2204170905470.2909@hadrien>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com> <alpine.DEB.2.22.394.2204161608230.3501@hadrien> <1897617.PYKUYFuaPT@leap> <2149490.72vocr9iq0@leap>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Apr 2022, Fabio M. De Francesco wrote:

> On sabato 16 aprile 2022 17:52:20 CEST Fabio M. De Francesco wrote:
> > If all calls should be changed with no regards to the surrounding
> contexts
> > and special situations, we can just make an automated s/kmap()/
> > kmap_local_page()/ or something else similar
>
> (I'm afraid that somehow I messed up with the HTML filters in KMail
> therefore I have to send this email again to the Outreachy list because
> this message has already been rejected twice - I hope this time it works).
>
> Hi Julia,
>
> Of course I was just kidding when talking of massively automated
>
> substitutions. They are not feasible and we cannot blindly replace all
> kmap() calls with kmap_local_page().
>
> Although these code changes look good, your objections are appropriate and
> legitimate.
>
> Not all kmap() calls can be changed to kmap_local_page() and, if someone
> wants to make such replacements, they should also "prove" somehow that they
> are doing the right changes in that specific context.
>
> For example, the following is one of those cases where such a replacement
> is not allowed and a different solution has yet to be found:
>
> https://lore.kernel.org/lkml/2a7030f5-d55f-94c7-90ba-5a57235159f6@amd.com/
>
> Furthermore, if people cannot "prove" that this change is feasible, their
> patches will probably be ignored / rejected just because many maintainers
> still don't know if those changes are correct and safe.

I think that all patches in which the log message does not explain why the
change is correct should be rejected.  Not because the maintainer can't do
the proof himself, but because the reasoning should be explicit in the git
history.

julia

>
> Whoever wants to do these changes should understand the specific context in
> which they are working.
>
> For example, there have also been cases where alloc_page() + kmap() was
> simply replaced by kmalloc(). Sure!
>
> If you are interested to see how and why, please take a look at the commit
> 633b0616cfe0 ("x86/sgx: Remove unnecessary kmap() from
> sgx_ioc_enclave_init()") from Ira Weiny.
>
> Regards,
>
> Fabio
>
>
>
>
>

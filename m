Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33EA7A
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 07:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=mv4SaWQ4Bw/fucJMQTHXYSdAaF06VUODAZIEs7Rd828=;
  b=lWksnZqipOAWdvIJHQZisQD4gkBg4dI8MjvO0LGlApIsodldzOKpy7RB
   WkZlN9qNTRdIP0Rz5pZF6HfRrHibnwybDOJS664mmGWq3JP343u7vK3dV
   W9b500xj2LIBfEoXpNJHkCJmk/9uX5ACczMVJ+EpOgFB8QEErkVJhLi1B
   s=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,269,1643670000"; 
   d="scan'208";a="32129625"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 09:11:28 +0200
Date: Mon, 18 Apr 2022 09:11:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
cc: outreachy@lists.linux.dev, boris.ostrovsky@oracle.com, jgross@suse.com, 
    sstabellini@kernel.org, xen-devel@lists.xenproject.org, 
    linux-kernel@vger.kernel.org, ira.weiny@intel.com
Subject: Re: [PATCH] xen: gntalloc.c:  Convert kmap() to kmap_local_page()
In-Reply-To: <20220418061927.6833-1-eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204180910320.2860@hadrien>
References: <20220418061927.6833-1-eng.alaamohamedsoliman.am@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Apr 2022, Alaa Mohamed wrote:

> The use of kmap() is being deprecated in favor of kmap_local_page()
> where it is feasible.
>
> With kmap_local_page(), the mapping is per thread, CPU local and not
> globally visible. Therefore __del_gref() is a function
> where the use of kmap_local_page() in place of kmap() is correctly
> suited.

What is it about __del_gref() that makes this change the right choice?

julia

>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
>  drivers/xen/gntalloc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/xen/gntalloc.c b/drivers/xen/gntalloc.c
> index 4849f94372a4..55acb32842a3 100644
> --- a/drivers/xen/gntalloc.c
> +++ b/drivers/xen/gntalloc.c
> @@ -178,9 +178,9 @@ static void __del_gref(struct gntalloc_gref *gref)
>  	unsigned long addr;
>
>  	if (gref->notify.flags & UNMAP_NOTIFY_CLEAR_BYTE) {
> -		uint8_t *tmp = kmap(gref->page);
> +		uint8_t *tmp = kmap_local_page(gref->page);
>  		tmp[gref->notify.pgoff] = 0;
> -		kunmap(gref->page);
> +		kunmap_local(tmp);
>  	}
>  	if (gref->notify.flags & UNMAP_NOTIFY_SEND_EVENT) {
>  		notify_remote_via_evtchn(gref->notify.event);
> --
> 2.35.2
>
>
>

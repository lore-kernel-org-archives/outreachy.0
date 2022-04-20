Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4837A
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 06:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=AOOcnU+E44vIs+pheMoJXhmNTxpxQArBK8PCjZDPu1k=;
  b=JeAqI8DLZD09zSdr45+0R8EO5Cgdby5+SpBtSnfHFkLwVpvLlmM/8hJ9
   wfe3mkqS1RL5WtqKsk7VTWq8kMEy8kh2kMthaDBOjZovZNbHjvj+M86gZ
   koeT8tRdLUdXrJXhjOnVGaG2G2dAAAAGX9BQtqO3MLoqF5FQ2TTUjsuDn
   A=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,274,1643670000"; 
   d="scan'208";a="32427415"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2022 08:03:05 +0200
Date: Wed, 20 Apr 2022 08:03:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
cc: outreachy@lists.linux.dev, boris.ostrovsky@oracle.com, jgross@suse.com, 
    sstabellini@kernel.org, xen-devel@lists.xenproject.org, 
    linux-kernel@vger.kernel.org, ira.weiny@intel.com
Subject: Re: [PATCH v2] xen:  Convert kmap() to kmap_local_page()
In-Reply-To: <20220419234328.10346-1-eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204200759080.2937@hadrien>
References: <20220419234328.10346-1-eng.alaamohamedsoliman.am@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Apr 2022, Alaa Mohamed wrote:

> kmap() is being deprecated and these usages are all local to the thread
> so there is no reason kmap_local_page() can't be used.
>
> Replace kmap() calls with kmap_local_page().

OK, so from a Coccinelle point of view, could we do

@@
expression e1,e2,x,f;
@@

e1 =
- kmap
+ kmap_local_page
    (e2)
... when != x = e1 // not stored in any location and not passed to another function
    when != f(...,e1,...)
    when != x = e2
    when != f(...,e2,...)
-kunmap(e2)
+kunmap_local(e1)

julia

>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
> changes in V2:
> 	-edit commit subject
> 	-edit commit message
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

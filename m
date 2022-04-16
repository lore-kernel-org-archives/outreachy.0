Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01537E
	for <outreachy@lists.linux.dev>; Sat, 16 Apr 2022 07:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=uNkcqohuYyDBM1uM8iaZqasZVYq+vCj2MnEBhaavjiY=;
  b=bOUyhMkbovFHP9ui92W3xjlOSSKS64CpFVNDtR89Nmez9b4juIshm7jM
   bAyEtarlAiappoWHYePSBzNVBnqw5DCwZR3eZH4PANIg+Jn37/dQjcT3e
   FnpCMCeSQ3EgRk62JPUxZH/B4NdzZ2OsN85Qra3OCLMiZKbNUraCR168V
   I=;
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,264,1643670000"; 
   d="scan'208";a="11683753"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2022 09:37:34 +0200
Date: Sat, 16 Apr 2022 09:37:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
cc: outreachy@lists.linux.dev, jesse.brandeburg@intel.com, 
    anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org, 
    pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
    netdev@vger.kernel.org, linux-kernel@vger.kernel.org, ira.weiny@intel.com
Subject: Re: [PATCH] intel: igb: igb_ethtool.c: Convert kmap() to
 kmap_local_page()
In-Reply-To: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204160937120.3501@hadrien>
References: <20220415205307.675650-1-eng.alaamohamedsoliman.am@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Apr 2022, Alaa Mohamed wrote:

> The use of kmap() is being deprecated in favor of kmap_local_page()
> where it is feasible.

And why is it feasible here?

julia

>
> With kmap_local_page(), the mapping is per thread, CPU local and not
> globally visible.
>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 2a5782063f4c..ba93aa4ae6a0 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
>
>  	frame_size >>= 1;
>
> -	data = kmap(rx_buffer->page);
> +	data = kmap_local_page(rx_buffer->page);
>
>  	if (data[3] != 0xFF ||
>  	    data[frame_size + 10] != 0xBE ||
>  	    data[frame_size + 12] != 0xAF)
>  		match = false;
>
> -	kunmap(rx_buffer->page);
> +	kunmap_local(rx_buffer->page);
>
>  	return match;
>  }
> --
> 2.35.2
>
>
>

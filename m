Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3432A7A
	for <outreachy@lists.linux.dev>; Mon, 18 Apr 2022 07:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=Hq9bPJDCmmJJcYYhZgQX3k8+qqkaJlpzQFcim9Pzz90=;
  b=fp+ShII2FH5Zajc7vrhDG75aWUm6Chzn6IvA0E608xpaOcYpGygiBL0e
   iNZi8aqlnWxwTzb080fQ7nE+YA/j/WRtWx2X0ACDuNURtDLR+YaJGTVWD
   FCdf1Ku646SoTptPcWoN697q7OMOrYx9VJx35sKMPOK2xSUjbrFZl1PSW
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.90,269,1643670000"; 
   d="scan'208";a="32129822"
Received: from 203.107.68.85.rev.sfr.net (HELO hadrien) ([85.68.107.203])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Apr 2022 09:13:23 +0200
Date: Mon, 18 Apr 2022 09:13:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
cc: outreachy@lists.linux.dev, jesse.brandeburg@intel.com, 
    anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org, 
    pabeni@redhat.com, intel-wired-lan@lists.osuosl.org, 
    netdev@vger.kernel.org, linux-kernel@vger.kernel.org, ira.weiny@intel.com
Subject: Re: [PATCH v4] intel: igb: igb_ethtool.c: Convert kmap() to
 kmap_local_page()
In-Reply-To: <20220418061430.6605-1-eng.alaamohamedsoliman.am@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2204180911430.2860@hadrien>
References: <20220418061430.6605-1-eng.alaamohamedsoliman.am@gmail.com>
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
> globally visible. Therefore igb_check_lbtest_frame() is a function
> where the use of kmap_local_page() in place of kmap() is correctly
> suited.

Same comment as the previous one.  What is it about igb_check_lbtest_frame
that makes this the right choice?

The subject line also does not look correct.  Normally, one does not put
an extension on a file name in a subject line, ie igb_ethtool.c.  Have you
used git log --oneline to see what subject line others have used for this
driver?

julia

>
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
> changes in V2:
> 	fix kunmap_local path value to take address of the mapped page.
> ---
> changes in V3:
> 	edit commit message to be clearer
> ---
> changes in V4:
> 	edit the commit message
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 2a5782063f4c..c14fc871dd41 100644
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
> +	kunmap_local(data);
>
>  	return match;
>  }
> --
> 2.35.2
>
>
>

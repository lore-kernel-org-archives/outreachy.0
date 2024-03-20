Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9AC85635
	for <outreachy@lists.linux.dev>; Wed, 20 Mar 2024 19:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710962564; cv=none; b=t2mQh95scka6v5HekQlVW07C26T6xkwqRTCdYWxt2gzFX83MfqLHyoQnw2mT0BYYh3ZZUZ1lOJW9l0N+PAHHVGL/gsnu7EPQFTobhxZZnO7xxLgcC+dpBd/BG9N1YU1RsZ/QQDkuhvWkRaA2ky22SGVt3j7BGOuhqsMuWLczirI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710962564; c=relaxed/simple;
	bh=HcP6+VjG29mV1Oc/XnfZp0Ddeu8NpYC61NpIuz2V05s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QZF/qNvk7HMZluy/yDTY99K3nE4AGePtTE+6Li4UyfzWdXrWtU7rPZ+8nRNpIZwPBK9bNU0cmIVhGV4Y45SRDIiIPK1Rod1eDNmswvboNoQ3POEFm4wQEj1SvlfPJPLebJKSzYhIjc+Jck8CSAZ25eS9ZaRbx+KR8q0AICq3JRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ClT1xSwK; arc=none smtp.client-ip=192.198.163.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ClT1xSwK"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1710962561; x=1742498561;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=HcP6+VjG29mV1Oc/XnfZp0Ddeu8NpYC61NpIuz2V05s=;
  b=ClT1xSwKwAXXLPe1fg5aXfXi9mNGiokLdNXoYRfl2ExOD9wJXEwP9JSB
   9miqNetq2n9BgYPZ096zss1ufR2RYLPl1i81hRC3GWUlvulMI6hhLjQcg
   zjPhkgXeoqcV3rAGj8als0VbXK9HoYn+0uVVkSs1hYZZI033iMyp4Ju87
   DpEM5p9F/ZvkKSNWp9fbXMXn/so+gqyc5HbqmrSH7lL0WNFXc3cXZw2qB
   EUKEdxuNhOuE75MqGAX2q50bIybDfg8R7o/7yOIwc14+cfUpYckiNiwQH
   sqF5wGTwbrifGGNWDS8Ll8lI5c6GTn9vUa7Xbpt60pNlk5sNKyLsp0UoY
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="16553614"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="16553614"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 12:22:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; 
   d="scan'208";a="14159247"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.72.188])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 12:22:42 -0700
Date: Wed, 20 Mar 2024 12:22:40 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: TaheraFahimi <fahimitahera@gmail.com>
Cc: outreachy@lists.linux.dev, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: ks7010: fix spinlock_t definition without
 comment
Message-ID: <Zfs3gCsZns8FNyUv@aschofie-mobl2>
References: <ZfS7jcATb211X4I8@tahera-OptiPlex-5000>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZfS7jcATb211X4I8@tahera-OptiPlex-5000>

On Fri, Mar 15, 2024 at 03:20:13PM -0600, TaheraFahimi wrote:

The to/cc list seems trimmed. Is that what you got using steps in
first patch tutorial. Weird I don't see at least linux-staging.

> Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
> ---
>  drivers/staging/ks7010/ks_wlan.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
> index 94322e2ea304..bda7e0255b2c 100644
> --- a/drivers/staging/ks7010/ks_wlan.h
> +++ b/drivers/staging/ks7010/ks_wlan.h
> @@ -468,7 +468,7 @@ struct ks_wlan_private {
>  	char nick[IW_ESSID_MAX_SIZE + 1];
>  
>  	spinlock_t multicast_spin;
> -	/* lock for synchronize access to device read operation */
> +	/* lock to ensure safe access to the device's receive buffer */
>  	spinlock_t dev_read_lock;
>  	wait_queue_head_t devread_wait;
>  
> -- 
> 2.34.1
> 
> 

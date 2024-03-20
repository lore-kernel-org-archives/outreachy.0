Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5BC6AFAE
	for <outreachy@lists.linux.dev>; Wed, 20 Mar 2024 19:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710962432; cv=none; b=HD3oFkUmUXylMrgE+wpCCzs87k7k8pYoBE0NiL0cCjLVJXGA0CQ8lCsXck+QZg8foRJF+bghw7zHZLP9nfjPvBzvX0ZkaIrb1m7MjP6QebT9Va4GLS42QoEb8ReuzO1wTpywTc2n4iNtyFDth0ai6SpyOFm5vlA1wpMuo+O8MkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710962432; c=relaxed/simple;
	bh=MrlidalNLc/Y/BXeGu5j8wQUpBPyDM0iMlkTcNOCOa4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YEzWsgEv49LIzYn71n28gM5QY80JvveDexY00xM1/U3xh4/5jpDYJuvK3WbZLP7sNEJwvnsTxqe4vt0g9BuiP379fCC2MZSN4t7W/GqdfCySlYadd7NL111KCbgcW2/SJ6BC6yW5pI8uvmb5hdZQWirK5rfEw8XSJNvgS0AxGjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=oGfb8gzz; arc=none smtp.client-ip=192.198.163.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="oGfb8gzz"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1710962430; x=1742498430;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=MrlidalNLc/Y/BXeGu5j8wQUpBPyDM0iMlkTcNOCOa4=;
  b=oGfb8gzzI1iJYwndrNwsukh5j+MLP391oU46MYuvvC3faCMm9LSnzjCh
   w5jYdGHx88R3LiZIsl61J5TocF9JOQk9xm4T+MImerCBiZsXfbo27vSKy
   3IA//w9IGxVEwXLFUqpkZXfUsplTrcRqb50mZgFZk2tRHxxvyoFRH1yM/
   KMxFOYRo56YfcmdoQyEFh6Kz+RHQy8+9Z9Xe4DjpgMQsnju5ixsl7faY3
   33jDaVUr6rBWDGx5obyLOpsrqPJ02yhoPHn6WLaSntuGs7qAV3D6M0lt6
   OuWkiTVuAZR/RfVfFsrnAxf9qaov+a62M8pCxYNu+jIAed503QOdcmYHP
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="5760957"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="5760957"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
  by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 12:20:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; 
   d="scan'208";a="14327840"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO aschofie-mobl2) ([10.209.72.188])
  by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2024 12:20:29 -0700
Date: Wed, 20 Mar 2024 12:20:28 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: TaheraFahimi <fahimitahera@gmail.com>
Cc: outreachy@lists.linux.dev, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: ks7010: fix spinlock_t definition without
 comment
Message-ID: <Zfs2/PXc9tiZFABx@aschofie-mobl2>
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

This has been discussed recently on the list -
https://lore.kernel.org/outreachy/ZfDHg49k0Og3z9Lw@tahera-OptiPlex-5000/


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

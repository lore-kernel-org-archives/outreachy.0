Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC2E4AEEB
	for <outreachy@lists.linux.dev>; Tue, 12 Mar 2024 21:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.134.164.83
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710280211; cv=none; b=nEU3RObLIn80iZplYMhNHi0fUeXw60vKGCwuz21b5rk/WBvODHVO1YXhXgG2HQOlwjcXbpf+xiuIcmfwhPj20+md7UVEhZIWB00w2ejD1tEA1AY9wKPN8tVGI1SHG4hm+Hc8OgRrFauTIKCJTG99iKIx9zDohCIfGawVWnrwKzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710280211; c=relaxed/simple;
	bh=DllO4SCcq/s4Xoqrozja0Pz6c6fp+ZHw5iQ+V119Khs=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=U5v9SHqp23Yy29mClTrkKB9ZJNUUmmpTzouSVMasFMLbxXjJD+O2uJEFFRQNW/nRKZFQ/uMZq4LLB04pcWHlhFteu8K7onVpjvArAFM8GwT0NAscXHRtjnkbYSpU1MV4IDCc83TNn78GRVvXhigbHz789QVdsgf7RenM6bG8WN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr; spf=pass smtp.mailfrom=inria.fr; dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b=Aqphs46D; arc=none smtp.client-ip=192.134.164.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=inria.fr header.i=@inria.fr header.b="Aqphs46D"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=tcicl6M93s7H+eBiHxjPv2n1Vmt44j6vPSGsTROHKOU=;
  b=Aqphs46DYxAv3WdpqJOrKzXNrNl7vPug17fC2EaBOuft7cci92kYI/t1
   gENwtOLfiPbibMiSwJgdAdye9tTXkMteaOcsEcNlD/pdTOA5ZHYSQl524
   Y4ENFK+xzCUQB5b7ZmaUHaJMefEyqrFtP+B1dvXRsPcBrmmkmMkh7pxMj
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.07,119,1708383600"; 
   d="scan'208";a="156339670"
Received: from 231.85.89.92.rev.sfr.net (HELO hadrien) ([92.89.85.231])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2024 22:49:59 +0100
Date: Tue, 12 Mar 2024 22:49:58 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: TaheraFahimi <fahimitahera@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: ks7010: fix spinlock_t definition without
 comment
In-Reply-To: <ZfDHg49k0Og3z9Lw@tahera-OptiPlex-5000>
Message-ID: <alpine.DEB.2.22.394.2403122247530.3229@hadrien>
References: <ZfDHg49k0Og3z9Lw@tahera-OptiPlex-5000>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Mar 2024, TaheraFahimi wrote:

> This change ensures adherence to coding style guidelines.
>
> Signed-off-by: TaheraFahimi <fahimitahera@gmail.com>
> ---
>  drivers/staging/ks7010/ks_wlan.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_wlan.h b/drivers/staging/ks7010/ks_wlan.h
> index 3e9a91b5131c..94322e2ea304 100644
> --- a/drivers/staging/ks7010/ks_wlan.h
> +++ b/drivers/staging/ks7010/ks_wlan.h
> @@ -468,7 +468,7 @@ struct ks_wlan_private {
>  	char nick[IW_ESSID_MAX_SIZE + 1];
>
>  	spinlock_t multicast_spin;
> -
> +	/* lock for synchronize access to device read operation */

How did you come up with this comment?  I'm not sure that it reflects very
well the function in which the lock is used.

julia

>  	spinlock_t dev_read_lock;
>  	wait_queue_head_t devread_wait;
>
> --
> 2.34.1
>
>
>

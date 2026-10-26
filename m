Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.83
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792974349;
	b=zno7fKssQJcGH7e8ScdBFyRSgVPz19kwmoXPeE6IPVxhFCvLPjwb/8XZQw2f7cEUJrT6
	 4t/mf2xLT7WCNXKlzdkVzFLPGEB1Tlw8HO4url3C+p8uZ1VtXmpc54D+j7MPFs9919Wv0
	 fKzQn0rT/b1HeGnjmxyZQA/Y4xp2oDTR2AOP7p+rK2KruKVTcE431NrDG9hkAwGfyswoc
	 l98vSz/AothN0iRBs4bRfOdhK0MNMdBWC+/gX6V6+0y0mPtvlpFp7+U5pPcLN6GCFfW6N
	 VpfAHuwTWnY1NcvZwh3R55FrYLGdmFEYBpk/OkI46bfqgN/2H684P7s1CZr1e2M/JFg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792974349;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=r1McrGhVc6tQJrjEE8D4jdIsoTR3EOUiUm7XzlhcRBk=;
	b=gSaMP7JgcfEElQrpOLiJbSorjzv3OTwxbQJgIE5IHzQQy6CwRDJKvyZpkAD39VOM722M
	 E74gctG74tMin/DFm0dVY5+jFEYJq7aeA5dkSAMoFsPc3RLk0rOai/Q0b4iPZAc2A0L/o
	 gtHSAIqbMu66A4bqoWFPkCyE/NmlU7NjhtkPiId0Yzpm5tzPv7RL9dVQNY5QUwLRj2YY7
	 60CXsmQfb18YVxGipBUdXPLRD27uyRAhLfmDcSeMfs5N0v5nOK/puD7YuXiM0KbMmbOdm
	 EpY/aijm4f5LnVl824hoz7OD7qMZgQVfYKVUtNRmjAH4qD2ILPJ8HmBAm6uEevMKD1A==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=eHu6WBSE;
	arc=none smtp.remote-ip=192.134.164.83
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6013C606A31B
	for <outreachy@lists.linux.dev>; Mon, 26 Oct 2026 00:25:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 6013C606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=eHu6WBSE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=r1McrGhVc6tQJrjEE8D4jdIsoTR3EOUiUm7XzlhcRBk=;
  b=eHu6WBSEtzZcbT5+65jy6N6Y+EzSCdPNqfFeU3pEZptsI0K8jLFiQVAq
   SyDT2FTJV6bsopXdqiHqD6K73Zr0wPNArwwDssarvh18YEwn4br7SMFZz
   iGbMmJFTQyZU66t0yd9UA6pDnWDwi2P1bTUwk3Wxd1RV0SqBqyABfCzae
   4=;
X-CSE-ConnectionGUID: rv5vwhW8Qlym4HaTYswIVw==
X-CSE-MsgGUID: swQSlgi9RlKEynizeCGqiw==
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,178,1787004000"; 
   d="scan'208";a="302246661"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Oct 2026 01:25:44 +0100
Date: Sun, 25 Oct 2026 20:25:43 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Subject: Re: [PATCH v2] nfs: Guard nfs_local_open_fh tracepoint with
 CONFIG_NFS_LOCALIO
In-Reply-To: <20261025153021.41713-1-pavankumaryalagada@gmail.com>
Message-ID: <266b8530-e467-2dc-dee2-6c2045bef545@inria.fr>
References: <20261025153021.41713-1-pavankumaryalagada@gmail.com>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 25 Oct 2026, pavankumaryalagada@gmail.com wrote:

> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
>
> The nfs_local_open_fh tracepoint is used in fs/nfs/localio.c.
> The NFS Makefile includes localio.o in the NFS module only when
> CONFIG_NFS_LOCALIO is enabled.

Thanks for this change.

julia

> When this configuration is disabled,
> localio.o is not built, leaving this tracepoint unused.
>
> Guard the tracepoint definition with CONFIG_NFS_LOCALIO to avoid
> wasting memory when it is not used.
>
> Fixes: 70ba381e1a43 ("nfs: add LOCALIO support")
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> ---
> v2:
> - Explain why the tracepoint needs a CONFIG_NFS_LOCALIO guard.
>
> v1: https://lore.kernel.org/outreachy/736e1fe0-f4bf-abcf-b7b-1cd874cce131@inria.fr/T/#t
> ---
>  fs/nfs/nfstrace.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
> index b15c1732c869..bbd7735a1f67 100644
> --- a/fs/nfs/nfstrace.h
> +++ b/fs/nfs/nfstrace.h
> @@ -1898,6 +1898,7 @@ TRACE_EVENT(nfs_mount_path,
>  	TP_printk("path='%s'", __get_str(path))
>  );
>
> +#ifdef CONFIG_NFS_LOCALIO
>  TRACE_EVENT(nfs_local_open_fh,
>  		TP_PROTO(
>  			const struct nfs_fh *fh,
> @@ -1926,6 +1927,7 @@ TRACE_EVENT(nfs_local_open_fh,
>  			__entry->error
>  		)
>  );
> +#endif /* CONFIG_NFS_LOCALIO */
>
>  DECLARE_EVENT_CLASS(nfs_xdr_event,
>  		TP_PROTO(
> --
> 2.43.0
>
>
>

Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.17
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794844876;
	b=F4BDC9wrzgn1zz10FlqrlHigHfD7N9guheY/3KHJJ9po0QFVGjyFK5sRr2ojt8fmsbXL
	 AeAzAJhivIX1N7xmPlzCTA0nJyv2eALn4J8li3Emcw0n6cgurxcCPWXQqt+MRaT83Vl0H
	 e+fqaYehXJYP5FhObWPm/d7cbHXpmc54CT9zXjF3fWpsMUgVSyu7pCJPbAAleOuqaVH7B
	 i3Gy3zkd6qksPovxG81ApstOu1vVIqzHP81hF6J/ERBujcqOjjOvx82G5L6+Ge34jv/k1
	 N++gISsyZIulpVN7Io8wDMTy2jtNOgDa2aO59bPyjiv9RZa4xJXH3SUXOKyWKEtyXdw==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794844876;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Spam-Status:X-Rspamd-Server:
	 X-Stat-Signature:X-Rspamd-Queue-Id:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=V+SaR28GVEFw3PS+Q4BLhhqKCWjUkH/1IldnMVMRZ1g=;
	b=A6xDKIna7aFzWoVdQSuYwockMlWEJBeB1eqXBzR0ZuGgb2+8xib9NGl9u0Bm49CHCVhr
	 YSovnwuExcGv+7ReaUCCtZqYRtaMyEKooxPGwJIJfR+IkMXrHh/vBTvPkI7PWlv8AJmOS
	 oHwvoXBz0lT3BKnUAuxN8EkJkqdaFzj+IEolNBqR8px//GyHukKeXlBztYsyNRcazS2X8
	 Xu3cWp0jAm+igVykL0m3XvpzYIOs2KbO1l38eWZwLpghKsiH7PonAAbq+uPNNFXoXeQuB
	 OuS5OvfPGFn6pTV8YNwDOM8Fvqm3I/toFRtlO98fOwffOj3Nd6x7L2HGyZEdcqLrRFA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=5pIU69C6;
	arc=none smtp.remote-ip=216.40.44.17
Received: from relay.hostedemail.com (smtprelay0017.hostedemail.com [216.40.44.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536A3606A323
	for <outreachy@lists.linux.dev>; Mon, 16 Nov 2026 16:01:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 536A3606A323
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=5pIU69C6
Received: from omf14.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id 3915DA7174;
	Mon, 16 Nov 2026 16:01:08 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf14.hostedemail.com (Postfix) with ESMTPA id 90E2932;
	Mon, 16 Nov 2026 16:01:06 +0000 (UTC)
Date: Mon, 16 Nov 2026 11:01:05 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: pavankumaryalagada@gmail.com
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com
Subject: Re: [PATCH v3] nfs: Guard nfs_local_open_fh tracepoint with
 CONFIG_NFS_LOCALIO
Message-ID: <20261116110105.0ed9046e@gandalf.local.home>
In-Reply-To: <20261108132936.43333-1-pavankumaryalagada@gmail.com>
References: <20261108132936.43333-1-pavankumaryalagada@gmail.com>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
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
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: rspamout06
X-Stat-Signature: p3aau1iu1xuaqhcx6ugaueb6ibfyyyad
X-Rspamd-Queue-Id: 90E2932
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18gOHd1o2Y/BwW80Ku5T+nmiYGpucj0DOs=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=V+SaR28GVEFw3PS+Q4BLhhqKCWjUkH/1IldnMVMRZ1g=; b=5pIU69C6RPo5Sh5LXO+jNQes4gz7UJhI9EhGBt+vtn1zSm+n+FzDHiPM8UjonkLlZoFRU7qPLcEI83oFklhT7cE46ObZrt9KPn++gi7ITm4TWeOrfgk4JbP2KUUu3xrXV+fEHQ30grjXbd8zG3aYRkBCpM4WEFmHKruyZNx/8gI=
X-HE-Tag: 1794844866-716690
X-HE-Meta: U2FsdGVkX1/vR8P8jEPBApsKf2OOyERRy4AeMeiAgPJwbYd9JoqsQ6RZCJAA3j0s9vnOuWYwsuChbIRwdQ4EQSF0YnyCipAnVFrKCCVgfUnbhWwAD+aA6h9OcK6UeoV28zw870fn/rxHLWOxPy03YN8CN2yraRKmlqIQHt7pjrJrmmryUpcB55vA8/qAJedg2eCOW7fh3naKypnOy53FoxrcdQ3KnFwZ3bLEFJIeZ/yDkYu8IwEe2CPB7F5xka39JZgucYYLywjjV2uwR5ZjdxgdAbaAnTYd6kReZm/TTsnHWefjtmuWfAYMHV06Fg0lF5QtdCzX2+Z0vjL1YJxSj+t8YtHpxbLi9RU/eZrMmZ9IV2+fFXsuFQ==

On Sun,  8 Nov 2026 18:59:36 +0530
pavankumaryalagada@gmail.com wrote:

> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> The nfs_local_open_fh tracepoint is used in fs/nfs/localio.c.
> The NFS Makefile includes localio.o in the NFS module only when
> CONFIG_NFS_LOCALIO is enabled. When this configuration is disabled,
> localio.o is not built, leaving this tracepoint unused.
> 
> Guard the tracepoint definition with CONFIG_NFS_LOCALIO to avoid
> wasting memory when it is not used.

Please state in the change log that you moved the definition of the trace
event under the guard instead of just saying you guarded it.

Thanks,

-- Steve


> 
> Fixes: 70ba381e1a43 ("nfs: add LOCALIO support")
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> ---
> v3:
> - Move nfs_local_open_fh tracepoint definition into the existing
>   CONFIG_NFS_LOCALIO block as suggested by Steven.
> 
> v2:
> - Explain why the tracepoint needs a CONFIG_NFS_LOCALIO guard.
> 
> v1: https://lore.kernel.org/outreachy/736e1fe0-f4bf-abcf-b7b-1cd874cce131@inria.fr/T/#t
> ---
>  fs/nfs/nfstrace.h | 58 +++++++++++++++++++++++------------------------
>  1 file changed, 29 insertions(+), 29 deletions(-)
> 
> diff --git a/fs/nfs/nfstrace.h b/fs/nfs/nfstrace.h
> index b15c1732c869..17db1d533647 100644
> --- a/fs/nfs/nfstrace.h
> +++ b/fs/nfs/nfstrace.h
> @@ -1804,6 +1804,35 @@ DEFINE_NFS_LOCAL_DIO_EVENT(read);
>  DEFINE_NFS_LOCAL_DIO_EVENT(write);
>  DEFINE_NFS_LOCAL_DIO_EVENT(misaligned);
>  
> +TRACE_EVENT(nfs_local_open_fh,
> +		TP_PROTO(
> +			const struct nfs_fh *fh,
> +			fmode_t fmode,
> +			int error
> +		),
> +
> +		TP_ARGS(fh, fmode, error),
> +
> +		TP_STRUCT__entry(
> +			__field(int, error)
> +			__field(u32, fhandle)
> +			__field(unsigned int, fmode)
> +		),
> +
> +		TP_fast_assign(
> +			__entry->error = error;
> +			__entry->fhandle = nfs_fhandle_hash(fh);
> +			__entry->fmode = (__force unsigned int)fmode;
> +		),
> +
> +		TP_printk(
> +			"fhandle=0x%08x mode=%s result=%d",
> +			__entry->fhandle,
> +			show_fs_fmode_flags(__entry->fmode),
> +			__entry->error
> +		)
> +);
> +
>  #endif /* CONFIG_NFS_LOCALIO */
>  
>  TRACE_EVENT(nfs_fh_to_dentry,
> @@ -1898,35 +1927,6 @@ TRACE_EVENT(nfs_mount_path,
>  	TP_printk("path='%s'", __get_str(path))
>  );
>  
> -TRACE_EVENT(nfs_local_open_fh,
> -		TP_PROTO(
> -			const struct nfs_fh *fh,
> -			fmode_t fmode,
> -			int error
> -		),
> -
> -		TP_ARGS(fh, fmode, error),
> -
> -		TP_STRUCT__entry(
> -			__field(int, error)
> -			__field(u32, fhandle)
> -			__field(unsigned int, fmode)
> -		),
> -
> -		TP_fast_assign(
> -			__entry->error = error;
> -			__entry->fhandle = nfs_fhandle_hash(fh);
> -			__entry->fmode = (__force unsigned int)fmode;
> -		),
> -
> -		TP_printk(
> -			"fhandle=0x%08x mode=%s result=%d",
> -			__entry->fhandle,
> -			show_fs_fmode_flags(__entry->fmode),
> -			__entry->error
> -		)
> -);
> -
>  DECLARE_EVENT_CLASS(nfs_xdr_event,
>  		TP_PROTO(
>  			const struct xdr_stream *xdr,


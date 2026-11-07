Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.13
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794087821;
	b=3Q05ipV68BxUpPJf39XHWAgZ+BaDlaj60Q/mapOcAf7aFtUMeWLWp6nz4nCxJ30DH9BH
	 h6D13LWfgGgl6Gg5TMYIG+3Kbzfw8xJkjEF9tV710htrZ0zi4SisEYnDibuPT5gmk/qdu
	 ba0M/B/FH1A5lujBRAokMGhV6NexUpHmYO/Sk1H/CyJWFRn4SSmPBDwrc4lR/VG7ptChu
	 x9CuFaW+gzJccTv0SgOS59/nNcRSJnWdNhf42DDSk2Dt3cYokIDruVgVf1ySDgfgoQBI6
	 H8zwI8uj4vu6xfYPec8V7UwO0FquhjpteFTDqAQeQYr3p6BywgxuBVifQ0AYqtNnr1Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794087821;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=l9kp8ynZ3hpMF7Y75roOoIMMEG3y9OWOZIP41HGDJww=;
	b=4XBO9A6qhXeBAKerd+vcOf/4HD0BqVYLPoBBOTzGJE5z4lMt5evoWdQQlur2ry6BDoqS
	 fCRM1cYGUoLQH+9Ggc3p6uqgitxNaJTqOFeQPSivEJWSLWZAEdtE97Ttx4fO3S9ar8Wj3
	 PXFC+i1+NA9I6/U7iTGaCY0njE6H6XnTZkNYQt/LhquqpXWiiCBAva69qnXGKaUawEcHU
	 1i5GjEmVI9q9x1gBm1/CoTUKCgq+nJRwYjI7URCbYjbXLfMxPsWKbeWMU14ZYNSjVQIrx
	 zucFWWfnJEN6QcO1cG97RH1c1dk7bKmgJ9i/I6HcGXZAdJPUddhuYKhS0lMAWoiIv0Q==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=xfGs9UAB;
	arc=none smtp.remote-ip=216.40.44.13
Received: from relay.hostedemail.com (smtprelay0013.hostedemail.com [216.40.44.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA0E606A32C
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 21:43:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org DDA0E606A32C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=xfGs9UAB
Received: from omf02.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay05.hostedemail.com (Postfix) with ESMTP id 84BA14040C;
	Sat,  7 Nov 2026 21:43:38 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf02.hostedemail.com (Postfix) with ESMTPA id 862CA8000E;
	Sat,  7 Nov 2026 21:43:32 +0000 (UTC)
Date: Sat, 7 Nov 2026 16:43:19 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: pavankumaryalagada@gmail.com
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com
Subject: Re: [PATCH v2] nfs: Guard nfs_local_open_fh tracepoint with
 CONFIG_NFS_LOCALIO
Message-ID: <20261107164319.3c750602@fedora>
In-Reply-To: <20261025153021.41713-1-pavankumaryalagada@gmail.com>
References: <20261025153021.41713-1-pavankumaryalagada@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
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
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: 862CA8000E
X-Stat-Signature: ryeuo9z3hu8h3oswm56386tbeu5pumht
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18m62z3S7B8aCb8DHhQGC34QzuLBEIznTY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=l9kp8ynZ3hpMF7Y75roOoIMMEG3y9OWOZIP41HGDJww=; b=xfGs9UABnnAUfm/eFSyOAWGjHSbbB15J7ojQy2zdqEDoFam7RCdep5g5ppsUwKrryXLqYML6Ve8TTfwCtQwpmNGQKPrkS5eZLt90E6TpOSLNinpcQHKkoUcQcJPjzuawam6b/Y01T8sgI7YGfeqX+xEdTI/Tl4GXaiEUhxo+Q18=
X-HE-Tag: 1794087812-257255
X-HE-Meta: U2FsdGVkX18lePvEuFOXrwBbhtgq/ywBEA2fe1dG4Zke6H/rrJbIJYUQXxAdrJVJJswYMiJVamMb0zxAoEHPO49RWtDdW0cZuzYEURNHjpQ8lLLR5N6IBJkNHpP1cnV3O/SFNnBrHhNFwM9WgX//sdMLmKEtOwK6hY1RI2GEpsaH769RP4Ifgjqr5uElwRhhA0xwKVMw5XpRALK6J9KV94LcmwzLvMC6l6M2ELQS57vZ7ZBdvacBxnVPvXyacCNnDRYjjRaz4jIOK0G9ePQrfgAIdBZVTUkyLwpsPpjFDbL7NRt+lka1T2aBJWiImxzGa/8w8uqQ2rp0AFfm2CXTd5K5BJYISLzSGgSGMQDgQhhryOb2/Gc6CQ==

On Sun, 25 Oct 2026 21:00:21 +0530
pavankumaryalagada@gmail.com wrote:

> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> The nfs_local_open_fh tracepoint is used in fs/nfs/localio.c.
> The NFS Makefile includes localio.o in the NFS module only when
> CONFIG_NFS_LOCALIO is enabled. When this configuration is disabled,
> localio.o is not built, leaving this tracepoint unused.

What about the other tracepoints in that file? Hmm, I noticed that the
trace header already has a:

  #if IS_ENABLED(CONFIG_NFS_LOCALIO)

block. So the real fix is to move the trace event definition into that
block and not create a new one.

-- Steve


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


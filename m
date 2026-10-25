Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=192.134.164.104
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792931179;
	b=at05qlJcFeYr3Vu4yC0XC2Ni7wXimcrsWPGOcTEyVV0F1kax20mPwPx3Goqv1ogPN5n3
	 ZLgJGCIagNYh6DNAherCAZpEsNPR5MqYWesD2H8GevU1JgoevUIbZC9KT2Pl9NKUZ3bJW
	 TSLCFc3V9DAGb0CKBFlKXz1k4KmLmWyLdfTTD4G11ytkmXStOsdzAeZLnSDVIQII/3hSh
	 89JrPQqD9Qa4LJbMPJkHK68FtiE7nNPBjfdg+uIi/TBIWH+/vZ5LzuZYBFQ42gLbHe4++
	 goeY4qd7cSwVcbHvhmG1TuiSWeuVfx9Q8I3AIS3Uz7JZtpfcog2S3zcynbvC69Ef/3w==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792931179;
	h=DMARC-Filter:DKIM-Signature:X-CSE-ConnectionGUID:X-CSE-MsgGUID:
	 X-IronPort-AV:Received:Date:From:To:cc:Subject:In-Reply-To:Message-ID:
	 References:MIME-Version:Content-Type;
	bh=NrCk2syZ3ggWxCYTey0GrEcV3khuJBCAK90Kq/KYvx4=;
	b=Ur18eOoYLMZok5nLbVaoVP+Zlw7VoexjYzphKFc2+L4sRkRWP8XP90tJYwyfbfIGcICj
	 Fg2m6h17FoDBg7rJfnmTAHD3zNuoOiTqb1bSAAclWyeC1Padk4bd6hkEQQts6TuaG8Rwb
	 G5FpEIpWZURqfTGudZ+8+qKmkXnNs3NRbVWDMvGqyysYmJAEXCxL476ERtldjxJwItCi+
	 f0Qn6sAcW72C1TbCS7BVzACY+5BUi+S488jaAybh7sphbFOIUeym0215pHm6jrPu6TA6S
	 5v6T1fpOqTZlfzO86W1xAnJJk/rBOHmMR4pxtoGhVPNA6cAN5EnECDqJaWNPPY/nRLA==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=inria.fr;
	spf=pass smtp.mailfrom=inria.fr;
	dkim=pass header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=L9gzc8J0;
	arc=none smtp.remote-ip=192.134.164.104
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr [192.134.164.104])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842EE606A31B
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 12:26:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 842EE606A31B
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=inria.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=inria.fr
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=inria.fr header.i=@inria.fr header.a=rsa-sha256 header.s=dc header.b=L9gzc8J0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=NrCk2syZ3ggWxCYTey0GrEcV3khuJBCAK90Kq/KYvx4=;
  b=L9gzc8J0YtH6zTYaCxGhC4ditfTQN3esSbfUkSJC/UchjJOC8JbCLIJJ
   IO+sUj6UfK1lhA1jNO9EiGlR/trd3eNJCLK74q8Y0XHnR3kvCS/9mQbet
   /PCe97wBaQeUYsOHezLhJMS9sg+/PrtlUKX0b8afJq2FP9Xa/SlXJ8Jy8
   c=;
X-CSE-ConnectionGUID: l0UEpyysQMW57w9S+SVZUA==
X-CSE-MsgGUID: MyEUop+3S/2y7Rtz5OjVCw==
Authentication-Results: mail3-relais-sop.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="6.27,177,1787004000"; 
   d="scan'208";a="160806439"
Received: from c-76-123-3-53.hsd1.va.comcast.net (HELO hadrien) ([76.123.3.53])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2026 13:26:13 +0100
Date: Sun, 25 Oct 2026 08:26:09 -0400 (EDT)
From: Julia Lawall <julia.lawall@inria.fr>
To: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Subject: Re: [PATCH] nfs: Guard nfs_local_open_fh tracepoint with
 CONFIG_NFS_LOCALIO
In-Reply-To: <20261025093744.12949-1-pavankumaryalagada@gmail.com>
Message-ID: <736e1fe0-f4bf-abcf-b7b-1cd874cce131@inria.fr>
References: <20261025093744.12949-1-pavankumaryalagada@gmail.com>
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
> Tracepoints take up kernel memory even when they are not used.
> When a tracepoint is used only in code that is compiled when a
> specific configuration is enabled, its definition should also be
> guarded by the same option to avoid wasting memory.
>
> The nfs_local_open_fh tracepoint is only used when CONFIG_NFS_LOCALIO
> is enabled. Guard the definition of this tracepoint with the same
> configuration option.

This information is not visible in the patch, so it could be good to
provide more detail.  In this case, the tracepoint is only used in the
file fs/nfs/localio.c and that file is only included in the build if
CONFIG_NFS_LOCALIO is enabled.

julia

>
> Fixes: 70ba381e1a43 ("nfs: add LOCALIO support")
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
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

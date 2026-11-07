Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.14
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794088420;
	b=FxAi7SzDEH8lsti09k9jCIdkliEA1JHjX8qyjwWsVIs0ZFnVjNA4NLeuep579oDR+aeQ
	 kKd0k/QSpMZgjSdr4P+U2XJnyfR/qHVyF1+fQOYo7MisMmI88A0bE3/EmDAE4xaIIRa0E
	 a3baQQC1Qfpt0+uVcCYigckkME9gRp6RbhB39dRmT/PsJsTTFBfQjSVu+b0rOQ/LA45gn
	 PGhaB+QaSpX1DFSS876MBRa38ratK2gyxcq25wHuU/XcUqUBdOp9dQiWvRgUf6DIMt9iP
	 n7jPSjQZJj2BcCGH5M7TEiaKEpzC5xWN7+UZCzc7yK1R3Y7fckTTK1rE9pJsyVYB1Bg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794088420;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Spam-Status:X-Rspamd-Server:
	 X-Stat-Signature:X-Rspamd-Queue-Id:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=lES+ZmiD51452lYZSusQ2GpD+35O8VUJl8X0Z7ZPI0A=;
	b=oES7OFN47GLPOBlvfi7QN+8QLJivzB6Klc7ZL6be510Z8wlTOg72dmSOmSXrOBeO1KDD
	 gxHCABznHkIH0z3V6UbYtmDRxNgDEzyve6gTFDewy1GSsuPvbb4U+AywupU+HFDpff+wV
	 oNHHaIgef4KD12RS9677MTiWF9k3IE1oq3HNIQbJl9d2HdkfOBYoZcVbGFJe0xJ094KrS
	 PW5WHblTrRVvuAmWJWnPh8eQKa7J6rwvNLonrAafoAAcTOwN03KvvosvpJgFEfUS3tRk2
	 V2115/lNlvauuh9qVz3WUdH+mc10wv22F3nrfY/mpD0dPZwZdmJPZT02sV/ANXrUwUg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=zAwxlIdS;
	arc=none smtp.remote-ip=216.40.44.14
Received: from relay.hostedemail.com (smtprelay0014.hostedemail.com [216.40.44.14])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15430606A326
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 21:53:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 15430606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=zAwxlIdS
Received: from omf09.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay08.hostedemail.com (Postfix) with ESMTP id A61541403D1;
	Sat,  7 Nov 2026 21:53:37 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf09.hostedemail.com (Postfix) with ESMTPA id BA1B920028;
	Sat,  7 Nov 2026 21:53:31 +0000 (UTC)
Date: Sat, 7 Nov 2026 16:53:18 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: pavankumaryalagada@gmail.com
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com
Subject: Re: [PATCH v3] nfs: Only define atomic open tracepoints when NFSv4
 is enabled
Message-ID: <20261107165318.6bc5a2d1@fedora>
In-Reply-To: <20261101000843.188761-1-pavankumaryalagada@gmail.com>
References: <20261101000843.188761-1-pavankumaryalagada@gmail.com>
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
X-Rspamd-Server: rspamout06
X-Stat-Signature: odkuiwxhb7s8qqjs4wgzmyqiwjbezyw3
X-Rspamd-Queue-Id: BA1B920028
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/ZoyZUqxnjszaEH1Xq0haZpv2lk/O2WL4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=lES+ZmiD51452lYZSusQ2GpD+35O8VUJl8X0Z7ZPI0A=; b=zAwxlIdSY0g6I90OKveYcxEPXkG84kYUCw7MtoeVPNLpGtRjboKJLDRt7RZDQngCVvsogLnsbfhaMVzt986obX+OruWgn6gNhwyCRh4VDN877pVBwnEfrGQ3knt2ckGEi4pJzRWVUHZIoff/GhLftmC6BRVWAsRPIsOFnL+6Hm4=
X-HE-Tag: 1794088411-572889
X-HE-Meta: U2FsdGVkX18bZzA58Bdov2uVYH1OmIldu/P59mUJEBNWFrpyv4PV4wS647aToI7jddPM5SISzuGuEapOa3VMAUPhLFOHThX44flidSjvZvGW3FXlvQpu0uAKDCuJb+bcft2izyWOdFtVBi7bZgUjwb9/QzcAzO7H0z+7nZzGDia+P+PV6JctJ70/3TA4uamB16opzkHZaPJ8e7SgJkNE3y5t5k5+/o2USt8ySU5ICGDve77sAO0AsCrbcUyadeaPdouSIuMpl0uC9LOWK+v/moYHwdeK5bXT3NHz635ZupV7AUDCPO7FojCjJApZsIBr+z8+gbm5wd5bWXuqLbCx07VfItl+GFsU

On Sun,  1 Nov 2026 05:38:43 +0530
pavankumaryalagada@gmail.com wrote:

> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> Tracepoint definitions consume kernel memory even when they are not
> used. When tracepoints are only used in code compiled under a specific
> configuration, their definitions should also be guarded by the same
> configuration to avoid wasting memory.
> 
> The nfs_atomic_open_enter and nfs_atomic_open_exit tracepoints are
> only used in nfs_atomic_open() in fs/nfs/dir.c, which is compiled
> only when CONFIG_NFS_V4 is enabled. Guard their definitions with

Could you reword the above slightly, as I read the "which is complied"
to be fs/nfs/dir.c and not the function. Perhaps just remove the "in
fs/nfs/dir.c" part. The nfs_atomic_open() should be unique enough to
know where the issue is.

Thanks,

-- Steve


> the same config to avoid unused tracepoints and reduce memory usage
> by approximately 8 KiB.
> 
> Fixes: 6e0d0be715fe ("NFS: Add event tracing for generic NFS lookups")
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

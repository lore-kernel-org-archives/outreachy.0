Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792936310;
	b=zMRSl85Cr4ViVrk9FpBbge/I3KQPlgKDPQVWif3y4JHP5NDMoKu2Nk6hSz1Q/VFSaSbU
	 Ed0fX92kXYVVPPsxXzjoWluM7qfw+aX+Vt0YdTV/akXQyaNMs5ZFPIj0HpX4QX9GBgL34
	 jAPtIPMwZz0qy+7anDEyApynQluTOpqqY/FLcbgdAcpXIrAgU4VSk5zGnS7XaWLngi0BO
	 S2coC45Z1vsirZD0pv/laWKqeGk+gMAwmKU70C8xzf8vrZ0rN6UN0IRyziwxQol9VnoTx
	 Tam6nof09lMfV7wcBijQsdCfOK9fxmG81youKGqBOUME0YWx2O2aec2BLBQvPoAWdRQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792936310;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=lWfiRzR65OEVxPQJ5iSF37S5Bpyxi8ZgRyancGamCLs=;
	b=CRNNBblJSYbMnH1vKirJUxe2UM0ysBDwZY9JormT+zh27ncJg7DRnMfn/u2EWi/qEyGT
	 KvCFvk/UHs8+4Lk9Xv8dJ+dUvht6MIW6FU280tj2HpFOdpTomSoNv9eA4n1/+Mv2S77Dm
	 c0cXlf6pQOt0BNwa+TkVXv+o/eQjZG+vboh39OtHYdU0SJKYH2piwEPebAzpju1IDPr8P
	 talx96n5vkF227Lakh9iq8aTEqJa50sF3txMLuuqBc6Fx8v1pMaVh8CgcILhKAViV5qgQ
	 nkYACRbZ5xTm92EhYOi1rYF7yeE8vRwX5ht/MuoSovigqb439zM5JBPJwlcl0LEN59g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b="1TtFv+/6";
	arc=none smtp.remote-ip=216.40.44.11
Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D51606A31A
	for <outreachy@lists.linux.dev>; Sun, 25 Oct 2026 13:51:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 18D51606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=1TtFv+/6
Received: from omf14.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay07.hostedemail.com (Postfix) with ESMTP id 95A1C1605BE;
	Sun, 25 Oct 2026 13:51:41 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf14.hostedemail.com (Postfix) with ESMTPA id D063D30;
	Sun, 25 Oct 2026 13:51:39 +0000 (UTC)
Date: Sun, 25 Oct 2026 09:51:38 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Sowmya Torra <sowmyatorra@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com, Julia Lawall
 <julia.lawall@inria.fr>
Subject: Re: Investigating unused SCSI zone tracepoints
Message-ID: <20261025095138.3bca1822@fedora>
In-Reply-To: <CAFsBPPndmdUMYbiq98qmeBJ_fbYFCNxRngxxx4jB3JHg-G-02g@mail.gmail.com>
References: <CAFsBPPndmdUMYbiq98qmeBJ_fbYFCNxRngxxx4jB3JHg-G-02g@mail.gmail.com>
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
X-Rspamd-Queue-Id: D063D30
X-Stat-Signature: 5p7uzt93bhpjrm9kcisx6836ybwn5j7p
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+j4ADdLOgL8btHvmWSex0QmdkrLU/+BL4=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=lWfiRzR65OEVxPQJ5iSF37S5Bpyxi8ZgRyancGamCLs=; b=1TtFv+/6xzXjpOrDsasAcxuXnem0hjaLO3fiInkta17qZNaCBJf+2PyT1TY6tR6tYDt3PGUU7SX2Rn61hyqw37+jD/JPgDhIw0sTEFq+HaoEmqQPVYbDVVo+Kesuhy+au6ghMuZorkhzGwgW0O97RPwM6xylv5KxO+D0kftmPD8=
X-HE-Tag: 1792936299-574341
X-HE-Meta: U2FsdGVkX1835Kd7pFJQUjrEeQT2laZJrPSyqj9kT87Vpbf//KyYdtRrIF3XLL38re5iUk923TVReYVFnS+mfTHmy/ZxPKe638M7sDqRqoqS75tGFr/kDjMuoRD+t7o+pg6O5VzpQQgVXEK5xFXZeu3gIC8vy/EgSvDya+VORID+kZFTd0JJpIgZtb8hpNe9TJci70V+vW3Dl/nIgz2vQX5oimujwsL6wtxTo4lpV/8ZarGcb2/qMnaZjA65gUBGNvFiNujplrZFfIdq/6c6GFAZu6zLqdCaIsDQRhbHksM6OaY7BCujRl9+9AlmkEvLiaDRFsVE1TarMzZPv2UTaPSGwaALA2lP

On Sun, 25 Oct 2026 17:13:13 +0530
Sowmya Torra <sowmyatorra@gmail.com> wrote:

> Hello everyone,
> 
> While building the kernel with UT=1 using the provided configuration,
> I came across two unused SCSI tracepoint warnings:
> 
> scsi_prepare_zone_append
> scsi_zone_wp_update
> 
> I decided to investigate why these tracepoints were no longer being used.
> 
> After tracing their references and looking through the Git history, I
> found that commit 1846f308d66f ("scsi: sd: Use the block layer zone
> append emulation") removed both tracepoint calls when zone append
> emulation was moved to the block layer.
> 
> However, their definitions still remain in drivers/scsi/sd_trace.h,
> and sd_zbc.c continues to include this header with
> CREATE_TRACE_POINTS.
> 
> I also searched the repository for both tracepoints and couldn't find
> any remaining callers. Additionally, I checked the compiled sd_zbc.o
> and found that code and data for these unused events are still being
> generated.
> 
> Based on these findings, I believe removing the obsolete tracepoint
> definitions, along with the unused header and its inclusion, would be
> a useful cleanup. I plan to rebuild with UT=1 afterward to verify that
> the warnings are resolved.
> I plan to work on this cleanup. Please let me know if it overlaps with
> an existing effort.
> I'd appreciate any feedback on my investigation and the proposed
> approach before I proceed with the patch.

Everything you mention above sounds appropriate. I look forward to the
patch you produce to clean this up.

-- Steve

Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793640465;
	b=ZIleyCIc/jw+dfcatl9M7ebNvNdJ2/06IEilgwprSjIqY8K0lohauaepTjGFZYce8cON
	 BD/yvsfXaWPMLPJmxs9++mb/7pLtiiFCx950JFaXcFD56MGvVkKPcEbZwfcb3woL5Z5yW
	 ZiG024J+fJJMmiscHE7k90xwfcIzeuTCqZ7TOL/DVfhIud2tKPva0szf7TABROS/JI6S6
	 /mJUCb/H8MPFITonn+pruaco3cnSbY2LCwwR6eHaqmbFlGSt8eb+EVpwgTqRvGX25SKaQ
	 Cb/D04druIBRpoahQuicK5nQsN6BzbLPpnqf0Rb94lD8hsVKiv0EaKRKbKR7qmSp+2Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793640465;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=RjoyTZJML3c1K2YdL+CERM8hMROoUEuOvlQoiRd69XY=;
	b=i+YD+Xdgkvw/MRbPh6O8X1M7zNAK1DaOYQhv1mCx4Gqv5rMlR8CgWGSWl+geRJHxhRG/
	 MXsCVhwoA081Dv3CywxDIED0C1G3hsAXbkd3eLmgvvvNBNiYDs4eV3hh6V8iBJvlyhnCR
	 oF7vxEXYPqUtkZLzXKx0//FdGFBLr8y65Kec0FLzGUiG1IiSJ09lyoELgQWm9hWehvh6D
	 gTS1ubzr07qxECHhf387lo2XXnm2UY1QhXd0v/KwWn8sDgReKtw2C9dtbWnkeTAefufI+
	 JeSHUndj52PvBTQw5QwsTiLBAptb2LI4MXLVAWIYGXQoPc7jUTjlU8Z5CRJO2ooYIKQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=3QJD3w8P;
	arc=none smtp.remote-ip=216.40.44.11
Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB878606A585
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 17:27:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org AB878606A585
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=3QJD3w8P
Received: from omf11.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay02.hostedemail.com (Postfix) with ESMTP id 4448412015C;
	Mon,  2 Nov 2026 17:27:43 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf11.hostedemail.com (Postfix) with ESMTPA id 9061E2002C;
	Mon,  2 Nov 2026 17:27:41 +0000 (UTC)
Date: Mon, 2 Nov 2026 12:27:40 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Temitope obabi <obabitemitope765@gmail.com>, outreachy@lists.linux.dev,
 julianbraha@gmail.com
Subject: Re: [PATCH] rxrpc: Remove unused rxrpc_drop_ack tracepoint
Message-ID: <20261102122740.4a0add43@gandalf.local.home>
In-Reply-To: <9935ee97-6f95-8e8c-5ff-27332a393521@inria.fr>
References: <20261102093350.36811-1-obabitemitope765@gmail.com>
	<9935ee97-6f95-8e8c-5ff-27332a393521@inria.fr>
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
X-Rspamd-Server: rspamout07
X-Rspamd-Queue-Id: 9061E2002C
X-Stat-Signature: jpd6ip38q65y9htk5diio63en8e68p5z
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+Z+r+X/1SkpWPLDix2eCEPT3lt6N5Sjz8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=RjoyTZJML3c1K2YdL+CERM8hMROoUEuOvlQoiRd69XY=; b=3QJD3w8Pnr+2ssQ2BF8L36W9hyRTWdUsS7Jr7B+ynaeb7C37u6KE7cEwmR0lIPGADQQayNxVUMhLmhbqaYXGxFZN5gzuk+PeDC6zb104R5Bsf4a3TiVQeQCiadeUplHaEbOEsJLWXx74em4leICectd2azxOQELRUV3Yn62zArk=
X-HE-Tag: 1793640461-859317
X-HE-Meta: U2FsdGVkX1+ObXGlmtzKSUHMz6OGtmHRW3Q3mnhyINVexTGAAhS2OQd50qpkDxC2aySIY8h4xn1OSH14Uxrw9qeuWi33Sx2PqRHCTr1bm1bk8cG/lMaZzXmo7+V2zAdf1RbVNPsAY5F7ryvg/3Cjt5OwsJ4FzCsaX4s626aPOp632DA9d8Ay7eLlZMu2woUQMQztwBDrtWB4TpxfnVcK4VBMWmzkr989400hgoFuV5baSeu3u8HMdYAhOjc1v2ap30/5xWwFgzhpZCX0w8e830t6zNAzJrrsmjgcfAfjkzVwoC+q63w2ZrUUg0+/Z5lmlpZDXdtgWzxtmt8mTa/e0s0flrqL3588

On Mon, 2 Nov 2026 10:58:11 +0100 (CET)
Julia Lawall <julia.lawall@inria.fr> wrote:

> On Mon, 2 Nov 2026, Temitope obabi wrote:
> 
> > The only caller of trace_rxrpc_drop_ack() was removed by
> > commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and local processor work").

Note, this patch should probably contain a Fixes tag with the above. Also,
line wrap the change log to at most 76 bytes. Naming a commit in the change
log should still line wrap. Although, lines in a Fixes tag do not line wrap.

> > The tracepoint has had no users since, so remove its definition.
> >
> > Tracepoints that are defined take up around 5K each, even if they are not used. Remove it.  
> 
> It is not clear what "it" refers to.  Tracepoints is plural, so it can't
> be that.
> 
> Also, a question for Steven, is the 5K just the code size or is the
> concern that data is allocated at runtime as well, even if the tracepoint
> is not used?

It is a combination of code and data. It could be even more with allocated
data for each tracepoint after boot. I just look at what gets placed in the
text and data sections to get to the 5K. It's an approximate size, as each
tracepoint has different amount of data they take up.

> 
> > Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> > ---
> > I used AI assistance (Claude) while preparing this patch. I checked that there are no callers of the tracepoint, found the commit that removed the last call, and built net/rxrpc with CONFIG_AF_RXRPC=m.  
> 
> This seems to say that you used AI to find that there are no callers of
> the tracepoint.  Was that really necessary?

Yeah. None of this work should require any use of AI. It's a learning
process to know the kernel. AI would basically take away what you learn.

-- Steve

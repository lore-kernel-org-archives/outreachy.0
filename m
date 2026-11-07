Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794075191;
	b=pBJTHJXGfZq/BzYrqce0Au7wm2+Bg9qkFFzajp8wPX2yeq62+BGtVRCBecqYZMHPXOaY
	 o4sBklpiQg3FingOqZHp4Z3u1iVQC+x7fWQ+64TUrRx2mOuUMYKOpQnBugAqh8kkWyflR
	 g791wa78l56kH0M2tpqMiSGSRwmqPFPlw5FzX4HdFAtbNP2PrqvqTYM79UIt3E158d2m1
	 MUJYG5hxgWqpWuK91/zayOLkr2ECVdwgHfdD5b9sV8S9nVynfXdyLuyjBJh2ekbAivQ00
	 v/ROmRTdpi3+5UD/0TFQzjOjAJNog7o7t4doezJZoyo+Fi/GdZUhOen9eN1ufhRPnLQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794075191;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Queue-Id:X-Rspamd-Server:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=ro5/d82taB8kDN3mAcOXRvqOwm0rPaVZm2N9HQ8gFUI=;
	b=i2beNw9kXsa1eblB1jhfb3ROlyIPSILinbIO0fP3wURSL9lFhetBfigWohPvGJRPPWbl
	 SakvNJUrzLTEdW9OmS/nT0QkequkAThidkUHJPC97lfCgm2AVNdzoPWDpt3o2u/nY41RR
	 zWvcw8OF3rcmS4n2xt57RXjwmSDTtST2wrbCjHc5JrSHGfnyyhaxNHuvFr/p6R/ATtGCC
	 uUNfv61fr3+7jyzJH7h3E/STzlj9wRsz5EBBdZ/iej82vQzalp7EcaIlCb9GEVjQx5dl3
	 xk0vA9uUIf1oEHUw84Uvq3kg5Do36dhmJkX7gUN7DsL3r82mxbtD0Ol9uUqHEh5a+ZQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b="V/k83Lsm";
	arc=none smtp.remote-ip=216.40.44.11
Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D2A606A326
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:13:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 33D2A606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=V/k83Lsm
Received: from omf06.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay07.hostedemail.com (Postfix) with ESMTP id A92691603E4;
	Sat,  7 Nov 2026 18:13:08 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf06.hostedemail.com (Postfix) with ESMTPA id AED0E20011;
	Sat,  7 Nov 2026 18:13:02 +0000 (UTC)
Date: Sat, 7 Nov 2026 13:12:49 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Temitope obabi <obabitemitope765@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com
Subject: Re: [PATCH v3] rxrpc: Remove unused rxrpc_drop_ack tracepoint
Message-ID: <20261107131249.69e8ff4d@fedora>
In-Reply-To: <20261102183847.38109-1-obabitemitope765@gmail.com>
References: <20261102183847.38109-1-obabitemitope765@gmail.com>
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
X-Rspamd-Queue-Id: AED0E20011
X-Rspamd-Server: rspamout08
X-Stat-Signature: xdkpctoami751swmmce1ustqu17ygi6r
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+SR7d3X+s56pMNeiXeD0MD+3NdoeJvp7I=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=ro5/d82taB8kDN3mAcOXRvqOwm0rPaVZm2N9HQ8gFUI=; b=V/k83Lsmy1iQjlrrbMmveFLX5OlOnwWdgDgpRzhKnAhQosZZLeN/eRCFOIzopIlQofX6o4lccxlroEZ4lbP3f0bAudYTZB9GXieL6nR4ngGTAT0qpj5vipDXGHHGkIN/d94O6aH3TF3YCa9lU+nZC5p5eNUVKlxk6kfcDrXFupk=
X-HE-Tag: 1794075182-678902
X-HE-Meta: U2FsdGVkX187oRz9500YI62LH5/ETrgURvpWyTzY/sSWZ5qRhvVhjCN7GyaPxsdAOKa+a4gnTwJTKy3qM29d9g4fZztR3xrGe4inJ6u1ZtIDUS+swIZs5VKGN36PBw9ZYw5eculPH9W2g5QDVElVmt1myz+c5/msubgqf/zx82lu8qtZxmQn3buRmyBsff/O+MB3BmXCJ7Q7nevqUhn56zyx7HiHY3wWASJq7vtpSwF+Axph/PREDJ/IuHIKi3WSbJRizK7GJlISEFO+therorsLblFoVo27RqvyfsuSB/18ezxaJabw+gc9G2vF4m6R76iOOcCJGoLqnQWKPRwSuzNTeBE1mO4e

On Mon,  2 Nov 2026 20:38:46 +0200
Temitope obabi <obabitemitope765@gmail.com> wrote:

> The only call to trace_rxrpc_drop_ack(), in rxrpc_send_ACK(), was removed
> by commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and
> local processor work"). The tracepoint is no longer reached by any caller.
> 
> Removing this tracepoint avoids keeping unused tracing code and makes the
> code easier to maintain. Each defined tracepoint also takes up around 5K of
> code and data, even when it is never used.
> 
> Fixes: 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and local processor work")
> Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>

LGTM.

-- Steve

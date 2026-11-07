Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.15
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794085978;
	b=GZ6ST0lrsYnfSuNxHeWWw82Ww2nmVckCFoUXob05U5T4RvBKx2ajjGy6mDI7611bIL5r
	 VijhBN3tBrTfSVDFmqCyN/GXNu9j968PheNkKjL9iOMuVvLqoOc/OWAShFA9pZ05kfxwO
	 9/0Fqd4YUC3TyCTqptxVr+aM8Wn0Lc5v4gQY/EbWDKzPMd3BQoqG1drl+iOJHLbe/oEKH
	 QmcWWQ2FV3SSQlIjEABdOGGAG3EuPFXobKhks5+1EBaUhNRQuRpn7nqTCWXH8OBnB/0st
	 Yo7jr6scJ5Ic/RycHzojjiRzQFREPqZGLKq/X0nTd3vhtYjqGqAlB8DmcJFiplfCdjg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794085978;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=d6eBL4V+yGDDVHYqLTW79ou2iB0CHmd6KglYa7EGaLA=;
	b=Xica/OqQb20maDwk7CAjeZe2mYbcuJaW9iI4EwBZ/aZBXq3qaTMLCtuGcrhQHRQ5Qi6A
	 kOCoZAj+Fng3I77AKEnJfDQFZeB8RzMl0yPmRJuzxDCzGlf7Q3oiPEWW4m7HVpRDrSFwe
	 DgVDnwgE/A5qaMacKSrEorfM0yFH7EucmsOIGrS293t5zwBAg8p2yFWb0EZbGdSxvAev7
	 yTFiK7sybr6NPbG1C3zJ4oOji5BGoNfCK672KwoCNmm2jd0VZ/PhcLFQI75z3eTyGQtKc
	 sk1+5g2JoaT39kUrek+qCzYhZL7G28AyV12Y4wktueLW1C6F1oZnqxRXdOeqpzdKo7w==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=S2uLCcw7;
	arc=none smtp.remote-ip=216.40.44.15
Received: from relay.hostedemail.com (smtprelay0015.hostedemail.com [216.40.44.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B37E606A32C
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 21:12:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 4B37E606A32C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=S2uLCcw7
Received: from omf08.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id DB6F91C3AA9;
	Sat,  7 Nov 2026 21:12:55 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf08.hostedemail.com (Postfix) with ESMTPA id 00DEF20025;
	Sat,  7 Nov 2026 21:12:50 +0000 (UTC)
Date: Sat, 7 Nov 2026 16:12:37 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Maria Sheikh <mariasheikh812@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com
Subject: Re: [PATCH] sunrpc: Remove unused rpc_socket_reset_connection
 tracepoint
Message-ID: <20261107161237.20fdcef5@fedora>
In-Reply-To: <20261105030258.48868-1-mariasheikh812@gmail.com>
References: <20261105030258.48868-1-mariasheikh812@gmail.com>
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
X-Rspamd-Queue-Id: 00DEF20025
X-Stat-Signature: bwfd6dd9b4mdw8rqpsnk6u58f9r9xyno
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+rRtSXVbqXRF4Ccz6CWbz99MT6LTKxL7Q=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=d6eBL4V+yGDDVHYqLTW79ou2iB0CHmd6KglYa7EGaLA=; b=S2uLCcw7UVeyOa7HZ3d0PQ+yk7U9FM2oo5NkSIYiRiADQqWrs2CYh9NAoMSPj1O9ua4VVFRsyfVsrTxa7z4KjnxfjrI4jJLg/uXSuvl6dScEMvTzaJEqcBRErhA2+MTeQe1rs6CDP+zFlKHCciOOTUlu01AbPKNFyNyuNdcUfbw=
X-HE-Tag: 1794085970-664874
X-HE-Meta: U2FsdGVkX1+ofKuTVRhEoIaSuLT1QoK1NEmART8bppe49uvZI+hepJ/xWs/No0PC51FUIjQhrgWqbdkXDtY+6GWuo6cUOt8LtrgYpHat7HwReEcgVZ5xD793YM/r4/trGmMvS1N9/Nq55u2/bxvJU/DE4b3h8maz4xht+DklZrIm+/HtirQC+HdXnEOcKarsCeB6hoKfgo6KMKDiN8mYh2s1ozAOJLl96s4uLdMrFX8JqAm7RcihFyZwZ0tmht+CXvhXP1oDJYqZWSEEBLGe49mjHFq2CUOmmvRNQ2/2HxwkdMF6wxaRCKEQL9gQcY8me1CyvB4Cn2btW2z+aoFLPN2S1KxA2nVg4izr24NyfpLBqEZMNZZv+A==


[ Sent this from the plane to Honk Kong and it locked up, so sending
  again incase it didn't go through the first time ]

On Thu,  5 Nov 2026 08:02:57 +0500
Maria Sheikh <mariasheikh812@gmail.com> wrote:

> Tracepoint definitions consume kernel memory even when they are not
> used. The rpc_socket_reset_connection tracepoint has had no callers
> since commit 4efdd92c9211 ("SUNRPC: Remove TCP client connection reset
> hack") removed the code that used it, but its definition was left
> behind.
> Remove unused definition. This reduces the size of sunrpc.ko by 628
> bytes.
> 
> Fixes: 4efdd92c9211 ("SUNRPC: Remove TCP client connection reset hack")
> Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
> ---

LGTM.

-- Steve


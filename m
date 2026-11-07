Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794075655;
	b=ma458QUxeGE73oG7C5V4F8tGkRwoBoaFb8+FH5UdwCzRY+DxVXdfg2TSntxAnzDAkJGe
	 Llkau8rxGLUrO4n4TxMkc9K0DhOLEwDRqegQMcWe6r3HTzXNYTkI2sY7/wruhtPcfm9nE
	 1rC8PrlCRpCqMsVmL2U862hUqJtRyq4vJ5eJ+tC3fZekoyx1z8zIi0z+R/yMgY2Xn5Moa
	 gKWl6wOzW7LMVUqPn0lEduCvypIydl1jIJ2ru5GXWxa8tq0FzzsiHm3rWT2ELpbySTvIx
	 DtOnKAj/JeDXRMP4xoobWiMEn/werLf/uK77Mk3lCcKEbIXyKXOxe9+Dkbf0qy1H0Dg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794075655;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Stat-Signature:X-Rspamd-Server:
	 X-Rspamd-Queue-Id:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=zuON+gv5Oqn11SGxoLEH/MA3sUurHyokAlzX4VaqqGg=;
	b=HWb9rth7IAQ8dhfKrbKpBmGA7RE0Rc2chwuRSwZyvAmQ6N5A1+6oqGkqLdMuU+PinaI7
	 56xIBbOjcCI0vvv4S56C76hm8/I4GBkOL6yRUQQC8bLesL4qhjT3vSAO5w669B5Km5nES
	 Ei/2L50ikNSK0U8y+vvWzeldtS3UTw1yB6s2p1pRgb9Pq6DU2aZhUbA8sWOO4dKllkY2q
	 anteNb3/E0o8gAb73dEv5iHsqTd1R6p0Q/aYfk2DxVw2gf3imPToYFtARuC2guE+Ix2JT
	 E/LRgJZh4VjvR73BAUAR4ryEhSz7J1ZxL+27Gx1avGuZM85D3qmjE1jpiEU8jONlgeg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=yAsX9yFe;
	arc=none smtp.remote-ip=216.40.44.11
Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D670606A326
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:20:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 3D670606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=yAsX9yFe
Received: from omf07.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay02.hostedemail.com (Postfix) with ESMTP id E713D1203B5;
	Sat,  7 Nov 2026 18:20:52 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf07.hostedemail.com (Postfix) with ESMTPA id 082B92002D;
	Sat,  7 Nov 2026 18:20:47 +0000 (UTC)
Date: Sat, 7 Nov 2026 13:20:34 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Temitope obabi <obabitemitope765@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com
Subject: Re: [PATCH] ASoC: Intel: Remove unused sst_ipc_msg_tx tracepoint
Message-ID: <20261107132034.4a55b0ed@fedora>
In-Reply-To: <20261105135118.836-1-obabitemitope765@gmail.com>
References: <20261105135118.836-1-obabitemitope765@gmail.com>
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
X-Stat-Signature: 5kdpnhx4xq8i7njn9nwjxcde4fbzsiob
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: 082B92002D
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18ckZOG7WOpwYEftyj1Iqo+u6CsKq+DcIQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=zuON+gv5Oqn11SGxoLEH/MA3sUurHyokAlzX4VaqqGg=; b=yAsX9yFeKofBEdLrZ0pCi8uDHcDgF4r5P6tU3n2BdQGeLDsVONJbDqHSKhTHOLmVtz/8VUxWtoVG+7w6bz9CjoPCG1i44nXNpXjCplGvZbQumM0fo7IILhk0rjIYg/9Yz2Mf6h1iOFWYfHb8CjrAf9ueExCMPsEAxaLh9cEcV9M=
X-HE-Tag: 1794075647-196428
X-HE-Meta: U2FsdGVkX1/VxfyqANhRts0/AqjEOg+YiMRFaQkaH92smzcvn6q/3+sY8YGz5az/Tv9I628dU/to2mnA4Hn2QFJiCc1qfe9DHn0HBB81NosaW/GvnSbszhgUkq4iYnK/WY3mmOmODueKz/wQiKweWSFrJP8Ayk6jfKZvOu3Vc3tRIhQJE6nGcBkUhF5280bszMSosjyvahL4YlSMAIDXVyfAZ6InN7Ay1sm+UJyA5aa7y4YTH8baxA7YssT0zQPjuSe42EDRFYS4FhqeS6Hc16yo5xT9+z681OEjX4N7YYREQwiFTBN5bLgJbEoEgl5G/yrFhbyQOb6xg9O3BIsz/Hg3q/wimENG

On Thu,  5 Nov 2026 15:51:18 +0200
Temitope obabi <obabitemitope765@gmail.com> wrote:

> The sst_ipc_msg_tx tracepoint has had no callers since commit 37465972015c
> ("ASoC: Intel: Remove unused DSP operations").
> 
> Tracepoints that are defined take up around 5K each, even if they are not
> used. Remove this unused tracepoint.

It looks like a lot more events were removed than just this event. Can
you read the git commit logs and try to see if what the general trace
events were tracing was removed. If that's the case then the change log
needs to give a little history of what the changes did and that the
code no longer exists for what these events were tracing.

Note, this project is not just about blindly removing unused
tracepoints. It's to look at what changed, analyze it, and show the
history that lead to why these tracepoints are no longer needed.

Thanks,

-- Steve


> 
> Fixes: 37465972015c ("ASoC: Intel: Remove unused DSP operations")
> Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> ---
>  include/trace/events/intel-sst.h | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/include/trace/events/intel-sst.h b/include/trace/events/intel-sst.h
> index 0416e91f8181..c318ae9bc3c3 100644
> --- a/include/trace/events/intel-sst.h
> +++ b/include/trace/events/intel-sst.h
> @@ -33,14 +33,6 @@ DECLARE_EVENT_CLASS(sst_ipc_msg,
>  	TP_printk("0x%8.8x", (unsigned int)__entry->val)
>  );
>  
> -DEFINE_EVENT(sst_ipc_msg, sst_ipc_msg_tx,
> -
> -	TP_PROTO(unsigned int val),
> -
> -	TP_ARGS(val)
> -
> -);
> -
>  DEFINE_EVENT(sst_ipc_msg, sst_ipc_msg_rx,
>  
>  	TP_PROTO(unsigned int val),


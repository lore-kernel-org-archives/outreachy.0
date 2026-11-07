Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.16
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794077119;
	b=1/dR1cVM035grW1iqKHxIUvl3TPbQ+A2/O0ObcRh0+oPbAuKz22YW3sX+jZdMoyZQ2ir
	 7AZoLMWj49+5a1Ukk8ABN+O5f8MIYkGbvfhRbceUOxzXveVnNTFLKvj5cik0yZs8qF9um
	 Ne4bth5TZ0Arpnt/ulg1QVYhGs+suzwMqcJFqucFChbf+EwmL3i3QplPz7xKi7dBlt2NN
	 QbNhZsDs1PNesKFEP875jW3XMg9VRvvbng6CwdTcUwsDm+jTvUqSt7Mbyzbdw4MKXK4s7
	 riGFROReh3uVxO+SUjK6LBnilLUXmv8E1IbLk1uR8yuowCp4Bvs/TlOhR/vOqzOHhgQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794077119;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Stat-Signature:X-Rspamd-Server:
	 X-Rspamd-Queue-Id:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=AXMsDkbteHN42AbThh0fjuOqCxZ993mZuxqbtI29pBk=;
	b=tKdKwxBudpuzOo/eT8Fm7qXKiFaIZD+BmoMI5aeHAPAi1I2DNx+QYecOg6CqwpxbGOA5
	 icQXDOg4aIwr8tCSm6E5L/0ssCwnHxJohMoJQnZ6OxSJGG5YTqUV8Eg6q0d7/znduXFCA
	 sXNaMUqLvpziZq3Jdxu8/i3s4aO+MZUjnYDGwWSxdDs53v8yoY7GkVzidpduWTg7RJ27l
	 zQPdLIvDTPr+kNODJCwkKTM20BKUuJexC009277gKtgzyOL/v6SR25/SFUBmgmOKVU96X
	 gQ9Jrpsw4kgu0ycCv7qyXOehekshKVh+eX//2J731uqiK75bUZDZ3c0IE50WYdc5iQg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=5zbGFK9n;
	arc=none smtp.remote-ip=216.40.44.16
Received: from relay.hostedemail.com (smtprelay0016.hostedemail.com [216.40.44.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D2D606D830
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:45:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org F3D2D606D830
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=5zbGFK9n
Received: from omf18.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay10.hostedemail.com (Postfix) with ESMTP id AA3CAC035E;
	Sat,  7 Nov 2026 18:45:10 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf18.hostedemail.com (Postfix) with ESMTPA id C664F32;
	Sat,  7 Nov 2026 18:45:04 +0000 (UTC)
Date: Sat, 7 Nov 2026 13:44:53 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Maria Sheikh <mariasheikh812@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com
Subject: Re: [PATCH] sunrpc: Remove unused rpc_socket_reset_connection
 tracepoint
Message-ID: <20261107134453.78eada81@fedora>
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
X-Stat-Signature: pumsg79juehmqqckx3iqyipstffg65fo
X-Rspamd-Server: rspamout04
X-Rspamd-Queue-Id: C664F32
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX183uvf0LLUQ0GmCCUtKAEM8ZEij0pBX7BY=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=AXMsDkbteHN42AbThh0fjuOqCxZ993mZuxqbtI29pBk=; b=5zbGFK9nRuQ4NJk8LD5whlYa7N8XwsK/ClGPjSh1OBaTYJ34IIWRi4/Aa2IO/xJE8tsqcSHcb8eXZTe8nx3aBg++ZCQZB/v2AZgNVmqj9lhMbsaBK0yB1QFAaXqZuUOPogDQB7k+A683b7Gi6z0+PE6eJ4OrIKmDk/asfOaFSpc=
X-HE-Tag: 1794077104-40775
X-HE-Meta: U2FsdGVkX1/xgJf1LN86vJOeD167xSWL/2gP5bsZ9yKJTdWsiFoUftjMhwhGwGw9JPz+Rq1tSpnRATM20gT8RPkQYSaVVB2pUC0D2Q8E8+zQGdFfwzNMJithDvhjzRhbWQHgsAmVzRyvY84jZOiqmcdQ5UTx1nXX/E6AssV47Pc7obb5INq9yH1XoZvablNFs8D9UDClYOj3p8Q7m/YpG8PSe0D9LlT9iza4ZE9KGG9iPbDJADxV8DM0HeRIm/82qJWugCq9nNhKcUfKTgDuMWgKl3YnpZLr1CS3D7canhUfq582Evu0j0bwgy/0mH5+zaWX4q7oc+wrEhI68VBmx6hW1cnUM6WU

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

Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.17
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793628204;
	b=INWB3rXntgWmCfU9h3suOB1+QK878EbBcNkJ3E72wTxdcIzXkjssewBBttHtwVx85aan
	 6qDRD4pyiVRZkuX4wqeINLPo2OXCsncqmQ2u+T7LdmsKCgG8SHUHviQm8DLeQttxkIFPV
	 qcsSedhccEMB9mwsKRthuHyKZkE+JSNTOcI+mdpL5uV7oPpS4WIT9SrQoCLi3MbYLW3on
	 6H2WBGqcqnCnwCkW9UkMgRFjUNwX2xF46c9VF//6Davr6BMvZdmr2hwwJisbO6fLqwlkP
	 h/1P5GsAOg8LtK0r0FaVvT9qMQ+T7j4izQcV8H5J7VlnQmutQSaWhZMNCTV73F7HzIg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793628204;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=m585DZqhp8x+fIFtnTZV3r67tozqVFOfcfoaoL+yZUA=;
	b=chiEMEUAkt4twjpNgkvjrCLtInS9be+1yuLatM6+BFV7T8czAoxS6fH8z2OFLfG6Z2Ev
	 RGnAfVW0xX1o+Fy3JkE5bOQKhhYYCaJ4cM5UjQaETQN1pPVp0PL4Rilte9CJuQD3ff0+L
	 qZBMQDXVwHubHizwvlQ1UK/CoC2aUpQi7ga744pBR4lxvGpCJSSqV3pZLhg8bEDhWh8Fh
	 cTx74dyNTODBnfZpC98dWBia7s8SfFIcZ/j5XFYzQY0YwQr4ggrzMPI99GxiCE5F4qCqF
	 TXCsuarqhZqKh5HYFxTSUk8yQO2m109OkKRxSjjx4J3r9fKyqyWpR+5twGIXfQMCwyg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=mZr3949C;
	arc=none smtp.remote-ip=216.40.44.17
Received: from relay.hostedemail.com (smtprelay0017.hostedemail.com [216.40.44.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7554606A324
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 14:03:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org D7554606A324
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=mZr3949C
Received: from omf12.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id BCAC4A540C;
	Mon,  2 Nov 2026 14:03:15 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf12.hostedemail.com (Postfix) with ESMTPA id D82F21C;
	Mon,  2 Nov 2026 14:03:13 +0000 (UTC)
Date: Mon, 2 Nov 2026 09:03:12 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Julia Lawall <Julia.Lawall@inria.fr>
Cc: Temitope obabi <obabitemitope765@gmail.com>, outreachy@lists.linux.dev,
 julianbraha@gmail.com
Subject: Re: Tracepoint project: starting host1x_syncpt_wait_check
Message-ID: <20261102090312.1b9ef777@gandalf.local.home>
In-Reply-To: <1BD35224-C414-494B-B995-9ADA81B68239@inria.fr>
References: <20261030205216.24718-1-obabitemitope765@gmail.com>
	<1BD35224-C414-494B-B995-9ADA81B68239@inria.fr>
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
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: rspamout05
X-Rspamd-Queue-Id: D82F21C
X-Stat-Signature: h96kjiq1eukgx7jm3abecse1k8d91qpp
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+q4tiiyCH2VbheX2a6FhidVgGL9UlOkI0=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=m585DZqhp8x+fIFtnTZV3r67tozqVFOfcfoaoL+yZUA=; b=mZr3949CNUIk5ET6XmuC66rYDkqldR5AtXI0LijhjuZSG7tcP6f9BXtqd2+DA5lUGNqGLlKSYpFGDcdJLse7RdWygiEyk15s1QtD/mUBTriT9c6kZRF8iWdOpZX2kxWNJbCJOKW75ET36B9jisE1D6B0IGP1bZcnclUE72QDSNE=
X-HE-Tag: 1793628193-294163
X-HE-Meta: U2FsdGVkX18hwGKLJwoyJtycc+tfIIVx2HW8twdfqcEeiY7+R5A6A+/JfZBC4h++3FombLf8k0bxIEgqerObe5Yal28CRnwP3yD0/eaqbMlSbDu2+vfnpYcqn5ALUn4DLHcA7Ks3SGwWIUtMciu7hMYnOODWcnw8HbmchWW/p2/GlysQLq4CYFKSEsgxbFt3tK0ZasKhR8HVKPoueoG38wuH1csiibsPVzkLiDkjTlvmzzSnytVn9fxjZ/9LJFgo0KQ0mX6a/vw2qR1leWW2VnBQH0QHsrvwtt97JF1nArlrFExmVgffVxumNyS0q44xJeMa3J4cSsbm8V5BMX6wPSWsxJ1aI5ZO

On Fri, 30 Oct 2026 18:04:56 -0400
Julia Lawall <Julia.Lawall@inria.fr> wrote:

> > On 30 Oct 2026, at 16:53, Temitope obabi <obabitemitope765@gmail.com> w=
rote:
> >=20
> > =EF=BB=BFHello,
> >=20
> > I am starting work on removing the unused tracepoint
> > host1x_syncpt_wait_check (include/trace/events/host1x.h).
> >=20
> > I found no callers of trace_host1x_syncpt_wait_check() in the tree, and
> > a lore search shows no recent patch removing it.
> >=20
> > If someone is already working on it, please let me know. =20
>=20
> You can probably use git log -S to find where uses were removed.
>=20

Heh, I just learned something new ;-)

I would just do a "git log -p" and search for the change I was looking for.

-- Steve

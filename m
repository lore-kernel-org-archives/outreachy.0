Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.161.43
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793614070;
	b=GM0SHL4mqTf9AB0B3nlW4D+ojN1FfNpQ7hZzT+1bStvXmcfYyfczqIMjJq0tz2E6x4P2
	 ZuZxkowe1AN7jjBvOWDsQStq3YO1U3JPHw/k3XjNYyiYB0eWeBcsdFvrWUvG0JmKFy+Il
	 0ZwD/olS452MSdms4b2fP6EY+WjMUE7zjMm2YAMd/fnWKWO4eJ9BiZUkA1vaINOPAydaf
	 sYXr2bUlV2PbJxxa56RwlMPfzjmMCZbFmEBPTQHuID2PLk2ViNc6vaPpPuRcbb30xL5E6
	 EybEOesrwMrhlvpVlwpLDpGOI9KBGQEIT3r/O15WjuWBWFhy0mg4SGAIIgJrtukEVcg==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793614070;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding;
	bh=4r5tB7Tqm3R9V1NPnu9SLGaIaUwM0lD9Ef0x1tuCPaE=;
	b=S8uS1cYSKaPv9JvXX6rqgf9AKwWjSRAestYbaZX1yNj+dHB8YoSlj1VuNWVUKUuzhOgP
	 YEwt4YGg47ZUZSZWCg3V67Ms/rQ7DJBgwO2PFBc2BLeSjVwM+8vykFZIO8j6PqA7GCgDH
	 K2G26zmDRAS9w8vzL4tvPzafMh6GtOla+z8kVh75qtc83gnO88gZmE+PFDNeuWvlji6Or
	 kTa+z+Xpngt2Ec4ZHTs+uqVvYjHVyw3I04OUKtUpOFCxZrLAhZEeap+ToBtEAUPiHtN1y
	 2tdXqtZCtw/e163xDfZjMGckJjMUexiAAMX/mFYeQ94NKBWaltLL89gKlm56hR1zAxA==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b="OGuE/XAV";
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.161.43
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7FC8606A326
	for <outreachy@lists.linux.dev>; Mon,  2 Nov 2026 10:07:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org A7FC8606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=OGuE/XAV
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-70059e4dab6so1763699eaf.3
        for <outreachy@lists.linux.dev>; Mon, 02 Nov 2026 02:07:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793614068; cv=none;
        d=google.com; s=arc-20260327;
        b=a6f68WZf66FOpTJAIdGDc2hkt2ZO+pyrKe9ZNSH0kgUSJCutdfDoBHNJj5Y4DyuoTT
         jPtZHZq+bZTMAWhjydJUQPXmyUu+nZ2/e/NmQkjnJDXX/DdiOa9GHcSyu85Dpm0y5fss
         zCD89hT01bXi6KmROL6aYOHmYzZFq658Wx+FbLX9QYRP5VTrK7taNxiO4avA7j+2BWdz
         VzWA4jrtdPv/ER5SUvvBh8R+HVxcxGYQGPepLVfze53Ht6z6DQopP2LPKJ6wkFguecgK
         rtwZS1d1niWNqQVr6dV6fHixqB42ebF/OuWMSSJbwPef+Deh5s9+vpL2LLUqcpjb7oXw
         71Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4r5tB7Tqm3R9V1NPnu9SLGaIaUwM0lD9Ef0x1tuCPaE=;
        fh=FJEQLyPyE0EKjz5GqR2TXBTo8rYqPWrXg46YkAKkemw=;
        b=cmg+S6sNR0uCzoEWk/7JShGP4uFcbp4v45Ic1j7BfdO2pSK2tDsHY0u73dWJk2Ual2
         e7vAslks2o0dqYXgtpgZQbBYcZFItoNxftEKT5u7KT6ebAp6LTZ4Y0f7HhxE3hgqqzJU
         lTQo8dQn2NdsVcR0xXVzpuiwNfWrjQ+YaH/aSfQ6fpW9TF7Vh8Prong6qW44lT3x/sjH
         0rrvV9e312f/ASaol8A0XrK35t1lpbQhzxouawRBtgSYg0/gl7rScP60Tc5evob2R3Cq
         rEqCg9HOykFcYuF0wXs6yb8EVO7C3f4CY3m+3FutvtZJUK8K9DWTbmxcJwzpN1SsE7pW
         qY0Q==;
        darn=lists.linux.dev
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793614068; x=1794218868; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4r5tB7Tqm3R9V1NPnu9SLGaIaUwM0lD9Ef0x1tuCPaE=;
        b=OGuE/XAVe+zx1O8Ke6tt1EiwhVbjcpvdPicMC8GVquod34FoBPgdzfvOQn+3e/jwCO
         vGvWrtZFzdDy0NQ/9aW+N+Pi9qoJYHhCeMv6NNdrfjqgDfrGJkYf+6ydtTqd8KBmouE6
         aY9NsOTgt9LeNZ4BH6MxwfYy2KlFEacGFBeYaI4DwjIViy5qewTr1y+dhKEBse99dGfz
         3bmTJ/kKJZLki/XDdZMH7Y7NkMXgU29fHxQBjpxJ07lbUdchhGlsxIx22TsKz6WLFNLB
         p+PbeQmYaz6AakrUTuprTpHvYv1YQz7eySV6HOXMCy9A//D8k/fbJAZYJ/DLsr2jiMtU
         277w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793614068; x=1794218868;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4r5tB7Tqm3R9V1NPnu9SLGaIaUwM0lD9Ef0x1tuCPaE=;
        b=bGNHDLdH88GEwrtNq7g8B31NYljcP469/FwXRWKgAS/nyAj3eG2npfxr0GokeGPGTv
         bI2nrndLl/WbI0G0ERY1fLfV85xwL3Eeu+EjY2JQG7e82hmuk9ChAJIG+fgxH3eKMBTX
         45fZGl2fdcoOY+oL38c9XE36Mwuxo8h1CaukdlsXhVBCwN+nagC4k8wUmW7Jw9FIaR4d
         9X5E3Tebs0Mp5V1vaNdr7beiecNBL9hsGyTn02S91lSDMJvC9ekYqyBeh5ajuDlLhotx
         z8n2FTWTxmMTh79XM7+KqWXysKm9+ROITPo5wt9bgr6qbhKHPys9o3CREpPJfkEqmiwK
         A3eA==
X-Gm-Message-State: AFq9FYLYaKeqibLTGQ0Yqq6y6cLMJgHgf87unFioHagof/PDHdcwVex9
	bcex/wio3mXw0/xtD0EEZZMSsDnXF9aSp45Jbya0YNJg0gQgvaaM5pOVxR5cvlgekIiEoxiO2j0
	0rZT+h6MtyoPy9ckS87psxODfSUBT19U=
X-Gm-Gg: AYBFou0beCHQvPSgBB7LRW6pbQ4LTMrc5T+VTjZXBX/1HwV7ESl3lI6cvtw95uYRvKr
	Yij+Hs5a+P5T3jnbdjz7tfdBI6CKZBjwZybu8bwLiWzuk5B/atLfdqCofYTGKZHUtZuDsnyvLGl
	7vRX1c6r6XFhrub6strJX56CBlyAZ+DFT4I+juBPDmDxJhQ3m1aZI+JKAFZntqU3BwAhRRX3uT2
	LNyjjqmMgcY9TUK+VkSFUsd/TXshNdrmOxu5/bKkr7ABh8GW4lEWaTbItBrqlR2en7MIKeZcBo/
	qzjR9sbjukmKr1cg4tieIP4ZqXAUQb/kpHJMI4GJPogL+3+1TyH1j1pY8T/58yykMuCxXmGlGHF
	Gnomv49GqlASEeILc24A8swd00udgAt/tjgKXYQ==
X-Received: by 2002:a05:6820:55d7:20b0:70b:9b1f:e8a3 with SMTP id
 006d021491bc7-714f27d435bmr3507633eaf.83.1793614068557; Mon, 02 Nov 2026
 02:07:48 -0800 (PST)
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
References: <20261102093350.36811-1-obabitemitope765@gmail.com> <9935ee97-6f95-8e8c-5ff-27332a393521@inria.fr>
In-Reply-To: <9935ee97-6f95-8e8c-5ff-27332a393521@inria.fr>
From: Temitope Obabi <obabitemitope765@gmail.com>
Date: Mon, 2 Nov 2026 12:07:35 +0200
X-Gm-Features: AclHuK918E-2UGo2oCiIjLVi-rnjsJoWnoQmAYBTPEWtxz-CFA3zSWBZyAzha6Y
Message-ID: <CALUk5xYvvaXBp+DMKoime61GTnKEx6pB_gbzW4s+P2dAKihrog@mail.gmail.com>
Subject: Re: [PATCH] rxrpc: Remove unused rxrpc_drop_ack tracepoint
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev, rostedt@goodmis.org, julianbraha@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback!

On Mon, Nov 2, 2026 at 11:58=E2=80=AFAM Julia Lawall <julia.lawall@inria.fr=
> wrote:
>
>
>
> On Mon, 2 Nov 2026, Temitope obabi wrote:
>
> > The only caller of trace_rxrpc_drop_ack() was removed by
> > commit 5e6ef4f1017c ("rxrpc: Make the I/O thread take over the call and=
 local processor work").
> > The tracepoint has had no users since, so remove its definition.
> >
> > Tracepoints that are defined take up around 5K each, even if they are n=
ot used. Remove it.
>
> It is not clear what "it" refers to.  Tracepoints is plural, so it can't
> be that.
>
> Also, a question for Steven, is the 5K just the code size or is the
> concern that data is allocated at runtime as well, even if the tracepoint
> is not used?
>
> > Signed-off-by: Temitope obabi <obabitemitope765@gmail.com>
> > ---
> > I used AI assistance (Claude) while preparing this patch. I checked tha=
t there are no callers of the tracepoint, found the commit that removed the=
 last call, and built net/rxrpc with CONFIG_AF_RXRPC=3Dm.
>
> This seems to say that you used AI to find that there are no callers of
> the tracepoint.  Was that really necessary?
>
> julia
>
> >
> >  include/trace/events/rxrpc.h | 29 -----------------------------
> >  1 file changed, 29 deletions(-)
> >
> > diff --git a/include/trace/events/rxrpc.h b/include/trace/events/rxrpc.=
h
> > index 56dc9b614071..ec145da21ca8 100644
> > --- a/include/trace/events/rxrpc.h
> > +++ b/include/trace/events/rxrpc.h
> > @@ -1837,35 +1837,6 @@ TRACE_EVENT(rxrpc_send_ack,
> >                     __entry->serial)
> >           );
> >
> > -TRACE_EVENT(rxrpc_drop_ack,
> > -         TP_PROTO(struct rxrpc_call *call, enum rxrpc_propose_ack_trac=
e why,
> > -                  u8 ack_reason, rxrpc_serial_t serial, bool nobuf),
> > -
> > -         TP_ARGS(call, why, ack_reason, serial, nobuf),
> > -
> > -         TP_STRUCT__entry(
> > -                 __field(unsigned int,                       call)
> > -                 __field(enum rxrpc_propose_ack_trace,       why)
> > -                 __field(rxrpc_serial_t,                     serial)
> > -                 __field(u8,                                 ack_reaso=
n)
> > -                 __field(bool,                               nobuf)
> > -                          ),
> > -
> > -         TP_fast_assign(
> > -                 __entry->call       =3D call->debug_id;
> > -                 __entry->why        =3D why;
> > -                 __entry->serial     =3D serial;
> > -                 __entry->ack_reason =3D ack_reason;
> > -                 __entry->nobuf      =3D nobuf;
> > -                        ),
> > -
> > -         TP_printk("c=3D%08x %s %s r=3D%08x nbf=3D%u",
> > -                   __entry->call,
> > -                   __print_symbolic(__entry->why, rxrpc_propose_ack_tr=
aces),
> > -                   __print_symbolic(__entry->ack_reason, rxrpc_ack_nam=
es),
> > -                   __entry->serial, __entry->nobuf)
> > -         );
> > -
> >  TRACE_EVENT(rxrpc_retransmit,
> >           TP_PROTO(struct rxrpc_call *call,
> >                    struct rxrpc_send_data_req *req,
> > --
> > 2.53.0
> >
> >
> >

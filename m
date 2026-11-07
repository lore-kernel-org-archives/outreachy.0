Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.14
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794076719;
	b=G751j6HHTVbOHzmcwGqVYtEQ/lj9mq6QXKduIU4b42z0qw8gNdTli/Vj16AsiOU+BKH4
	 IzqizX/8mRX2PMf7/NldUjXxbILKgwRnQpTev78s3FvQpNhrMcSNhFjLBzuYmx/Ti4vzS
	 JcELjgfyjH4bIQF/9hGy0VL9mwC+P98Pprkb+g7mVTLjH5n/XByJxWd7Un63IwDaW61HS
	 3qZFbswes/06LeGaZkkmWU42/JwXu4zxBV/Y/AvDmWAg6hsIRaNhrvxlsh/+qhAjJr19S
	 GdrLFclOTmt3eVpqHa3kybFi7dWj68lgUAvHzFmk/FPDCUExdn8Z+BNDyOMMbi/DzuQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794076719;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Queue-Id:X-Rspamd-Server:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=S2zstGtjOpyhdD8CcWz74EZ+15rlKCA3MlNIV0gd9RU=;
	b=r2T5KxpPE0sJJNWIqsT/wfBA0I0qfNURDBs3m1H/4XgM4AkXoNjtMu1dF5O/E76gckkd
	 WsdxzTQOL66WkENaEeI52sVP8MGfcg7E7CohqMEggkY+kC4YmMazpxMPn3Af32/ySzym4
	 wINEcrXrLFpJHbybtXArbKcq7YiJ0s32zw6CInee/m7I47/J4SxpzfgNUgfPAjZlcXmSB
	 mE+2KyI6gnmgCLBk34Pq4IcQRHHSTdGSVl8Ia13BteclWhuPgrWhbcHwYKbnrBMs6bOw/
	 eQxel2Fuy7+PoyR183ZXH5/0JgBAUtRQjG89rhKogpeMORvIDGwzyV7MavZftMaPx4g==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=cbpT8Fxl;
	arc=none smtp.remote-ip=216.40.44.14
Received: from relay.hostedemail.com (smtprelay0014.hostedemail.com [216.40.44.14])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E83EB606A32C
	for <outreachy@lists.linux.dev>; Sat,  7 Nov 2026 18:38:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E83EB606A32C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=cbpT8Fxl
Received: from omf11.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay08.hostedemail.com (Postfix) with ESMTP id 859101403EA;
	Sat,  7 Nov 2026 18:38:30 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf11.hostedemail.com (Postfix) with ESMTPA id A121D2002A;
	Sat,  7 Nov 2026 18:38:23 +0000 (UTC)
Date: Sat, 7 Nov 2026 13:38:07 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sowmya Torra <sowmyatorra@gmail.com>
Cc: outreachy@lists.linux.dev, julianbraha@gmail.com, julia.lawall@inria.fr
Subject: Re: [PATCH] drm/xe: Remove unused xe_vma_flush tracepoint
Message-ID: <20261107133807.41daf214@fedora>
In-Reply-To: <CAFsBPPnWjgKNw0rzaG6TbShNJO6t6NKq_YXMQ65FCyB8Wqt7pg@mail.gmail.com>
References: <20261102184148.11176-1-sowmyatorra@gmail.com>
	<CAFsBPPnWjgKNw0rzaG6TbShNJO6t6NKq_YXMQ65FCyB8Wqt7pg@mail.gmail.com>
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
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: A121D2002A
X-Rspamd-Server: rspamout08
X-Stat-Signature: djseizsx3n1puxszx9wmwgn35wcaqbqy
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/xcFri05zLnYV+76wtrsIXUNYByT69110=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=S2zstGtjOpyhdD8CcWz74EZ+15rlKCA3MlNIV0gd9RU=; b=cbpT8FxlG+fK1LG48qie2Ldzdh/0UGDjZuKUA1h8MUgBfEO8nrlQBKYwgQPYixBk89dGI73UjQtEmJq5V6Y1dKOzud5/7zikuLZxJR5nzimfdJu+eUWZN0h7N+9EmTNPBiPZNldEyjrd/U0sdqx48rsB4LgxmRNYI1vxdaqkYac=
X-HE-Tag: 1794076703-104964
X-HE-Meta: U2FsdGVkX18v9y7iUjbi46FOndxePK/SxmFK3FzHwA3tNR6+GWVN1kpjsMmraeqiXLkH31Mc87WkwoCEE85q9hHq3QsALAtQG8grMIASItTBGGtgKhSUQNZcB2sSNxFNQFOK9UYIIrDXBBViysn1z7QNluukaH97rOv21+TgKwVjsR0RshOhJXZ2jM2xrJou8cxiQH5r7L4/XVRdwrvg4uXH1jCyv+OR1x+4gKg7Cw7alm1rsASissiG9A22rxjSki3i3/P1akKQYi1GocXaS7uAqrs+c5quA4+TDPENbvd2VkVd67GLE8GOnu1yFdljkEnTOg9X/rqyw05hmUgmUcPCfWcW57Ad

On Tue, 3 Nov 2026 16:35:44 +0530
Sowmya Torra <sowmyatorra@gmail.com> wrote:

> Hello everyone,
>=20
> I have a small question about measuring memory savings for tracepoint
> cleanup patches.
>=20
> For my `xe_vma_flush` patch, I compared `xe_trace_bo.o` before and
> after the change using the `size` command and found a reduction of 452
> bytes.
>=20
> I measured the compiled object file, not the actual memory usage when
> the module is loaded. Is this measurement enough, or should I also
> check the size of the final `.ko` module or measure the runtime memory
> usage?
>=20
> I just wanted to make sure I'm measuring it the right way.

You are correct.

The 5K measurement is for TRACE_EVENT() which is really defined as:

#define TRACE_EVENT(foo..) DECLARE_EVENT_CLASS(foo, ...) DEFINE_EVENT(foo, =
...)

where most of the heavy lifting is in that DECLARE_EVENT_CLASS(). I
created a way to split up events when they had the same info so that
each event didn't re-define the same code over and over.

Hence, TRACE_EVENT() is around 5K where each DEFINE_EVENT() is much
less, and can vary depending on configs.

-- Steve


>=20
> BestRegards,
> Sowmya
>=20
> On Tue, Nov 3, 2026 at 12:14=E2=80=AFAM Torra Sowmya <sowmyatorra@gmail.c=
om> wrote:
> >
> > Commit f3e9b1f43458 ("drm/xe: Remove async worker and rework sync
> > binds") removed the async worker and its calls to
> > trace_xe_vma_flush(), leaving the event definition unused.
> >
> > Remove the definition from xe_trace_bo.h to avoid generating code
> > and data for an event with no remaining callers.
> >
> > With the tested x86-64 configuration, size reports a reduction of
> > 452 bytes in xe_trace_bo.o, from 20262 to 19810 bytes: 156 bytes
> > in text and 296 bytes in data.
> >
> > Signed-off-by: Torra Sowmya <sowmyatorra@gmail.com>
> > ---
> >  drivers/gpu/drm/xe/xe_trace_bo.h | 5 -----
> >  1 file changed, 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/xe/xe_trace_bo.h b/drivers/gpu/drm/xe/xe_t=
race_bo.h
> > index 86323cf3be2c..72c4107adc13 100644
> > --- a/drivers/gpu/drm/xe/xe_trace_bo.h
> > +++ b/drivers/gpu/drm/xe/xe_trace_bo.h
> > @@ -115,11 +115,6 @@ DECLARE_EVENT_CLASS(xe_vma,
> >                               __entry->end, __entry->ptr)
> >  )
> >
> > -DEFINE_EVENT(xe_vma, xe_vma_flush,
> > -            TP_PROTO(struct xe_vma *vma),
> > -            TP_ARGS(vma)
> > -);
> > -
> >  DEFINE_EVENT(xe_vma, xe_vma_pagefault,
> >              TP_PROTO(struct xe_vma *vma),
> >              TP_ARGS(vma)
> > --
> > 2.47.3
> > =20


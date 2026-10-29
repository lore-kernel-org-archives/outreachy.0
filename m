Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=216.40.44.11
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793280051;
	b=bqzhnX0CYevSbKov+27E1Bndd8i0YByAV10VL4kH0dn3fAls/TfwwQrePjXnNg6rk+Dj
	 U968DcsNJkfduo3GQkJnBIGFVxW8+ChFWkylVpUOz8Us1tlLq9jGJYiqkkvEVYwsNvjRa
	 g9SmlecHMr5bI4MSCf94U2FZ5+eMgDmp9/aS97hfYmHywQ/aQpU1Cvoyk1hlfZjFRfNX5
	 5iNskaQxUYTf0+DftRbDFAWwQ+4aV/bp0dW3PYNFjPrYBq5CjBRLnDhOSsN4mplTtzohH
	 f9YrRQzs7P4pqgIdkW0MO7dIuLG3Kh0vROmLywbYtZPvzwW2seZdx+MwNx9T/O9Nt6Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793280051;
	h=DMARC-Filter:Received:Received:Date:From:To:Cc:Subject:Message-ID:
	 In-Reply-To:References:X-Mailer:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:X-Rspamd-Server:X-Rspamd-Queue-Id:
	 X-Stat-Signature:X-Spam-Status:X-Session-Marker:X-Session-ID:
	 DKIM-Signature:X-HE-Tag:X-HE-Meta;
	bh=sFtFB+WUwZYH3CoIvIOWVPMpbCj3GiRLnaQIEr37OKI=;
	b=MiuGNJ+06KR9EQnl1P6kvuU5LMG7IcF5uh3s7xkweSoYz7uJC93GCP0zSTXUp5p2foon
	 wN/DdCHCzE/oHxHsfmuiQdFzHqLDzEyPv4b1S7KTYSv3V8bJwiCTeth8rpKwSyHyGyfsq
	 2JakWm3a444EIq9uVoxm0A2KSIwkhF6PHWEmzh8+HGotHi+tL8P9NSTrFWYRRBuclGc7v
	 ihTPz2tH4DAEDewTurmRV8rMMZcMnlFnQfnjwdJRfMqEbgwx3CjtgLfuHHp2jEq3IHmsG
	 06HAhQxA4HfVj2HrqlbgDALpGKH0RpAGVg+l5L291RAEGf/68zSxcAt837hk60LJqtg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=goodmis.org;
	spf=pass smtp.mailfrom=goodmis.org;
	dkim=pass header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=RLZ61hSl;
	arc=none smtp.remote-ip=216.40.44.11
Received: from relay.hostedemail.com (smtprelay0011.hostedemail.com [216.40.44.11])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DE3606A31C
	for <outreachy@lists.linux.dev>; Thu, 29 Oct 2026 13:20:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 54DE3606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=goodmis.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=goodmis.org
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key, unprotected) header.d=goodmis.org header.i=@goodmis.org header.a=rsa-sha256 header.s=dkim1 header.b=RLZ61hSl
Received: from omf17.hostedemail.com (lb01a-stub [10.200.18.249])
	by unirelay02.hostedemail.com (Postfix) with ESMTP id 0ECCB120384;
	Thu, 29 Oct 2026 13:20:49 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf17.hostedemail.com (Postfix) with ESMTPA id 6B48318;
	Thu, 29 Oct 2026 13:20:47 +0000 (UTC)
Date: Thu, 29 Oct 2026 09:20:46 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Ankit Thakur <codeankit.thakur@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy@lists.linux.dev
Subject: Re: Guidance on Next Steps for Outreachy Linux Kernel Internship
Message-ID: <20261029092046.36b51cd4@gandalf.local.home>
In-Reply-To: <CABydzmn9b5kaEZOP4O5SS3UWevw8BK_hhOE3E0-u0xsTZmUZyg@mail.gmail.com>
References: <CABydzmn9b5kaEZOP4O5SS3UWevw8BK_hhOE3E0-u0xsTZmUZyg@mail.gmail.com>
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
X-Rspamd-Queue-Id: 6B48318
X-Stat-Signature: p9xksggor44syuuj7cr14ordi7g5zbam
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/NrscTk6IKdO5FHKKfOAYwXB+WETpdcBE=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goodmis.org; h=date:from:to:cc:subject:message-id:in-reply-to:references:mime-version:content-type:content-transfer-encoding; s=dkim1; bh=sFtFB+WUwZYH3CoIvIOWVPMpbCj3GiRLnaQIEr37OKI=; b=RLZ61hSl2wQvjrTeMGNYbPjH35FM9n3bj/Jjh69O6JjgVBIrjb9GKipjVqHEq8vHKnoQgsKuxb1bt/HmHH2Vyg5OpBKm/fG8nNMxjQNAOz60bOnn5NZTp32wv8ISnCC9bPv7dQFU0F+n6PJKRIomhKcxu333e5k1FjykO+qycWg=
X-HE-Tag: 1793280047-555972
X-HE-Meta: U2FsdGVkX19Jal9JEA9jr3xM7H2Y0Gvsls0uBzP9U4p75H1SeGhxz6Legt8o0tm3UQrtd9DeqNmlrE4f4qZYLJZi4XxFqGzH7TdfRPu6fRNgNQPoRfJA4xarTIlRDhjePeJRel3ESQfTnmGblEJ5rLE7PJ6bmIvLvx4zKo8PqG9wXvwExBMKjj6o3BGFbb9eNlBGDLHY4Ezn1JrM1w0ovJ9QyzVO0lPQ96i4kW4xmM5t/ZKrNRT2i245D76MXrxDXAkQxZp8vaCHQfZEB+hqIzuHhx/8gFjZvZnCG0DoROMYsFQaF2YWmYpTot8ZI5DCDxOK5xwTilzx36NsrJbDPp0CqyOkmzEAlpQjbOpIPC6A649SfHFiEYs64fX+R0rv


Hi Ankit,

I'm Cc'ing Julia and outreachy as they will be able to provide more
information that I can.

-- Steve


On Thu, 29 Oct 2026 11:47:29 +0530
Ankit Thakur <codeankit.thakur@gmail.com> wrote:

> Dear Steven,
>=20
> I hope you are doing well.
>=20
> I am applying for the December 2026 Outreachy internship for the Linux
> Kernel project, *=E2=80=9CRemove most known unused tracepoints from the L=
inux
> kernel.=E2=80=9D*
>=20
> I have already submitted a patch through email as part of my contribution
> to the Linux Kernel community. I would like to understand what additional
> steps I should take to strengthen my application and meet the contribution
> requirements for this internship.
>=20
> Could you please guide me on the following?
>=20
>    - Whether my submitted patch fulfills any part of the community-wide
>    contribution requirements.
>    - What additional tasks I should complete, including the required
>    staging patches and project-specific starter tasks.
>    - Whether there are any specific tasks related to identifying unused
>    tracepoints that I can begin working on.
>    - How I should document my contributions in the Outreachy applicant
>    dashboard before the November 9, 2026 deadline.
>=20
> I am eager to contribute meaningfully to the project, learn the Linux
> Kernel patch submission process, and work toward becoming a successful
> Outreachy intern. I would appreciate your guidance on the best next steps.
>=20
> Thank you for your time and consideration.
>=20
> Best regards,
> Ankit


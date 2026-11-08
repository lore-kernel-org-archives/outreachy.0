Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.43
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1794156913;
	b=mL7pmhobTOlfsXRAez4MwdcWo6F5PbdCj8XdcLnAPUWqwhNk4RLK2MXzkhL55OhhFaRM
	 THb1LinpBCYzephYp/aVPCAZXfnu/Ju5WzYfeCaIkZA0LR6iWKavdFAGP0XnM/cMH6M/5
	 sfQpLA1qjUveIVKp62XXdo0NENFU7WYnXBK5I6KqEhW6OIQn0fJIpidvnNo8Ec86oyp+Y
	 qA6mgr+eDD64+BVCudosFNu4VG1PHI/V5gspbt+or3QlnGmrwVhyA15WQIKYLoVJ7YEne
	 4+q3yn3iD24vMDbF3wrx3kmU/WwnYvv84Dnv0ZdSKg06PDbzx5xYmyFTSu/xJUCVuiQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1794156913;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Sender:Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:
	 References:Content-Language:From:In-Reply-To:Content-Type;
	bh=J4by6BXxmmyDgtWpsM0weXRUuHJF27kgG6varbESwMU=;
	b=W/S0cIYeTGcUOPIIcQWfYaJax2df8xAoVl5AWKvePbv9BaRA0H2BbCiIBZR4e1OfHvP/
	 9EMOgFywRMey/z/opUt29nwne5VS7KBiUft11Win0YaApXcb1/XfJ9jZDh3pWOtUnMmdf
	 OkT5+qcnpCkk1qu1xcIQopMUMlSe+woEuYZ4x88Dt5IHgdt6PcLpQClSrBJImzqPpfERc
	 THaKtPMVKYk8q6oxnyq7XgA7ALBlG+857toaDywlPYVbPY7sk0+//9B7ZX+MBtIOCsDgi
	 4StF+ceVzqXDMPb/NrukvIB86ka/J8LSnF2wq2vywosqe6d0gfkJyVvSjZzZHHSFdmg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DbHau+84;
	arc=none smtp.remote-ip=209.85.128.43
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6893606A31C
	for <outreachy@lists.linux.dev>; Sun,  8 Nov 2026 16:55:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org E6893606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DbHau+84
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4a215e64962so1453295e9.1
        for <outreachy@lists.linux.dev>; Sun, 08 Nov 2026 08:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794156911; x=1794761711; darn=lists.linux.dev;
        h=content-type:in-reply-to:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:sender:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=J4by6BXxmmyDgtWpsM0weXRUuHJF27kgG6varbESwMU=;
        b=DbHau+841XJGgha7GNmPBTUHO3DqDcHYB9G3r8rhzcyqFFqD2pIAhZagRO25LL830w
         TqCxLEdX7xg0HEtE7PSZQE6gE8YZQscLM69pTcSgmIpDjeVE6ZMDyf79oVwa1W7HLJ9L
         rexFYLBI+F5s8de0To1y61hnjUKzUQ2wCTXM/0NmlQMZJhgDdqzJn7HCwT6cdJJdT2/I
         Ln+xUgkre1o6gFtiOKXHEZzSsSqoKpyPck6etTXfQCf/O5YfPxfxyfQU3j5t0ZQIBWGb
         YSxsus+fpxWUhL1x4ANS6V4xPhkNLg1BV1sEJtIOGNtfNTcizyB9l0aH0eRB+jEGwFUv
         G47A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794156911; x=1794761711;
        h=content-type:in-reply-to:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:sender:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J4by6BXxmmyDgtWpsM0weXRUuHJF27kgG6varbESwMU=;
        b=heOCj/TB25VxEoZNfWl0URz2zZvu3tR0YhnmjfoaYOoBbnJmmeNco5ET0qe27E4qMZ
         o+AwghwnR1b8S/6MYNmXUKox1KEllGgcw3dhTXKJjJ+rZQSp6PjFxmLzPCvBv6x9R2s5
         K8izgI9gX+2HeNykQC4r2NtevCdyPDcJGoZduXkWuiMkqY+5xzoiY0uEfpAevXgVX6ee
         xrmpVxTkHH+d7hIzJurKdykmC1ABivlTdguaxDfL/uFn8zCWLLeOUNzY8G5aGQymSCiE
         n2ZZe4Dz9ZR8SzB5va0NpHIOAXnzoaqW6XOw3UE60hFbob1mH/KGPgGay9O2p2VYlCLv
         tZ+w==
X-Forwarded-Encrypted: i=1; AL+hErFwbDXPDHIuQf8bUDdcCUztH6rxBLZ41c8hCiOHsjLiziDS4EJ9gWkDbWSOUcfZThe3SV9M5K1UG6c=@lists.linux.dev
X-Gm-Message-State: APuU4Z/J5EA08rQLKQj9VoTZ1Er9aBemEarXqUeVBduRZJcpOMV3bEbj
	SRX7fH1yF4GF6bhZHhHjWsliG7e5J317mKiG9G4Ql4S6ytIdZPH33eXf
X-Gm-Gg: AYBFou1GyFFN7FoaL8bRi+glaAGHIknoBGoikN/hT+xm3kAaEFCvndU3jnoC6DkLjH0
	KBMxltTBPRB+6p/e5rWu3LwjbucB3l2v/cz+3p+GMuIMKzuki3GKf8VO7kGQ0csE7XDAygJEE2l
	ihgKqaAXkBHIhyTZnFKQTeyg3QIVuT05ogo9U2eIT2mhhs0ovWaGIc7ebACgN+He3Vnupia0sRS
	3tMXJrkOFgjmYbJxu/UOkN/FZTkxFQYeCyeUwv5Hf07GJj4cV2d6ltluJrDJKYv+yk65P4bf1yK
	OHW9odLEP5OezPFOgOCkFgdoqJND3iZFlYCEqGmNESwL0RmtQUoW8pF2hVXaKmnJFibgli78lcI
	7ZCDQ/FET6n8T+zRMvR9PErHqn9JPmaMNYdb2XX1+luwL5RiXr08eFKIUxYWDmPJGdfb8nJTQ9/
	C9sx0YUrhP/hQRN6OBitZDjajuB0aa3buvX3FRtUdRKpc4CSUfuTsEkYBelgoCykzA6PXm4qcww
	xCzdRJ5AM9nJQ1Ez4wwi5tlBbLQc3p/nzjBDFGW0dogNGJHN5P6Y3yBkOnHtZo6f66t08egL5pP
	VepZogwVDqLsVZ6SU1XMgnVfKK4xS/ScCNjYYm33Kj4yWiof0Lyhjws+vYmQnKFIu0OvV81sOBh
	d7zarGsu5/PlR2q3LK8V/
X-Received: by 2002:a05:600c:8b45:b0:4a4:4d57:8462 with SMTP id 5b1f17b1804b1-4b963c8ea4emr33372855e9.24.1794156911021;
        Sun, 08 Nov 2026 08:55:11 -0800 (PST)
Received: from [10.128.10.232] (195-23-151-163.net.novis.pt. [195.23.151.163])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b7efb0d7a7sm160715905e9.9.2026.11.08.08.55.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Nov 2026 08:55:10 -0800 (PST)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <7fdab163-e48e-4353-bbec-c9d12eea4441@gmail.com>
Date: Sun, 8 Nov 2026 16:55:09 +0000
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Tracepoint project: draft timeline for feedback
To: Temitope obabi <obabitemitope765@gmail.com>, outreachy@lists.linux.dev
Cc: Steven Rostedt <rostedt@goodmis.org>, julia.lawall@inria.fr
References: <20261108114700.538-1-obabitemitope765@gmail.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20261108114700.538-1-obabitemitope765@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------EJTV0vmtrYboCYiguUK00sSF"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------EJTV0vmtrYboCYiguUK00sSF
Content-Type: multipart/mixed; boundary="------------sBTYxPufahBjE6gFZ0rFU5Nu";
 protected-headers="v1"; hp="clear"
Message-ID: <7fdab163-e48e-4353-bbec-c9d12eea4441@gmail.com>
Date: Sun, 8 Nov 2026 16:55:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Tracepoint project: draft timeline for feedback
To: Temitope obabi <obabitemitope765@gmail.com>, outreachy@lists.linux.dev
Cc: Steven Rostedt <rostedt@goodmis.org>, julia.lawall@inria.fr
References: <20261108114700.538-1-obabitemitope765@gmail.com>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <20261108114700.538-1-obabitemitope765@gmail.com>

--------------sBTYxPufahBjE6gFZ0rFU5Nu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11/8/26 11:47, Temitope obabi wrote:
> Hi Steven and Julian,
>=20
> As part of my Outreachy application, I need a project timeline for
> removing unused tracepoints. Here is my draft, based on the patches I
> have sent so far (assuming about 12 weeks):
>=20
> Weeks 1-2: Set up the kernel build with tracing enabled. List candidate=

> tracepoints by checking which definitions have no callers. Choose the
> first subsystems to work on, and ask you which ones you prefer.

I think you already have the kernel build setup with tracing enabled for
your existing patches, right?

Also, it may be better to rotate across the different subsystems.
Otherwise, it may overwhelm each maintainer to receive many patches
within one week.

>=20
> Weeks 3-5: Send removal patches in small batches, one subsystem at a
> time. For each one, check the callers and search lore for duplicates
> first. Then build, run checkpatch, send to the maintainers from
> get_maintainer, and Cc you and the Outreachy list.
>=20
> Weeks 6-8: Handle review feedback and send v2 or v3 as needed. Keep a
> list of what is sent, accepted or waiting, and follow up politely on
> patches with no reply.
>=20
> Weeks 9-10: Take on harder cases, such as tracepoints that look unused
> but might be used by tools like trace-cmd or perf. Ask Steven before
> removing anything unclear.
>=20
> Weeks 11-12: Follow up on unmerged patches, update the status list, and=

> write the final report.
>=20
> Do you think this is realistic? Is there anything you would add, remove=

> or change?
>=20
> Thank you,
> Temitope
>=20

--------------sBTYxPufahBjE6gFZ0rFU5Nu--

--------------EJTV0vmtrYboCYiguUK00sSF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQT6qjll++tIFxF8TUPElYPCBXNxIAUCavCpbQUDAAAAAAAKCRDElYPCBXNxIIG4
AQDS+QGfRJVOqd/vh3QFBr4pTePMgQfIcRU6DyJUomTRnAEAg+GOwcChpyuJQtB0stNOg/4R+aBs
ji8jOteIUCcH6AY=
=u4nB
-----END PGP SIGNATURE-----

--------------EJTV0vmtrYboCYiguUK00sSF--

Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454F133E0
	for <outreachy@lists.linux.dev>; Wed,  6 Apr 2022 15:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649259699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/LcWgRErzi2SZmXuRzwXxyEMQ+ytoXbl2bbg3lYk+I8=;
	b=XNA9cDUr8uUExnQ+OUhTty+hQdaGJbPy2XFhFYmsAPliEJgFoYsSyjMQxzop5ESF4YGvPJ
	8b2r9q6MfxNOflGTAuh1s9NRe/oSWh1dOtyfCWlZG1WxZRhdn0Hvypur1VOR2/8ZSylIXk
	3rndjI2f7uBnGPway+lKndey9yu+Ezg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-RddtqI3lMha4wEE-0pbmMA-1; Wed, 06 Apr 2022 11:41:38 -0400
X-MC-Unique: RddtqI3lMha4wEE-0pbmMA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4D66811E83;
	Wed,  6 Apr 2022 15:41:37 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4C768C54180;
	Wed,  6 Apr 2022 15:41:37 +0000 (UTC)
Date: Wed, 6 Apr 2022 17:41:10 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Jaehee Park <jhpark1013@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: patch idea for wfx
Message-ID: <20220406174110.57504b92@elisabeth>
In-Reply-To: <20220406042821.GA989392@jaehee-ThinkPad-X1-Extreme>
References: <20220331141434.GA1104155@jaehee-ThinkPad-X1-Extreme>
	<20220331195212.7e25d12a@elisabeth>
	<20220331214733.GA1508153@jaehee-ThinkPad-X1-Extreme>
	<20220401001216.727c2ef1@elisabeth>
	<20220406042821.GA989392@jaehee-ThinkPad-X1-Extreme>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jaehee,

On Wed, 6 Apr 2022 00:28:21 -0400
Jaehee Park <jhpark1013@gmail.com> wrote:

> [...]
>
> Sorry about the late reply! It's taking me a while to wrap my head around=
 this! I think I'm slowly getting it, but I have a few questions. This emai=
l is long so here's an outline to make it a bit more readable:
> Section 1: my current understanding (reiteration of what you had already =
explained)
> Section 2: my implementation of container_of() and the error message
> Section 3: my confusion about the different types (struct wfx_vif vs u8 d=
rv_priv[])
>=20
> -----Section 1-----
> - We're implementing container_of() to get vif. we are doing so with cont=
ainer_of() which does two things: [1] it speeds up compilation because the =
container_of() saves steps that the cpu would have to take to retrieve data=
, [2] we don't have to define multipe pointers by setting it in code:
>     - the code before: got a pointer to the drv_priv, then point back to =
the generic interface data (wvif->vif =3D vif;). So, another pointer is def=
ind by the vif in struct wfx_vif to point to the struct ieee80211_vif inter=
face.
>     - after implementing container_of: we don't have to define another po=
inter. the compiler already has the pointer to the struct ieee80211_vif via=
 offset of drv_priv! So all it needs to do is subtract the offset and you h=
ave the pointer.

This looks correct to me.

> -----Section 2-----
> Here's my diff (below). I've implemented container_of() in function wfx_a=
dd_interface (to start).
> - If I'm understanding this correctly, we're replacing the line
> `struct wfx_vif *wvif =3D (struct wfx_vif *)vif->drv_priv`
> and replacing it with
> `struct wfx_vif *wvif =3D container_of(vif, struct ieee80211_vif, drv_pri=
v)`

Not really: wvif (the driver-specific structure) is included in vif
(the generic structure), not the other way around. This:

=09struct wfx_vif *wvif =3D (struct wfx_vif *)vif->drv_priv;

should stay as it is -- you don't have another way to fetch wvif.

> This is the error message I get:
> ./include/linux/container_of.h:17:41: error: initialization of =E2=80=98s=
truct wfx_vif *=E2=80=99 from incompatible pointer type =E2=80=98struct iee=
e80211_vif *=E2=80=99 [-Werror=3Dincompatible-pointer-types]

Right, because you're getting a pointer to struct ieee80211_vif,
correctly, but for the wrong purpose. It's fetching "vif" that you want
to simplify, not fetching "wvif".

> -----Section 3-----
> So there is an incompatible pointer type error. I think to solve this err=
or, I need to clarify this line:
> struct wfx_vif *wvif =3D (struct wfx_vif *)vif->drv_priv; link below
> Can you help me understand this line of code again?
> https://github.com/SiliconLabs/wfx-linux-driver/blob/63952592e64d2ca5b461=
3ab5559ba40b73ef47e8/sta.c#L724
>=20
> **Question: Are they punning raw bytes from drv_priv into the struct wfx_=
vif?**

Yes.

> So there's already data in the drv_priv, and this line of code is taking =
those raw bytes (u8 drv_priv[]) into the wfx_vif struct?

Yes. It's not really "taking" anything, it's just a reference
assignment.

> This is a very new concept to me and I wanted to ask if this is a correct=
 thought:
>=20
> - drv_priv: the bytes are in u8 array so whatever is in this array will b=
e ordered in contiguous memory (https://elixir.bootlin.com/linux/latest/sou=
rce/include/net/mac80211.h#L1756) where the __aligned is a compiler builtin=
 that guarantees alignment.

Alignment doesn't specifically matter here, but yes, that's correct.

> - (struct wfx_vif *): The pointer seems to be of unsigned bytes (https://=
github.com/SiliconLabs/wfx-linux-driver/blob/63952592e64d2ca5b4613ab5559ba4=
0b73ef47e8/wfx.h#L115)

...what do you mean exactly?

> - They are taking those raw bytes into the struct. (or the other way arou=
nd?)

Nothing is copied, they're taking a reference to this data.

> So maybe the solution would be to set the container_of() to struct ieee80=
211_vif to match the pointer type. And then afterwards pack that into struc=
t wfx_vif?=20

Not really, you just need to turn things around. :)

> Let me know if my question doesn't make sense and I'm happy to get on a c=
hat/call if it makes it easier.

Does IRC work for you now?

--=20
Stefano


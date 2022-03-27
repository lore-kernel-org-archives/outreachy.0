Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEE033234
	for <outreachy@lists.linux.dev>; Sun, 27 Mar 2022 19:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648409446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T03fS5mkOM2NFBWhJ/14mLo4scA8oy5pqj44dSsVIk4=;
	b=V0y2xCcWByYVqDQGTwAKYEIzItIvEcWESTP23mZcq2x9avwIZxy3mNmlfYUfNvY9mTHiY8
	hZzEBegN543EfsNyB34aUIkH50kBsvMdHt8nCDWgr67aYoNMetzma0KJsKXLoIRe8etcR/
	9mSgVLuCQGGlP9oR1TqYAWxvn1z2foA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-600-lmr35tB5PE6FJ0bEP52KoQ-1; Sun, 27 Mar 2022 15:30:43 -0400
X-MC-Unique: lmr35tB5PE6FJ0bEP52KoQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1261B5EF;
	Sun, 27 Mar 2022 19:30:42 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A0E2D60BF1;
	Sun, 27 Mar 2022 19:30:41 +0000 (UTC)
Date: Sun, 27 Mar 2022 21:30:39 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: IRC channels
Message-ID: <20220327213039.579d15d7@elisabeth>
In-Reply-To: <20220327180801.GA477239@alaa-emad>
References: <20220327180801.GA477239@alaa-emad>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alaa,

On Sun, 27 Mar 2022 20:08:01 +0200
Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com> wrote:

> Hello All,
>=20
> I am Alaa , My initial application approved. I have three years
> experience with C and want to apply for linux kernel projects .I am
> following mentioned tutorial for first patch but I have one issue I
> couldn=E2=80=99t join both irc channels, any guide plz

Can you try these links?

=09https://webchat.oftc.net/?randomnick=3D1&channels=3Doutreachy-kernel-net=
working&prompt=3D1

=09https://webchat.oftc.net/?randomnick=3D1&channels=3Dkernel-outreachy&pro=
mpt=3D1

and, if something doesn't work, tell us exactly what's... not working?
:) Thanks,

--=20
Stefano


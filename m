Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55E046A5
	for <outreachy@lists.linux.dev>; Sun,  3 Apr 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648976518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=M0C9UKDFHkfiCpx2464gYzKqjQLOG1gck3rZ5lzyjz0=;
	b=Qp65YXZqPbbCG1v/ASXLTT2CsQlG+OWvZ3F38t/6h2IRvTnPARXU0/UojTflIE1vR++oIs
	Z0gu+cciarSUAKHhw7B5Soeibt+568DGn9IWnUXH8bB2prsqLmm0Ojsr+kYj6gU16ogaZ0
	ILU0k24t036daxqRpT+k5ZXlMS3vApw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-571-6Egb0yoQOieru75N_yKOqA-1; Sun, 03 Apr 2022 05:01:54 -0400
X-MC-Unique: 6Egb0yoQOieru75N_yKOqA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CB2213EA;
	Sun,  3 Apr 2022 09:01:53 +0000 (UTC)
Received: from maya.cloud.tilaa.com (unknown [10.40.208.6])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1C7B45D6B1;
	Sun,  3 Apr 2022 09:01:52 +0000 (UTC)
Date: Sun, 3 Apr 2022 11:01:44 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: outreachy@lists.linux.dev
Cc: Bruno <codeagain@codeagain.dev>, Sevinj Aghayeva
 <sevinj.aghayeva@gmail.com>
Subject: Re: Missing package when sending patchset
Message-ID: <20220403110144.4a85ba7d@elisabeth>
In-Reply-To: <1a8d18273836c87deff1833baf0748e2c1a14308.camel@codeagain.dev>
References: <CAMWRUK6g5qytnqqNV9GmWgWYsxHFXm0iBEw05Gp62v7tFSg8tQ@mail.gmail.com>
	<1a8d18273836c87deff1833baf0748e2c1a14308.camel@codeagain.dev>
Organization: Red Hat
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 01 Apr 2022 17:28:51 -0300
Bruno <codeagain@codeagain.dev> wrote:

> Heyy, I replied this e-mail from my phone in the morning and it sent
> in HTML, even though it appeared to be text plain. I apologize. Now
> I'm sending an updated status!
>=20
> On Fri, 2022-04-01 at 09:11 -0400, Sevinj Aghayeva wrote:
> > Hi all,
> >=20
> > I just tried sending out the first patchset, =20
> Congrats, Sevinj!
> >=20
> > git: 'send-email' is not a git command. See 'git --help'. =20
>=20
> Indeed in some distributions a software is fragmented into lots of
> packages. On Arch, though, the package git comes complete.
>=20
> >=20
> > Stefano on IRC pointed out that I'm missing the git-email package.
> > After installing the package I was able to send out the patchset.
> > I've
> > updated https://kernelnewbies.org/OutreachyfirstpatchSetup=C2=A0to
> > include
> > the git-email package in the list of packages needed for Ubuntu.
>
> In the message this morning I told I would update it too for two
> missing perl packages for Arch users, likely related to SMTP
> authentication: 'MIME::Base64' and 'Authen::SASL'. I updated the page
> with instructions on how to do that too!

Thanks both (and Rebecca, too!) for updating those pages. It's very
much needed, so don't be shy. :)

By the way, you might also want to link to https://git-send-email.io/,
but I'd leave it to you, you know first-hand about the usability of
those pages/steps.

--=20
Stefano


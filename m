Received: from m228-62.mailgun.net (m228-62.mailgun.net [159.135.228.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034AC1867
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 17:27:42 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev; q=dns/txt;
 s=smtp; t=1650475662; h=In-Reply-To: Content-Type: MIME-Version:
 References: Message-ID: Subject: Subject: Cc: To: To: From: From: Date:
 Sender: Sender; bh=WXXXW89y+QcFXfQJ6sbWfqbkXidxsm82Hd4VQkHn9TM=; b=MH2yDC/P4AsUghtrtK0UNDnryctwYAqvvQzJr4KXeuYl7InE1fawxxeixggslg5RfZpM6fY8
 7Jb3SIp7spy0wAY6C33A5XSY4snRsuFlNUK3xk+gIdul1LfAoCqP990JoHrcuCq7XWT7gVoJ
 2Y4AqFaWhoxC0SGiCDxp0a42y4266ICVHzPdkzKUcVuDimiDCAXAPJG405+dENz/PGbp6dCB
 9A+1F8Y5LJThrfDnJ7MGzq5lTJxizJG4pCPGPT8658itIudGGas3IoAWeepuQQ9CZUrI81Yk
 JjeZDlR/oPo8XHQtQl7BvXSRfvBDJ4jLuDnG4S/JYd0khpG3RVuJDw==
X-Mailgun-Sending-Ip: 159.135.228.62
X-Mailgun-Sid: WyI2Y2ZlNyIsICJvdXRyZWFjaHlAbGlzdHMubGludXguZGV2IiwgImJlOWM2ZCJd
Received: from AN5Bruno (dynamic-user.170.84.57.33.mhnet.com.br
 [170.84.57.33]) by smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 6260428d514839a8197fb291 (version=TLS1.3, cipher=TLS_AES_128_GCM_SHA256);
 Wed, 20 Apr 2022 17:27:41 GMT
Sender: codeagain@codeagain.dev
Date: Wed, 20 Apr 2022 14:27:31 -0300
From: Bruno Moreira-Guedes <codeagain@codeagain.dev>
To: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev,
	Bruno's Patch Watchbox <patch-reply@codeagain.dev>
Subject: Re: [PATCH v2 0/2] Docs: Update information at changes.rst
Message-ID: <20220420172731.ru7kfrdkmprybtu7@AN5Bruno>
References: <cover.1650376049.git.codeagain@codeagain.dev>
 <8735i83xo1.fsf@meer.lwn.net>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7gc4pk3xhyxkzqh5"
Content-Disposition: inline
In-Reply-To: <8735i83xo1.fsf@meer.lwn.net>


--7gc4pk3xhyxkzqh5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 20, 2022 at 03:35:10AM -0600, Jonathan Corbet wrote:
> Bruno Moreira-Guedes <codeagain@codeagain.dev> writes:
> >
> > The PATCH 1/2 fixes the missing cpio requirement, while PATCH 2/2 fixes
> > the kernel version reference.
> >
> > Signed-off-by: Bruno Moreira-Guedes <codeagain@codeagain.dev>
>=20
> Patches applied, thanks.
Thanks, Jon! I have also been thinking whether this filename
('changes.rst') is a good description of the file contents. Do you think
renaming it to something like 'requirements.rst' and updating its
references would be a good patch?


--7gc4pk3xhyxkzqh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCYmBCgwAKCRAZtd3tyEY2
kuLWAP0dXCyqGEKvy9lN8fHENyzVin2V+xVzNahalr1kWHsangEAhBgOwZx6wbuj
85Xnz6TZqI6h6E9MUUAtaezbbS+j3QY=
=bzsu
-----END PGP SIGNATURE-----

--7gc4pk3xhyxkzqh5--

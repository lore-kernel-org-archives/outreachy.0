Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652C88831;
	Tue, 19 Sep 2023 21:04:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35FCDC433C7;
	Tue, 19 Sep 2023 21:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695157497;
	bh=ZBNmlJfPU0ZzG/XbnBXap4CcKHmXF186hxS/a/0HOA8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hFEL1rL7PwzYmpz7Bcf4B65KtW2RtIIqaw084dpL+sHHgb3+iC2R7EBtp44Y9ZHGv
	 Xtcfh1STSbtNq5DK8BeJQ1f1J+hga57OPKsn2lyMdYIuXfUvX9KJsYIRJ6GCyaNlQY
	 9a0cNQCfc9Fb+2IxJVa3vWjKmRwqau2YaAFAHRAoiHllK5xJuSgojdFWE7SvXbyTMH
	 bGM0hxC9xSUPdubdq7AgKBe0bszcwY03Yb8a8QhgEAAxkh/ywqdSpYSbRfxrdVwJpa
	 vwkXnPbbv3FYv3mTY2JTenEcSKk6eIIpW/GPKJwfVAf7Xd+D/e/wJMw+VQ4JIOiAzb
	 yIcr9FXQC3fXg==
Date: Tue, 19 Sep 2023 22:04:52 +0100
From: Mark Brown <broonie@kernel.org>
To: Gokhan Celik <gokhan.celik@analog.com>
Cc: outreachy@lists.linux.dev, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] regulator: max77503: Add ADI MAX77503 support
Message-ID: <ef0ec241-6cfe-4748-b6f1-83252ed75580@sirena.org.uk>
References: <cover.1695155379.git.gokhan.celik@analog.com>
 <5ee2ac417829b4be0a5eeb8b0593325fd1b1d1e6.1695155379.git.gokhan.celik@analog.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xVK5PIFPVcjFlKlr"
Content-Disposition: inline
In-Reply-To: <5ee2ac417829b4be0a5eeb8b0593325fd1b1d1e6.1695155379.git.gokhan.celik@analog.com>
X-Cookie: You buttered your bread, now lie in it.


--xVK5PIFPVcjFlKlr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 11:45:21PM +0300, Gokhan Celik wrote:
> Add ADI MAX77503 buck converter driver support.
>=20
> Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>

The driver code itself looks good.

--xVK5PIFPVcjFlKlr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUKDPMACgkQJNaLcl1U
h9B+9gf/WLiClu05Mejspfrb0rckc78G5Zn/1ihHKa/mgeh3WSpbF+noKuVkRynn
uIOGG1bGKXK3pEuKj/9TfGYDsLkdeya5rbNUsHM+QB1a4g3IN4H/jDR9TrQIZ4JT
28Lv6xH9QgQyJcBe3Ctcd7ueU6so1NqvkRJYu/njbG6orA5BcDJ8Hj2PV8TPAhuB
0MN/0Glk33AzAyc5ni+wRNF+4DkCM6Smy6fqBAR9Ri2VUCW9I9uSH+PDjlHZPyi8
VrSjOdxXfmP5uehqEmc5B5rg+QdRMdvRKUEzFsUjinkE4Ywr9NkaIjZgd97tXypn
QX699nG3vUrJuDvfkQj8Sr/Itwsh8w==
=gwzq
-----END PGP SIGNATURE-----

--xVK5PIFPVcjFlKlr--

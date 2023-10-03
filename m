Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD10D2EB
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 16:58:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14FCBC433C7;
	Tue,  3 Oct 2023 16:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696352309;
	bh=EUQkOULkN7vaFIamMPzsKpb3h+FXEo6KbOHFkLOituc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dqHSmj28oDJIQo3Z0TTwtKQBBcxgbVOFWZWeQRQt6fBc22JBPBY6hnoQZFs4Y31KH
	 apvkhg5LXWFK8Mr1c9ZwNTBAFg22AbQsOEVstrCh7Upbx060EJG70WjME6UKPgt3pk
	 aGYR0/jlHTYasTNPSq7OiImeeowPpGwHDXgoBFnPSlVa1+n9eG8nUOj25yWjBHA7ML
	 MfTB+qh0KgrPOGLmJmlCHVKkB5RHPYKBkOO+gsi4wzxcE/4YHFettQQWFSGeyO6nxw
	 SrFgHL47jvxPekIi7Gi6R/i2+WP6TTQKq1ekZgpkIlAaYj2jtFWrXgdz4ijxGnmsXh
	 F7wkZOY0ZgYQw==
Date: Tue, 3 Oct 2023 17:58:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Gokhan Celik <gokhan.celik@analog.com>
Cc: outreachy@lists.linux.dev, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 1/2] regulator: max77503: Add ADI MAX77503 support
Message-ID: <ea7b0f36-4b78-4196-af5e-292442ccc7ba@sirena.org.uk>
References: <cover.1696348543.git.gokhan.celik@analog.com>
 <ebbc286e3060fa9a0fc9402aa084ec97e2ca0a1a.1696348543.git.gokhan.celik@analog.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UrmPIVMbuQ1C+UFg"
Content-Disposition: inline
In-Reply-To: <ebbc286e3060fa9a0fc9402aa084ec97e2ca0a1a.1696348543.git.gokhan.celik@analog.com>
X-Cookie: Ducks?  What ducks??


--UrmPIVMbuQ1C+UFg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 03, 2023 at 07:38:02PM +0300, Gokhan Celik wrote:
> Add ADI MAX77503 buck converter driver support.

This doesn't apply against current code, please check and resend.

--UrmPIVMbuQ1C+UFg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUcSC8ACgkQJNaLcl1U
h9BsLwf/Ui4eoSh4a8yWo9jrxV6UaKjPN3CTJAMea7o0ZM6CxKjOdnz85YvUJCop
MKYsZ2Q8qrOZiKKmZHJQBJjjUWkaSOhQRi6Wn2NnTVxg7qyVryeD6L7FxJzFm0sY
UsYW5ZwcnkgGGp69CnYzF1zTIk98O3Ln6nfjZPE6eb+6SICgNj6wKumrL+Mtv6pF
YOd4lHUgTEmS48mZ97i7K0PCVwCPsmUnAlKfe2wtJoLI1ozO0/3QWhWwH4ZNaxte
se6rvDoUcV8wgM1opLc+Ym2B7eRYE+7U5vss1gf+F5b8BkIIpCOVrLV/wjGQRG8o
QNKN//cgulL0A02yoUX0hEIUIijAnw==
=LkRn
-----END PGP SIGNATURE-----

--UrmPIVMbuQ1C+UFg--

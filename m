Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4555D3B2A4;
	Wed, 20 Sep 2023 15:25:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB690C433C8;
	Wed, 20 Sep 2023 15:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695223546;
	bh=84if6Rt9sb+lMTCfxVLo8MgoC3NPhilBQ/XZ/msXQ0Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WRMM6LkbqVxZHgOxKUk6odzdzhWDBIsEkU7VQsMn6HA3FGvfa220uRNNesUZucYyg
	 Rp17+LhuklSWjjQvITGBawPJOh/+nA9maYOpJQ2HSwo7yTYmiCKzRaMNzxCbwukWK6
	 qEF7BBCBfHB7dcr83yjRsVHMOd64T+q+DxxmLNyo0Euv5S7Yfp87yIea8PIEsI6XkB
	 DenQ99cRM30vad1K6qF8tFBFLnba4/IJQ4BbUNqP+a+gEz9PXCzk2NW0T+bAG2oCtn
	 69ac8Yt8Q740eBMBU1ZQqHRNgz47aF2+G+g62Yd0ZBTmYdNKUBbmShl639QC521TCT
	 LT8g4oJ4zWkxg==
Date: Wed, 20 Sep 2023 16:25:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Gokhan Celik <gokhan.celik@analog.com>
Cc: outreachy@lists.linux.dev, Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] regulator: dt-bindings: Add ADI MAX77503 support
Message-ID: <20230920-84ed9120f304012067f0d390@fedora>
References: <cover.1695155379.git.gokhan.celik@analog.com>
 <5ce9482e53587d9250ecaa07d0908b987081b4e9.1695155379.git.gokhan.celik@analog.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ou1Mt6OWPM9UBPMp"
Content-Disposition: inline
In-Reply-To: <5ce9482e53587d9250ecaa07d0908b987081b4e9.1695155379.git.gokhan.celik@analog.com>


--ou1Mt6OWPM9UBPMp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 11:45:22PM +0300, Gokhan Celik wrote:
> Add ADI MAX77503 buck converter devicetree document.
>=20
> Signed-off-by: Gokhan Celik <gokhan.celik@analog.com>

Other than Mark's comment, this seems fine to me. W/ that to his
satisfaction,=20
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

> ---
>  .../regulator/adi,max77503-regulator.yaml     | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77=
503-regulator.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/regulator/adi,max77503-reg=
ulator.yaml b/Documentation/devicetree/bindings/regulator/adi,max77503-regu=
lator.yaml
> new file mode 100644
> index 000000000000..128e04ae3f4d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/adi,max77503-regulator.=
yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2023 Analog Devices, Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/adi,max77503-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices MAX77503 Buck Converter
> +
> +maintainers:
> +  - Gokhan Celik <Gokhan.Celik@analog.com>
> +
> +description: |
> +  The Analog Devices MAX77503 is a single channel 14V input, 1.5A=20
> +  high-efficiency buck converter. This converter has 94% efficiency
> +  for 2-Cell/3-Cell battery applications.
> +
> +allOf:
> +  - $ref: regulator.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max77503
> +
> +  reg:
> +    description: I2C address of the device
> +    items:
> +      - enum: [0x1e, 0x24, 0x37]
> +
> +required:
> +  - compatible
> +  - reg
> +  - regulator-min-microvolt
> +  - regulator-max-microvolt
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        regulator@1e {
> +            compatible =3D "adi,max77503";
> +            reg =3D <0x1e>;
> +
> +            regulator-min-microvolt =3D <800000>;
> +            regulator-max-microvolt =3D <5000000>;
> +        };
> +    };
> +
> --=20
> 2.34.1
>=20

--ou1Mt6OWPM9UBPMp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQsO8wAKCRB4tDGHoIJi
0tyYAQCJxMcDy+fikeaoO+6jOx5wjXyy908NVat3LeWdpb/TvAEAmbrmH+5qlBYF
yWONjlrdSzj+KY+xOXuYPIy/X/Ccxg4=
=vn73
-----END PGP SIGNATURE-----

--ou1Mt6OWPM9UBPMp--

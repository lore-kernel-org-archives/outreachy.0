X-GM-THRID: 6252008171554996224
X-Received: by 10.107.130.28 with SMTP id e28mr25831744iod.34.1455662657106;
        Tue, 16 Feb 2016 14:44:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.97 with SMTP id xv1ls2014879obc.85.gmail; Tue, 16 Feb
 2016 14:44:16 -0800 (PST)
X-Received: by 10.182.72.137 with SMTP id d9mr24436954obv.31.1455662656499;
        Tue, 16 Feb 2016 14:44:16 -0800 (PST)
Return-Path: <riel@surriel.com>
Received: from shelob.surriel.com (shelob.surriel.com. [2002:4a5c:3b41:1:216:3eff:fe57:7f4])
        by gmr-mx.google.com with ESMTPS id t198si2380512ywe.3.2016.02.16.14.44.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 14:44:16 -0800 (PST)
Received-SPF: pass (google.com: domain of riel@surriel.com designates 2002:4a5c:3b41:1:216:3eff:fe57:7f4 as permitted sender) client-ip=2002:4a5c:3b41:1:216:3eff:fe57:7f4;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of riel@surriel.com designates 2002:4a5c:3b41:1:216:3eff:fe57:7f4 as permitted sender) smtp.mailfrom=riel@surriel.com
Received: from [66.187.233.206] (helo=dhcp-17-33.bos.redhat.com)
	by shelob.surriel.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.63)
	(envelope-from <riel@surriel.com>)
	id 1aVoLq-0002qD-RU; Tue, 16 Feb 2016 17:44:11 -0500
Message-ID: <1455662649.15821.47.camel@surriel.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lnet: Simplify
 function kiblnd_find_rd_dma_mr
From: Rik van Riel <riel@surriel.com>
To: Bhumika Goyal <bhumirks@gmail.com>, outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>, Andreas Dilger
	 <andreas.dilger@intel.com>, James Simmons <jsimmons@infradead.org>, 
	GuillaumeMatheron <guillaume.matheron@ens.fr>
Date: Tue, 16 Feb 2016 17:44:09 -0500
In-Reply-To: <1455659073-20498-1-git-send-email-bhumirks@gmail.com>
References: <1455659073-20498-1-git-send-email-bhumirks@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-LbWcOHsZBnijoKSkvHl/"
X-Mailer: Evolution 3.18.4 (3.18.4-1.fc23) 
Mime-Version: 1.0

--=-LbWcOHsZBnijoKSkvHl/
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2016-02-17 at 03:14 +0530, Bhumika Goyal wrote:
> The struct pointer=C2=A0=C2=A0prev_mr is made NULL in the for loop so
> if(!prev_mr)
> will be true and (pre_mr =3D mr) will always execute and so the second
> if
> statement will reduce to if(!mr). prev_mr is serving no purpose here
> and
> can be removed along with the if statement.
>=C2=A0
> @@ -1339,15 +1338,12 @@ struct ib_mr
> *kiblnd_find_rd_dma_mr(kib_hca_dev_t *hdev, kib_rdma_desc_t *rd)
> =C2=A0	if (hdev->ibh_nmrs =3D=3D 1)
> =C2=A0		return hdev->ibh_mrs[0];
> =C2=A0
> -	for (i =3D 0, mr =3D prev_mr =3D NULL;
> +	for (i =3D 0, mr =3D NULL;
> =C2=A0	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i < rd->rd_nfrags; i++) {
> =C2=A0		mr =3D kiblnd_find_dma_mr(hdev,
> =C2=A0					rd->rd_frags[i].rf_addr,
> =C2=A0					rd->rd_frags[i].rf_nob);
> -		if (!prev_mr)
> -			prev_mr =3D mr;
> -
> -		if (!mr || prev_mr !=3D mr) {
> +		if (!mr) {
> =C2=A0			/* Can't covered by one single MR */
> =C2=A0			mr =3D NULL;
> =C2=A0			break;

You certainly found some suspicious looking
code, but remember that prev_mr =3D NULL is=C2=A0
only set when we first enter the loop.

On the first iteration, prev_mr is set to
the value of the found mr, and on the second
iteration the code can hit prev_mr !=3D mr.

At that point it will set mr =3D NULL, before
breaking out of the function and returning
NULL.

Your patch changes that, by only returning
NULL if the last iterator in the loop finds a
NULL value of mr, which is not guaranteed.

In other words, your patch changes the behaviour
of the code.

Looking at the calling function,=C2=A0kiblnd_map_tx()
I am not sure either the old or the new behaviour
is right.

CC'ing some Lustre developers and maintainers,
since it is not at all clear to me what that code
is supposed to do.

--=C2=A0
All rights reversed

--=-LbWcOHsZBnijoKSkvHl/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAABAgAGBQJWw6Y5AAoJEM553pKExN6DE/IIALnk6YOT6+Tirut6aZPey/xb
ohM4Hv7auHS9UuzOKGn8O8+49IwyoRuM9eFGEt+87ugj/C4MXgjwZQhmUpq5fMqN
tHzW1TfmzBw/KZ3wG40Kg3je1jNUGaDfJC6qnZWt8fmLxvP8e0wosdTAzggSjUTq
oXHwmKrqzydIwUegny8z3nhcerkI3qjEV3rPBxyG1AmqSeHLwd7AR6jXntoTg4Mb
At1fE36f5ikfywr0OSXQ4C+CtwXzywUchsfUSQMWNC8MK/d5H96eA6DXPPsVGsr7
o73T+w+sKFX7mS2z60ssbFLdgEHL4BQeLf9THJ/woniQIv8ce0lHGz+lSQ4X4W4=
=qap9
-----END PGP SIGNATURE-----

--=-LbWcOHsZBnijoKSkvHl/--



Received: from m228-62.mailgun.net (m228-62.mailgun.net [159.135.228.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA859946F
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 14:29:26 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=codeagain.dev;
 q=dns/txt; s=smtp; t=1679408965; x=1679416165; h=In-Reply-To: Content-Type:
 MIME-Version: References: Message-ID: Subject: Subject: Cc: To: To: From:
 From: Date: Sender: Sender; bh=AOnsiAsMhp8QvslETxG3qKaCyi49OeZlI/IV8WrRXWI=;
 b=R7BlF30Zx6waFQe3rXFKvi94MdFtRD5ctGEr166WHCqD+IMLoc4lEW1JqwrpcXZ8r4mwS2nNJfj+KfnX5ufb/FXZVtMA8JXUGJ0HqAVlyfppneRSyywSfP/nUHD1ufY73R/bxNR8ZTVEUDpkIH9oEKJsmpMNQSSbDz+1RlOBjTOCgR3SsPecn9mLngfuRcdSsY3ChMk5MzvUMvKbw9z4s51XXugcE354kJo0nnUyDHKhwzPkRsq9S8XicSE/99IbPjodc1xFNvIAKtYC8cjNM/aWrkcOMwhbuLwCWzLb50WtrGdpokf7RGMPbYb/01Sv9vRc/09uREeYET4sYo40Qg==
X-Mailgun-Sending-Ip: 159.135.228.62
X-Mailgun-Sid: WyI2Y2ZlNyIsIm91dHJlYWNoeUBsaXN0cy5saW51eC5kZXYiLCJiZTljNmQiXQ==
Received: from guidai (186-250-91-0.mhnet.com.br [186.250.91.0]) by 9772f819ef0e with
 SMTP id 6419bf4578ebb99a7d74829b; Tue, 21 Mar 2023 14:29:25 GMT
Sender: codeagain@codeagain.dev
Date: Tue, 21 Mar 2023 11:29:19 -0300
From: Bru Moreira-Guedes <codeagain@codeagain.dev>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Kloudifold <cloudifold.3125@gmail.com>, outreachy@lists.linux.dev
Subject: Re: Questions on legal name/pseudyonym
Message-ID: <20230321142919.igug3wlouaxuwrwv@guidai>
References: <ZAmUcfHfMUqxu67D@CloudiRingWorld>
 <ZAoMxSPKNLoLg7Wl@aschofie-mobl2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dkexfcmmudmevksl"
Content-Disposition: inline
In-Reply-To: <ZAoMxSPKNLoLg7Wl@aschofie-mobl2>

--dkexfcmmudmevksl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alison,

I'm glad I caught this discussion.

On Thu, Mar 09, 2023 at 08:43:49AM -0800, Alison Schofield wrote:
> On Thu, Mar 09, 2023 at 04:10:25PM +0800, Kloudifold wrote:
> > My legal name may change in the next few years, and the Outreachy Commu=
nity Member Information page said
> > "You may use a pseudonym or abbreviate your given or family names if yo=
u have concerns about privacy.",
> > so I use "Kloudifold" as my Outreachy name and intend to use it as sign=
ed-off name when making kernel contributions.
> >=20
> > I would now like to ask if my contribution will be considered by Outrea=
chy if I use a pseudonym?
> > If not, I will use my legal name instead.
> > If it is OK, I intend to keep contributing under the name "Kloudifold".
>=20
> Hi Kloudifold,
>=20
> I'm glad this came up because I needed to learn the latest on this
> topic. My prior knowledge was 'no pseudonyms', but I see the kernel
> has recently changed that:
>=20
> d4563201f33a0 Documentation/process/submitting-patches.rst (Linus Torvald=
s        2023-02-26 11:25:04 -0800 410) using a known identity (sorry, no a=
nonymous contributions.)
>=20
> diff --git a/Documentation/process/submitting-patches.rst b/Documentation=
/process/submitting-patches.rst
> index 7dc94555417d..fab44ae732e3 100644
> --- a/Documentation/process/submitting-patches.rst
> +++ b/Documentation/process/submitting-patches.rst
> @@ -407,7 +407,7 @@ then you just add a line saying::
>=20
>         Signed-off-by: Random J Developer <random@developer.example.org>
>=20
> -using your real name (sorry, no pseudonyms or anonymous contributions.)
> +using a known identity (sorry, no anonymous contributions.)
>  This will be done for you automatically if you use ``git commit -s``.
>  Reverts should also include "Signed-off-by". ``git revert -s`` does that
>  for you.

Do you think it could also be applied to social names? I'm not sure this
is a known term in english-speaking culture, but in my country a social
name is a name differing from the legal one to which trans people (like
me) are entitled to be referred to. At least for public and some private
services.

I have recently decided to use 'Bru' rather than my gender-marked legal
name 'Bruno', and I am in doubt on whether this fits into the concept of
'known identity' (since, well, this had been a very recent change and
it's not exactly 'known').

I have been thinking about that a couple of weeks ago.

Best,
Bru Moreira-Guedes
Autistic & Proud
They/them

--dkexfcmmudmevksl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQTUrsHCxGmQ5vyKRAZtd3tyEY2kgUCZBm/PwAKCRAZtd3tyEY2
ksYtAQCkoWJ1/PF1OztfiZaQxdDnq9zRPrnbbfJKvRK3eLGjnAEAi/o+Sztplkgl
AjDReA/iIYlcLr5Yi0Plg/isdhf3hgk=
=+DYB
-----END PGP SIGNATURE-----

--dkexfcmmudmevksl--

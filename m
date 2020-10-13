X-GM-THRID: 6883171070944215040
X-Received: by 2002:a05:622a:255:: with SMTP id c21mr1190436qtx.20.1602615757809;
        Tue, 13 Oct 2020 12:02:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:71cf:: with SMTP id i15ls252372qtp.7.gmail; Tue, 13 Oct
 2020 12:02:36 -0700 (PDT)
X-Received: by 2002:ac8:b83:: with SMTP id h3mr1133855qti.113.1602615756194;
        Tue, 13 Oct 2020 12:02:36 -0700 (PDT)
Received: by 2002:a37:2751:0:b029:15e:d70c:89db with SMTP id n78-20020a3727510000b029015ed70c89dbmsqkn;
        Tue, 13 Oct 2020 11:52:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRxtq6KbKayjAgmy3nt1S703Km0a0JIuvSVNJbR5LhJKZ4U14Gu1F3V2n/cEzPwS1RXdim
X-Received: by 2002:a37:a46:: with SMTP id 67mr1384070qkk.477.1602615140347;
        Tue, 13 Oct 2020 11:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602615140; cv=none;
        d=google.com; s=arc-20160816;
        b=OApzqcPu1vArNxuUakiqq35mOgXUZoargCzNY350QM+mN9upgZFAJIxqm29fds4cTo
         eZi7VVOveUjuaM1w7Xg+g64gE3hrXioS5zp7tfRV0leMOs33+TwfYknXqMNznjrl3uZE
         NBF/4WndX+DHDrHdyJiLxanZVv+gK7mCzkoxVx/kuuBFtxLA8A6GC4q69HtS5CnIkSA6
         tG0mDgvq8YxryzvLOLWErsku5mJJuDRXAyCopWIKWg+n+EqxOKap66WhkTYsg/YvjG+g
         kYiGbUlv6V/C7v1jfeW1UZW6RgqxKN7cNcbSghSJ7nPTqMtLtqbcoKpcyJvBC+6ZtJ10
         VzhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vk61ZiU0bAzoLY1pRAUcVcU6E00FQBTAxbElEsoRQWg=;
        b=UJ/avr1YtR5bgHi5Yb68LjfgXcqrfRQtwWYyPsBYXv2bUBS5aA7wyjyzuoYN9zsp5I
         bXpCRJlbToEXlB7mdtAijvTnBOySXf856rDL/Rp9CAIAA0CJVpMs6eAo1QqxPQlSQqL+
         qlpOR4FgAN0ouKRgCA1/1KQRFzbCC3d+cmwjbMr4g2DGvxYlD3ByWxaSF2u6gQ+CKzAp
         hAzh7Is2tV+Nj2xqKAfj7L6XWiJMzHj5ctt8LqyHlqLpwwZc8krsGd0S1EHvxhjsbVYO
         oFqfscpxOfSwsZ4oY42m6hxAJfQa2F5fkBzVla9zGDO79SvnJUtrWs136BduPkX4FpXp
         XMvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AaAZNeTd;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vilhelm.gray@gmail.com>
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id m40si72804qtm.4.2020.10.13.11.52.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 11:52:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AaAZNeTd;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x844.google.com with SMTP id h19so642371qtq.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 11:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=vk61ZiU0bAzoLY1pRAUcVcU6E00FQBTAxbElEsoRQWg=;
        b=AaAZNeTdUhmNydAIZoWOr0KRHEjk1dNdk/XHQNakkA79KrtCBjthmHQ+Buae6R0Y9Q
         ZQgFBxFFIur9da6o6E5S1dsmGIyoi9gyexOgE4gLZpisu0fCbR8uA4gjLlCf7EWn7x6a
         peuMFxVjr7o1flqmxhsGTabuTBM5qBozLjKbhtZKe5Ly6A12RfkBj67wZY54mHpFx4ig
         i3ad/yDV9OIMDJJQjZHUr21x3h70dClJOcsCCy5BRK4/p+eQxTfJDe4oJ/36/woEakE7
         gFKr0MQjR6d8XvrsXQtHg40QBVcXKEaOeekiQcRBaeZcgmPRH6tk/gJrZ7rRHtt/vgTI
         CWmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=vk61ZiU0bAzoLY1pRAUcVcU6E00FQBTAxbElEsoRQWg=;
        b=OwOC/ViaEU3WaoX8ZxRSYs3C9/mSenRSkViiwIGMa322H9iT/5uVg7AqLcb3ZK4QNY
         z36Yq90cEVzn00jK/piDru9dOVMJ1XXFHdsPVNxZiquLj+VVTjQ9NUJzJZ3ygNXsd5uq
         CnSMwYCNJb27A/WBFCjwnEs6aKap3fVMm+gq4TPJlg2pHMj3VPseIga1g2DjnlFGLZSm
         kPBjesWcPKP9CdfQpj8rSa8yFPIaEhedRX9Vjy0ugb4W/Dr49eZ8xrKnXCbF56aDcMSv
         8VziOEL/ZKeAqOm5HPJUiBqySd20LyRZMwYiH/r5LdDTVV+dU0TjG9XVMHRVU98dgyEd
         Aehg==
X-Gm-Message-State: AOAM5337gPlcU6k/BuMx+zwYMK4PYmhzeWnT9kuPHCV4ikU9wrD68CTJ
	KpPZ/oG7PqvAGXAECP3VOsFCi6u+0b8=
X-Received: by 2002:ac8:74d:: with SMTP id k13mr1163328qth.54.1602615140056;
        Tue, 13 Oct 2020 11:52:20 -0700 (PDT)
Return-Path: <vilhelm.gray@gmail.com>
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
        by smtp.gmail.com with ESMTPSA id v6sm323363qtb.76.2020.10.13.11.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 11:52:19 -0700 (PDT)
Date: Tue, 13 Oct 2020 14:52:03 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Deepak R Varma <mh12gx2825@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>
Cc: outreachy-kernel@googlegroups.com,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: gpio: 104-idi-48: improve code indentation
Message-ID: <20201013185203.GA32722@shinobu>
References: <20201013181903.GA67299@ubuntu204>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
In-Reply-To: <20201013181903.GA67299@ubuntu204>


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 13, 2020 at 11:49:03PM +0530, Deepak R Varma wrote:
> Address code indentation warning messages by checkpatch script. Combine
> split function parameters on one line. This also resolves the "use tabs
> instead of space" warning by checkpatch script.
>=20
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

As Greg KH mentioned, the subject line should be fixed; as for the
change itself, it looks like pretty innocent whitespace adjustments, so
I'm okay with it. :-)

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

>=20
> ---
>=20
>  drivers/gpio/gpio-104-idi-48.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpio/gpio-104-idi-48.c b/drivers/gpio/gpio-104-idi-4=
8.c
> index 94c3a9bc4e75..b132afaf7d99 100644
> --- a/drivers/gpio/gpio-104-idi-48.c
> +++ b/drivers/gpio/gpio-104-idi-48.c
> @@ -132,8 +132,7 @@ static void idi_48_irq_mask(struct irq_data *data)
> =20
>  				outb(idi48gpio->cos_enb, idi48gpio->base + 7);
> =20
> -				raw_spin_unlock_irqrestore(&idi48gpio->lock,
> -						           flags);
> +				raw_spin_unlock_irqrestore(&idi48gpio->lock, flags);
>  			}
> =20
>  			return;
> @@ -166,8 +165,7 @@ static void idi_48_irq_unmask(struct irq_data *data)
> =20
>  				outb(idi48gpio->cos_enb, idi48gpio->base + 7);
> =20
> -				raw_spin_unlock_irqrestore(&idi48gpio->lock,
> -						           flags);
> +				raw_spin_unlock_irqrestore(&idi48gpio->lock, flags);
>  			}
> =20
>  			return;
> --=20
> 2.25.1
>=20

--k+w/mQv8wyuph6w0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl+F90gACgkQhvpINdm7
VJKbnxAA2zGGKcBOuIO3xhsyprpktGOnim9xAzEngB+nZk3BYpdA9LIe/dqIDu0u
VWEDQg/SLsfgnW2pHj4O6vJhk394I1L8Hhf6JronxO9+391WpTM2aYe9zmNN39a0
ZIou/Gk5FenhiQDa3CBMALWX83qgHYbrlAypaxuLKR3zOqh0HSk58AOnZV7GTaXA
X5MgWDHzVEd6k/j1wredCwQTfEe/K5ILA1CN9mxAp/oPJQxOmD9F5E/5ZsXrOPX0
TwNv/XvS93EzI3YhdIyuPYrW3G0DnXtjewXY8AyI1QeBMLrK3QGBK+jSTLx0pWhD
wXvPlLQjwqnrA5LgoOgudVc84RAcUYeQTAuFILlKCQN7D3hxLobkCYrm4Ehnt3hl
Z01UzqZWXg1pDK6NXJENVQkSPP2LyzfgepZw9wiD0v63R26lNTO6q0RaDOUrVkuS
5fc/RVYHOKPgQuJGgnY4vkELQDurQy9Cd6GIGFyJWuuT7lSRT77j3ppI7Q4pcVT7
OwJ6vycUX2yEe1SXp+4iIukKGNAx5SxeNfxtRcSthdhEumOjhSIRaVutiwefTFju
E3Pl3ZBWb1KkFro4P4D9rAq0DwEtKNpxAViIzVyxpyRMoY5KKLqNnDwHdVyrdogC
SgXCdmfF7hVOZWsrHDAmPbqjHkwuHxveNqQNzYPUcq0TH3pkDwk=
=nfHY
-----END PGP SIGNATURE-----

--k+w/mQv8wyuph6w0--


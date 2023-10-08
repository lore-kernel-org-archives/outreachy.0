Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4FA5CB9
	for <outreachy@lists.linux.dev>; Sun,  8 Oct 2023 12:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="k4iTbH+L"
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-57bb0f5d00aso2376877eaf.1
        for <outreachy@lists.linux.dev>; Sun, 08 Oct 2023 05:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696767685; x=1697372485; darn=lists.linux.dev;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QQu2N/1H8ruPujs2++IrQx9526Skj6p1WIMJRbhuvTc=;
        b=k4iTbH+Lj8+lVvWmqxqPmwVMNwCvmdyRwxP8MjeLB3iJwUh8cuF6RXr+ShgfYa+C3/
         tt5FyVcBsmqFMJQjRZq7wh/SmvprODZshF+qSIb14Q8NFTy5LokwY6Uo3E3ix+bTawhe
         GGc7ljR0TVrJSFAHTBGmrpWEwhnA5ljkC8hxToTyzZPqDsWr+ul+QhMFAlBNaUml/0/m
         eNHHzLHKWtX/IRCumbZosgX6uk9tcaUU94R57kS7EcWZpd2ZJ9PwkNBKkUN2AMXfDFrD
         bW7eDOOit6BI1aAlkofo/+BTyYHyO8artgNAqKznmc9bcNtFmwH3oa29M0mQDANrDUB/
         1GJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696767685; x=1697372485;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QQu2N/1H8ruPujs2++IrQx9526Skj6p1WIMJRbhuvTc=;
        b=qam8vqL6Uy1+J0JURkbHHUgSabTok59L2zV3IoZAUW+fXcWebUUdcVGSbb2WcvKT+E
         QKJGvHv9h3xNV4Pl4DWgiqjisu/4h9KUqwGWv2zYzKaABN+jifktM7UsgK9MIpePjyP5
         gOgwDFCYyc2oihpr3uu3kNY2E60MsAhP3MjhJ3RHsoZvqqU57qdfE90ah8sRROB3SiSf
         cbTDuFGK+unm1jM3hHIyC98Ud6NGizt4i3gMlqykAglb911QxRnv4UhnvN2tLeB0yoAY
         6KQWEzVaK5vU+kXBnfTVAoTREIqLIzw924lRdFWvU3vfG5ociamrLzrsmLleIIiSR3Me
         jTHw==
X-Gm-Message-State: AOJu0YwFDtHk63Rx2pICA2HH9d1UkGwynpvs2zbY4wUUlQ4nyRid+lNP
	gimlgIngqNorRVjV6DvJ8oY=
X-Google-Smtp-Source: AGHT+IEZqTfQIJUVq28Q2riqpouM6lIfZBszQwPZ6GyXTADvrGrKK7UnzmDTwVX4T3N+gmK8zcd77w==
X-Received: by 2002:a05:6358:885:b0:139:d6cf:c430 with SMTP id m5-20020a056358088500b00139d6cfc430mr14137995rwj.6.1696767685037;
        Sun, 08 Oct 2023 05:21:25 -0700 (PDT)
Received: from debian.me ([103.131.18.64])
        by smtp.gmail.com with ESMTPSA id k6-20020a17090a658600b0026f39c90111sm6312979pjj.20.2023.10.08.05.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Oct 2023 05:21:24 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 10D6781B12C1; Sun,  8 Oct 2023 19:21:13 +0700 (WIB)
Date: Sun, 8 Oct 2023 19:21:12 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: K <maduechesik@gmail.com>, Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: Unable send test message using mutt
Message-ID: <ZSKeuAPVFUQidj5J@debian.me>
References: <CAAFs_TEQQCq46Pv_3e=9ATLqihzJ3tMW4hiOfuP5GGYXQ_TXjw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5fSDhfF2VRhCxLBC"
Content-Disposition: inline
In-Reply-To: <CAAFs_TEQQCq46Pv_3e=9ATLqihzJ3tMW4hiOfuP5GGYXQ_TXjw@mail.gmail.com>


--5fSDhfF2VRhCxLBC
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 07, 2023 at 03:09:28PM +0100, K wrote:
> I have followed the instruction from the tutorial, but whenever I send
> message to my email, I see this, "SMTP server problem Network is
> unreachable
> Error sending message, child exited 69 (Service unavailable.).
> Could not send the message.". Please I need help. And also, can i
> shutdown my VMware when i am not using it without loosing my data?.

=46rom what?

It looks like you have networking issues on your VM. Can you check that
ping works?

Then test sending using your MTA directly. For example:

```
$ sendmail your@email
=46rom: your@email
To: your@email
Subject: Test

Test
=2E
```

And finally, you can cleanly shut down your VM from inside of it by (as roo=
t):

```
# shutdown -P now
```

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--5fSDhfF2VRhCxLBC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZSKeuAAKCRD2uYlJVVFO
owGZAP9QRcdNrVzm7ayGL+K80J1woRomJz2UaAsGK/dnY6uXIgD8C0egwpCDW0ib
4WI5FksX8UTdbu5safpdUGrr6cW3/Qw=
=PlWS
-----END PGP SIGNATURE-----

--5fSDhfF2VRhCxLBC--

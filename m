Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06E02F2B
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 08:15:54 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id qe8-20020a17090b4f8800b0023f07253a2cso15132214pjb.3;
        Tue, 21 Mar 2023 01:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679386554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qc+ig8kLY6tOXJD14pTktQqDfjz/ghEuvLqsjQLjDjw=;
        b=mjo02WB1eE5KxpQPswIHH8hkXspC3KhxJ+HejaV6PT7gmEiRPKVrcnWrBXPJ01xReM
         rnFZZSrvHJm5U7zOI0mLjlzk718BXJAR5uK6Ux31mwxFWpxs+fHGov9G8QZRVeusMwV/
         UKihSgzDTa2CKiYhYZs39R/qSWNtCJyn8onpkclbVbcaRkFiGbpQueaJgesTF39iGm5n
         Yp7eiEPQMG+rCWG12c/j6lgxKn7dnBh6W5EVWtEF2BCNQfAvvPj0/wq2iFxcSLfAWcJB
         HH4vDBxYOiOGUWy//099ZbiMp5H3+QSUWu7rVTjRaZk0xhZmLCEblIv+Raqiaajn34Ls
         1MEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679386554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qc+ig8kLY6tOXJD14pTktQqDfjz/ghEuvLqsjQLjDjw=;
        b=RigscszbpW3gG222nHDjPZkbc2GVjz0bvjGjKXBjBEztHh4T9i+GLB4t4OnJdt4AJZ
         YwApvAEw9ZrqBaJTlTEAxt5rpP7+NS0jcJMyraSyOCBNIc11Mz8FEUTGZENEMYXY+vk9
         T5lqzwlc5rUnDC/h+Z75FDdfYrFlhXHuD+D0OTZ3TC4mjRAvkttWQOqF/9Ijl8doMhqc
         rp3UnljMf6TqzzxcjdZ3/O5QZcLy95ZqeJbmQJADoFQoAf4jjfUdA4z9gJ4jaYUpzVVR
         b8M5kAt+YuSSYzcDVNJe4bUY/CRntqHZllI7E/2vj4s4kWkQyDcFveziJhzBgkhnRt0K
         oZgA==
X-Gm-Message-State: AO0yUKVjH1CnK8uo0FyfDTsmO55ssgG36x0D6Cukip92W74z5ZxCT98E
	0CqRRcMGuyu53PX0dSiuSxqJfnZ86Yg=
X-Google-Smtp-Source: AK7set9Fq22KfLKmE8rFcPm5t+HaG7isbKh9iUsCvJF6fQjzxw3oEhvaPt3nlUt6UiyYXsAAHNU1pA==
X-Received: by 2002:a17:902:d10b:b0:1a1:b9e6:28a8 with SMTP id w11-20020a170902d10b00b001a1b9e628a8mr1122837plw.45.1679386553962;
        Tue, 21 Mar 2023 01:15:53 -0700 (PDT)
Received: from debian.me (subs03-180-214-233-83.three.co.id. [180.214.233.83])
        by smtp.gmail.com with ESMTPSA id x13-20020a1709027c0d00b001a06677948dsm8038469pll.293.2023.03.21.01.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 01:15:53 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 5967B106646; Tue, 21 Mar 2023 15:15:42 +0700 (WIB)
Date: Tue, 21 Mar 2023 15:15:41 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Deepak R Varma <drv@mailo.com>, Kloudifold <cloudifold.3125@gmail.com>
Cc: outreachy@lists.linux.dev, teddy.wang@siliconmotion.com,
	sudipm.mukherjee@gmail.com, gregkh@linuxfoundation.org,
	alison.schofield@intel.com, linuxstaging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] staging: sm750: Rename sm750_hw_cursor_* functions to
 snake_case
Message-ID: <ZBlnrWywCfDftf0+@debian.me>
References: <ZBfpbgvYguJnzIOx@CloudiRingWorld>
 <ZBiEnFxlHb/OES0B@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="65kqxN6J33eatIsv"
Content-Disposition: inline
In-Reply-To: <ZBiEnFxlHb/OES0B@ubun2204.myguest.virtualbox.org>


--65kqxN6J33eatIsv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 20, 2023 at 09:36:52PM +0530, Deepak R Varma wrote:
> Hello,
> Looks like you missed some maintainer list recipients in your to/cc of th=
is
> patch. How are you extracting the maintainer list?

The easiest way to copy the list is by passing `--norolestats
--separator , ` to get_maintainer.pl.

--=20
An old man doll... just what I always wanted! - Clara

--65kqxN6J33eatIsv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZBlnmQAKCRD2uYlJVVFO
oxaOAP9AN60wajhBoFfVPevHYzRMIx3MBX/Xypuk1FDBeNIbGwEA2iVt9xG2+wrL
wsPxfAT3wzZHBWY7x2b378Rm7eXYGwo=
=cCg8
-----END PGP SIGNATURE-----

--65kqxN6J33eatIsv--

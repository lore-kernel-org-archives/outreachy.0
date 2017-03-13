X-GM-THRID: 6396335157434908672
X-Received: by 10.107.39.15 with SMTP id n15mr9280396ion.45.1489428142673;
        Mon, 13 Mar 2017 11:02:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls15433364otb.2.gmail; Mon, 13 Mar
 2017 11:02:22 -0700 (PDT)
X-Received: by 10.237.59.39 with SMTP id p36mr5190292qte.34.1489428142173;
        Mon, 13 Mar 2017 11:02:22 -0700 (PDT)
Received: by 10.202.59.84 with SMTP id i81msoia;
        Mon, 13 Mar 2017 10:04:22 -0700 (PDT)
X-Received: by 10.157.80.33 with SMTP id a33mr15026602oth.89.1489424661950;
        Mon, 13 Mar 2017 10:04:21 -0700 (PDT)
Return-Path: <eric@anholt.net>
Received: from anholt.net (anholt.net. [50.246.234.109])
        by gmr-mx.google.com with ESMTP id a3si3222768pfb.2.2017.03.13.10.04.21
        for <outreachy-kernel@googlegroups.com>;
        Mon, 13 Mar 2017 10:04:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of eric@anholt.net designates 50.246.234.109 as permitted sender) client-ip=50.246.234.109;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eric@anholt.net designates 50.246.234.109 as permitted sender) smtp.mailfrom=eric@anholt.net
Received: from localhost (localhost [127.0.0.1])
	by anholt.net (Postfix) with ESMTP id 3FB5D10A1AA8;
	Mon, 13 Mar 2017 10:04:21 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
	by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id U48o1fLNPLuw; Mon, 13 Mar 2017 10:04:19 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
	by anholt.net (Postfix) with ESMTP id A213810A049F;
	Mon, 13 Mar 2017 10:04:19 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
	id 355C42E76E8; Mon, 13 Mar 2017 10:04:19 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Julia Lawall <julia.lawall@lip6.fr>, Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, swarren@wwwdotorg.org, lee@kernel.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Replace typedef with struct
In-Reply-To: <alpine.DEB.2.20.1703121319180.2174@hadrien>
References: <1489310493-22530-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703121319180.2174@hadrien>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Date: Mon, 13 Mar 2017 10:04:18 -0700
Message-ID: <87a88pyup9.fsf@eliezer.anholt.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

Julia Lawall <julia.lawall@lip6.fr> writes:

> On Sun, 12 Mar 2017, Gargi Sharma wrote:
>
>> Using typedef for a structure type and upper case struct names is not
>> suggested in Linux kernel coding style guidelines. Removed occurences
>> of typedefs and converted struct names to lowercase. Used grep to
>> ensure that all occurences have been removed. The module compiles
>> without any warnings or errors.
>
> Actually, the bcm people have requested not to be CCd on patches.  I'm
> leaving them on this one, though, because they might have some useful
> input.
>
> It's always suspicious when you change a type name and it only affects a
> header file.  And in this case, it only affects a function prototype.  I
> don't see any definition of the function.  Can the whole thing (type and
> prototype) go away?

It's dead even in the downstream tree, so let's kill it.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAljG0RMACgkQtdYpNtH8
nuhqyQ//dcCJ2tsvlUHFfqtlTPwTR6Vh2r32rFDYEuMgTrlwMFyaIqrKEkWvynet
Vi0ANpsKdtTbsb+FzeuxMOKFZh4QNt27Uc2YlUd4uQ9lO3am6gZHXCExbnzshqec
OO9xqgqABaqJvsP1RDQuTNxV7OTm7lpNULr+P3yVme3EkFPRJqlRBp+H7WxWMsZ1
ia0lj6fz42Dq4axv3P/88K3o06xaw62rurHVUylnYtC90oxk+wpoe1GIYi5dYyNV
wV3XSoAr2fmV2lgnAYAE8Fu7mrZ4ghusQYiOVLU7gzmRbhGQGj+ABTuTR7+ozt+2
FOr5IbWAg4167PQwUFDEuCFd6kA4p/zl751c0Cgyc3W1gmVsY8ZAQ02NPIoA2J5q
151Ii/PK6p7in0hL4BVN83ffimYlCvzW9ZuSevbBn3Jnf7UvK4GBmuO6ugPs5lkX
rFRrrwfk9uMlW0mIXNQTgX6acvCQPVJFkwDx0hiFrzuigGtQHOSNJpQaaqT5HBC/
u/o9prnhpO8UoB/z/gBNvOXyNCVPXUYNwGLk+m4CqCETeFh8xUyU0nd7YfciUPLZ
DOweZ/vYtmaYDjhF80Ro8ZcKbP532pBshUpML0QcIH/eaWQZBeg+9iy1jcFx8RFh
K8aKUja1ym3KXwnRg3SGEzlbtBApU/d9hNurCMM6gojDGidiQfM=
=vIb1
-----END PGP SIGNATURE-----
--=-=-=--


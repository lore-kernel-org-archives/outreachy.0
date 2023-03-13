Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B1023A7
	for <outreachy@lists.linux.dev>; Mon, 13 Mar 2023 09:09:41 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id u5so12159138plq.7
        for <outreachy@lists.linux.dev>; Mon, 13 Mar 2023 02:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678698581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZldElwuo4oBrQVbh8vFiz5IRsvk0wB+FSB07QGWqF8M=;
        b=Ty++Q01r+LdVfo/m2iDvvk5QYAtaRIqgYehYd9cXftk2NN8M3z1wz3il/1LOK/AW0c
         4PmCr7XwjINrTQyUYXtAP6rCwogJRpCLxXqYGimBnoFDz9/6j0c4KKTrEQ9CK8f5dwVy
         BB6WCN7WFAjxGerZ1RuPPOdM5aBPEnJnFN7aQpMLG3g89uGqlKp/PKqtv6D9FErYLktr
         +rAEpYrwsa0gG3pwk9CrbIKE+CD6+iRP/GkOUhP7AEghpgTVEH5Ye/9XTa2cpmG/7DH4
         l4BY3rnDo5kbtLzz/9PLxhIINAFPmS8OOY8WI4kvjOiJTK4GrKqRlYulY5pwybxWIZVD
         XPPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678698581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZldElwuo4oBrQVbh8vFiz5IRsvk0wB+FSB07QGWqF8M=;
        b=KHSx/NZ7zP0b4zRWsNPj3XzCJmgBgRNzHnX1+KKpV5xx61R2qmfmCuo8VzTyFaVhWV
         v2oQjAPFn/CPfxoosIzuiK0R+xLv7aNg4rg2Qfc0S1TucB8Rt2juUjXhhPHshm9XMvpv
         znNqoHvEhVYg4y8fIr8r07gcrWfX3k63HQSB0nTlNNC0MNoFj5fh65cWvqRt+bq0/cu0
         YC62Dsmn0Z2j6KTO6x+MbPITn4Y+PeyyXe+iahxvUrvblrJaq9XjBpI/7ynjzOwCEjP5
         RhhE5x2blvBddoMNfz0iHuplV87lEpljNEdrG3m5G2LUtWWkq+lZv3rJ+HPHqtLjAOhX
         y7Iw==
X-Gm-Message-State: AO0yUKVYIkPvYpFbZwC4UPs8F1uPGfc6zupRY6R3aD9CkZZ2YAWG+pk7
	3uKO35BPoGxslhSNb1mISa3xiVYsNkQ=
X-Google-Smtp-Source: AK7set8NDrnUUXO/sULumJOhcMENMmp8U8YtI6YDDycSxM8NahGjHmuf9DPYsw2izfpHo1UokR3BEg==
X-Received: by 2002:a05:6a20:bc9d:b0:d4:3b96:b549 with SMTP id fx29-20020a056a20bc9d00b000d43b96b549mr2959370pzb.27.1678698580759;
        Mon, 13 Mar 2023 02:09:40 -0700 (PDT)
Received: from debian.me (subs28-116-206-12-36.three.co.id. [116.206.12.36])
        by smtp.gmail.com with ESMTPSA id h3-20020aa786c3000000b005a8bc11d259sm4061503pfo.141.2023.03.13.02.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 02:09:40 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 2291B105FA8; Mon, 13 Mar 2023 16:09:34 +0700 (WIB)
Date: Mon, 13 Mar 2023 16:09:34 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <ZA7oTq4LwuatjaI4@debian.me>
References: <20230312170757.GE28100@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="X9apdx458wT9WMk4"
Content-Disposition: inline
In-Reply-To: <20230312170757.GE28100@ubuntu>


--X9apdx458wT9WMk4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 12, 2023 at 10:07:57AM -0700, Sumitra Sharma wrote:
> 1. The outreachy document does not include the steps to make the inbox wi=
th mutt. The steps below can be added to configure mutt with gmail.
>=20
> 	- Open the ~/.muttrc
> 	- Add the information=20
> 	=09
> 		set sendmail=3D"/usr/bin/esmtp"
> 		set envelope_from=3Dyes
> 		set from=3D"Your Name <my.email@gmail.com>"
> 		set use_from=3Dyes
> 		set edit_headers=3Dyes
> 	=09
> 		# IMAP settings
> 		set imap_user =3D "username@gmail.com"
> 		set imap_pass =3D "<mailbox password>"
>=20
> 		# SMTP settings
> 		set smtp_url =3D "smtps://username@smtp.gmail.com"
> 		set smtp_pass =3D "<mailbox password>"
>=20
> 		# Remote Gmail folders
> 		set folder =3D "imaps://imap.gmail.com/"
> 		set spoolfile =3D "+INBOX"
> 		set postponed =3D "+[Gmail]/Drafts"
> 		set record =3D "+[Gmail]/Sent Mail"
> 		set trash =3D "+[Gmail]/Trash"
> =09
> 	- Where the imap_pass, smtp_pass would be the App password or
> 	  the mailbox password.

Hi,

You may also consider updating OutreachyfirstpatchAlt.

For MTA, replace the now abandoned esmtp with Postfix. Configure the MTA as
null client (see [1]). For system-generated emails sent to root and postmas=
ter,
you will also need to canonicalize these recipient addresses to your email
address (see [2]).

For mutt config, set sendmail to "/usr/sbin/sendmail"/

Thanks.

[1]: https://www.thegeeksearch.com/how-to-configure-postfix-null-client/
[2]: https://askubuntu.com/a/599513

--=20
An old man doll... just what I always wanted! - Clara

--X9apdx458wT9WMk4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZA7oSAAKCRD2uYlJVVFO
o29QAP95axC6GJFiVS8vh5Zr00CS0TGbXHaqzHgdueRHxALpnwEA+xgsTbIlq/ZV
mbA+mTGOmX0iPDW8hZl2ulq4ZkcWVQg=
=me7K
-----END PGP SIGNATURE-----

--X9apdx458wT9WMk4--

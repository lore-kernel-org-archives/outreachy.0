Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B2D28EF
	for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 09:27:35 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id 16so8480115pge.11
        for <outreachy@lists.linux.dev>; Tue, 14 Mar 2023 02:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678786055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iM1hLqH7dInobEJE4rvGRbIFY86yH7cbfn85IRralUA=;
        b=JMrV2RC0BwrZn090uPRpuK0vIcJz7E5KdkUpUgwA05dQ9B9FxXXENeQV98yaqgZR22
         pCVws35m7XYsrxIPlAnGtmCuuiuuKydV44/AiH0r6BnvjlZPSdVuLvBV2vXewEc1ZAH7
         4gOZWijREFbKybJSAx5fIrbSkfbyxcEwf2A0jl5I8gH7TcT/e/rLbKNddFzTkSqTEj4o
         NuIbN7lOYanoRVZeibrgQbvvMz16a2hrWfCMFe4nlHr6baliByOvmCjT8JJgFUqWBO5q
         dmOwkBdvSFfiJ1WSH7103nO11KU5jq8g0puW9LfTsW8KKnqOZmsIWP2FYIik+57NNFGH
         BJbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678786055;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iM1hLqH7dInobEJE4rvGRbIFY86yH7cbfn85IRralUA=;
        b=hJjWtKhz7onZ5G0h1yUMRZuR56kpFgHbnzEJHktNEdfNf8XBZUi+M/Lilo9eHsejGw
         AXB6uNTSJbKPxGhZN0h2cz6D4GcQFj4rIJ30dtPf+lNWCrIMv3POovlXG0rQdM3PRBrQ
         ooArxHyLGffQ3iJOuRBeuUxsQyMgMgT3kPgLGtLioJExRc/VsaMKj/4TlBYoLqG5mbkf
         OzDa+DR4sUiW/NYyg32ndhY9IGyFqy2F7QU6Oz9VunNDkwX90iRLBNTkgF28vv6HyacY
         ZSIPbXkvqdFueX3QEbbRJrBBc/+OBIVtxSaSENaUBCnl+onsqs+CUnJ3yf1bga7+tuME
         FaYA==
X-Gm-Message-State: AO0yUKVRD68nku9P+AeFQjM+NgKWCtgjb/GGxRMMpekBh7yytT4Qo4qG
	fGwo//3xQGd3RjU0Cej3Phg=
X-Google-Smtp-Source: AK7set8yUL8cilkByWRISS5eY8uDYW+8IL98Uj7OmxKiEisvvt+un/U1tSRH0F+Vnm09Xc6TmCa+Jw==
X-Received: by 2002:a62:8489:0:b0:5a9:bf42:fcc5 with SMTP id k131-20020a628489000000b005a9bf42fcc5mr41988773pfd.0.1678786055039;
        Tue, 14 Mar 2023 02:27:35 -0700 (PDT)
Received: from debian.me (subs02-180-214-232-23.three.co.id. [180.214.232.23])
        by smtp.gmail.com with ESMTPSA id s15-20020a62e70f000000b005a8b882a239sm1137647pfh.109.2023.03.14.02.27.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 02:27:34 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 901ED1065A7; Tue, 14 Mar 2023 16:27:30 +0700 (WIB)
Date: Tue, 14 Mar 2023 16:27:30 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>
Cc: Linux Outreachy <outreachy@lists.linux.dev>
Subject: Re: [KERNEL NEWBIES ACCESS] Sumitra Sharma
Message-ID: <ZBA+AtHMFwwkwifW@debian.me>
References: <20230312170757.GE28100@ubuntu>
 <ZA7oTq4LwuatjaI4@debian.me>
 <20230314081646.GA37415@sumitra.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="meKxh/SeGxEwx4Qs"
Content-Disposition: inline
In-Reply-To: <20230314081646.GA37415@sumitra.com>


--meKxh/SeGxEwx4Qs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 14, 2023 at 01:16:46AM -0700, Sumitra Sharma wrote:
> > Hi,
> >=20
> > You may also consider updating OutreachyfirstpatchAlt.
> >
>=20
> Hi,
>=20
> I am sorry but I am unable to understand this line. Are you referring her=
e to the changes you are mentioning? or to some other document called "outr=
eachyfirstpatchAlt?

On Outreachyfirstpatch, there is a pointer to Outreachyfirstpatchalt
(which contains instructions on spinning up Ubuntu VM), so you need to
install your tools (including postfix and mutt) there if you want to
contribute through there. So I think the latter doc should be kept as
is.

>=20
> > For MTA, replace the now abandoned esmtp with Postfix. Configure the MT=
A as
> > null client (see [1]). For system-generated emails sent to root and pos=
tmaster,
> > you will also need to canonicalize these recipient addresses to your em=
ail
> > address (see [2]).
> >=20
>=20
> Okay, So then these will be the following new updates I will propose in
> the Outreachy firstpatch document.
>=20
> Configure Postfix Null Client
>=20
> 1. Install postfix using below commands. The installation process will op=
en some interactive prompts where you set "General type of mail configurati=
on -> Insternet Site" and "System mail name -> example.com".
> Note: The postfix will then use the address <username@example.com> to sen=
d and recieve emails.
>=20
> 	> sudo apt update
> 	> sudo apt install postfix
>=20
> 2. Edit and set /etc.postfix/main.cf for gmail as:
>=20
> 	relayhost =3D [smtp.gmail.com]:587
> 	inet_interfaces=3Dloopback-only
> 	mynetworks=3D127.0.0.0/8 [::1]/128
> 	myorigin=3Dexample1.example.com
> 	local_transport=3Derror: local delivery disabled
>=20
> And add this in main.cf:
>=20
> 	recipient_canonical_maps =3D hash:/etc/postfix/recipient_canonical
>=20
> 3. Create file named /etc/postfix/recipient_canonical and add the
> following:
> =09
> 	root@example.com postmaster@example.com
>=20
> This will enable the forwarded mail addressed to root@ and postmaster@ to=
 be received in your primary account.
>=20
> Finally hash it.
> 	> postmap /etc/postfix/recipient_canonical
>=20
> 4. Add Gmail Username and App password to postfix configuration by creati=
ng a sasl_passwd file in /etc/postfix/sasl_passwd and add the gmail id and =
App password:
>=20
> 	[smtp.gmail.com]:587 <username>@gmail.com:<App Password>
>=20
> Finally hash it.
> 	> postmap /etc/postfix/sasl/sasl_passwd
>=20
> 5. Restart your postfix using
>=20
> 	> systemctl restart postfix
>=20

You miss some important SASL authentication configs, since in this case Pos=
tfix
acts as email client. The SASL recipe is (ignore markdown except bullet
lists):

1. Adjust TLS level for Postfix SMTP client in `/etc/postfix/main.cf` so th=
at Postfix can
   relay emails:

   ```
   smtp_tls_security_level =3D may
   ```

2. Add SASL settings to `/etc/postfix/main.cf`:

   ```
   smtp_sasl_auth_enable =3D yes
   smtp_sasl_security_options =3D noanonymous
   smtp_sasl_password_maps =3D hash:/etc/postfix/sasl/passwd
   ```

3. Enter SMTP credentials in `/etc/postfix/sasl/passwd`:

   ```
   [smtp.gmail.com]:587		my.email@gmail.com:<app password>
   my.email@gmail.com		my.email@gmail.com:<app password>
   ```

4. Build the password database:

   ```
   # postmap /etc/postfix/sasl/passwd
   ```

5. In case you have multiple email accounts, you can activate sender-depend=
ent
   relay. To do so, append to `/etc/postfix/main.cf`:

   ```
   smtp_sender_dependent_authentication =3D yes
   sender_dependent_relayhost_maps =3D hash:/etc/postfix/relayers
   ```

   Add relay servers associated with your email addresses to
   `/etc/postfix/relayers`:

   ```
   my.email@gmail.com		[smtp.gmail.com]:587
   my.email@provider.net	[provider.net]:587
   ```

   Add credentials for your other addresses to `/etc/postfix/sasl/passwd`:

   ```
   my.email@provider.net	my.email@provider.net:<email password>
   ```

   Rebuild the databases:

   ```
   $ postmap /etc/postfix/relayers /etc/postfix/sasl/passwd
   ```

6. Restart Postfix.

Note that if you use SMTPS port (465), you will also need to append
`smtp_tls_wrappermode=3Dyes` to `/etc/postfix/main.cf`.

> - Open the ~/.muttrc
>         - Add the information
>=20
>                 set sendmail=3D"/usr/sbin/sendmail"
>                 set envelope_from=3Dyes
>                 set from=3D"Your Name <my.email@gmail.com>"
>                 set use_from=3Dyes
>                 set edit_headers=3Dyes
>=20
>                 # IMAP settings
>                 set imap_user =3D "username@gmail.com"
>                 set imap_pass =3D "<mailbox password>"
>=20
>                 # SMTP settings
>                 set smtp_url =3D "smtps://username@smtp.gmail.com"
>                 set smtp_pass =3D "<mailbox password>"
>=20

If you have set sendmail, you don't need to set SMTP credentials above,
as Postfix will do the job.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--meKxh/SeGxEwx4Qs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZBA9/gAKCRD2uYlJVVFO
o/xqAP432JqCg77hspPzhWPDZgpHuq2Nlx32qmRHY9t9FGrU4wEA7xuUlY/WgbMI
YDuojV3RgHFpqWllAVGS7eQok1IB3Q4=
=MPyt
-----END PGP SIGNATURE-----

--meKxh/SeGxEwx4Qs--

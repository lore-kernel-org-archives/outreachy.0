Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9061383
	for <Outreachy@lists.linux.dev>; Mon, 20 Mar 2023 08:43:25 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so11596605pjz.1
        for <Outreachy@lists.linux.dev>; Mon, 20 Mar 2023 01:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679301805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ogPBy44L33HgE2C6/YbfDSGa284LVMmHNrf78qJw9cg=;
        b=Ad2Ha+qKss4/WBzvn09lPYvuDvd7xt0ujqAxABzRcMtXQBszP2ubvu+0qEXaUe1Q87
         07QPuRZZdGCGdXLRO2Gr2OBa/NLEvdUN3CAUcKkybfP4Sdj5Oc5jVK1lNU7vpHwhOMQn
         Twp7OWiuePY2nFZQWqvw/Ak4RgxEPylTHMnyd+igvsAf49fkhWfGwYUmXIMlvz3P2l9m
         WwZCHaGfb+AggsQ7tS4Pb4wJMUqTkfjDyIsl2dQj44+Upp2bZ5fHYn1U8ts7aQG0oR6Q
         ehKW/iqzRTfKyoXOMcSp2+EFv7DHGX//eGVpHD8ihVkF9Wrd5Jqlye9Xqlih6vZoyqOD
         F00Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679301805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ogPBy44L33HgE2C6/YbfDSGa284LVMmHNrf78qJw9cg=;
        b=sqVPALkzqIDmq8+rzretdfylRO/KyK9B0mH1wE964xrQbfZutyA0B2Fge0P2eS3nGo
         1w+G+bTuT2AoqCgHvMq3AGqufdHjAyvvADQVFGPOqU6PunJWiBSH4YJuR+8jLE3JTePz
         mLjPDcI8APF5mi21x/mUu9Sj6uUL0Im2UcKPCBYmwoGhfTBF/clig5jlZUO9dvapcjBv
         3S16MGh6CjgJkudMcdGG7ovMCWXjDpl/Uj8NUZYqhAGJEfPX8ilIQGCd4ZrGLEk6zFpv
         Lp0ctpzkEZ8nP+2xFSjUHT/l53qiflwo2XfKl1OY8MFutPRbchg2F+gbYfAeYEmWpQ9U
         oq3A==
X-Gm-Message-State: AO0yUKXgsH1stPsZJypAVwGWLvN+sBu6pj0p7uAuE/YtqTf/omZoxAo6
	SOEfnp2J6tGzU+HAHBF/AW4=
X-Google-Smtp-Source: AK7set/ajbIvohT4dHMeiaE/Q5c0DiVWC8zeO8CRstHAoOLNpfRajB4IZ98wyjvfBySiO4xoueUAFg==
X-Received: by 2002:a17:90a:7289:b0:237:f18a:7959 with SMTP id e9-20020a17090a728900b00237f18a7959mr16950151pjg.25.1679301805293;
        Mon, 20 Mar 2023 01:43:25 -0700 (PDT)
Received: from debian.me (subs09a-223-255-225-69.three.co.id. [223.255.225.69])
        by smtp.gmail.com with ESMTPSA id x4-20020a17090a530400b0023d0290afbdsm3298987pjh.4.2023.03.20.01.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 01:43:24 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id A37671065D1; Mon, 20 Mar 2023 15:43:21 +0700 (WIB)
Date: Mon, 20 Mar 2023 15:43:21 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Khadija Kamran <kamrankhadijadj@gmail.com>, Outreachy@lists.linux.dev
Subject: Re: Help with Ubuntu Virtual Machine
Message-ID: <ZBgcqXcN6ApwEQpS@debian.me>
References: <ZBgHuKm52X3tpQKh@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qc/u1ojrXOwMO0a6"
Content-Disposition: inline
In-Reply-To: <ZBgHuKm52X3tpQKh@khadija-virtual-machine>


--Qc/u1ojrXOwMO0a6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 20, 2023 at 12:14:00PM +0500, Khadija Kamran wrote:
> Hi Outreachy Mentors!
>=20
> I am an Outreachy applicant and I am part of this community since the
> communication period. While I was working on my Virtual Machine, it
> accidentally shut down and it has been stuck on boot since then.
>=20
> This mail is to ask for help with this problem. I have been stuck for
> two days and I have tried several slutions but the problem still
> remains.
>=20
> I have windows10 installes and I am using Ubuntu 22.04.1 0n VMWare
> Virtual Machine(13GB RAM and 2x4 cores). Here is the error:
> -----------------------------------
> Gave up waiting for root device. Common problems:
> -Boot args (cat /proc/cmdline)
>   -Check rootdelay=3D (did the system wait long enough?)
> -Missing modules (cat /proc/modules; ls /dev)
> ALERT! UUID=3D718ed077-947d-4018-80ad-59825678e81d does not exist.=20
> Dropping to a shell!
>=20
> BusyBox v1.27.2 (Ubuntu 1:1.27.2-2ubuntu3.2) built-in shell (ash)
> Enter 'help' for a list of built-in commands.
>=20
> (initramfs)_
> ------------------------------------
>=20
> I have tried adding rootdelay and I have also tried chaning UUID to
> /dev/sda3 (where kernel is installed). I have used the older versions to
> run some commands, 'sudo apt-get clean' and=20
> 'sudo update-initramfs -k 6.3.0-rc2+ -u' command, but the problem
> remains.

Hi,

Looks like your kernel missed important kernel configs (did you compile
the kernel yourself?).

You need to see Thorsten's kernel build doc at [1]. tldr: Start with
distribution (Ubuntu) kernel config (find 6.1 kernel config in /boot), then
prepare the trimmed config by `make olddefconfig localmodconfig`. If you
are being asked new config options, just hit Enter to use default value.
You can now launch `make nconfig` to configure the kernel the way you'd lik=
e,
but try to be conservative (if you don't understand CONFIG_FOO, leave it al=
one.

When using localmodconfig, you may need to attach all your devices so that
the appropriate modules are loaded.

Thanks.

[1]: https://lore.kernel.org/linux-doc/1a788a8e7ba8a2063df08668f565efa83201=
6032.1678021408.git.linux@leemhuis.info/

--=20
An old man doll... just what I always wanted! - Clara

--Qc/u1ojrXOwMO0a6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCZBgcpQAKCRD2uYlJVVFO
owprAQDhhfwa+p14wGQQyq6JwqenvDlbV0FpINIeicMJM/xoIwEA0isi8W+8SBnP
BjL4HQbq1PvJxccwMKCySLYDVe/kPgo=
=gBSF
-----END PGP SIGNATURE-----

--Qc/u1ojrXOwMO0a6--

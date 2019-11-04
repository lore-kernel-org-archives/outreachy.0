X-GM-THRID: 6754190139198537728
X-Received: by 2002:a05:6638:345:: with SMTP id x5mr9274104jap.137.1572879974249;
        Mon, 04 Nov 2019 07:06:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:3552:: with SMTP id c79ls3033863ila.12.gmail; Mon, 04
 Nov 2019 07:06:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqxIOQEnEwy1zV2Et2yTdWaIVBq00h29AgPzF5wTuNMCLB+0vKIrcz6QQE0ezaJM/ABEkbQG
X-Received: by 2002:a92:1b49:: with SMTP id b70mr27798123ilb.180.1572879973033;
        Mon, 04 Nov 2019 07:06:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572879972; cv=none;
        d=google.com; s=arc-20160816;
        b=macXkn5DvAL+W2QGVwcpUifPmc1Ie9UZpA8L0/tR/ZyWTMOwZzNPbF7x1OM3Q2Io4J
         pvRRAxhsm2YcC79bDhaq0SJRya2f93FT5KUvDYUGpnkDwCHP02E3Wpp6oJNEhoUIpwAB
         eEOxyARow36LIQhsgUJBH1AJpO8a3ODnDx+hgjZsQxa+d6ytFIab/LLP8zRjs6vEbHsy
         rtrDhBwCOw94DSv35K4IE9J6cGe3qsDUs5P4DyUZZrR9migHcP+718AGfVVut4DN/Lx6
         WRjnM6nMMlgbF66CsnsoVZ8xkz66u4mLOYmwtXPYkJbBDgBEmm6iy0KW4xbf277Rtji4
         lB0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0T+pZ8Cy3rQ0P75sV+yYIqy4pMVLEk5JTQlQ3VkapLU=;
        b=aoDvFYzTjmJT3bfDthdW/fTIlv1Yl9U2uTpW7X2sFZ9jm7QbK87B/ajfayx27oUXNY
         SZRxTIo+bJlG5FGp0QwmOllOgbVT53X3aAbK7zFj1ymwVuM1JJvoe8mw171fclBcPoD0
         UTxK9nXAMp33yqw1dVjf1Baji7jUJApX1ZgKM7IWqJccf/dGN/2NRR5SFZv2IGda2txW
         N7+sRdFTPgEvT9TbV7KQGaxiZLpR3E3u2Kd5XvwN4HMPnc78YoUq2UO0ymKmgpmNLgol
         jBSLyi7kfGTg3clXXQbFn07B3Hmk3TncE1cjgCgUZX++xH36RniGl+rJ3O8IQWDioSgE
         bX3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GgLqokPY;
       spf=pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=rodrigosiqueiramelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rodrigosiqueiramelo@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id y205si742308iof.2.2019.11.04.07.06.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 07:06:12 -0800 (PST)
Received-SPF: pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GgLqokPY;
       spf=pass (google.com: domain of rodrigosiqueiramelo@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=rodrigosiqueiramelo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id a194so17853181qkg.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 07:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0T+pZ8Cy3rQ0P75sV+yYIqy4pMVLEk5JTQlQ3VkapLU=;
        b=GgLqokPYwHwSp+p+PgfCBmdWH4FrVmPL/dJv/9J/jnnyOJXdimRGbe+hIstYSMW6Bh
         w6uaVRiKWi1jgf4uFDHDM4enwbMVhn3NtiP32yjBj2aLspHmlgLXh+jDSC7niuECHKw+
         7f55KHVGNyNNYJ5jYgYQe38tgFlIToqFt7Zv/UNI/pmbUcBPXk+OaNm/uFfQ31sgRGSP
         zcqBU4c5PqTEuMz7R/7+jBuwxH8WFVQkvdboiXGcovc5VMC+vdcgtICynFIE4GACGwk7
         S6d69lZemKUztgFHXhjZXd17n2A9tQ+rfS076l/vWaNtVU9jzAsMBGvv6c0WWa8gXGV+
         9okQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0T+pZ8Cy3rQ0P75sV+yYIqy4pMVLEk5JTQlQ3VkapLU=;
        b=I/9cbhpfIEYhZigoRO8IIwGav7xYjIXlE+fPWg4Rzp5zZI9zFMZI5CE3l53WdA1x1+
         LR4nae7tOFT8j3vk4cYOZi7YzSlhQurpEoGe2y1c/3SfS9xuzsrONScc/LEId5cPFRzl
         9GZJuhoBEdo/PybM27mvQaqExK9sY4cpE1/UF1zsuMAdylgw7NjCRbESFvLygdJOMeDA
         GNhQBmwEw9cDeKN1iJB1wjfNfjP9Cmily7euPJtWyt3aDqUMC2dq+zO56rumWfdeA1Lu
         4OLO8QDuM0buPlxMwlKgqhjbP6fSBTlJFeELQBuSiigho/UPclhkHS2f4TYo60jBB+JA
         nC0w==
X-Gm-Message-State: APjAAAXvU6xs/hmBK6eRw1gXY0R+SH0o4tLofVId1M8FUH9gA+amjCkC
	XVeN05lt4DgfWOaETlHgJOYAG3Qs
X-Received: by 2002:a37:484b:: with SMTP id v72mr18748128qka.251.1572879972224;
        Mon, 04 Nov 2019 07:06:12 -0800 (PST)
Return-Path: <rodrigosiqueiramelo@gmail.com>
Received: from smtp.gmail.com ([165.204.55.250])
        by smtp.gmail.com with ESMTPSA id x133sm8311216qka.44.2019.11.04.07.06.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 07:06:11 -0800 (PST)
Date: Mon, 4 Nov 2019 10:06:09 -0500
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, manasi.d.navare@intel.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch, corbet@lwn.net,
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: Re: [PATCH v2] drm/doc: Adding VKMS module description and use to
 "Testing and Validation"
Message-ID: <20191104150607.gmkdksofuzajoz4d@smtp.gmail.com>
References: <20191101154314.25435-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="35pfgy7zittkqnjt"
Content-Disposition: inline
In-Reply-To: <20191101154314.25435-1-gabrielabittencourt00@gmail.com>
User-Agent: NeoMutt/20180716


--35pfgy7zittkqnjt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Gabriela,

Thank you very much for working on improving our documentation.

For me the patch looks good, I just have some nitpick.

First, it is recommended to use an imperative mood in the subject line.
Try something like this:

 Add VKMS module description under "Testing and Validation" section

On 11/01, Gabriela Bittencourt wrote:
> Add a description on VKMS module and the cases in which it should be used.
> There's a brief explanation on how to set it and use it in a VM, along wi=
th
> an example of running an igt-test.
>=20
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
>=20
> ---
>=20
> Changes in v2:
> - Avoid repetition of words in the same sentence;
> - Make the explanation on 'setting the kernel' shorter, eliminate the
> 'make menuconfig' command;
> - Add tab on enumeration to have one line per item;
> - Clarify from each machine igt-tests commands should be ran on.
>=20
> Tested the patch using 'make htmldocs' to make sure the output .html is
> correct.
>=20
> Hi DRM-community,
> this is my first (of many, I hope)  patch in this subsystem. I hope to ha=
ve
> a lot of learning (and fun :)) working with you guys.
> I'm starting by documenting the VKMS driver in "Userland interfaces", if I
> have been inaccurate in my description or if I misunderstood some concept,
> please let me know.
> ---
>  Documentation/gpu/drm-uapi.rst | 36 ++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>=20
> diff --git a/Documentation/gpu/drm-uapi.rst b/Documentation/gpu/drm-uapi.=
rst
> index 94f90521f58c..1586cbba05d0 100644
> --- a/Documentation/gpu/drm-uapi.rst
> +++ b/Documentation/gpu/drm-uapi.rst
> @@ -285,6 +285,42 @@ run-tests.sh is a wrapper around piglit that will ex=
ecute the tests matching
>  the -t options. A report in HTML format will be available in
>  ./results/html/index.html. Results can be compared with piglit.
> =20
> +Using VKMS to test DRM API
> +--------------------------
> +
> +VKMS is a software-only model of a KMS driver that is useful for testing
> +and for running compositors. VKMS aims to enable a virtual display witho=
ut
> +the need for a hardware display capability. These characteristics made V=
KMS
> +a perfect tool for validating the DRM core behavior and also support the
> +compositor developer. VKMS makes it possible to test DRM functions in a
> +virtual machine without display, simplifing the validation of some of the

/simplifing/simplifying/

> +core changes.
> +
> +To Validate changes in DRM API with VKMS, start setting the kernel: make
> +sure to enable VKMS module; compile the kernel with the VKMS enabled and
> +install it in the target machine. VKMS can be run in a Virtual Machine
> +(QEMU, virtme or similar). It's recommended the use of KVM with the mini=
mum
> +of 1GB of RAM and four cores.
> +
> +It's possible to run the IGT-tests in a VM in two ways:

Break line or add "::" at the end of the phrase, otherwise the above
line will be bold.

> +	1. Use IGT inside a VM
> +	2. Use IGT from the host machine and write the results in a shared dire=
ctory.
> +
> +As follow, there is an example of using a VM with a shared directory with
> +the host machine to run igt-tests. As example it's used virtme::
> +

/As example/As an example,/

Best Regards

> +	$ virtme-run --rwdir /path/for/shared_dir --kdir=3Dpath/for/kernel/dire=
ctory --mods=3Dauto
> +
> +Run the igt-tests in the guest machine, as example it's ran the 'kms_fli=
p'
> +tests::
> +
> +	$ /path/for/igt-gpu-tools/scripts/run-tests.sh -p -s -t "kms_flip.*" -v
> +
> +In this example, instead of build the igt_runner, Piglit is used
> +(-p option); it's created html summary of the tests results and it's sav=
ed
> +in the folder "igt-gpu-tools/results"; it's executed only the igt-tests
> +matching the -t option.
> +
>  Display CRC Support
>  -------------------
> =20
> --=20
> 2.20.1
>=20

--=20
Rodrigo Siqueira
Software Engineer, Advanced Micro Devices (AMD)
https://siqueira.tech

--35pfgy7zittkqnjt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl3APl8ACgkQWJzP/com
vP8Zhg/4p3v0VFWH55Z5qQ6Zd+bbz9L4pmjlqe6qe9Td2VAhII1uAUdgZ8fYWfie
csclAyx3nBZjMoWFHVlOe/L6WLll7kFJ481gWleNMQlxzXPFB9UMA2d+ag4lnPXf
tFalyxgRtlon52gZbhfYlMYXcOgFCuM7dwgLvFy4jizNbWo8Df+j6AL/LwKMZj+K
Emi9opYY+J6zGfGtR0l32I7Pn5wFyD24VYUOwAuiINj8ofMs6i84oMmVDrO3MfjJ
7W7N0F7795a6OVSUFp+EzH9mSj4pg7v9U8DNhKg9jGBlttphsvRjNUtGUpr0+xMU
bp33i4tE6tGEqaP/lTCPYNhR49Q3I9cyuEShj43UeQFx0Ux3zNNagU6xek0Pfm2U
96NsAa8SYtumTv2qgx+oUB2fyFvlX7YTqbLAcVsa9Kh6F1e7uvsmfQECGvX+au0j
DAmapthA0+z2UBn1+Dg0LKHHOPCiM4d95j5QWHxzXZ5v9I3fxmHH6qAHKl3srQZ6
OGVtlbcpRX0vsNFmAZCvfRXgiQOgFOCNKDNwVGba+6ej9eei/vUEj/eDP65jREO3
ifFK5Bz66dgWNoKtYANEHdEJffH9nazWvGtMTE3+DydWVUt+3/np3s79GjQ0QEit
ZSxIF4LVH0sTfmRj/2wgfj6v4tloBbIVLaZ2/8XQKmWbBh5gbQ==
=qUfx
-----END PGP SIGNATURE-----

--35pfgy7zittkqnjt--


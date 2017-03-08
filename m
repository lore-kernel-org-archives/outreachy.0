X-GM-THRID: 6392997475785900032
X-Received: by 10.107.157.6 with SMTP id g6mr2115085ioe.79.1488977695928;
        Wed, 08 Mar 2017 04:54:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.13.8 with SMTP id 8ls992170ion.18.gmail; Wed, 08 Mar 2017
 04:54:54 -0800 (PST)
X-Received: by 10.99.173.66 with SMTP id y2mr2645826pgo.18.1488977694882;
        Wed, 08 Mar 2017 04:54:54 -0800 (PST)
Received: by 10.55.95.129 with SMTP id t123msqkb;
        Wed, 8 Mar 2017 04:49:17 -0800 (PST)
X-Received: by 10.25.195.206 with SMTP id t197mr896159lff.11.1488977357289;
        Wed, 08 Mar 2017 04:49:17 -0800 (PST)
Return-Path: <thierry.reding@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id e72si659150wma.0.2017.03.08.04.49.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 04:49:17 -0800 (PST)
Received-SPF: pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of thierry.reding@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=thierry.reding@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id g10so4024072wrg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 04:49:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1PjEC4ZcT2D/KHD6x83lfDy+gcwSfiAg8BJV8qkgDcU=;
        b=sux9lv1HrQG743bH/Q0P8j2Vg/WdwNMTm9Ail+9UcTSe3dVjqv/GcOao4Ui6LINpvO
         JaqX567AC72she66d6Fe53etqzVGpqQ2oB3JNQIadxRl61gd5DplTJLbHpLsJWouhFIU
         x5kZ7xw6IXWvrxX/eSPsyaevWAmE2dLSVIOkdmxEor1tq5em5ZPTbnQ8zgaP8qy+Txq0
         q98Jyzy5HT+pGc9krMaZ9a8tAWqcTh2a0HE++Ndsicu63t1TKOoKL0vHnMmvU6IG712p
         TqOABSYCSkKpt0kNznCo5WcDxyYEPjkWfmtsJmB/v3jQ7TwhM5vzVsj6fjN25pEOFno0
         CAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1PjEC4ZcT2D/KHD6x83lfDy+gcwSfiAg8BJV8qkgDcU=;
        b=o89nwlyAnpVnroEoYctVt3jCKTNpbDh9MnEhpNoQVdBnZ/lqk9b+5kQB4upuXq1MoM
         Zip6WFNHanoxvH6fiSAlaKbw0WO7DtHTjJrdvGEsRe9+6pzPU2sXc/pssHNqunbKCcDd
         y6zL2qyS/0LQ0TaT7pX9S7X7EejKIwwz5fvZqDkSn6w2fDgpzPUfeBYd2PoLyuHZn8ev
         DG6B49lKavrkvXvk5Uo11c9vSsBWJgIFLuT9vWw2XVy/xi8Vh30ciIMvXQLSavGIKShP
         lFLjVrCfyH967kW7D+SkWoqTYFoBdQU8fsdOMxeReqDCc3HMH9EkGUSRsuc7sKSSaxiA
         AA7w==
X-Gm-Message-State: AMke39m9YgIy2RcPjx6853kZd1mxkZEOwkIuCpjOht66Bn1mGi7vHpQIsQl1xwjzrp6GuA==
X-Received: by 10.223.151.217 with SMTP id t25mr5774984wrb.95.1488977356911;
        Wed, 08 Mar 2017 04:49:16 -0800 (PST)
Return-Path: <thierry.reding@gmail.com>
Received: from localhost (port-49067.pppoe.wtnet.de. [46.59.192.68])
        by smtp.gmail.com with ESMTPSA id v1sm4008920wra.65.2017.03.08.04.49.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 Mar 2017 04:49:15 -0800 (PST)
Date: Wed, 8 Mar 2017 13:49:14 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: marvin24@gmx.de, gregkh@linuxfoundation.org, ac100@lists.launchpad.net,
	linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: nvec: Remove unnecessary cast on void pointer
Message-ID: <20170308124914.GD29118@ulmo.ba.sec>
References: <20170302201511.GA5080@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7DO5AaGCk89r4vaK"
Content-Disposition: inline
In-Reply-To: <20170302201511.GA5080@singhal-Inspiron-5558>
User-Agent: Mutt/1.8.0 (2017-02-23)


--7DO5AaGCk89r4vaK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 03, 2017 at 01:45:11AM +0530, simran singhal wrote:
> The following Coccinelle script was used to detect this:
>=20
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T*)x)->f
> |
> - (T*)
>   e
> )
>=20
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/nvec/nvec_kbd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Thierry Reding <treding@nvidia.com>

--7DO5AaGCk89r4vaK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAli//coACgkQ3SOs138+
s6GjXhAAgcMErR4O9WD13OleTToCP0kW6ah/KemKlpyBLsFI1Jtk/cK6vm9ZbraO
CuoiBw6DNF1WRaiSbnKMGok6h7azV+r9HtItJ6kj7B0D2esG9E0eEo/Z77wKqJG3
pQYeEgXZtIu2eBF6mj1k+c66lmFkNTtT9cr3Wrur1VDRlXSL7XTGHB5BqVKN/hzg
pFNOpdW8ZFdNedIWENEp41YJB6Pj20I1sxbeUUPzCxsQfAHISIxO4P0mYNXCJoPw
GO0+6zNMap4OlLevMuQFqHd81kPplPT9azObHhWqnjvur0TSW+ZdUIwfFDCC2iOA
StwgMxA+ozrEW8qJDYsoMcZ7QDC779Kb6hSkRtZdSyaVulBb0b7x8znYvQBzQNTI
ReXy78Z4uQEvHKxrsLvQliya9dRXNG24iyKAjYzDO4V5WDTME3kTz9BVYAs1owrq
Em82+wbmSx2uiQfaf4d7nAeNBnDjXNFSHIkDpCDPOfNqXp+uZoX8SfFT5zeHLy78
QumqB73VF3PXT0ScZwv2uwTtqS+o2MNGvQw04sV6PU8SbsxiQmGMrKswhKg7Uo4t
512v68fC7eY+x7j3J32WetutlpGfTx+s9WHqFJ8TVvwGPhNHvO1DheO8PxGe4weD
Zf61Az1VUvBSt6Sw+H1yROdU61ZqQ1N7ZKNYhsuHZUXyKKR3Ot8=
=HsMc
-----END PGP SIGNATURE-----

--7DO5AaGCk89r4vaK--


X-GM-THRID: 6469039069975281664
X-Received: by 10.99.62.76 with SMTP id l73mr5676766pga.16.1506368477963;
        Mon, 25 Sep 2017 12:41:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.207.76 with SMTP id f73ls5898588oig.3.gmail; Mon, 25 Sep
 2017 12:41:17 -0700 (PDT)
X-Received: by 10.157.17.46 with SMTP id g43mr427538ote.122.1506368477019;
        Mon, 25 Sep 2017 12:41:17 -0700 (PDT)
Received: by 10.55.207.150 with SMTP id v22msqkl;
        Mon, 25 Sep 2017 08:58:02 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBajxZgUSmpq764IV6CdgCcRQ1YBJXIzPNWt+5a+3Y/EOecNUtdlRUH8e1Gle9tm3l7LfZI
X-Received: by 10.28.8.71 with SMTP id 68mr87817wmi.24.1506355081185;
        Mon, 25 Sep 2017 08:58:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506355081; cv=none;
        d=google.com; s=arc-20160816;
        b=nYXlz1F/CmSAV33ydp6vVzTg5IEIxZqvgXW6W6i5xW/e9/fyogZX1F+SxaNy1xsaHD
         cUr0BH/bTDXovhoWZAQwDm/MyVwKdMoclCp9F9p6vq8MWydj/t576yj3bPTM7k6525nx
         kPNxsoqlZqiibkrwN05X7lm9VPWWub8/Fv98hFxEy4UpKK+jeWJKr1+8td1CmR2kzxIV
         QkfJTkA1WLDW0ek0tvLYiNuxSBuMX5zv7KGVRHFtXG82gjzaIB7MBeCv+O9s6oqCpsHq
         5hJAIIK8tCrZ/ZzZXSl6z+C2vgry1rWe3i4upZdM9ghcJwGYa6RRoirbIHAqNV27zFNG
         W5gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=jiCQJfSabvlEfioGbMsvlYsLvCLoSOUN7SSGjR/az80=;
        b=MVryRDlmk0/NRL/Lkbv4VkAX9Jdy7kb3O22pd3u7IxlIi3CKv0ETlFhYLInrYIIlnY
         aplhUX8m0WFLIyuXEODEgArYrDPWYZpcT1olD20I4sOnlO9wxQhg3TgnsQH0Mr2tQUrL
         XIjQCGMomP8hPlAfETBnqq58AvxbJdon74oeAvSegVhPaDXnhKPhw6l7jRbpwRCQRFTw
         FZtWjtJOAB1cm0YnYatX79FwW6I5+WbV5X9S0rIZT41C7KlRNSK7UV9s3sohAaIsMCYm
         UbFaRF4cTuro4MJjY9DyAA5otJHgE8fuzazHaOE2COiVTaZgqwP4WeWAzlRRBkPVgkLK
         3Udw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=O11d5CcG;
       spf=pass (google.com: domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk
Return-Path: <broonie@sirena.org.uk>
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk. [2a01:7e01::f03c:91ff:fed4:a3b6])
        by gmr-mx.google.com with ESMTPS id l133si553130wmb.3.2017.09.25.08.58.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Sep 2017 08:58:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) client-ip=2a01:7e01::f03c:91ff:fed4:a3b6;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@sirena.org.uk header.s=20170815-heliosphere header.b=O11d5CcG;
       spf=pass (google.com: domain of broonie@sirena.org.uk designates 2a01:7e01::f03c:91ff:fed4:a3b6 as permitted sender) smtp.mailfrom=broonie@sirena.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=jiCQJfSabvlEfioGbMsvlYsLvCLoSOUN7SSGjR/az80=; b=O11d5CcGZ1KMPDWNkjv0prbdz
	4ndgQpVPoxrxay2pkE91liVD3pt1EyOO53fmVPEW6AJP0nPWJUZoRYgXJUDl+vYhj3rEq7to+Qtbm
	DZNbrvb1espHhdbSVefB0R3NBuHsgVs9X9fR+Jn+NLAMnJzWElkfb4uPTrP/feRUGf+Ps=;
Received: from [70.35.39.2] (helo=finisterre.ee.mobilebroadband)
	by heliosphere.sirena.org.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <broonie@sirena.org.uk>)
	id 1dwVlb-0001Ro-B7; Mon, 25 Sep 2017 15:57:55 +0000
Received: by finisterre.ee.mobilebroadband (Postfix, from userid 1000)
	id 78B6F440052; Mon, 25 Sep 2017 16:57:21 +0100 (BST)
Date: Mon, 25 Sep 2017 16:57:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: lgirdwood@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
	baohua@kernel.org, alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Documentation: DT bindings: Add chip compatible string
 for audio codec.
Message-ID: <20170925155721.bahw47htnsy6lw4x@sirena.org.uk>
References: <1506190523-4338-1-git-send-email-shreeya.patel23498@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="seg6st7tp5bnfws5"
Content-Disposition: inline
In-Reply-To: <1506190523-4338-1-git-send-email-shreeya.patel23498@gmail.com>
X-Cookie: MIT:
User-Agent: NeoMutt/20170609 (1.8.3)


--seg6st7tp5bnfws5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Sep 23, 2017 at 11:45:23PM +0530, Shreeya Patel wrote:
> This patch adds chip compatible string to remove the warnings
> generated by checkpatch that -DT compatible string
> "toshiba,apb-dummy-codec" appears un-documented.

What is this device and why does it make sense to be covered with this
compatible string?  The -dummy-codec makes it seem like something that
has no place in a DT at all.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--seg6st7tp5bnfws5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlnJJ2AACgkQJNaLcl1U
h9CN0Af/cS0ELv1uC5llXnO9tU2iZsecx3Yh+IuJQb1KM5JvMcCzOvodoXOnorlH
k8j7rxo2kBA5ldHMc758flIT3Mau9L0lQQEaqST+Oicw7BQSyMQVjL/+O3BwA5xs
tY/TVbplBrydEVg24fAoFrZfQ/EIs+Ia2mc7JpaONJo42Pl6agfvMDP9EGmocBYu
qu85tDIVSeNXuvrmyofxrpHGA2rMW7gCb3ZcHax6yjdCqsKW/nNwD3i4bFCOnxYy
3M4/ooxFgwENg3z8tOMIlq5vDqClSzc6+KFOvrpqtECbL7AWddE7feRd2zk10YlF
gbkRlsqYgGbo17u2Cb//+a9GsRHKFA==
=avhb
-----END PGP SIGNATURE-----

--seg6st7tp5bnfws5--


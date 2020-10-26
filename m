X-GM-THRID: 6883028084998537216
X-Received: by 2002:a17:90a:dc82:: with SMTP id j2mr14863726pjv.68.1603691765047;
        Sun, 25 Oct 2020 22:56:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls2610029pgn.8.gmail; Sun, 25 Oct
 2020 22:56:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx+Q+hnbmK/9g32wEKy/3vtk92P3oxQaVLBT7wPGIt56o7Z1x0X1POKGQaEqTqq1Ybg/mPm
X-Received: by 2002:a63:1365:: with SMTP id 37mr143768pgt.247.1603691763484;
        Sun, 25 Oct 2020 22:56:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603691763; cv=none;
        d=google.com; s=arc-20160816;
        b=jIh+kH0W26OMNCq6L/NHWBoLNP++bAHwF2Hs1Ptv3p1cuauscT6p3t1BnYdL0UZK5n
         jebaHC7XSWXVzPuqmLkdt1rxd+qWS/Rlh65Rmy4EHyybnkM9/Hqo8dhx7fMHfiKkXjkM
         k3T7CpxzJ7gxU72jh0DX6orceMGgJwPx7St8+IM+Im19vCCjJRTFiCE32qSh+u2Dd1r1
         +BTqa5C8knUFjhrYORPmlJtT0Ij3pc4v/adWpxVKGHZ92/9QvbFBOuDeDlYxYCXIMkvc
         eGw4a6jPMe2FNyT0hfdAexoW6Dg5MmdbHboG5mDJIAB+pYAe7kvwTAmwvOE1ka/3DhtQ
         TxNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Efee/mbUPqwNJqQUsOIlgHnDRJ1kSWRfqNObFCfwzVg=;
        b=TVgJhX4Knqky4wg68Pxqeq7gKCucMDyD/Os1PRGQ3/a1RplNFfrdXz9KcWoo8arGin
         /SO3IkkN89sEcSouXHQPwidMd34GH2A06d3prMa07xNNJWq6g6nBhxlx65WlQq7D06b/
         owiGyPdF6etwHX2A1nuHxw3aWlrYAZ4em+cREjbtQwxE8J34VLIfsngLUWSsin+kIO5F
         ksv38NIlLRIlDGS7ujcgRNNnpGYXlGKq4BBmF6tODLxwufoyoDoaNciChiBX/CoITvlf
         aSzNxqsTjrTZOo7qaZG5RUJyEl+pJuWQDFOEanzSmbMfUwFNmlpq/S9/krIlruh71xfL
         vKnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=euO+WHSH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y123si457955pfg.5.2020.10.25.22.56.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 22:56:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=euO+WHSH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 89E0020878;
	Mon, 26 Oct 2020 05:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603691763;
	bh=ewAGu9XGiyCMERyz1NqrIy2Sc1xkpZLSvsK08tnfKbM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=euO+WHSHIYkx0BLD/yarcWGRbAryOdcJXV8a12BLQoqJN2cEHN3rYhDGfy+lejDrN
	 Fmi/gWxxZaPSDd0eZl/7rxyUHgKZtf7EAJCCLlaQI3pqf07Aj+e5upHTR10spRPofo
	 MifuqBkxRTevnzLuJxXdIsoeYpifKlA06prrZb/w=
Date: Mon, 26 Oct 2020 06:56:31 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-media@vger.kernel.org
Subject: Re: [PATCH v5 1/2] staging: media: imx: remove commented code
Message-ID: <20201026055631.GA779791@kroah.com>
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
 <20201026040017.GA5074@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026040017.GA5074@my--box>

On Mon, Oct 26, 2020 at 09:30:17AM +0530, Deepak R Varma wrote:
> On Fri, Oct 16, 2020 at 11:10:33PM +0530, Deepak R Varma wrote:
> 
> Hello All,
> Request for review / ack of this patch.

Please never top-post :(

The merge window only opened up a few hours ago, give maintainers time
to get to patches (like 2 weeks now).  Also remember, for the outreachy
project, drivers/staging/media/ patches are not considered and take much
longer to get reviewed and accepted, as the outreachy documentation
states.

good luck!

greg k-h


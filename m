X-GM-THRID: 6950254518663643136
X-Received: by 2002:a05:6402:4395:: with SMTP id o21mr29207799edc.22.1618240369745;
        Mon, 12 Apr 2021 08:12:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:515:: with SMTP id m21ls699431edv.1.gmail; Mon, 12
 Apr 2021 08:12:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxLuwN3LypK8IJmr3O/eyz/Py8YTS8Flx3ZSyy2khD9jqsU3VX1vTQDbS8V4MDI2Px5truu
X-Received: by 2002:aa7:c549:: with SMTP id s9mr24118831edr.326.1618240368227;
        Mon, 12 Apr 2021 08:12:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618240368; cv=none;
        d=google.com; s=arc-20160816;
        b=eS+W6lOh+b5hSY4lnB3MEGwOgGScea7bh7Lne1iUKqkXT/VoEIlwyyvVj+n0SXVyym
         ONgCzs31I+mlz/EiGKVX+WCMYnHmv+5EMnnGvuPTDzAgtS7nRB+2yaA+8+Vk/VMecOl2
         L5UanFm91KIEbggudqUZ1yJJyHZtz+KKHMyqi26cUw19N0nKgFq/jzq+yE3gmVUHw6ve
         rmKTjeSdESANh3NCOlvJNxHD/tROEeYGjUDAwNtjB2fOt3YljcL8UhSrh5W71ThPgCkH
         zMjuEE6v1XQp9HztklUjT73iatxinxxPy1joEi4i8IAnHeGzUhv4lV4PmM2/3u5AekA9
         J5Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ghtUNvP6W4rUDXB8GC3MxVGM3FS9B5+TJ3i4rt5aKc8=;
        b=AHJTPDQX4Vu/jvnPxMwy4IxUGtRAgPPVF5Iz4mJTN7MAlkp3p80fobCFfSfDbYg4rG
         x0ao3bdxaTFx8Z6li0RaVcYiPhVpF9ONidGHVpiKy9We9D52xfRdZvDcbIOFNlzuPrS6
         I7qX7hpcQBvEwLI31f/ACPRuFrnNDx/jVueUv4Cjb712GeXhxU4deMFNVFD4sgOZ+oOF
         rmFUpU/Ak0MJT1kEBvPQDd4Xs8dzTpe5K9LAQHVZu08MX28GT42VsefHt6Z9YSyvwIA4
         iJPVwZy9dxbp/ASfJC3kYpKHcl1B7RhzFDCoZ+rs6cmBEqPmoSl79tevd/a+diXYDyPy
         /VMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=JYBZ+xuO;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [213.167.242.64])
        by gmr-mx.google.com with ESMTPS id r21si914615ejo.0.2021.04.12.08.12.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 08:12:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) client-ip=213.167.242.64;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b=JYBZ+xuO;
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 67B923F0;
	Mon, 12 Apr 2021 17:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1618240367;
	bh=Vz+OMcuaVIUWh/1V5VDfgCmz0MaadcYAni8v3UeFzEc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JYBZ+xuOtRSZiVxFnDNer1U5JH1VoI2j3hrHgR3tSGsE8T2LCGLtA/ItGDhhig7/6
	 IV3PuSJuBTmY7hOqGK3pTsOYaJitbvRoB+W7Z9JQvYsd3vh84rltHc0yOEhyKWboIQ
	 iR/lYBOkwE8QUuvDHDznHxbLb2j9e95K/syDs0sw=
Date: Mon, 12 Apr 2021 18:11:58 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ascordeiro <alinesantanacordeiro@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH 1/4 v2] staging: media: omap4iss:
 Replace macro function by static inline function in file iss.c
Message-ID: <YHRjPpMVVrhTF7Tc@pendragon.ideasonboard.com>
References: <cover.1618231618.git.alinesantanacordeiro@gmail.com>
 <e302566a3d9e5180ab27eb2c2824fd1b678a6d99.1618231618.git.alinesantanacordeiro@gmail.com>
 <YHRNzq3h3LEp3Dgc@pendragon.ideasonboard.com>
 <7457fd4eb5afbf66b3a6f2fed4dd1e440e6ed422.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7457fd4eb5afbf66b3a6f2fed4dd1e440e6ed422.camel@gmail.com>

Hi Aline,

On Mon, Apr 12, 2021 at 10:58:45AM -0300, ascordeiro wrote:
> Em seg, 2021-04-12 às 16:40 +0300, Laurent Pinchart escreveu:
> > While testing on a device isn't a requirement as you can't be expected
> > to have the necessary hardware, changes are expected to be at least
> > compile-tested before being submitted.
> 
> Hi Laurent,
> 
> I thought recompiling the kernel would be enough in this case.
> I recompiled it in native Ubuntu 16.04 without errors.

Did it compile the driver you modified ?

-- 
Regards,

Laurent Pinchart


X-GM-THRID: 6746422022313607168
X-Received: by 2002:a05:620a:698:: with SMTP id f24mr14498826qkh.356.1570784538051;
        Fri, 11 Oct 2019 02:02:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:ac0e:: with SMTP id e14ls1431599qkm.16.gmail; Fri, 11
 Oct 2019 02:02:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw6r4MXRpjiqHx+rcck8+QaqSrzAOL05/fFi1JVSMLB9myVnfEdjm80CIUPsY3toeg8F64T
X-Received: by 2002:a05:620a:1037:: with SMTP id a23mr14628529qkk.276.1570784536970;
        Fri, 11 Oct 2019 02:02:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570784536; cv=none;
        d=google.com; s=arc-20160816;
        b=o1V5kma3DPE1HQBD9GXIz4TlQgOF0HjoHIky7RGRudEyJrtDxjshReFGMVePCLSfiG
         KR4qRvYKWKnIdUOQ3U78tcl/24bPaId3cStjgTBsbEB1sfMGWjcHfFtYyGDScALEiyK3
         /U73gf+L5T4R/eLO0aXFvDGeKqCE8Xg67mrO1Dh+oLcuCcX1e9ocjCKLIg+5a7PLbw5N
         WpPx4FT8tkjvNTariWbBwMQFefrJYSBgYH5fqGmMlyotYr/pW+pT1RC4uFRwcJwntXAR
         cRbwNLqXKpU1ziP6d7nlxY16qUFpIQLEV0JmH+ZSwvkKepSYH7oGdiuhKab6iUwLmrkF
         poSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=12oxywPfd6z3heOoTWDXGUl9lWyIz1sLs1n0ISTEK/Y=;
        b=Z3x/mYodmJMl66XpnufPTgbTQQEQ7JoIC0oQtTgcx97BzH1xwzsRp79gOZ7RqI/9/p
         sBjEhZUVY0iHfer3J+s6AmA9YX8xCnRCE3BhOPX0KC2+nn2PnHjJU7CQ9wVOayK4sWGI
         wlBALBkRkNkkxqYLUpy+L/FegU6iKXajdceEwZDiVUmXLfjCOHEqGdX7j5bu+jmkaUWy
         WtKAAcJrl7oSIPcZbahX531gpXhVTLwejKqEJrOTBPAJ4LWyH5pwpm+efylWQZ98S44l
         5eBE0gdYlDBFIAZLxYNlMkRzED66r3AZKBBSRvrZqyiGmFx6d+GhQOWwMb8x6EO/EV4+
         9bOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="z/Z3zLqC";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v7si397134qkf.5.2019.10.11.02.02.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Oct 2019 02:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="z/Z3zLqC";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 59F6321D6C;
	Fri, 11 Oct 2019 09:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570784535;
	bh=FvTRvAG+rf7yebIY8LceMF0kGTjjLrQsCByAbMcG7ks=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=z/Z3zLqCx7YOJoJckdKqYeaP6ky3TvNHlCoFKSVLmBM7DTomsg/kAAe3XlsiMK5Tl
	 Pz1MaeZ3dBEwdjTTY8qVT0cePbxx7OdrYIazkw1fQsM0n83kHl2KqaYcRF4eMce1g/
	 JuGUw6LadSfnZYDOi6aCkxF/Gk5mwnXjN8Mzukao=
Date: Fri, 11 Oct 2019 11:02:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] staging: octeon: remove typedef declaration for
 cvmx_helper_link_info_t
Message-ID: <20191011090213.GB1076760@kroah.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 09:02:39AM +0300, Wambui Karuga wrote:
> -typedef union {
> +union cvmx_helper_link_info_t {

I agree with Julia, all of the "_t" needs to be dropped as that is
pointless.  It's a holdover from the original name where "_t" was trying
to say that this is a typedef.  Gotta love abuse of hungarian notation
:(

Please redo this patch series and resend.

thanks,

greg k-h


X-GM-THRID: 6659803762561908736
X-Received: by 2002:a17:902:29ab:: with SMTP id h40mr10083607plb.32.1550658240688;
        Wed, 20 Feb 2019 02:24:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5751:: with SMTP id h17ls3321892pgm.4.gmail; Wed, 20 Feb
 2019 02:24:00 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZv6MRwFRnLcbVDp1eWF82vHD4Je3fQ0D+raj63gw+Jls5Eb0UUZNoH/oWpRHdmixQgOymS
X-Received: by 2002:aa7:9211:: with SMTP id 17mr12103737pfo.115.1550658240136;
        Wed, 20 Feb 2019 02:24:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550658240; cv=none;
        d=google.com; s=arc-20160816;
        b=brYrRZXCe580VP9nbIs9KumFMe4KqjoisioyqkFgaO405KqHpNiSPrlOztNIkxxku/
         2Nvgkmp4nUg80qpOQXYJQoHmMITv4NxcW8+EurBJfmzTBRti1YmBJCR0TBsoHETbmZYf
         VyeiCHtKdICJYA6bJufqFNuUXunJQBhdlwzQhAzDO4ZEs5Z3ZtWwPtXPII32F5pYvtH9
         GWoWFmmUhauUy+El+ggkOe1ZWAHzVe8drKCy70oxbPWIPwMskeOOnk/oe9Q2i6g6inGW
         2Y0eUHRljTwwRQDrIYgSmdotwVhIr3JPzymuWP+aD70cetlJHSLCGg97OuiST0Xvj9om
         kK+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=x+hv3MLeK588CkrRZJ1EzRZMEhHbVtwd2WoRm5TzFZI=;
        b=SFbAyd1XzGgUPwBB3l49y90bOBwxjvvHKqQJLBXGsot4cOLHFHe3SoggSBRcXym7TH
         ZWuRGt421hrX/VzC3KkTyMxuoJTxu78xi3wTPBy9jI5XoJmWh547/4UhaQsLqWek+Vwg
         kazEYKoIElovdfjXVUTNko8XRSldoLixKtNS6RbwMM0IsoFbLEvVh0Pw3xLEOkO8pQ2c
         07W14c+w8zsCAsuuy/FkTu/FXzcj86Xs26xFtTCKygj/I5cSDrB1SuzZdNM5SkCLTaPL
         KA8wyVYQaeF7TsVCDHPYJnA8u04ldme/4yWHsf2soYYyJVPd8hyTrzqZ99MCaTZMhU+K
         jL1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=viCGjzGE;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g25si883829pfe.1.2019.02.20.02.24.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 02:24:00 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=viCGjzGE;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [195.134.171.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4FA912146E;
	Wed, 20 Feb 2019 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550658239;
	bh=CVl/jRJM17tr7yoceXEeHEXSeCjgWBydRTjJldcZCqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=viCGjzGEWN0MsSpZPg0XBz0l1EnCUJpJFu6gf/kbzChlpg984VWZOW7E1Lsx65YDw
	 XpHofoXh2VxmRkXKH0M29tqnXa3sdcV5AvOFXN8r96+xATrrns5gwUEE4kVKTBRFdx
	 El+rLoc5q0w1iqACVcJposlDOh11fRJW8PiNhMaU=
Date: Wed, 20 Feb 2019 11:23:55 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy Kernel][PATCH 2/2] Staging: rts5208: Fix Macro
 argument reuse
Message-ID: <20190220102355.GB5535@kroah.com>
References: <20190219195951.GA16325@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190219195951.GA16325@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 20, 2019 at 01:29:51AM +0530, Bhanusree Pola wrote:
> Fix Macro argument reuse to avoid possible side effects

What side effects?  Always be specific.

And if you do something like this, make it an inline function, that way
the type can be properly checked.

thanks,

greg k-h


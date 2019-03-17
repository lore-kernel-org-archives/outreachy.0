X-GM-THRID: 6668981360875536384
X-Received: by 2002:a02:224c:: with SMTP id o73mr7455201jao.14.1552822921343;
        Sun, 17 Mar 2019 04:42:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b2e:: with SMTP id c46ls4551824jaa.2.gmail; Sun, 17 Mar
 2019 04:42:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzELqA1c6aOO9W1bsBzHvNgiOHp40PV97UEjAYZcXcZfrIRBMpU869aK3yicYbFzMARWiP
X-Received: by 2002:a02:4f4a:: with SMTP id c71mr7473170jab.17.1552822920824;
        Sun, 17 Mar 2019 04:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552822920; cv=none;
        d=google.com; s=arc-20160816;
        b=lL0xDJv4VG823n6AlQ3m5IV5Ac0AXyLOIa1w0ijaChQa4AMArqbnUTpKqG3f0nSkEE
         lEyX42eh7JK9nkZWKaLvE9urqJBrvxcWEB0vJ7iSJYnZNa0QboASbZf9m62cnby4L3+M
         ChG/komzqkskoxcVvtjX6im1jXMlP58Cduw2k79vHzwgV2sWfVBcGyOKrQgOEDe6s080
         vjEKMLOnEuBuenEzudby6cnSuQz+P5Hqsra5LNICkfH1NkJjxx5SPU7m14i9BWNmEq9u
         xBx+/STmGO9g4sCoVZbvuVxHhC9zjxqGNCKQfrBGtdmX0u3iFMX8okQEBEVgFtxh1qBc
         NBEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=IY907YN8el/W8Az+O2ip8n8THFL7RRuwZR0LldIBjY4=;
        b=QhD5vVpmGbsk02Sx1c1AKIVgLu2t0ptmjDr1qe+UfVS+sobmaJrICAXxa8UPixxPP/
         tr19EZlMVPDrcXa0mQgzA5vpjedRetcAjK4hJZg20fiY6aDHJuwYvlNR0CEW4/mqN/y1
         nZWXP8i7l09gj9YcVub3SVHe/4Trp9H9OENxbRgRobYoPiT7SUVsuhq+l8Hm1jlVr0rh
         /nJEiBRwnFfiNzXwWcW09GgJdBO3X+Fbw23pdDr3jLhTp+64fbatIM/1cShBFt/lvn+M
         hw4X48z+7Y8dxFuRv6MZcoiO9eEXDwzOtWXv3yP8JznbU1j4t5V9p6tdUE1zi17mSH8R
         tyow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y3Rwku4N;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n6si325496iod.1.2019.03.17.04.42.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:42:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y3Rwku4N;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 915452148D;
	Sun, 17 Mar 2019 11:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552822920;
	bh=ZqCTxR9iQsXX615QCb6IfrOCcTrfD4CmrGemhnK7cVE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y3Rwku4NvbZItQpP5Ar0s0AjdAPExQ8zD+9PqPWsQrzP0lRNrTi/mlMC7Pup+foVx
	 27pC1G7Uy/TGZx1yVI9MHAu/yxNsR0Ghc5wTaRTMW1QdFG+D8pcBU7LrEIAA3JcwCo
	 s4a1LX1pxZ4AC+FVRGfQdWm52Vz9iz/FWNuGPESs=
Date: Sun, 17 Mar 2019 12:41:57 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: sanjana99reddy99@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 1/4] Staging: rtl8188eu:
 rtw_recv.c: fix a tab indent issue
Message-ID: <20190317114157.GC3160@kroah.com>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com>
 <20190317105510.3012-1-sanjana99reddy99@gmail.com>
 <5d8c596e-45be-44cf-a362-dd0f18377c44@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d8c596e-45be-44cf-a362-dd0f18377c44@googlegroups.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 04:15:11AM -0700, sanjana99reddy99@gmail.com wrote:
> 
> 
> There is a typo in subject line of [PATCH v4 1/4].
> Correction:
> It is PATCH [v4 1/3]

Nothing I can do about this after you have sent it :)

Please fix this all up and resend them properly.  A maintainer should
never have to hand-edit a patch, otherwise something is wrong.

thanks,

greg k-h


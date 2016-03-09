X-GM-THRID: 6257160535052124160
X-Received: by 10.129.78.78 with SMTP id c75mr92055ywb.30.1457554019258;
        Wed, 09 Mar 2016 12:06:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.32 with SMTP id 32ls659769iog.31.gmail; Wed, 09 Mar 2016
 12:06:58 -0800 (PST)
X-Received: by 10.107.136.99 with SMTP id k96mr716086iod.23.1457554018729;
        Wed, 09 Mar 2016 12:06:58 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 12si43667pfb.1.2016.03.09.12.06.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 12:06:58 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id 1so4072443pal.3
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 12:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=itk59WMRGAa4UcDBNIJJk7PKuycQfJS113FJrspxnuY=;
        b=1D8ifQ0NHETuxQPoVpOXeGqEelfpqgP6UVdoSvQfzRGO2pk4Y/HfT0raf5RbRrrMZJ
         H1DP/fX2PcNVqZnp1IfjfJDLejCTBFIH/3S4oa/AjfpmIQJ4TSDMHxc/XTseePAz+0sl
         uh58Jc7lVk1oIZcAZeMSyjR/N6KAnHtvtAS2nL5qoNiLGwR/mL2yM+aryKmXLTiC0V6W
         geQ+i0wj22WatFtK6wx+fAc6nK3GVgKfa9wkJ8ug/E8ur+EfiRHn9lxHVD9LXUHJd5Nc
         ZmaOVoh+b3cz89byh5pg1lsC/H6suasCadFbLy+EtlS0r1GgVfvWx0XzWSJW266FwMJu
         lIXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=itk59WMRGAa4UcDBNIJJk7PKuycQfJS113FJrspxnuY=;
        b=nLKg0p+dEgMeUtNpMjHzIIfT6IkBB8N162eb7x7EJ0Bp+1jAExMiK8X4QeTfDZKOMb
         1ze5tjr4uI+9ezIze4VWX/4Wl19c9SZpMfcXINY1BP1fwNLyWj/90R04cBo7qxviCcRW
         PrYgDeieYuDqDbYAZLLHcIKerkHrVnlEyznt//nD8qIe5cep68tGBqcPsYXvg90VRr21
         lOs5QzXEzWnhumcQdTOUNl0mE4kc9HqTO2GSGJ1jdD8RMwpM8hhmJHJ0Rn/CnY8PTk8X
         FlTTwD1UlLDheO1gDJM3hgWwhG2PE+EiDUq7+1beyuzsSFSN6u1+ZDiP1YqO7enNMu9h
         sqDQ==
X-Gm-Message-State: AD7BkJKJ/fZCROvBWl3aZIaJTEI4sTD6LLRRbEODdifLCsEDIebJLQJxUN0PP6Rz+RX1VQ==
X-Received: by 10.66.222.199 with SMTP id qo7mr172320pac.38.1457554018510;
        Wed, 09 Mar 2016 12:06:58 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id ql1sm161312pac.24.2016.03.09.12.06.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 12:06:57 -0800 (PST)
Date: Wed, 9 Mar 2016 12:06:56 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>, outreachy-kernel@googlegroups.com,
	knaack.h@gmx.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, Michael.Hennerich@analog.com,
	gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: Re: [RFC PATCH 1/2] iio: core: implement
 iio_{claim|release}_direct_mode()
Message-ID: <20160309200654.GA11631@d830.WORKGROUP>
References: <cover.1456794364.git.amsfield22@gmail.com>
 <9a2950402af7277a4928a10eade4cc8b1187d8c8.1456794364.git.amsfield22@gmail.com>
 <56D6EA82.8090601@metafoo.de>
 <56DB1F3C.8020302@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <56DB1F3C.8020302@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Mar 05, 2016 at 06:02:36PM +0000, Jonathan Cameron wrote:
> On 02/03/16 13:28, Lars-Peter Clausen wrote:
> > On 03/01/2016 08:02 PM, Alison Schofield wrote:
> >> It is often the case that the driver wants to be sure a device stays
> >> in direct mode while it is executing a task or series of tasks.  To
> >> accomplish this today, the driver performs this sequence: 1) take the
> >> device state lock, 2)verify it is not in a buffered mode, 3) execute
> >> some tasks, and 4) release that lock.
> >>
> >> This patch introduces a pair of helper functions that simplify these
> >> steps and make it more semantically expressive.
> >>
> >> iio_claim_direct_mode()
> >>         If the device is not in any buffered mode it is guaranteed
> >>         to stay that way until iio_release_direct_mode() is called.
> >>
> >> iio_release_direct_mode()
> >>         Release the claim. Device is no longer guaranteed to stay
> >>         in direct mode.
> >>
> >> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > 
> > Looks basically good.
> Agreed - nothing to add from me to what Lars has covered here.
> Nice to 'hide' the accesses to mlock as well as will cut out the desire
> to 'abuse it'.  Amusingly we only just 'fixed' the docs to to say this
> element of iio_dev was usable by drivers.  Once we have these new functions
> in use throughout the tree, we will want to flip that back again to internal
> only.
> 
> Jonathan
>
Thanks for the review (& Lars too)  

Thinking about your note about flipping the mlock field back to
INTERNAL (from DRIVER), this change, even when it's applied to
all relevant instances, doesn't get us all the way there.

While these claim/release functions will remove direct access to mlock
where a driver wants to hold direct mode, the drivers are grabbing
mlock for other reasons also.  (too many reasons/instances for me to
quickly understand or summarize)  

I'm willing to look at it further and comment if that's helpful.

alisons







X-GM-THRID: 6955401561206947840
X-Received: by 2002:a17:90a:c3:: with SMTP id v3mr6142016pjd.55.1620143194234;
        Tue, 04 May 2021 08:46:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls1970966pjk.0.canary-gmail;
 Tue, 04 May 2021 08:46:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwY3xbvsVPQFDv/cUBc3tTnz7Uf6AMr9KIX68Syle6qhPhO4sbokK0d8Xdyfq68usJ26+rj
X-Received: by 2002:a17:902:c38b:b029:ed:442a:276e with SMTP id g11-20020a170902c38bb02900ed442a276emr26827382plg.51.1620143193034;
        Tue, 04 May 2021 08:46:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620143193; cv=none;
        d=google.com; s=arc-20160816;
        b=SUN1b9o+0B/2aJnGu2UUAt+Ch6IP8CM9/YtPJNoAEomZk1kEjJkjNqE72haogpahjb
         0MOeuZdWoY1CgneXucp86bWvFMCzjRwYrvH9z8G4h/5n+yBkpSNso3qebjyIi8KmJSYO
         ks4UufzPHmpuX916zT6F19WLlcMgVmvbDBrd8u+ZujzYk1A7z7Z8LVau3uEa7ZkgFpek
         hMWjjmMQQJLklPpKawHn4qdwgGPcoGj8iSWTPfUC84juHy8Q2EQ1Jri76zNHukUx9f6/
         YNsRGiUn6+FZsSA4pPTARxBSi97gA4ruusIVfkMG/DM8GQEMqnuWhPRoOXC9eaVrWPUI
         8d8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+YGvrbfYx2OqGebf7FwtrB3DIRvrbUcKjdWpWo7Q0is=;
        b=KOmPMrEtgtdT2dnTT8MKit1mdpsM9hGENoIBXJmvcGts0T442nRJ2e/z8T+dDZ6wZz
         kUokl/w7WUgpQHgiClHtMo3jVqGe0Dp3w7MwFnsIhEOjFUWlHx/EZHpvhE2wWHyWkzS7
         TOmK55GWYS7B2O2LW49zLtdv3CUzOASf6fbwRZ18IqL708DUUhZCk00XxvdnBGV8Zjuy
         R8i5YT1hy2QFMMVkWO1oYaJRBSn4oaabkLo3sM+NdgvObAJK2u0wa9G4M1z/bO43Qs3/
         cCG5RRNQZSOOmXBmbzuoGg6aLWTt9Ntsxai/9F6eS3upljodr2Atq07EToTRF+cctk3U
         hzeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lAPGmaSM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p8si252239pls.1.2021.05.04.08.46.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 08:46:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lAPGmaSM;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1831860BD3;
	Tue,  4 May 2021 15:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1620143192;
	bh=HjWdlGi51gxgMbxhNStXncgZHq51SkoVHiNnYwf6fMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lAPGmaSMFz8brn0DX/cZkjHNSWTlHdENIaczx9iKbXXSTNjt9oCaQF9gmqG5dfTxR
	 wKQxHtviDPxFpf+MVmQXvF2k6ByJ/QC3jT2tVF4bbIgvzvdrRJF7IiT+ndCmtTzcHX
	 AOUkg38T0mHwHJKeDl+7j7kY+S8CWep3cNC8Tjbo=
Date: Tue, 4 May 2021 17:46:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Matthew Wilcox <willy@infradead.org>, outreachy-kernel@googlegroups.com,
	David Kershner <david.kershner@unisys.com>,
	sparmaintainer@unisys.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v7] staging: unisys: visorhba:
 Convert module from IDR to XArray
Message-ID: <YJFsVTA/DTLvfWQG@kroah.com>
References: <20210504133253.32269-1-fmdefrancesco@gmail.com>
 <3550993.e1xmc6yJDa@linux.local>
 <20210504140119.GH1847222@casper.infradead.org>
 <810075373.q0sU067TuV@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <810075373.q0sU067TuV@linux.local>

On Tue, May 04, 2021 at 04:38:11PM +0200, Fabio M. De Francesco wrote:
> 
> As far as (1) and (2) are regarded, I've been told that when one modifies code 
> she/he should not diverge from the style of the subsystem/driver maintainer/
> author. If you look at visorhba_main.c, you'll find a lot of unnecessary 
> 'else' and 'if (success)'...
> 
> So what are the general rules one should follow when changing (trivial) Linux 
> code? Please note that my question has no other (hidden) purposes than 
> learning to work properly with the Linux community and to reduce the 
> unnecessary noise consequential to submitting a high number of patch versions.

"trivial" changes should only be done in subsystems that welcome it.

drivers/staging/ welcomes it, anything other than that, you need to ask
the maintainer.

thanks,

greg k-h


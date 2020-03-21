X-GM-THRID: 6806467742549409792
X-Received: by 2002:a63:8343:: with SMTP id h64mr12344407pge.73.1584783209838;
        Sat, 21 Mar 2020 02:33:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:745b:: with SMTP id e27ls4404673pgn.11.gmail; Sat, 21
 Mar 2020 02:33:28 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs5OffYvfvoE+H1xqAlUNTDHl7qTqPUO3N8PVKmwMmEriHI5O3R9Cu5dTWYMxHwsTdkR2ip
X-Received: by 2002:a62:1894:: with SMTP id 142mr14731475pfy.27.1584783208287;
        Sat, 21 Mar 2020 02:33:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584783208; cv=none;
        d=google.com; s=arc-20160816;
        b=iJ2HBk5sJU3rPTt6lp4fSMpPi7CV9tVaOWePwpDz+u75ZkAyZ5Mp8/Y2bEVOwHm+gd
         QlQV/tAfUXl6pcIaa/HD6bDjFcLPB6rPF9SLOYZxxT9buMut8UuaAPMMSN+cd2rL9Vv5
         rV6FtbjFCl/5GDKZdhjF/apbNoHUHTl9bBhxBvEOLV6rB9pU2VcO2SMPSbeK9yBAwSmY
         po7PjYX1QqQe0PqGOTvEQrEGLGe4b+WhID+cJ5NxKJ6X9QhwPy28poor6Lqb9Msy8qat
         jE63PnVbozh/OPJ46KXsn+qQcOQ5/ZIbMydkQXF1keDejwzkz9d3EUAOPcfTi/0Qu2/M
         otvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=c/vyQMA3BxRtdSZfoqIS8nWbYIE9OZKno0FQySDpYpA=;
        b=UYfyQUfmo/8k9wJJPTbP6hGTseY89f9dM2EeIgn6gTpnAzkWccRK22Zs0rjbLXGX1l
         +7YWgTTUPE3v11SgPuTR/mHq6YUhTr7rws43rqvXXxgMz6/11l08E4gmBDOe+ABezAgS
         /87AglR+opMpSQaMvojGwMFn87pB3B+l3gmfPjsdSc0kBRcEGu/85aTLwGhynEVBnRoK
         +YgZ+h1BAjnBnZ/YJINXvROWt0MJgX/1KQxexN4CarDOaFWp5w+bECJHR02YtcI/psap
         GTLV96QNJPWzlI0LBdmtOrWygbBDNSVD9mBRD6JHTEKb+dsRlwHCqmJgpDOVOUyk9uZD
         Io1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KY7Hdn99;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i19si769321pjx.1.2020.03.21.02.33.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 02:33:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KY7Hdn99;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 899A620739;
	Sat, 21 Mar 2020 09:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584783208;
	bh=c/vyQMA3BxRtdSZfoqIS8nWbYIE9OZKno0FQySDpYpA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KY7Hdn99/Sn+WNpS35xSfSiit4NwfPN0kDtgC27fxcx+z4kyGw5wK8OxkxKpaKg46
	 J5N2mAG0LxuxX2HzyTrkqVuZ6RC8HmaFX1K4EtWkkCJExTvD/RvZ/UwF7ZWyMKplVK
	 tM1R3qq/ICBM2wB+ZA5JQppv8Dly1UGC2PLaTs0w=
Date: Sat, 21 Mar 2020 10:33:25 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: hp100: Block comments use a trailing */ on a
 separate line
Message-ID: <20200321093325.GC917692@kroah.com>
References: <20200321013101.GA17131@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321013101.GA17131@siyah2>

On Sat, Mar 21, 2020 at 04:31:01AM +0300, Gokce Kuler wrote:
> Moved to the bottom line */ for block comments

Again, you said what you did, but not why.

Also, you _added_ two new checkpatch warnings, not a good ratio :(

thanks,

greg k-h


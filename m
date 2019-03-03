X-GM-THRID: 6664078765132349440
X-Received: by 2002:a9f:2922:: with SMTP id t31mr9674336uat.16.1551623261959;
        Sun, 03 Mar 2019 06:27:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:3c47:: with SMTP id j68ls2281914vka.2.gmail; Sun, 03 Mar
 2019 06:27:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqxmyo0BusZOiWSSW+ehDHwWajYRGYOqSn51nrlSO0u+jvg6mtjz8iSrKMUFIak/uRZpm+9p
X-Received: by 2002:a1f:9d49:: with SMTP id g70mr9847508vke.10.1551623261366;
        Sun, 03 Mar 2019 06:27:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551623261; cv=none;
        d=google.com; s=arc-20160816;
        b=ND9VyDRp+ZQPT8DtOpRM6DdzH4BJx9cQ4PCKBDX8oZCO7cAUb5Zt+fDtDDmUTi6T4v
         nn0+pFXVs0z6hvBjUuMimkcmZtsQlPLI2KMmgc5hWBmc9WBhJ94F6qc1Yafv+x5ttSKm
         RdnpS7ZWuUeioMdUAT1lCFBCiXvoHNjafJMbqHBHjW6RPtO7JhH0VFYrw9dQZv/Nus6W
         iOaouZIZGUzrLM9HFidWKRngitpnMrjr0rIsabFmmUQ58vscR7eN/adts2AFkGIFf4lp
         6MPPuGNEcjiYOygZ2XVVITUTTsLX0L89/WamlIzDQwgqvBlWDU+M1LKvhwu2LKAvtAlM
         T3Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZOfsxJcGkBWxTrJ/2KBlSz7fqZBGQiBSA0ceQaQZBOE=;
        b=KR6KcaPSFP8id5kSzNrd4msICLuFKRdNWRdeqwS9keTa5x5LVUyCXuIdiQmJGSYThA
         MgfaiKSNpl8n3ydWZctqn4koKF32EJ8Q/2oOPGaIiIao1+IdTIOA6dwCj5RsTKVJHIWq
         7yRCqVu1vhxW+Sq1BBlG5SbnAI71LTY0ToAPXp43YyRcZPxVsClFOBubawyqohR1WEL6
         GmKF01/V3o/7okwBH7VfD3C+uJ5TsyFOlTBZszUMIO301tM/AvA5W7095S0b7NNdR2Ms
         qehiTjXG8Q/ju3oK2fPsGWX4pU0KVPncpsvI9LyGRWtIL1z9xGTzFiPpfwpTBz8lb1Pp
         9xqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zgN6w83x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c15si170855vsp.2.2019.03.03.06.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 06:27:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zgN6w83x;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 96B5420836;
	Sun,  3 Mar 2019 14:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551623260;
	bh=J3jenc3QZy77kKhpUHwXkymJaGJJ96bH87Z0VyLP48g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=zgN6w83xIVenrFwiiioPlBm0ZLwfPeMbljty4AVN2hqNXd6teAdGbv4KTri+lYR1P
	 2oUmG+RIrod1LC8ooNrFjTsImfdVUk3FFMK8Xv0p5cNQBFlpxwO70tZnbHuD7Ca9lo
	 oA03Jr2LHiAa4xyp0YuGBpDiEUDCQqZlxCRrLogU=
Date: Sun, 3 Mar 2019 15:27:37 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Replace udelay to
 usleep_range
Message-ID: <20190303142737.GA30271@kroah.com>
References: <20190303082902.GA16698@bhagyashri-Lenovo-G570>
 <20190303083430.GA30460@kroah.com>
 <CAOMPgjgN1WroEoqpDA-s1t5NVDrDJDtKCMDD=_JgAEeHh7g6dw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMPgjgN1WroEoqpDA-s1t5NVDrDJDtKCMDD=_JgAEeHh7g6dw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)


A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Sun, Mar 03, 2019 at 07:46:55PM +0530, Bhagyashri Dighole wrote:
> Hi,
> I have gone through "Documentation/timers/timers-howto.txt", It is
> mentioned that we can put 10us-20us gap between min_range and max_range. In
> above situation `udelay(20)` our min_range is 20 and max_range is 30.

That type of delay range can be set, yes, but what are you helping here?
Also, can the hardware really support this type of longer delay?  Some
hardware types can not as it is trying to rely on some sort of
semi-regular delays.  Or could the delay be shorter?  It's really hard
to know without knowing what the hardware is expecting and being able to
test it.

thanks,

greg k-h


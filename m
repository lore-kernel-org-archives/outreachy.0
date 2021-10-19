X-GM-THRID: 7018981355604148224
X-Received: by 2002:a17:902:d50b:b0:13f:69af:5ae7 with SMTP id b11-20020a170902d50b00b0013f69af5ae7mr34300973plg.39.1634658754284;
        Tue, 19 Oct 2021 08:52:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a409:: with SMTP id p9ls11199704plq.3.gmail; Tue, 19
 Oct 2021 08:52:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxIfowcIGh8k5mi/wRGhJ++0Lb3/Z+O3jMG0/V3/hGPswXCPfzy1kERZ0uMHygfQMMUjkH7
X-Received: by 2002:a17:90a:ccb:: with SMTP id 11mr746111pjt.121.1634658753059;
        Tue, 19 Oct 2021 08:52:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634658753; cv=none;
        d=google.com; s=arc-20160816;
        b=q8b8mzQqlBlhLknC4IififS03TtqybhgmgWxYAt1UaxYd13nvJ5wqyfAdKdnPDHD/a
         O1VVBQ3bjhZDDVc6kZfH0diAmx9GdpszIKar/X7CwKMpcL29WHY+qgNt0hLCFCu7NciW
         jpdikISa665tM9EK4WrrYecNyDr+QZ4U3O0aqaHvdnbojBaTwQkBFQQBCr+B+oQfFM4n
         HVXv30R/BKyCzl7nXPx6WHGe4V6tNkPK0Xslj3Q4evbQTawhBGuEeHH/52Vrf9xz743i
         L5s9ePZkxmhtkAoE+BoDF4kjiOIYEoU88p7LqvvzMKh2iUyjxGOS6nuFuv70aDd0vDn9
         efxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kkKfHrsU11ekrBbY2rKmRBQBGvLbLm4qi0DmVqer58w=;
        b=Vbo0iYAaK+LVKJqXwUKzaZo2VXKkhA9F2iXQRyuzURfngMG7j3MTmInqPOEpdgGgZx
         LRcsS4Xory1vPTtrwZ0+43J5BSNf8ndi7n/jHw/3VXOP7ArmefEVZJ7Hgg5XdH0l2DPP
         DGfbwtNxgWo5VVq6PtAVc0QCAeNgiq06Rjlne/yzMZV17hHPNqxvky6fZAoRkx16M7Gu
         D2HAyEd4UiL6OsSqCIdHLHlRuZu1HEjA19HyjKb2TY70+JbrTthv5auZx+e1ncrguYI1
         Vez6xDd8X0deA6/fN2X37/kNw4x1AWmJcdgVuFHEYJDpuHZ4ZBGgOnD1uANqLTm60z7s
         lB/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xkHw6WnR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q75si1264545pfc.5.2021.10.19.08.52.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 08:52:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xkHw6WnR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E5C260EE3;
	Tue, 19 Oct 2021 15:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634658752;
	bh=FQNHn0pg27h1C0FM6W07fmgUfheT7ITbJARm3aGLjKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xkHw6WnRP0hdH8gJXDpRMafMWZMlZKksZ+df5pdpHEYeoYvSIZMt1mQJe/QvnYFiZ
	 cGWCAsH1sH9rqHoPOa8Pj+oBzkydqI4Df69Gad8VW+DZW+TOyKv7an/hmtH2JL8hcH
	 1wCspBi9NbFYJ8F4kDKwWSLS0mH9DesBedAijezo=
Date: Tue, 19 Oct 2021 17:52:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Karolina Drobnik <karolinadrobnik@gmail.com>,
	Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
Message-ID: <YW7pvV/IQL5+Biei@kroah.com>
References: <20211014174207.GA426328@alison-desk>
 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
 <20211018175420.GA446414@alison-desk>
 <YW5jiKHmi3/cjXQW@kroah.com>
 <20211019153601.GA451103@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211019153601.GA451103@alison-desk>

On Tue, Oct 19, 2021 at 08:36:01AM -0700, Alison Schofield wrote:
> On Tue, Oct 19, 2021 at 08:19:52AM +0200, Greg KH wrote:
> > On Mon, Oct 18, 2021 at 10:54:20AM -0700, Alison Schofield wrote:
> > > On Mon, Oct 18, 2021 at 10:59:42AM +0100, Karolina Drobnik wrote:
> > > > Hi Alison,
> > > > 
> > > > I updated the `get_maintainer.pl` code section and split it up a bit,
> > > > hope it's fine. Additionally, I decided to extract the note on
> > > > `vc04_services` so it's more visible and add a comment on including the
> > > > outreachy list (as a reminder).
> > > > 
> > > > One thing - should I use double-spaces while editing this wiki? I see
> > > > they're used there, I added some in but I wouldn't be surprised if I
> > > > missed some.
> > > 
> > > Is that the double spaces between sentences you are referring too?
> > > HA HA - that shows that this writing is dated, because double space
> > > between sentences, use to be the standard, but is not anymore ;)
> > 
> > It is still the standard for plain-text email where your email client
> > shows text in fixed-width fonts.  Just like the old typewriters where
> > this style was created for.
> > 
> 
> Greg -
> 
> I understand the background.  I had not thought of it in terms of plain
> test email, and by extension, patch logs and cover letters.  Is that a
> guideline or rule for Linux Patches, or are am I just going down a rat
> hole now?

It's a good thing to do for changelog text and emails as they are almost
always read with fixed-width fonts.

But it's not a hard and fast rule, I wouldn't worry too much about it,
there are way too many "real" things to be concerned about when writing
a changelog text.

thanks,

greg k-h


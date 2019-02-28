X-GM-THRID: 6663113562499579904
X-Received: by 2002:a24:3a4a:: with SMTP id m71mr687412itm.12.1551377312561;
        Thu, 28 Feb 2019 10:08:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ac44:: with SMTP id m4ls1650163iti.3.gmail; Thu, 28 Feb
 2019 10:08:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqxJjiJUxCcVgYO0E8rboQzZqS6j/PmR78s0GBoUALvzGnTttpzsiAYItr+VeEX6QMyHq2d/
X-Received: by 2002:a24:7d8a:: with SMTP id b132mr643515itc.20.1551377311686;
        Thu, 28 Feb 2019 10:08:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551377311; cv=none;
        d=google.com; s=arc-20160816;
        b=zatl+QeHa5QrStqGHwmxulJe7+0ge9rfTrWRlukszSh7rtg/QGDsk+39/FDP/2z0Cw
         TOeMgsKA1oR9w4heJrJSTL7OlyysUuxTEQ46VZaKXOYM+/zqpY5Q1FlPUEX0fZFN8Ev2
         upfspFOrc2ykpP3VjembvvquMo0C8VRAcfy8kOUMd/t5XRbPS7r3rmiVJVM3PGSyPYgi
         pSkqeMR7G4rvhrmOZLik+YfUfg6xkvSLpbCOF4alvYak03nYyb96fzxIPfIWjGY1OJ7b
         /WgUhuyzCaXouVYOS5LqGDj4e/V35Jon9mVW3EJBo/ya9XdxbETHy9M9Uyc88DIRwTZM
         +qMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BMAOv7R1/86NCahi3e1o4rdkdvHLvouG02pGsS51uec=;
        b=L802qaPFzjj6wA/ZZTjwUPhve2M0Nbfljm81GFT5YeVbCULiFVb9NuzKqgxq89wBjr
         MqEYnJB8/ptvzUrU6lkYRu6SkUmoftJIICL5YBMgZ9xfVdA9j8hR4KrqXlCirqwl8WZc
         WuUt8xbv+GTK+EzD3MVfdmC+EGXPATcrjlFpGNlvpgp30EWHli8yfeeVEviH4jYjQSJN
         mB+993rVTzJudMixndrk8zPGkGrY6IqZdazopJNkiGEbWWQhiQKQ18K6TEhjCXpc665H
         sOLpapnlm4WX71hDkVHASLZrdG3oGrDsfHhmrHJKIyZ0VCCTBuysFsiq3UA49KnXpS9c
         /oiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rhLRpe0X;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x76si102579itb.1.2019.02.28.10.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 10:08:31 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=rhLRpe0X;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5F26F20863;
	Thu, 28 Feb 2019 18:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551377310;
	bh=vzFCKx4iXNFDeBEWpj5Y1biplFPj15h5pT8r1A0NrXk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rhLRpe0XzfuEN3yaiiZQICN5genbRItyp9b6alnHvLGyZRr3kNpqufhFAyN6S+c1a
	 eEbuOrzIY04X7BpdIfzKrfR1OzpzofWA+cglTKf5x7tgrfV+8AN3xNtz9kcgFPBvB0
	 G87fD8eGsYFkN5hvxH3QoYuuhaX/njZlDkWNOhyk=
Date: Thu, 28 Feb 2019 19:08:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: mt7621-eth: Add SPDX identifier and remove
 license text
Message-ID: <20190228180828.GA30982@kroah.com>
References: <20190228180328.7954-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190228180328.7954-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 28, 2019 at 06:03:28PM +0000, Jules Irenge wrote:
> Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
> Issue found by checkpatch.pl warning:
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> Remove license boilerplate text

You are doing two different things here, so this should be two different
patches.  Please make a patch series doing this and resend it.

thanks,

greg k-h


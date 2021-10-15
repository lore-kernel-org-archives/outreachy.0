X-GM-THRID: 7018941118564794368
X-Received: by 2002:a4a:e292:: with SMTP id k18mr9435346oot.80.1634310662991;
        Fri, 15 Oct 2021 08:11:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:b54d:: with SMTP id s13ls662363ooo.7.gmail; Fri, 15 Oct
 2021 08:11:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz975r/WNOpBKUAsDhwIYvUfyEe4H1T1pfno/aZfoIR9ZRoFe5xEjYLUpxWrdvbCvMjdhCB
X-Received: by 2002:a4a:3c07:: with SMTP id d7mr9277452ooa.84.1634310662301;
        Fri, 15 Oct 2021 08:11:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634310662; cv=none;
        d=google.com; s=arc-20160816;
        b=jbu/aXCZA5dYFknE52K9y9yWnZwaPTmU4RcUOtTsmHICeylDKo0BqGyifSl0Xb5DtN
         I4qE+lLuh2r2IIL9D92wtUg1YNZHF57U287x8Uv3WkSLAAT13Hsl8TEzE9eENomd0Ztx
         wUEFaVBzy6GvLlYn7ugH+lk/dd1ZdGX8i9MRWwIDPW6zmbfZ/rO2kbh7OReRZSibrwnc
         gvda2/2aCkLsemzxJS06jTqkCWPs4PGONGDyT0gSx0849ES3LbWlBmQtzSjhYyOrz7Iv
         NrTrr0aqiGBsSzfspsHG0GtN+zroeT8pxoPFO7IQe6l1FyJO7+1vWwVm7AOI5O6MKdRS
         EUeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pKgc3kfAcqWF2MhHF58AuaVcPR4kIXS4KUhvKlSxUvE=;
        b=z8JkL1dKAL2/YkoFORqpahH2NoDTelJ033WZ+TAzFGxomV0Q0WjeS7HK/FmBRvyIvc
         v7OLS0tZ9gepVrXYxy319WN+u0oEVA3QPUoA20m6eyncuTFCJxORmwB8s1QqZIVNDK21
         cFM99V/y+z2EYpffrqVHxsjWWEWzy+SYaLguYzLSe/kVgsiiwNDg2NU4JLE+fBrKR28g
         7ChtCQsj4pbsanmm4tk0whxbFw+eRc3X+tfa4vD9T+YslIU9duYZNsYAVI7prtv6ZUQj
         mObwMBDS8vAUsdOncK0/gTfaA3Ps9QMCaz4c8/8Y1XnqFJNZfpUYJD9TCDGuBKcaoMr6
         /0XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=SifqW+tm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q20si403287oot.2.2021.10.15.08.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 08:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=SifqW+tm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id D86516120A;
	Fri, 15 Oct 2021 15:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634310661;
	bh=3jYoDtUPdFBEUryZYNHsyBzPurObUQOppTxdHPamp+Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SifqW+tmi83vgBOT/JG7an3SFgEf3U28avuIKl5gdn4/f/gwrbRGm3iB33QKZMh2h
	 l/YFf6zbXWcmWmBz3JoYpQacXmxoGeDyp2fEr9h6qQ+iY5x6Y7R9Jxum9CMNImVdbE
	 Z9xC2Ny5MQVrzuUhc/r9+Pk5Rp1Nl1N+SSUMezPA=
Date: Fri, 15 Oct 2021 17:10:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: vt6655: Rename byPreambleType field
Message-ID: <YWmaAqf8pusZGoBd@kroah.com>
References: <20211015102444.90753-1-karolinadrobnik@gmail.com>
 <YWlj9x6kwYUT1jlQ@kroah.com>
 <85dfe2c18e7ec4bd5ae67f7a81ab6197a82e0d86.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <85dfe2c18e7ec4bd5ae67f7a81ab6197a82e0d86.camel@gmail.com>

On Fri, Oct 15, 2021 at 03:47:46PM +0100, Karolina Drobnik wrote:
> Hi Greg,
> 
> On Fri, 2021-10-15 at 13:20 +0200, Greg KH wrote:
> > Do not do multiple different things in the same commit and especially
> > when you do not describe them in the changelog text.
> 
> I wasn't aware that changing this preamble-related variable would be
> counted as a different thing. It makes sense, my bad.
> 
> Would you like me to amend the message to say that I also changed
> `bb_get_frame_time` parameter or just drop this change completely?

I think I already answered this :)



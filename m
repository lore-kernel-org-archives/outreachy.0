X-GM-THRID: 6670157635256320000
X-Received: by 2002:a6b:8f01:: with SMTP id r1mr16767804iod.27.1553064499677;
        Tue, 19 Mar 2019 23:48:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:80c6:: with SMTP id h6ls479411ior.2.gmail; Tue, 19 Mar
 2019 23:48:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwV8FGaZH1T+FFRK6WT/jBaKA9ek+TDFKuyjxHOWf2XQv7fI583p5Tt6G+UmZZi/K11wAia
X-Received: by 2002:a5d:899a:: with SMTP id m26mr2501119iol.5.1553064498852;
        Tue, 19 Mar 2019 23:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553064498; cv=none;
        d=google.com; s=arc-20160816;
        b=yy4EPFjsDOQovp3Of8XXnvOrfZrAupJWgoDM8q/o4+0K+YJ53Tfn5J3uzAIDBy1NaT
         gfGzYAjpZuilYVVcUsWrFgswjvSBfuheD4+SBEQxWCfCtzgAWFFN8IwezzK3r3LR68I+
         WH2VcOkhcDImtP5BLbuoq8ilCBeOarstEAaq3otiq/SafYRnM8lfVU+JmsrAkZDzGzMP
         BaEwi4xQcyTaxAZho+zTHo3ryTk94VlQk9yeHYI87XKlA7acaR6bI8v+nMf5+MvjUOzJ
         4XA6YMjaW3kDkzcck3mZCQ0ugJ7d7JTNg9nKH9PI5HRdRqQDqtv2xs5Sx7/4EKcTb2SJ
         WsMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TVPDsqEfnrTJ9TgzsqGXoa8RN/vx3cWvSMQa+YlhWdQ=;
        b=0fja/xOJZXbCyo6WTkqRuVvtOgh2YPUp+2ku3/IPhdLYZHF1WKDKBY/GqAxjsY1Wm7
         vx6ip0Wczr/0ZnpTJZ+NHtykmgZvFZQ1JeF96qUbOLjEzvci7JUZ/i/M77J7QMgVDFbp
         aOiPz5SQLEQK0c8kPauy3Ybg62/1krZrcVt4+xRihiPUmf68Kx7wwv/n3GJHfORvLeN3
         eH9NfeBZ3kQaZCU6avrEe1fVeT1hDnygYHi+l85/mePlLme9PpvIUSf0RhThXTMZNlp9
         K5aOu9WznqgQg/4Hczo7Iemqes+eIEPRiodMsshLrmVKHRUUMtpa0kaIjTnw5WSkHiuj
         jyxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1iFz8Y3l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 65si236286itx.1.2019.03.19.23.48.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 23:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1iFz8Y3l;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 908502184D;
	Wed, 20 Mar 2019 06:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553064498;
	bh=ObkbEIkALwSEdCdxB5+1j21Jy/KVV4wEFAy0Fmlhlp4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1iFz8Y3lGrSlcrd5D750jv5GaB60GNjjwThPweMq1xw9wGl2WNpkazJwo6aXEAwqD
	 MUch/zqHXroE2pIWun0zSKeMBmlpMmlD3Ua4hrzlCuI3zFDAYUnL2hSb8aBDMEC856
	 mWWT1SQ7yR6ORZLTbYwrgWlcxnCtoVhZh4nQ5asQ=
Date: Wed, 20 Mar 2019 07:48:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 17/17] staging: rtl8192u: ieee80211: ieee80211_tx.c:
 Adjust space around else.
Message-ID: <20190320064815.GB11556@kroah.com>
References: <20190319173759.4853-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190319173759.4853-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 19, 2019 at 11:07:59PM +0530, Sanjana Sanikommu wrote:
> Fix the spacce around else.
> Issue found by checkpatch.pl
> 
> ERROR: spaces required before that open brace '{'
> ERROR: spaces required before that close brace '}'
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Where are the 16 other patches in this series?

Please fix up and resend properly.

thanks,

greg k-h


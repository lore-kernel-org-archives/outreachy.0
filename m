X-GM-THRID: 6661416853760376832
X-Received: by 2002:aca:d597:: with SMTP id m145mr14216595oig.51.1551184849325;
        Tue, 26 Feb 2019 04:40:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:62c:: with SMTP id 41ls7202065otn.2.gmail; Tue, 26 Feb
 2019 04:40:45 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYSe6SzQ/wVd5Jd+lhoUTc48WJ6UYQTRQsJAye5fxcVqCwXPijMASewSlCb9j49KNKG41vD
X-Received: by 2002:a9d:6f0a:: with SMTP id n10mr13390370otq.47.1551184845799;
        Tue, 26 Feb 2019 04:40:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551184845; cv=none;
        d=google.com; s=arc-20160816;
        b=Evp6Sp9do8nAyZ+NJrkZe9g8YPJxmFQFwAUpWfFvMmc4IOUpJL9/HzdP9kRa/bosZt
         6R4+sP2OliU1b8LrkUceZgccTDHc4aR0ce3nOshgsnmZq4AQEXqwg3b9mOgAP+tclwpx
         fp3IEy3znfEiqMxsWVTKai4AZGOAH/pk8lVTW3uFbrE+LNkXeIhV3W9ilqhf1xIa9oeD
         6BSYK4FIdyLb7zeJnJDeE4Xec4Yj4O5FxQYCc5mXG5UVXLSGblV8dRLpX15CYcLFzd89
         LTPbL3S+swWttu+p0oxZgZmcI2PpnwOEO7plfaxiElqXBfMrhM/iont7CUpA3TF4bhp5
         uDVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=36G0x5ewdpQ5UzdMmYyBU6XTiI4zZkw4vZ6DUVYopQY=;
        b=NY8LsLCK6NWGyrNFKvaKP53P6QKujuibBhzuGiXetQjqAPMUnGv24zVYnMojteGRuV
         9XPkdai5CdGneNjppvjoNY+CpnMIebSLWVHOsz+Gm2dYv5/hl8BtMQbhCHCiGEWQe2tL
         NwQ/qBQsbyjnwTWj0TSgDvB9riUE4SScLsTxcS+4IRKOzfqcLOFlJUvOOIeh4b/I9+Qd
         R8lPKkjLz0wOsxspKOIwOHYpakEx8yrSj2XZoJQHLOFNo6/RsPfB9/zE3LlZZ55Ty76L
         ojMM+sUHpKuCyLnT5kw/G98F/+g7FKBHhCjNlW3zcV+F44ECyP9nMW24bgbZXYMRkUd9
         /K4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ph05gMtp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id m3si508173otc.3.2019.02.26.04.40.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 04:40:45 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ph05gMtp;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id q81so10181275oic.5
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 04:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=36G0x5ewdpQ5UzdMmYyBU6XTiI4zZkw4vZ6DUVYopQY=;
        b=ph05gMtp7H07zr6iaP5K3ox6t1omGfrrzYJmQ+vekeJKWuL6DTGqQ2PrBtnRY8Fg3Q
         jM6wqF2JTzX45AunSYXVpZZTmIsMsAmmR8uhuZuQ4nv7kwz+IuaNAtM0WFfIf5s2yQbY
         iecL4mijLcWBpTs4EidWLPBXGz9Z4RztON6LryJIqbOgnTqWCapolVg0KG0SqCjnze6f
         Sul3fbTuKQAIDZ2+Qc87zG3TgujWLlDNVUXBzHc6M9CC2rDDehONJ6VvGN2/t/7f2WFm
         RuSKIDoTeVomFLaU3bAZwsqNlvhDwsmVMZS3bmigTIYmp0GTqv28kpHdJpIgXd9XQng4
         2F+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=36G0x5ewdpQ5UzdMmYyBU6XTiI4zZkw4vZ6DUVYopQY=;
        b=LokP85v/fz6GKWbUVwmw+Bs3fMMzWILDYSak2pKAp9rUfZdy23BS/MuwZEHTjOBGuh
         6hKMpDi20Ayf2hyRjs53Y8qHwIpKU/by57P/hrpFyM1fdMxEZ5voi9D85T+B/aBgT886
         Ubtkn831ecFZap9UjkJ4l+2Mm3O1kkjl7H5LAZ4hqgGUvsV5kr5h/s8/5Yx3rPTZbTKo
         cDJsXjsHR5OAey3ggzFvFRubq30xBWZvTAtXI0+pEAixiwjO6UQxQzD/GSWo85jrFIIY
         dodUEMFtnCsD9ItSgV1uJO/GTPSUngyZ0GJh/+Z6vwcw7wLhs4RXsdY5LPo5x8zqlF5s
         Nt3w==
X-Gm-Message-State: AHQUAuZ+0r/nGYzvS3yB5Vf+sVqKnuST+xxwNI7scUrSYpZL+IZLckLx
	+QYBuhQ9DZ55vZy6LAeZTnDUO1gJpPI=
X-Received: by 2002:aca:c142:: with SMTP id r63mr2266780oif.98.1551184845358;
        Tue, 26 Feb 2019 04:40:45 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id w200sm5350238oif.13.2019.02.26.04.40.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 04:40:44 -0800 (PST)
Date: Tue, 26 Feb 2019 06:40:42 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Fix check - Lines should not end with a
 '('
Message-ID: <20190226124040.GA356@madhuleo>
References: <20190225180235.14346-1-madhumithabiw@gmail.com>
 <20190226104429.GA20834@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190226104429.GA20834@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Feb 26, 2019 at 11:44:29AM +0100, Greg KH wrote:
> On Mon, Feb 25, 2019 at 12:02:35PM -0600, Madhumitha Prabakaran wrote:
> > Improve readibility
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/vt6655/card.c | 11 +++++------
> >  1 file changed, 5 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > index 5dedc7aad384..6042f0bcd3f8 100644
> > --- a/drivers/staging/vt6655/card.c
> > +++ b/drivers/staging/vt6655/card.c
> > @@ -62,12 +62,11 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> >  
> >  static
> >  void
> > -s_vCalculateOFDMRParameter(
> > -	unsigned char byRate,
> > -	u8 bb_type,
> > -	unsigned char *pbyTxRate,
> > -	unsigned char *pbyRsvTime
> > -);
> > +s_vCalculateOFDMRParameter
> > +	(unsigned char byRate,
> > +	 u8 bb_type,
> > +	 unsigned char *pbyTxRate,
> > +	 unsigned char *pbyRsvTime);
> 
> There's so much wrong with these few lines to start with, you can make
> this look a lot better all at once.
> 
> How about this change instead:
> 
> static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> 				       unsigned char *pbyTxRate,
> 				       unsigned char *pbyRsvTime);
> 
> Isn't that much more readable over the initial, and even your change?
> 
> thanks,
> 
> greg k-h
I will update and send it

Madhumitha


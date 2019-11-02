X-GM-THRID: 6754503275543789568
X-Received: by 2002:a81:7708:: with SMTP id s8mr1241000ywc.2.1572691524234;
        Sat, 02 Nov 2019 03:45:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4816:: with SMTP id v22ls1341502ywa.0.gmail; Sat, 02 Nov
 2019 03:45:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy2y25EtsIESB2dc0XKe+GZTpq8+L8TBlw18WwSJFSAkOgns4DaWBJs7W1Prl7Y+ecb6k1N
X-Received: by 2002:a0d:d650:: with SMTP id y77mr8848692ywd.395.1572691522638;
        Sat, 02 Nov 2019 03:45:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572691522; cv=none;
        d=google.com; s=arc-20160816;
        b=VNohrMBPTtPqkEU9Zewr1vJf086TVZt/MqSFaZABMYnjlsWgIKxrxUCpxqvOYkS7Qg
         3OfZ9+g7mPzqJmcnlD2xkwYwa4c3bahJV/ZxW6xCn9L0+FAr/gtnYjtWf95hzbB6lqMb
         nzazyP2SEbC5wFzQz5Hid2yDZjGyIX5WWJV2Ag7Yc0VV5+iuGvB84mWXNZdkpcJty2ns
         f5l6DL41O43BZ0OPz7ydTianofxosUSkeqE37nzMbsjWoDhBZ+t0w0StQ+mJnmbTs7ck
         vORxcKlr4X/46Xtghs9Y8RaPWr3+I09Qf++Fr1+jhtF+R70ETVqTOMMGkw+8LfUp8PG7
         Ts8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=LfFFd/nJYfHJFsqVGsEoQtR60v9p4ap2qOO4J0o7kLA=;
        b=eVa1ATHanlwqxuQKhl58N/iHwLPjQDbWkrcy9TmI+07FDuM7BXOHrOZq6r94IiWoYm
         NJr3sfFM1qw0AUpw9tdJfVhvDp3IEJ5B4Dk32XV+MMPNuXOO6Fb5q0JgWkZcRNskTi6S
         YTmMu47SBBvud3xpu7kUG5fWdzE9LsHGBljfdCmSbc3gwpyPa0WQSk/QIDkGt8O5EMq5
         qDwiS3NTtCwymKktna4yXkBl+i0fn9e2Itu0ImWSMaarlpKGfZqTea/GMOxH7tA5eHSH
         bCwgQ4DvKJF2dSgazltvkbbO9AfMrXA3xorg8uLYCqrJIsPP/JgvrbJl1N9OG9zMCSPQ
         WhXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G66wXHhp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 5si574647ybl.1.2019.11.02.03.45.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:45:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=G66wXHhp;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 22A8B20679;
	Sat,  2 Nov 2019 10:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572691521;
	bh=LfFFd/nJYfHJFsqVGsEoQtR60v9p4ap2qOO4J0o7kLA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G66wXHhpvRgZqtVsKX7CBKUn66nwIpUs1nent6PqdSoYQ+PurnPvwsMBfiq+ynUkh
	 eaUy8v2Q7jPraueqfRixX1I0NFiAEUYTnv5O+NLmKWpJNbLgu1hn/imonsmtO2mun6
	 arAlOOnxsY7jb1pbQfLaP2sT5l9b/LToIzcJql/Y=
Date: Sat, 2 Nov 2019 11:45:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr,
	m.tretter@pengutronix.de, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: allegreo-dvt: fix warning of comparison of 0/1
 to bool
Message-ID: <20191102104519.GC184849@kroah.com>
References: <20191102004213.24909-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191102004213.24909-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Nov 02, 2019 at 12:42:13AM +0000, Jules Irenge wrote:
> Fix warning of comparison of 0/1 to bool variable.

Again, this isn't a "warning", but just a coccinelle-noticed
recommendation.

thanks,

greg k-h


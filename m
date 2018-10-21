X-GM-THRID: 6614699391929286656
X-Received: by 2002:a0c:b0bd:: with SMTP id o58mr25389808qvc.26.1540116235849;
        Sun, 21 Oct 2018 03:03:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:95ba:: with SMTP id s55ls15475670qvs.1.gmail; Sun, 21
 Oct 2018 03:03:55 -0700 (PDT)
X-Received: by 2002:a0c:afb2:: with SMTP id s47mr26559090qvc.29.1540116235190;
        Sun, 21 Oct 2018 03:03:55 -0700 (PDT)
Received: by 2002:a37:4d4e:0:0:0:0:0 with SMTP id a75-v6msqkb;
        Sun, 21 Oct 2018 02:29:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62u8ln1Otn0kGxn+VqXg5SJFVYNy6ioTqafNpWrczWEnj5tCe1mqZwBrQIEo9ja1PRrDbU0
X-Received: by 2002:a19:20d4:: with SMTP id g203-v6mr399440lfg.32.1540114184365;
        Sun, 21 Oct 2018 02:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540114184; cv=none;
        d=google.com; s=arc-20160816;
        b=Xbm5yG3mKE/npgjjgTA4Q/kSaBN7dS4PAgvTXJCRPhlDYytxnLdwZQoHtbD+S6rtir
         jZk/SOO21ol6FW/rrJTbWAySiLF7uAJ/o4jUstPxE4Imvd64t6gdYLtveXEv6+Ypqiw5
         bO2ewU8BoMocrY02X0t6/1INHB5ERBMLimyHrI4c1glCVkxudxszlsEvg3xVvW8c9dZ+
         jg45yELLMcg9S6IsDEF/oM1ORuwmWRTBDr5jQRQSmV3ur+8J6onnZSbxVgiu1/MAZiGn
         uTLBXJ2LrHKW8bvfElFo6+g4pnVkW3ncCDElntZoCfoxOihO92F0Wtxs4x5YqPTkVvgx
         ZYgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=dkim-signature:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=mAd9Zg8Y4VUte4+0CYil3USyp7CihOl7TO2JWuwN8cw=;
        b=rXArRouKNwrb72irF77OJPRDaLw2sSHfw4YXG8JG53kr9RLoRRidDlDEHponJUMlG4
         K43pV5xKsjtXJG58fRuXe0AIjeP2HOKv1WHNqm3Qjy14W8ECExvOHrMGy7YtVEHhxpcT
         Hp9PHHK4Lcy77SOcv92BZaG7FuBfXm3MX5r1akky/kHpzeddV+J57dlE6ZwCkDD85MAi
         9PVBjv/UyshKUFTlZodSWS8JvCvmPZiVbfxOntQgy94PFp+HBy4GP2yH5TTVDKevuN2C
         MmYpmhPEiXqcXgtKtUW3Ee/Hi7D6WFuOdhrnEc7neqtyQ8IdDPF8FttXvUYEeqsj23OA
         v09w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@interia.pl header.s=biztos header.b=e5gqxObk;
       spf=pass (google.com: domain of sst@poczta.fm designates 217.74.65.157 as permitted sender) smtp.mailfrom=sst@poczta.fm
Return-Path: <sst@poczta.fm>
Received: from smtpo.poczta.interia.pl (smtpo.poczta.interia.pl. [217.74.65.157])
        by gmr-mx.google.com with ESMTPS id r81-v6si976863ljb.2.2018.10.21.02.29.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 21 Oct 2018 02:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sst@poczta.fm designates 217.74.65.157 as permitted sender) client-ip=217.74.65.157;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@interia.pl header.s=biztos header.b=e5gqxObk;
       spf=pass (google.com: domain of sst@poczta.fm designates 217.74.65.157 as permitted sender) smtp.mailfrom=sst@poczta.fm
X-Interia-R: Interia
X-Interia-R-IP: 188.121.17.172
X-Interia-R-Helo: <x220.localdomain>
Received: from x220.localdomain (ipv4-188-121-17-172.net.internetunion.pl [188.121.17.172])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by www.poczta.fm (INTERIA.PL) with ESMTPSA;
	Sun, 21 Oct 2018 11:29:42 +0200 (CEST)
Date: Sun, 21 Oct 2018 11:30:02 +0200
From: Slawomir Stepien <sst@poczta.fm>
To: Nishad Kamdar <nishadkamdar@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: ad2s1210: Switch to the gpio descriptor
 interface
Message-ID: <20181021093002.GC7662@x220.localdomain>
References: <20181021061924.GA11073@nishad>
 <20181021083138.GB7662@x220.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20181021083138.GB7662@x220.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Interia-Antivirus: OK
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=interia.pl;
	s=biztos; t=1540114183;
	bh=mAd9Zg8Y4VUte4+0CYil3USyp7CihOl7TO2JWuwN8cw=;
	h=X-Interia-R:X-Interia-R-IP:X-Interia-R-Helo:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	 User-Agent:X-Interia-Antivirus;
	b=e5gqxObkL0dSFHaKhYDwDH04rBO70kgzyGM2W43dLE4XYC/xYKAGfZMLof2+rHsZP
	 YrcuSJ2ApqsTRl3iZ5Qk4wj5K/cJV93kt0T5YuEVwfESLXaCF3Qt20wMuU4xlm07r0
	 7b1yV3HBBxjEEAii5/pVaiIlcYxKmegCfsM85/Vs=

On paź 21, 2018 10:31, Slawomir Stepien wrote:
> On paź 21, 2018 11:49, Nishad Kamdar wrote:
> > -static int ad2s1210_setup_gpios(struct ad2s1210_state *st)
> > +static int ad2s1210_setup_gpios(struct spi_device *spi,
> > +				struct ad2s1210_state *st)
> 
> This change is not needed. The st has the spi_device inside. Use container_of()
> macro here.

Wait...what? I mean use direct access using st->sdev.

-- 
Slawomir Stepien


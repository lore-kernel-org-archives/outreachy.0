X-GM-THRID: 6615663139748839424
X-Received: by 2002:a0c:8084:: with SMTP id 4-v6mr1530381qvb.31.1540382208142;
        Wed, 24 Oct 2018 04:56:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:29a9:: with SMTP id 38-v6ls1797007qts.8.gmail; Wed, 24
 Oct 2018 04:56:47 -0700 (PDT)
X-Received: by 2002:ac8:7555:: with SMTP id b21-v6mr1606683qtr.16.1540382207627;
        Wed, 24 Oct 2018 04:56:47 -0700 (PDT)
Received: by 2002:a37:644a:0:0:0:0:0 with SMTP id y71-v6msqkb;
        Wed, 24 Oct 2018 04:07:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5em9cK636hXS0W1Ph3ZDqU9SG589pdPJQAF/Y4/f/rYTaAKUM+YFG6wmyRKylY0xX2yt5bj
X-Received: by 2002:a17:906:480f:: with SMTP id w15-v6mr332082ejq.8.1540379278054;
        Wed, 24 Oct 2018 04:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540379278; cv=none;
        d=google.com; s=arc-20160816;
        b=a+apb9YL9qm38D8waCKRg26kEDrk3MtBA5AauU5jMylxUsbvPruMg9b1eGMr/p8fhy
         BQt/dpLFXiLaxcZOJXJ+RZmEs3ZidYt++eOgrjBXB/JWZAwcFlr28rz8TBLE5vW8RCv0
         G6nB2UkXKi56ECunj/sPmKsOUsurVG3IOzBDjHvOUIaAG/M/nUiLb9PTe9EubrlutZKX
         biVO5NirqL3zrff68PzMb7PjOE3CJ1n2W4t5nLUT85+qn/kNJVcohEfp4Kd/0UZ7ehPN
         ICFcKqksxfyyQxy8d41/yo9UJ9KtGaf+l0YdhIqpeQdodC/YmEVEfp2b2v/eFppYQ/JC
         kjOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=eHZj3v8FyrSWq4ui6uO1pU/okjaBpNGOOvsbgfYy0Ao=;
        b=QUTpKirOClSZ2E64bzEoYcIBv8vvfxoy8dJ6wVD7J8G8cxOujlvcsZDPqbZbn+TvSJ
         3g/kxl9s3YZVzec0Y319WvrrwknC1xQoO1M3sAma6SbNuU8f3wNXH7oTGFULZSv3EQD6
         0+F4DK6Ew1hDN6uaYZIx52Goj6Cfyphm+1H3DVHrz1MH5asgNkmcYV5Immox38RnLCpn
         RLJBQ92wM9cF7sR2dPlGgWFQgm+c3B/2KNHvbt5cngjJUlp2p8h7qMVBgCfzaLuSemXB
         Nm5jZNVZh8+bEQnHJwUtohh/p84rxIdlGnJpUvqW7DydBGvMwZ0en1xgdKsda5vhYFAS
         3Mhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@armlinux.org.uk header.s=pandora-2014 header.b="XvfJ/hyj";
       spf=pass (google.com: best guess record for domain of linux+outreachy-kernel=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+outreachy-kernel=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Return-Path: <linux+outreachy-kernel=googlegroups.com@armlinux.org.uk>
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:3201:214:fdff:fe10:1be6])
        by gmr-mx.google.com with ESMTPS id y16-v6si208493eds.0.2018.10.24.04.07.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 04:07:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+outreachy-kernel=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) client-ip=2001:4d48:ad52:3201:214:fdff:fe10:1be6;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@armlinux.org.uk header.s=pandora-2014 header.b="XvfJ/hyj";
       spf=pass (google.com: best guess record for domain of linux+outreachy-kernel=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:3201:214:fdff:fe10:1be6 as permitted sender) smtp.mailfrom="linux+outreachy-kernel=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2014; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	 bh=eHZj3v8FyrSWq4ui6uO1pU/okjaBpNGOOvsbgfYy0Ao=; b=XvfJ/hyj95UJ2ghAkRR7ZWrUo
	4Fi78vrzvUct7fyxkXVhQhYVy6HPr0vWbp/FfporJcUDk5bWeXdHHfXtK2/lJdYaQx23qONSBwZ2G
	qYK2i2xmxWXxgblDY1A5hY8z9vpHToR4rD5KoqcCzawpLJYAB/vrDuc/Pau+ZD/uXiZfc=;
Received: from n2100.armlinux.org.uk ([fd8f:7570:feb6:1:214:fdff:fe10:4f86]:54503)
	by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.90_1)
	(envelope-from <linux@armlinux.org.uk>)
	id 1gFH0w-0001hR-8D; Wed, 24 Oct 2018 12:07:50 +0100
Received: from linux by n2100.armlinux.org.uk with local (Exim 4.90_1)
	(envelope-from <linux@n2100.armlinux.org.uk>)
	id 1gFH0t-0000B4-4D; Wed, 24 Oct 2018 12:07:47 +0100
Date: Wed, 24 Oct 2018 12:07:45 +0100
From: Russell King - ARM Linux <linux@armlinux.org.uk>
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Kimberly Brown <kimbrownkd@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-mediatek@lists.infradead.org,
	NeilBrown <neil@brown.name>,
	Christian =?iso-8859-1?Q?L=FCtke-Stetzkamp?= <christian@lkamp.de>,
	linux-arm-kernel@lists.infradead.org,
	John Crispin <blogic@openwrt.org>
Subject: Re: [PATCH v2] staging: mt7621-dma: Add braces around else branches
Message-ID: <20181024110745.GV30658@n2100.armlinux.org.uk>
References: <20181023211142.GA2661@v>
 <20181024045653.GA2864@v>
 <af4594cc-05c0-672c-d560-b50705ceaab3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af4594cc-05c0-672c-d560-b50705ceaab3@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: Russell King - ARM Linux <linux@armlinux.org.uk>

On Wed, Oct 24, 2018 at 12:45:44PM +0200, Matthias Brugger wrote:
> Hi Kiberly,
> 
> Thanks for adding all the emails in CC.
> I would encourage you for your next patch to distinguish between CC and TO.
> You should send your patch TO important maintainers in the get_maintainers.pl
> list (as default, to all of them). If there is someone you really want to look
> into the patch, then add him/her in TO as well.
> 
> Put the rest (people and mailing lists) in CC. Why? Some people filter their
> mails so that they can concentrate on the mails they got send directly and look
> on mails they are in CC with lower priority (maybe not at all, because there are
> too much?). So it is important to have the maintainers in the TO list and not in CC.

+1

I'm glad that there's someone else in the Linux community that agrees
with me on this point, and is willing to speak out about it.

-- 
RMK's Patch system: http://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up


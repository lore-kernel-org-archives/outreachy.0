X-GM-THRID: 6674450234072891392
X-Received: by 2002:a62:5304:: with SMTP id h4mr1154539pfb.38.1554140448981;
        Mon, 01 Apr 2019 10:40:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2b82:: with SMTP id r124ls4187883pgr.1.gmail; Mon, 01
 Apr 2019 10:40:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy47A898w+BmapbjyuxHNvn2Tf+WbmExdgNQ1ILOM0gK4atC6SoYVVq624SFmuJZKIgu4PU
X-Received: by 2002:a62:75d8:: with SMTP id q207mr1370137pfc.128.1554140448207;
        Mon, 01 Apr 2019 10:40:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554140448; cv=none;
        d=google.com; s=arc-20160816;
        b=LMrA3GbSGVZRvPP7TNu4FHA+szLBFDIcK9GwFr+UbaVl6V7nqN6x/V7UWI9fO4fyYb
         wIE2u0D7qgvWWJAzzq0SNugx2NvRBkqqw76JvMKWSanCjzAfLki01wMQe1ZXbGywX3um
         e1EiNjiJitLmw8OqjRHvD+YnYyeqJ+v/bOBACXFwz7mW9ea8bDe/u1Ac9qVOszE/0q7l
         Eoa+NbFI+OHEZLmZVEffv5BgwqviNZisB0Gdjl5OcSzMMCajuqNynFHxbiWJvUqqaXE8
         mLEdYQmIcTBH8X0eJyXrFxqxxO9k2noBl3rbcG6PMYo+maA3d8n9XY9JkF4r8QdccrbA
         grQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:dkim-signature;
        bh=VHlafW6cimUWsQ+0rqpNB1bfflqcKh3Yn7rWBmyrTNY=;
        b=ZIPC5hwPuvCVEctUt8g5iQyHY2ZcIdzr+fyj46dtBv9so7nezNo+YSmB6kAwTam2Rw
         YpigmzxsCjqfEsT17tx7KdKEkGEtBE6NwXonZCclOQe4ss/FMO2jgXeE0fbHXabj5zsD
         sNODlbtPIdTOQJu8E2IntGkhOxLEcAGn/aaQkVzk/ZmbpIpIyvUcMohOU3HwJ8XWDyd9
         zlqYvL9gwEbCBPbyEogub8N1n00LMCDoMkV9b1tjhlF82CxLrnJdlj0m1FTMWsq1AAfj
         AdnchGMK4n6PTfRPR95cGSyjQt+8yQ9mDSu/RgFUf7FzA1clKj/DcFnlQeYF2CmV74e5
         S0qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=Hex1WWjW;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=d3Y2jsnI;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id j11si479924pll.5.2019.04.01.10.40.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 10:40:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=Hex1WWjW;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=d3Y2jsnI;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 2BF6620355;
	Mon,  1 Apr 2019 13:40:47 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 01 Apr 2019 13:40:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=V
	HlafW6cimUWsQ+0rqpNB1bfflqcKh3Yn7rWBmyrTNY=; b=Hex1WWjWtWCnBnwri
	YLadK/Ennh4SJBRYgG//6wpBRn1TY+Mw3yuidrpeQkHeEf+5opxsRFLK6wUWRzHZ
	pHPj+xiKaU4vRWWM3RQNhf+GySaA+JDgY1H1x+ZHNPXyaKIT1+I3eGZrmmzH73HH
	uHaJYDoIC7vM1YImBa9W5SLLcdBRY6bFHcO8saTQWVQ6JD0+geqdUCJGuhxplIaM
	IcxwVE9pYbr/RaBWMWc6aMnbwkRa7ByHBiCMogI8QjrpiPBr1oiHcpVl25j8w9kF
	3ukpVyLvEpMzDyXj08vvjGVBm480KahSQJ1W5DMcmznvfDMKgkxPE6PrFnzFXmy7
	bCq8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=VHlafW6cimUWsQ+0rqpNB1bfflqcKh3Yn7rWBmyrT
	NY=; b=d3Y2jsnIshimxh8kT23ryz4J52WtnpkozWhaC1/HnExdCJ+U3i9wQ8RFA
	+5i9zs0efFkoq7NwE0p1pHNI8mmHkBuyQZQ1FiY6P7A4/iRFMiR8ocRt2H+iLQDZ
	vi1tsl+w7Zmv+Fk9XWIX+OL64PDMQ9F9IxhAZxXiqsagjGzQWpW7prjnF5iOrHCZ
	1Oyq8/ZWPrzG6tSXuSurswG1Y5zZlY6w/SnM7lER8p0MMcMh+O6qoDmrpkxwF+c0
	FlyHf+7QIMuGaMDSnlK8NI00XYocmT9k5nyBKafGMYht2wZYh0fosNWNmf4j5c7r
	5tXpnfDX760ah/rL2iaIbR0I6Mh/Q==
X-ME-Sender: <xms:Hk2iXFEyQye0RFlCMnB7uz4xutcJFVkE_E3ToLKAmK0jAMADnHBQrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrleeggdduudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtugfgjggfsehtkeertddtreejnecuhfhrohhmpefirhgv
    ghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrd
    dutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhen
    ucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:H02iXLyEbGkeYkssljYzmTitMk_d5J09HUt7A3wwzIm5zxXJb3zI4w>
    <xmx:H02iXCike-wTEUM0zQcfHV4S0Qm2gFDuyZTCzYW1-3Pfc6kE9s4mQg>
    <xmx:H02iXILJX-WhBKNqszkA7-LNze5PLuiEX0dao-1k46Ir78lC0oYZ4w>
    <xmx:H02iXM9CHMceUPdxHA2j5oiAxcsrfWwUW8C-9LgrtRyH8TCcLsYoNw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 8206CE4210;
	Mon,  1 Apr 2019 13:40:46 -0400 (EDT)
Date: Mon, 1 Apr 2019 19:25:10 +0200
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Fix formatting issues
Message-ID: <20190401172510.GB16636@kroah.com>
References: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1554028003.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 31, 2019 at 04:18:35PM +0530, Payal Kshirsagar wrote:
> This patchset:
>         -Removes spaces and adds right number of tabs.
>         -Removes spaces before square brackets.
>         -Avoids camelcase variable names.
>         -Removes space before semicolon.
>         -Aligns to open parenthesis.
> 
> Changes in v2:
> 	-Variable name “bl_inserted” changed to “inserted”.
> 	-Variable name “PMK” changed to “pmk”.
> 	-Spelling corrected to “inserted” in log message.

As I didn't take the 1st patch here, I couldn't take any of the others.
Please fix up and resend the whole series.

thanks,

greg k-h


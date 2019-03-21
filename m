X-GM-THRID: 6670726051308503040
X-Received: by 2002:a24:3d8f:: with SMTP id n137mr266092itn.96.1553194951819;
        Thu, 21 Mar 2019 12:02:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ac54:: with SMTP id m20ls1715212iti.1.canary-gmail; Thu,
 21 Mar 2019 12:02:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyiO0yLIRs8swyQdv2rrwOzBDRWHj6Drood/kyDUmE7p/onddgBqUXnImU8Dy0GmUWzgBsr
X-Received: by 2002:a24:99c1:: with SMTP id a184mr252259ite.21.1553194950583;
        Thu, 21 Mar 2019 12:02:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553194950; cv=none;
        d=google.com; s=arc-20160816;
        b=Svr4smoHhmg2XCR3xwxTrvNtskASBLrZnMr+wVFsulFOHKA/2xkgtG+GWRbsGsoSL2
         O43s7kO3tf28RU2BRVhnKKXpzOI0JIxNn2C9WY0CzofFc2SOLRx5j5KcQ5WeiIxrXZj+
         KbUUXgI2JFBMNynsKmxxw0AgzKZmxxlCDnNt8f6m9EvRD1iIiQpyeX/QR8+hHjO2W/24
         OTS582ca5A8tpU2XVT3aDCjfJrlMlFPmLgl8kwSDwrU+ZWq33KbHGQIFxjjyCQ4AuC5/
         RUfxZnKTdYwrTySS2Ut9xlmZLHy0K2fUNS6NNO1PznKZfOfSrrVx2SMKofRDG9IlKtQ6
         g+mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=URZ2bZX0q9j1W1P8DUVwyrC/WXPA3bwizD4/BTg40Ug=;
        b=ACabq5X6g+xO8TwQjN5v8hwowVIt2xJCgL223+r6P8Fc7NUtU661NaRADkUnEi0NWY
         vAqxkqy6rbLfIWM5+2W7U0zgAfXLOOIUNE6cJKwBIigVxUbJ2iwWsLizAnrZJrJSLQCp
         cNXxxUIRdLBkUasDMTbfyWFUF8d5rxnjerv+JrCF0oNwuorUAhrz0jb77Vpa1TN27WmM
         JsMJNJfYYtygr68ZodZaj90hIkqm5QFkBCdvsTrIVIzeh4RbOYfCkMb77VldzDAH17C5
         +zNUyWH4p/kJ3PIJsUZ/Iqlz71EpuRXxuJhNFWFWMJrYnadinnfEwABYl81uHTFNdZsC
         MoZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="Pr57/zev";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="AI/NgpmW";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com. [66.111.4.29])
        by gmr-mx.google.com with ESMTPS id u1si533531itb.2.2019.03.21.12.02.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 12:02:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="Pr57/zev";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b="AI/NgpmW";
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id B97BD21F93;
	Thu, 21 Mar 2019 15:02:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 21 Mar 2019 15:02:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=URZ2bZX0q9j1W1P8DUVwyrC/WXP
	A3bwizD4/BTg40Ug=; b=Pr57/zevB6F35M8ZvedLELEyidArUPAUtcvCDSHKWpt
	kh8l6GXqOx7wTT0ffLVixV0UL729YC0Q6YYCnYo+JoZpnQR+p/7KZzJd1wRS7C3g
	5siW5Ihx8ijzdwcfmGlcBrCczfMKVJjRaT0zQ6Vg1ZcSea928MZn1igiD1BtYq0j
	TwcgXZMhU1f/mrkGrWCh57ITm4/A8PqWI2EkfjxMwgMzDabcFUFjQcpKB9rQO6cw
	IiVsGZvJyT+4FMFt0mgsiFzVhPgEVuUu7ny2KWeKz1GYOTkanIkwbJtS7rwxCpn4
	zVnQUdmXJnv7O45huTsc+25iX1Ps8QnmDRClByIJcBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=URZ2bZ
	X0q9j1W1P8DUVwyrC/WXPA3bwizD4/BTg40Ug=; b=AI/NgpmWDhla0xOv+jlqXQ
	0YLaWmFcn/nBPRGqhOMx/CJjARnaaNZnvTI0n+anJai+FU0Zb+u26/sosdMbRAi5
	oG0k/qT2MpZnj0F2iHeVcRJiFzOtdLlqokMhlF80I0QSInY3qvbLnudv8EkjNf5B
	uecW5l35UhSP6pRRN8pUQplzTkd7+18bEVff4Od3draOQl/qqO+8LMHkb+UgkIac
	N53m9qD58SkoQBIHemQLfa81X/iGTnzkqgdX5OFEWRrz/3ls0Hg6JaYmmds2X4KS
	9K3ZSM0ZHB0MNVIfsQUhKqZG1dxUmDFxI+bLOdLZ9uqN9KrEmtLITlmCv8Veqf7A
	==
X-ME-Sender: <xms:xd-TXATGheyEZ9uk3zDBZAfDQdsZvI-yjuf5ZthnOVvS2OpUbARvww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrieelgddutdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
    dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:xd-TXCXJwfUFY5owpMkHdnf-uIdGZE7C9aYYaliQUMnZdAhUVOWlHA>
    <xmx:xd-TXJvTPLkHi2-L3Y7rG802em4AMUoBWnFUr2l29lQ8rdbCor4v_A>
    <xmx:xd-TXAuLW9nUPMyFEAK_FYNr1P4pwYxAlp3igiFfxCwa_eG-Cs6SCA>
    <xmx:xd-TXEpkCq9maPZbyVFGnY-HGWtqzbQ3G_efwoQjzr7ionHlalioTw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 0D7E7E49DD;
	Thu, 21 Mar 2019 15:02:27 -0400 (EDT)
Date: Thu, 21 Mar 2019 20:02:26 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4] [Outreachy kernel] staging: vt6655: spaces around
 operators
Message-ID: <20190321190226.GA12522@kroah.com>
References: <1553160315-3839-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1553160315-3839-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 02:55:15PM +0530, Payal Kshirsagar wrote:
> Add spaces around operators

That says _what_ you did (which is obvious looking at the patch), but it
does not say _why_ you did this, which is what needs to be in a
changelog text.

Please fix up and resend.

thanks,

greg k-h


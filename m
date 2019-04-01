X-GM-THRID: 6674617337151225856
X-Received: by 2002:a6b:6215:: with SMTP id f21mr8996606iog.21.1554140427021;
        Mon, 01 Apr 2019 10:40:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d48:: with SMTP id d8ls3830747ioq.6.gmail; Mon, 01 Apr
 2019 10:40:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwLpu05I89C3k1VwrfE52hoUD1PioC8hH5KllGMYPpAC2yH9ArabelX1ta5Yb/2rE3M5qqN
X-Received: by 2002:a6b:bc06:: with SMTP id m6mr9448445iof.18.1554140426400;
        Mon, 01 Apr 2019 10:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554140426; cv=none;
        d=google.com; s=arc-20160816;
        b=lk7spts8eQl6HceMIpC4vmORwlDrbuv4ivKogYf9AT5oQrDkPgLI+ZNaHSru4SRBS+
         oziuWDloNiB5B9kQQZ7//bThbq/GlW3RZcI6IfgN9HcooUL7wc3/XGFDExV1rjsvOTKH
         WUPZ9mVRd13eZNmg2amCCEvOEGswsZPKFCQGTBYBdTR+F0pV7N26D09iscrtwx3MfYvd
         bpkvVuYzdjei92AAdbMu35tZ1mPSg/A12P3wr/bpdCPVevMgkGiiA7yNxu7NKxnWDM19
         NWd+fdctpr9fcVKIaPyHFUFqJxIIZ5fKhCJ5VqNmK7B4PBGAPl7zIEw6Sv+6b4pSIL7t
         RsCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=9501tqYkEwCV2D4gSULALmndAYHkZ5rSUah7z6BnhQc=;
        b=v5xAOneAbopbVhcfD4FQ8Ta7kk6FMy2FDsFZCcMtS/o8HwpfkzGPq1MCRLlenyYE9R
         SWN6lN+6Ns+gQCu9Tm10OqDd2dtSUVLWkoCjiIuTi8LWd4OR4N8gxLFb4NTy6qtvtTKi
         xKEZtRx0w/CcuzBGcU8hFHZiHbKVfNhRfVE0YrqIsmJWANlpYuBEUzkFPz3pbXVHHR9b
         QfZ3u9DSw+rWuPD6uZgmHebbKAHvhotO4Q7r/gbUVDlQTNE5IrMAfpZ6DreILL/p9FRK
         HtjRj/GrPyA6Dx4KIAfCAI820s4awGAioPYYMZu+nD06nDzGcHENDpfCj7Y/25qyLCAh
         9u/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=CZ4RRS78;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Ny8FWext;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id x26si577571iog.4.2019.04.01.10.40.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 10:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=CZ4RRS78;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=Ny8FWext;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 625DB22062;
	Mon,  1 Apr 2019 13:40:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 01 Apr 2019 13:40:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=9501tqYkEwCV2D4gSULALmndAYH
	kZ5rSUah7z6BnhQc=; b=CZ4RRS78FbGcab4xvy1r6OcSvkNLugMKPhqMwYKC6LA
	61wLY0okxG2LUjPhSBDtMKGIMXA/sHLpKpFPoqncz7j4RKh5sSE3cWP/0zp99IHg
	dZuKz+atGALlQnmR3wjBZOzigXnzWE+QE8VAPf2By6Yt1LWGQkt8Y5B5I25Fhsmz
	K7oojdDiD1ZzXaQMh0DNgWq8af43ivo3hVpC7Jyni04aSjiyHyMLTjBHrrZGkAqN
	ITycG1+v9nsMkmZBENgG/vClIpy7oWj83/oLo1uRslHuF3KDg9nivx5vQEqKq8x7
	q+Y28DhpL1ikDs0NN2hWv3wOs3T7a2vYEraPFCzCm0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9501tq
	YkEwCV2D4gSULALmndAYHkZ5rSUah7z6BnhQc=; b=Ny8FWextEgLrnMyALsfyR/
	mg+uAP3/GlHpbyaUjIACXu8N8iNODshXVCTVoiVEUykbzgp6J/4xOM6kw9Jz9jbw
	/oHSuczJsgjNMrZVhjz1fr0U3nr/hOuXADo0ik4D/D6JhIEA2zsBc97zI3AJGvc2
	3GLubJZ9kHIpn+RuvdK+iGprvowJXlGIO7Cc+9Jpvh/BWlRkI9sBETuI/a77iVrM
	loGv0gOlNGhM5L2s1t79AmAchS0lQESbRbImYqIXb9/PRO2bMyY5vzDu5FtHfH4Z
	nVixO8PyeLaKwmiQU15HWZj5NipudM3DNGdB8PHT+UY7dqECAlnFU6WdzZSBZrFQ
	==
X-ME-Sender: <xms:CU2iXGBV7HECWhhBdvmQAcwVAQbhXJI1QWsulGgwkh68pVBoxNONgw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrleeggdduudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
    dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:CU2iXFyj09kTz9qudgYD7QmUz56o_O_XZGXA2cN5sP_ywOni6DOSMQ>
    <xmx:CU2iXLTVRB3Sclt9sXSoreREf8e1gRtV1EWsPaBORZAtCWRtLMQ6yw>
    <xmx:CU2iXM-rh5xcOFgxEqLcbAesXiPtLLiS9WW6Sz0uiDSn5zbLc5FmTA>
    <xmx:CU2iXBvTBfc64r6y4Jf-R3_pU9SS3BdAmI8vRugdGp6bh2mW8N9C1Q>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9FAEE10319;
	Mon,  1 Apr 2019 13:40:24 -0400 (EDT)
Date: Mon, 1 Apr 2019 19:22:56 +0200
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: erofs: super.c: use !x
 in place of NULL comparison
Message-ID: <20190401172256.GA21465@kroah.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
 <e8033d211771386bc86c71a58643374cbc686e11.1554054896.git.payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e8033d211771386bc86c71a58643374cbc686e11.1554054896.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 31, 2019 at 11:33:49PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> Avoid NULL comparison, compare using boolean operator.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/erofs/super.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

These 3 erofs patches are already changed in my tree and do not apply at
all.  Be sure you are always working against the correct tree and
branch.

thanks,

greg k-h


X-GM-THRID: 6661153650381946880
X-Received: by 2002:aca:6cc6:: with SMTP id h189mr3534408oic.8.1550926786692;
        Sat, 23 Feb 2019 04:59:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3d54:: with SMTP id k81ls4619221oia.1.gmail; Sat, 23 Feb
 2019 04:59:46 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbNJz1XK6IbP8QEVU6GigrrYTKCaK8p8RH+FD4k2GyOQuDC9NHvXry/NDnedE5HcJHIWfnd
X-Received: by 2002:aca:ac55:: with SMTP id v82mr5071928oie.36.1550926786107;
        Sat, 23 Feb 2019 04:59:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550926786; cv=none;
        d=google.com; s=arc-20160816;
        b=UOQcrXl8lx8wIqH243/ujTzWvjBC1tV7JXc30JLieHBSIhDEVwPTcfbQaW8vVpP6Jw
         CuHntsUFX+y4OkuEi6MBObpAkezDe8eylyDzvALgTfGkh4C7NGdY0FN3q38IlIRodpI2
         /DzEIVDoMvFegCFjcLU8/fIdiQ8gIS3yoYJpXGm42QIAwBuOZpQKqEFV5URv1mUMyWMf
         VGBv3wJzWqVBrJfhfI/iAc2SZoe2GJnV+KscmWZf6KvUJa6qN3eyamm9W7DyrbosRqlk
         xSAE/icUilQl5AV3FZ/X26QJ3Z3LqSGiPLcLUV3fSj2Ggxink/RHm8irDrjvSZMj+VuV
         YMIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=vey0nNazD+X8kjF1BvoRxBo/gA/LX0jWJJjEp4hPVog=;
        b=UkBqoPZh0c6YW+N8KErBZNJkmiBhIgiCCjIRTq+XwSUHXx6lWjlj/0+N9abgkiGdOm
         ZDDU12giXexC816WesFC5SJ8cl71Y+P3022GjV1hi1gdLlOF4mQ20A4qIc+O95xxpc7f
         kK1E1lqgtM9gwUrt6m5etucyrhGEXTf+HFbyc3tfc0s+lJwldYT0yHcaHk/Ae4ZZrHub
         iGEdCtot7P95WzraO5ZuZOqLwNyZKJXWw8r7cz/3ybuQd7cuoDiR0vDA12AlmGpJvQNO
         cr27E8zg5xrGtsin3koiiHJXecsUFZTcIxBCxCfEYf8d23T4BZKr4JzyFu39bispbDMo
         rRCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=u4tvWyMp;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=atHSHEhR;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com. [64.147.123.25])
        by gmr-mx.google.com with ESMTPS id 135si216315oia.1.2019.02.23.04.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 04:59:45 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) client-ip=64.147.123.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=u4tvWyMp;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=atHSHEhR;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id E6B59320A;
	Sat, 23 Feb 2019 07:59:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sat, 23 Feb 2019 07:59:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=vey0nNazD+X8kjF1BvoRxBo/gA/
	LX0jWJJjEp4hPVog=; b=u4tvWyMppYaRoN0mbgwtrERRLBd12h82C3AkFURrycY
	u4A7YWWYocAqDcf9ah+yQR8+XpiQVdh7Ah2HkcIA/ep/yvb1V/WAzbPG04gTbuYI
	ZiNJltl9G7YvaUehxVGSaeZpBTLs7i2/I7m2CYUuvTvuEgT16fMnzbTS1cFlZ8br
	0sMjDhfQftkkI+OvtxwJ0Fmf6AGKIqX3bqQzLisPfwIGRZkcI9+c5EHhf6e6VMSD
	JWQX6Dzqqx45nsFJg8FGYxOll3CoLibFk2uIcqrfrbw/URKDWa1ARskGS9sh1S1F
	JOPor9bYTdXsIkn3CncxxgwveYVeNxSGlHyozIR451A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=vey0nN
	azD+X8kjF1BvoRxBo/gA/LX0jWJJjEp4hPVog=; b=atHSHEhR3ePAo0KDsBHzIC
	jGYIo+NYznFRcqW2VxrGLrEwLpG7Q296w8nle31lMClwN4FEbzQpQhu5TKimTxmP
	9Jth9OjKZHhK41DBMUMWbJWBgcr8JK7HbaMYcvDSO2n/js9jflPClqmcseCResGc
	4wGQAryxND/a0DIEoSNdS9lPvM4R+GOohEC+XwmK3SoudP8JuWht5zbHdulegIBi
	ireDFbtvqZmSltEw6OCmvV0Qz/cb21j7aDn/2rH7VPzsayVpW6aSGtWWDPi5xHNQ
	S9YSfsKkm8UWP0MUyYQC9qRlF6drjxzj3Y7JgWzpUDEXZIeUMpJPHT/aOBaVWcsw
	==
X-ME-Sender: <xms:vkNxXAUVBhWWVgmR-zmVONX95DK-TJ8ulzAzsouFdo2HoyV_HK3gsA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddruddvgdegleculddtuddrgedtledrtddtmd
    cutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfhuthen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
    ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:vkNxXJiDkxv9T3s8ot8W7KNfZI4dD9tJoZre0dWYt_FJGkCHtqTamA>
    <xmx:vkNxXMiqLQDU6dCmYEMH4PZ_0nZIz5aV7C-jS2lNH1xEhCcsH-dWrw>
    <xmx:vkNxXPzc-kTOmL-1veptlM23jJBUFDFamYOAuYUbHG7ilDBkd23rcA>
    <xmx:v0NxXIC2G3CPfhzcQeXMkf6S0u5Gk7p_AcEby5lkcXJQUlPYvjwhqw>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 86EBC10331;
	Sat, 23 Feb 2019 07:59:42 -0500 (EST)
Date: Sat, 23 Feb 2019 13:59:32 +0100
From: Greg KH <greg@kroah.com>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: jreuter@yaina.de, linux-hams@vger.kernel.org,
	linux-kernel@vger.kernel.org, davem@davemloft.net,
	ralf@linux-mips.org, netdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: ax25: Fix  multiple blank lines
 warning
Message-ID: <20190223125932.GC16686@kroah.com>
References: <20190223111751.14620-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190223111751.14620-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Sat, Feb 23, 2019 at 11:17:51AM +0000, Jules Irenge wrote:
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  net/ax25/af_ax25.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/net/ax25/af_ax25.c b/net/ax25/af_ax25.c
> index 5048790a75f6..2da349b7854a 100644
> --- a/net/ax25/af_ax25.c
> +++ b/net/ax25/af_ax25.c
> @@ -49,8 +49,6 @@
>  #include <net/ip.h>
>  #include <net/arp.h>
>  
> -
> -
>  HLIST_HEAD(ax25_list);
>  DEFINE_SPINLOCK(ax25_list_lock);

Why are you doing outreachy application patches in net/?  We only accept
them in drivers/staging/  Always start there first.

thanks,

greg k-h


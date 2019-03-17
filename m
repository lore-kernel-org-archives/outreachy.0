X-GM-THRID: 6669419489146175488
X-Received: by 2002:a05:6830:1349:: with SMTP id r9mr4200493otq.22.1552846935543;
        Sun, 17 Mar 2019 11:22:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls9081oia.7.gmail; Sun, 17 Mar
 2019 11:22:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxckSWKKdGJ9RrtXlRAjfJl5+CuS8VTnDiOo+xDEp/erO+VXdA/u/F/ZvJmRPC7lA5k0QK
X-Received: by 2002:aca:5904:: with SMTP id n4mr8390067oib.23.1552846934647;
        Sun, 17 Mar 2019 11:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552846934; cv=none;
        d=google.com; s=arc-20160816;
        b=BlSQcEY2PaNwiT+RuZSo+i8KFH22UQBLjZYdxBRGZVlW9JMC9ajKczaLlZSUh3a6Hw
         2tBIPeas8lS9Zo9EXjJl3ums9TFsx/4eNXSIddloD06+YD+64E0BGNvVY+Ujc/aP9rB4
         afGvSJh2+Nkc/+90bvszJqYsyQ6TZbnbcy9WWnCVjd9QbMjWNy08KmzIwOe0ET7nS3YL
         KRLYQuTEaXYiHDdVAR5JEbRSBuinX3ubQXLuVujRohleKJ0FlAQaw84/Bn+4eVzpIAEZ
         oJOwtbhm2dHeFcLhF1d5mkYddE0Swq5xq5VGBn/yObgN6Kx2PoSImM5TLWXmWVrj5xRM
         qS/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:dkim-signature;
        bh=pf6Z+qFLe8RTLS+w+Zc73Gm5XsItfnM9mUj9C7OLpwQ=;
        b=PtqNaGdn+zhkgQLarE0YvS1wm7GtPDoDLZjdV2njqyLegShaFp+yMPcS2A72k5wT9H
         DkcQPXVNEyJUAhcp6DoUSvrBo5llEEauqT7je976llUdH/DKWW+xZaIndXJc/4BanR+K
         wQ1qpqI9iLIQBjA16aUWpv1DgDE1vzAHxmaaIWCW40NFkVYP5ZiL1q3RJ+4V8DfhwsWS
         maOFsDKckQZ4k6MZX6gfovoNC+VQfCAit90hY1LEEsjhJasbiMMhlUdf/6BXJ68Bsdih
         GyaTOHU18r8Bry2SQ8qrDHW6G5EFr7hzkFEdc+4LsPTTZeJwXmk9AMib54dAk+RiXXm8
         8xRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=BXjVch1P;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=1CjFOCy5;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id d128si296741oia.3.2019.03.17.11.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 11:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=BXjVch1P;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=1CjFOCy5;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id B633221AAD;
	Sun, 17 Mar 2019 14:22:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Sun, 17 Mar 2019 14:22:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=p
	f6Z+qFLe8RTLS+w+Zc73Gm5XsItfnM9mUj9C7OLpwQ=; b=BXjVch1PeaM1QD7mq
	Tg1b0RbuxYHlkbAdLCxoytyfwXImCWVesBsJzqORBYrOSIf0J0jCnGp1WZjEf3dS
	At8xaXXiOyONWW60K3aBNy5jZlxdSvceqdSC5lloKay36BiRPBphZ6q3sJGDVdDV
	nWDqKUm1hPxNDsRcjWI8ku6SlzmWbByjq7O9GWLVoaXXxih1ktBdLJNQsLQdhE4A
	Kxf0ov2N4hhIa8JbSk1P7tZDiCdQ+FTQikq141a054RTASDbQDXAA/tleSkdwLwz
	QaLc38aJqb5tyXsAqcpFuj2qvtnH6V4XFXj7Zz8b6WSarqlgKi2lDHtA5Z4O4ZSR
	YggCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=pf6Z+qFLe8RTLS+w+Zc73Gm5XsItfnM9mUj9C7OLp
	wQ=; b=1CjFOCy5ZKRrDfctrbAwnuegiTFNZp9LFFRxj14aqnBcm/tgr24lFXOHD
	1G0ZjiIhbpXY8rVKe9RE3iPLup8PKHUouR4ecjc6ZDcW92kstCVEnzIlHgM7ICq4
	RybVZ6Bmed6tJKQYoWCgjeVtKlqjgWnlFEn0LWS2C56hiF6Y2Wg5fLL42y3ka9LH
	SFJVF6h8BhIWG0iH0iTs48cXpGbtiJqeEKlIGnwH51F7LqXex+jquQdTIiiNQrgn
	FZGvNnjTigvxop3zGSXs8agNIS1Hg/j1bMwOv9vLVrPiDCVeFBfZrQYm4zYIAQDf
	pBJeuEkl8bnVH8WK5Oim8tSqfq/sg==
X-ME-Sender: <xms:VZCOXDysclqftdnI-QJH-sTQjK1Qzh0x3zvJ757n29oLS8LmoeZNhg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrheelgdduudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtugfgjggfsehtkeertddtreejnecuhfhrohhmpefirhgv
    ghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrd
    dutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhen
    ucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:VZCOXDrWJcP6cfd8QTaaBvYqinbIelT0XYFXjKf8oTnp7EgmGfEpBw>
    <xmx:VZCOXPiq0AmH9FV6UUJD6s9U_8ArkyqTuzojUkb786IYBvvKjgJaZA>
    <xmx:VZCOXFXNcUXH2qn4wm1OaekE6R61ksmuI9IjniU_S2fQlQYP2R6ejg>
    <xmx:VZCOXN-T0yzt7JE7NFrq-x_j3oWbTvJd7KjtLIPUJURvaQ_TZRKeHw>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id DC13310312;
	Sun, 17 Mar 2019 14:22:12 -0400 (EDT)
Date: Sun, 17 Mar 2019 19:22:10 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: adding ()
Message-ID: <20190317182210.GB3482@kroah.com>
References: <1552845213-12653-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1552845213-12653-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 11:23:33PM +0530, Payal Kshirsagar wrote:
> Parenthesis added to macro argument ‘gcam’ as (gcam)
> to avoid precedence issues
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/camera.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index 615c8e7..b1670b8 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>  
>  #define GB_CAMERA_MAX_SETTINGS_SIZE	8192
>  
> -#define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
> -#define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
> +#define gcam_dbg(gcam, format...)	dev_dbg(&(gcam)->bundle->dev, format)
> +#define gcam_info(gcam, format...)	dev_info(&(gcam)->bundle->dev, format)
> +#define gcam_err(gcam, format...)	dev_err(&(gcam)->bundle->dev, format)

I don't know why checkpatch.pl keeps getting this one wrong, but no,
this is not needed at all.

sorry,

greg k-h


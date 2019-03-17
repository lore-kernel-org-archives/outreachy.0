X-GM-THRID: 6669361827248340992
X-Received: by 2002:a6b:7614:: with SMTP id g20mr4318507iom.14.1552836763782;
        Sun, 17 Mar 2019 08:32:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7dd3:: with SMTP id b202ls2752339itc.0.gmail; Sun, 17
 Mar 2019 08:32:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwxT6N/pemPuzyl4vq5d1HdWRsG3UzEiINCBXLeY0VutOxq/NadSRuwBQ6Mi44MdAYL/wOX
X-Received: by 2002:a24:29c5:: with SMTP id p188mr7799134itp.4.1552836762902;
        Sun, 17 Mar 2019 08:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552836762; cv=none;
        d=google.com; s=arc-20160816;
        b=OuetNM7a2AT5MYNsTYK5e2Ly9wYzAFxd9X6+qpsVpMUvpbafGqGbG8eFz4tzGy3tPU
         ZTHL++hIO3MeqFPalGI9GywKM8XGUWrSSwLd6xkbs+ApeSXJxWlRXAMvS4K+wPaFwLW+
         0phCRMIkA1VjhMtv13DjywCD/1C+vVxdP2vn6mYRLBYJVxSV6ORP2FF33uoMxKsBlot2
         J2H3QR456QxzRjCZnjmpIiEN6fW+C6Hw8ITexFP8WW/mR8GFLzFUjIJ2WfnM2OjHXiu1
         vfsJ89+G0Ls6jTQOGyCPzxS1g4Hem4LBjShuB15iD/oGjD+W1JlAOo3JaOmrc21rQWEJ
         oXhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=v9r0CcM354IYJhQbe02Jci6XC09AA+iHHrcJs4HW5Os=;
        b=ZYw69XULpTbqafNp+x+WlL85h3hTU2IhmYMhSQ/0cTf9hMnI3H+iZY6zcGDYeawnd4
         Uv+tETtdBLPs9uaZKp4Hc+p/WOvBwCEEKrmTEWjoXo7h8PcZgYcY1mljKKrqsFtRayGP
         CPbKadDlMjJkSTePOeclceNGLSifeMhL55cuKDAzOjUCLS5sXUQI9rsR5exFc6UDhRqw
         o7gP7e24Ai8TgvzM+n9/1iENVLXWo901psSEFmcG7RcK9d08rJNjspu8heVxq3H60Jdz
         ++770QlLsxIRFPeaNwVnUNPsbCJzY6WOLG88/iFPWhrURzNaRHhXS9UddhaicnxbrHRZ
         g8Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="P/zzzwrf";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=OSBlufbK;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id e74si466775ite.1.2019.03.17.08.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 08:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="P/zzzwrf";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=OSBlufbK;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 05CC8213CA;
	Sun, 17 Mar 2019 11:32:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sun, 17 Mar 2019 11:32:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=v9r0CcM354IYJhQbe02Jci6XC09
	AA+iHHrcJs4HW5Os=; b=P/zzzwrf1xVvp2DcXZBcYljuPFH6a9YSuvw9JkXBorz
	svss7fIT0IiHRERAIW8NY12tNzKoWPS1ljMZeG78SyGdvf24B9PUnAxnhqjRyygb
	dgeyS0FZxlLrOO9pMjzpgQ97g3Bk+9vlt0sV5F1+f2NWk72BPh1VxnKPhdWdoPTA
	rtV68RLvbx6XEnFJfYvAzFawlMDB6HMIuQ5L6KqgoBx/ywkXFYjqzlJgDr7XxWiw
	ffi+Pis4a9IKQHm/rjMP5Qlzg0HJlgo8S2tDP3E5o+z9vsmt7HSbY9BKD32d8VbY
	x71k/UdI8o8sFIDhYGEDqp08zcdxNpI00JSyAhv6I1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=v9r0Cc
	M354IYJhQbe02Jci6XC09AA+iHHrcJs4HW5Os=; b=OSBlufbK2iCQ5FdI6m6ShQ
	M3LE7D3YeS6cIWt9mO3ib15jvGIh7Rt6KqcN+24CrXEfjpa7acB5xjxhzyITlWsx
	qgnzI/20po4nYLxyogU/ocEnYJBekTsysl7VXUPFF9+/J4FnCnsVR9gVHqJ9mRO0
	hojub/DPswaIHkJP4Pl3qSbkMiHhs637wfgWH7Nd2s2kCy8M+BkI/Kzjwf92Tk/d
	+W56bCdArT8awCbpZxelmLwmA9vGZMhDAU8x2aITJCv/UwEaFwqUiMuoLSMiqWG3
	9OkgkpBvV/beSj/JGzhCiybdWU8x99GQ60xOrT+YYtKT26jhnPooFRJ50iNI64uA
	==
X-ME-Sender: <xms:mWiOXJ_qut7ChwPchdUoVOzXyS6WIghcR9et3dP-ORmJggfC4pXlYQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrheelgdektdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucfkphepkeefrdekiedrkeelrddutd
    ejnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucev
    lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:mWiOXKp9gYQXMmDZ2NfdoNWK9mb5Bc3-vylUtHq5_9wSUbfnxzyH0A>
    <xmx:mWiOXCpbqnsGJfMMIA7GrUXFwzoZ4mX_TuwY2cqICAhd3BcengxDRw>
    <xmx:mWiOXF0bZ1RED0I1K7MYZY0wS9Gj0mEHYukkSxTvXEi6-7VnyLoPBQ>
    <xmx:mWiOXKMTtp_HBm92vZHkFZBEtCFBj-AqAsEk3yAT8OkGcZJzOgf0Tw>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5203FE4362;
	Sun, 17 Mar 2019 11:32:41 -0400 (EDT)
Date: Sun, 17 Mar 2019 16:32:39 +0100
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel]staging: greybus: line over 80
 characters
Message-ID: <20190317153239.GE25814@kroah.com>
References: <1552831790-11088-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552831790-11088-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 07:39:50PM +0530, Payal Kshirsagar wrote:
> Fix line over 80 characters
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index 70debee..307ff51 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -47,8 +47,10 @@ struct arche_platform_drvdata {
>  	struct gpio_desc *svc_reset;
>  	bool is_reset_act_hi;
>  	struct gpio_desc *svc_sysboot;
> -	struct gpio_desc *wake_detect;	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
> -
> +	struct gpio_desc *wake_detect; /*
> +					* bi-dir,maps to WAKE_MOD & WAKE_FRAME
> +					* signals
> +					*/

The original is fine, don't worry about the warning.

thanks,

greg k-h


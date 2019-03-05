X-GM-THRID: 6664583241254567936
X-Received: by 2002:a67:7ac7:: with SMTP id v190mr553489vsc.17.1551771675044;
        Mon, 04 Mar 2019 23:41:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7d03:: with SMTP id y3ls4035781vsc.3.gmail; Mon, 04 Mar
 2019 23:41:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqyMlgzOGuN5E1Jp2je58DSLMREEw7d9Sy8uhcOH2Wt+ArZ2sfp3yYiCgNH27EgcvU6jOGk+
X-Received: by 2002:a67:f75a:: with SMTP id w26mr525710vso.29.1551771674285;
        Mon, 04 Mar 2019 23:41:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551771674; cv=none;
        d=google.com; s=arc-20160816;
        b=boBX3tEAMA8+jL5+sgRtxHfkEwfQjwMBAeYmk/q8bxIQTJT3esad0sCh6sHQK26cRD
         9iYI6lHnETBm0RATHES5Kq53yb3EsjGkHWPR9QBvKPPFZVD2UsrJ2gOPeLTJSOUYzUZ6
         Iml4mPQIrCDubfIMouve7XiX7Brq6sRrNcivUuCBZzBOADaU/UZtXcRMs/KdFuDzHSa6
         znXp2OT7s1DnmDeKBiiwtmqIfUT+NreCJRlX9Q1buEj8/JU7Pj+iGN6eEN27yCyzQ8OG
         isSRSdUDzuu1wB+V2H4WkzBAIVuUc8vP21PVK5ssMLQte6OC8sgpamEOqFXs4TimblzJ
         9Bzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ljgW3yO/K1TiFLm0yWq9eKVByLJ7Hz+HtKcmo1g4044=;
        b=f4gEIhvv6sCTq00V8l0QyhxqTg1yVxp9BExmtYSXYjWUJ+3lKH2BTMq32YaVWruF+Q
         EMSn1Gvr2k4K0cBg8tDu0sDRx6SU85ZxhNHMe3KavqLVNhXMpxtJ9Z2MUptjZOSUupeM
         prcS1yu4ytQC97zrsHjdeNKeQz5HAHZkiugtLidHLnwVenVNwWVN6rzcclOWPdN4rrST
         0Xlx6kMjyAKX+j9oVzUmGOiK5SzxUMOhrXCisw1APPc7XWgZ+oFTujsRfc2Ryhh5zyL4
         lbMhQNG7Bd5LbhxqYeATNKQDdwEnuzUKIlmsfpe1mYB25MeeDDq2Rg2FUe+ZfOIoEWyI
         K33w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qbheWm2c;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m195si529265vkd.4.2019.03.04.23.41.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:41:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qbheWm2c;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 937F320663;
	Tue,  5 Mar 2019 07:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551771673;
	bh=sq/1NJUQGJr7v1M5sUfs/l0ThsGwQJev9DZrYaPVovg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qbheWm2c2GFd/CkImqntMca2V+/aeo713r4/ZI+aFsLZ65PfM2NQlQqpdMGbNFQyO
	 yivCAPqChIiwU0B++jgbl7u43yTs/sjOfBvT35kKM1iQ+O8mxBSDCs45pnE3wfBcPm
	 IGWqg+Ys/etrl7KsgKGIainAczeMhMzAUbiOF/wE=
Date: Tue, 5 Mar 2019 08:41:10 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: gdm724x: Add brackets around parameter
Message-ID: <20190305074110.GB6158@kroah.com>
References: <20190304165853.24844-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304165853.24844-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 10:28:53PM +0530, Nishka Dasgupta wrote:
> Add brackets around macro parameter to avoid confusion. Issue detected
> by Checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
> Changes in v2:
> - Driver name added to subject line.
> 
>  drivers/staging/gdm724x/netlink_k.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/gdm724x/netlink_k.c b/drivers/staging/gdm724x/netlink_k.c
> index 92440c3f055b..36d88f49c922 100644
> --- a/drivers/staging/gdm724x/netlink_k.c
> +++ b/drivers/staging/gdm724x/netlink_k.c
> @@ -19,8 +19,8 @@ static DEFINE_MUTEX(netlink_mutex);
>  #define ND_NLMSG_SPACE(len)	(NLMSG_SPACE(len) + ND_IFINDEX_LEN)
>  #define ND_NLMSG_DATA(nlh)	((void *)((char *)NLMSG_DATA(nlh) + \
>  						  ND_IFINDEX_LEN))
> -#define ND_NLMSG_S_LEN(len)	(len + ND_IFINDEX_LEN)
> -#define ND_NLMSG_R_LEN(nlh)	(nlh->nlmsg_len - ND_IFINDEX_LEN)
> +#define ND_NLMSG_S_LEN(len)	((len) + ND_IFINDEX_LEN)
> +#define ND_NLMSG_R_LEN(nlh)	((nlh)->nlmsg_len - ND_IFINDEX_LEN)

This change is not needed.

Also, you sent two copies of this?

thanks,

greg k-h


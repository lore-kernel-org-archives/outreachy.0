X-GM-THRID: 6665257385329688576
X-Received: by 2002:a62:9a12:: with SMTP id o18mr5508629pfe.114.1551989117660;
        Thu, 07 Mar 2019 12:05:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:5a07:: with SMTP id o7ls798461pgb.12.gmail; Thu, 07 Mar
 2019 12:05:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqwuI0RAL+dXF5W7WB0RfF1XFZ45YNTwQLiVy/UcC/Qjm+/iYJXaJxmRPSij1iRm4+l4E8i5
X-Received: by 2002:a63:1a04:: with SMTP id a4mr5657076pga.126.1551989116693;
        Thu, 07 Mar 2019 12:05:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551989116; cv=none;
        d=google.com; s=arc-20160816;
        b=sO3VrEwVgc+CTi7jQuxY1uezNtwUqvLciUb6N2grJKWqdhW9F0Ku35tMxv24kvYebn
         GyMeYejVAiwmd7Qi8gi8XKw8Xlb9twcAGDMOyO6Bku6WAF4gacCK1a8XQG8dNEO7iP7V
         1buN4FopTF/EcsAspZzdCwENMmNm91z/yFfaRIuO9VmoT9eB/7F+Wa/qc7WBT0rNpbcX
         DbpuM7obZ+hmu6bEm0E2KgvUWM48YaRWQliBvvhrNCAadYUm/FJxhpn6HnzoDyqVDbTP
         pSm+NmLJxBt74AJh+tBEn3sLIPThWKweXTyv1THwAc7fYrVbCyJrg1G3a6jzt0vjF3JY
         kJRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=9OLWAmNoVxK+5ksEI2IkfUXQidT8ldSRfKFtE5qhQLY=;
        b=X11hcBb9oAfVvNw3WKFF0OqBPLmjCYuguRME9c2Jku9CnyK6iaujr93ViqHH1uhW4V
         x9RFNzt84l8fTlzS5NhGSAjLB8Ov7jMfABhcxa9oeN2yDfZG+QEl0QHfCt/K5tnP7ptd
         aTuk4q0cLYgU+3uMcfjsR51/4a1tR7NqQfqRtlC9peCz4BXFmmAzeZ2ck8f8OdCSmnKn
         HN5gfm7wQaC7X8Tn+tPPjQ+kkK26lgIUbG9JwcmGFILi5w+h/sol/U7eXmnvRKeb7kNG
         pNmqFrqSkCKPeWAYUg9Idei8U03vVHzeClJdtzQ+7AO7/22a6Ll+VkEcfnF4uY7IFJTc
         dqQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=d05UUvGL;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=bp5WxoUe;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com. [64.147.123.25])
        by gmr-mx.google.com with ESMTPS id e124si169660pgc.3.2019.03.07.12.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 12:05:16 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) client-ip=64.147.123.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=d05UUvGL;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=bp5WxoUe;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 813552835;
	Thu,  7 Mar 2019 15:05:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 07 Mar 2019 15:05:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=9OLWAmNoVxK+5ksEI2IkfUXQidT
	8ldSRfKFtE5qhQLY=; b=d05UUvGLooNMW5osXU7dUsWXKhxnPq9hOSQGrdAKmCP
	MyVwbRrxp1Rg8JwRcoJRaFqipul4elTZ9EuCvOVRNKnpS1hUEz8vzr5YI/FWtiXi
	810+w+u8K2y+oihxaVsyZ4jwt6TlIYEbqqw2xsZHBmYLGt9cvJiqVjexDde3CwDI
	jatnt1Hxbs9DUOBkQtEUCnRejZpcwQApwFRzEWRr47Ew2vtRdLhyCX7IKvaU19V0
	jMImlRqW2OdP5kqE3jd8OS2IZEUq/IUL+jmXBN/udEozQtumPpDhU+N2onHr/10+
	BO/P2ApPoAoJ24UI20Pb8/XQNlEfgDK6rLR5qWDG53Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9OLWAm
	NoVxK+5ksEI2IkfUXQidT8ldSRfKFtE5qhQLY=; b=bp5WxoUeHgw+loAZiFKBws
	9sL+uQH7QIaDSuDReguQoDlA0kb4VOVRMGlhYBwkP6jkhL6pv7WYnZ1EfJnVJKKk
	w72vDZvIpOpMgZ9o/wC6SVk15R4QReTl6U2EF0wgbwHaxAz1Nh14P7ltAE7UKeLW
	vsXv8wRwFujtLOzwCd+aiTKbXqobRyFiB8IHkWZoKClP5vHeDh0W3JDk8rAsPg7f
	Mc0iS0CmqHsXgBRy1U1mL3AG50dkBrQxtlO9bDnulpOesULDX66y1xzx3fBTWj4K
	7JnMlgZeJzEhd7VlwPL9SANNaXPv72YbfeE7Bwvx5h4Wn77RbFYLj2Pgy5ma4v5Q
	==
X-ME-Sender: <xms:eXmBXDPq-QC7xIjXORtBZ8aOuqV0XTV9jaGoUNs4FaaUnKLExCuIGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrfeekgddufeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
    dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:eXmBXBxei1sx9N1ZIWBfzQIrOrexiGkCjDiWM-KC6j5CEBzC0Rq1ow>
    <xmx:eXmBXLWZAY3xhoYraQHSW9BK3RfujNzRVBmOx-KkLPTP7PMDovmhQg>
    <xmx:eXmBXLNrfZY-y62XjSWSSG6zkdW54nTnI07OlbxQjzozctylmW3oxw>
    <xmx:enmBXEJ6WAIOEQSGtV0nZ1bzcKuI1wRQ-DpNtqFpAxURrSCfNwvTPg>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5356910344;
	Thu,  7 Mar 2019 15:05:13 -0500 (EST)
Date: Thu, 7 Mar 2019 21:05:11 +0100
From: Greg KH <greg@kroah.com>
To: Daniela Mormocea <daniela.mormocea@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Fix NULL comparison
 warning
Message-ID: <20190307200511.GA7554@kroah.com>
References: <1551876162-1333-1-git-send-email-daniela.mormocea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1551876162-1333-1-git-send-email-daniela.mormocea@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 02:42:42PM +0200, Daniela Mormocea wrote:
> Replace NULL comparison with '!' operator as indicated
> by checkpatch
> 
> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/speakup/spk_ttyio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
> index 0057eb9..5a9eff0 100644
> --- a/drivers/staging/speakup/spk_ttyio.c
> +++ b/drivers/staging/speakup/spk_ttyio.c
> @@ -47,7 +47,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
>  {
>  	struct spk_ldisc_data *ldisc_data;
>  
> -	if (tty->ops->write == NULL)
> +	if (!tty->ops->write)
>  		return -EOPNOTSUPP;
>  	speakup_tty = tty;
>  

Someone already sent this same fix to the same file just before you did,
sorry.

greg k-h


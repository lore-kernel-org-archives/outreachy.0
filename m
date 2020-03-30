X-GM-THRID: 6809434547497730048
X-Received: by 2002:a62:64d5:: with SMTP id y204mr12790494pfb.227.1585579528474;
        Mon, 30 Mar 2020 07:45:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls593222plo.8.gmail; Mon, 30
 Mar 2020 07:45:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtZ6OrhtDbp83oWupbWeIguYI6I5dtAzvUUDGm93d9p3QNdWDROF+Et3GYsJYLIhu/A2OGX
X-Received: by 2002:a17:90a:3606:: with SMTP id s6mr16666863pjb.195.1585579526936;
        Mon, 30 Mar 2020 07:45:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585579526; cv=none;
        d=google.com; s=arc-20160816;
        b=kOONFaS8n7nBwvHQHTInH2x59FoBo+HAn6wO29GoLgrqdSbAndqsQ+naeeYKmkg9zn
         BuwijwNYaXmDIuZ24bRowzfRpi49UWQEJQoyr5GzMRsBkWkRabvncVcqYGU+OKrv7xRL
         196tiCq/JhCAACJa0bTu73GwxipSfPp/2jwac7sTlIYOSA5z5ZNDDbv8IUaNIvwXDCKx
         YDKdJni7meocp7xVHoV4DCezl4FyI2SRPKp+7M1TyK/Ef9+cJ2O0/fgtAL8x/bLn5pun
         x6DZNnVeQWYIYHlYmUSoSEpqbwf+1H+KUYxU89gI92fpPBO7bI/Ahd2cnXbYEKvoy3Di
         1fCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=od2mfvB7pouKHds/2dkXnjmq1bDS7ATj0+Fz6BUkZM8=;
        b=axz9D2GbDzLc3hRmQ69LRZZvAf9O0ag3X1XgztxJ84HcjlNVCSSWBc/TlJ9MFqyoRN
         8k/yhpgBe30iEuUJrnxNE3t0/Cm+n87AGGB0pHiJHBgC6LTSqN5aPaG/NYoBNvcYYAJ6
         5/JdF09lEmDZMdqIGHThCBksQJEb1dvXg7T4UnM/XBvuVK0bmq9zn/Wiun2H6uH0YGY5
         1CRUAgOy15FPZ0aBIZSeM9vEbyUc3kek3lSqJIi90rWVKjEveLQ8HltehHBPYB4+GSgH
         lZVC2xHvd7EIkGH7MClN9/yYcZWbf9Bg2143jLm9lrVhKr+g2AjhFxxWExeOKeMqXj4B
         Ii0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=b+Q7AYlR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id np5si48449pjb.2.2020.03.30.07.45.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 07:45:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=b+Q7AYlR;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585579526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=od2mfvB7pouKHds/2dkXnjmq1bDS7ATj0+Fz6BUkZM8=;
	b=b+Q7AYlRzqRfgESL4ifOhtDUTSaO4JtD2dgug+CHbCmeIQvrX5ROunF3aYV93Sd5aXucCG
	uqbU+hgFB43NnBUBAYKs/m+vFt5HM011AZrr/11WqXjKVz4sz5ILmjJ1LC9/xZ219bk6Dm
	QgIwou3bMir8hN3KZvLLivMQO2jZxkU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-365-_JdzG1b9NJ6VpfJFoG7GSA-1; Mon, 30 Mar 2020 10:45:24 -0400
X-MC-Unique: _JdzG1b9NJ6VpfJFoG7GSA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 43686800D50;
	Mon, 30 Mar 2020 14:45:21 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.63])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0F6319925;
	Mon, 30 Mar 2020 14:45:19 +0000 (UTC)
Date: Mon, 30 Mar 2020 16:45:14 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: vt6655: Remove
 CARDbSoftwareReset definition.
Message-ID: <20200330164514.7f0c2272@elisabeth>
In-Reply-To: <99a02f7f8fe001b30d3e4839c7793922c37027e4.1585442480.git.briana.oursler@gmail.com>
References: <cover.1585442480.git.briana.oursler@gmail.com>
	<99a02f7f8fe001b30d3e4839c7793922c37027e4.1585442480.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sat, 28 Mar 2020 18:23:40 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Remove uncalled function CARDbSoftwareReset and comments related to it.

I'm not a native English speaker, so I'm not entirely sure about this:
would you really *call* a function "uncalled"?

To me, an "uncalled" function sounds like an undesired function. Which
is true, but that's not, strictly speaking, the reason why you're
removing it. You're removing it because it's not called. Not because
it's uncalled.

Or... is it exactly the same?

> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/card.c | 20 --------------------
>  drivers/staging/vt6655/card.h |  1 -
>  2 files changed, 21 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index e65c9825ea5a..135010d2c7d3 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -12,7 +12,6 @@
>   *      CARDbAddBasicRate - Add to BasicRateSet
>   *      CARDbIsOFDMinBasicRate - Check if any OFDM rate is in BasicRateSet
>   *      CARDvSetLoopbackMode - Set Loopback mode
> - *      CARDbSoftwareReset - Sortware reset NIC
>   *      CARDqGetTSFOffset - Calculate TSFOffset
>   *      CARDbGetCurrentTSF - Read Current NIC TSF counter
>   *      CARDqGetNextTBTT - Calculate Next Beacon TSF counter
> @@ -843,25 +842,6 @@ void CARDvSetLoopbackMode(struct vnt_private *priv,
>  	/* set Baseband loopback */
>  }
>  
> -/*
> - * Description: Software Reset NIC
> - *
> - * Parameters:
> - *  In:
> - *      priv         - The adapter to be reset
> - *  Out:
> - *      none
> - *
> - * Return Value: none
> - */
> -bool CARDbSoftwareReset(struct vnt_private *priv)
> -{
> -	/* reset MAC */
> -	if (!MACbSafeSoftwareReset(priv))
> -		return false;
> -
> -	return true;
> -}
>  

This newline should be removed for consistency. I mean, either this
one, or the one after CARDvSetLoopbackMode() -- nobody will be able
to tell which one you chose. :)

>  /*
>   * Description: Calculate TSF offset of two TSF input

-- 
Stefano



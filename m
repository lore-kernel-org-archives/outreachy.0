X-GM-THRID: 6670961947938127872
X-Received: by 2002:a67:828f:: with SMTP id e137mr6061131vsd.131.1553264065554;
        Fri, 22 Mar 2019 07:14:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:3205:: with SMTP id x5ls887899uad.2.gmail; Fri, 22 Mar
 2019 07:14:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqydMdNbtSya0APRNznr0md9Z+HsoWXSq+vlTZ6m34HkSvpKAs9VLNNRJNx8ozaBVXeQFidE
X-Received: by 2002:ab0:1591:: with SMTP id i17mr5462538uae.41.1553264064925;
        Fri, 22 Mar 2019 07:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553264064; cv=none;
        d=google.com; s=arc-20160816;
        b=lvoyK9M/bwbOecXbYgVRST3TAqIQUqFOSdwFNyRQV58AFol0J6U8oWBnOaEaykxYkf
         qG8fGNtulojfNFBUavfO4t0UomKgAryGkMGHQtaTgReJtlm8NIBIwvvpRS1+oDG+gQDB
         iIv7GRvw2/zxHavpe3rjh290AlE0VmdXHK921DKCN25Fsf8kqQBHRXg9cJHvPGAv3Peu
         6u9cnXWXs05dQPg9xEATVH8WZqZdWLljLaIMi1mbGoKHe59Xoe/+DP7qn5HLySGSy4vR
         vOr6GBe2YE594FSshzp9Y+HhDJ0GzV1CGLG1XEHO1OAS8Ra+9LnoKmRyv8NcQce12bzt
         LG5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hweiwnjpvLF7LurZaInijcdLLnQVDsskqtbsx53EcZM=;
        b=Bop/AeQulhh4iSd6oW9Rvwd/1c7AZMdh0fY7DE7moJO8XWioq/etQEZvLZwyebdFTK
         DcZCbd3XWGFlwdEzHdNYGTL31VX7eLqlOZloSfefeOM3TQuwn+hDGo8HVtonH64QKu44
         6ESbFe6Bkt0r7nzq7LDVvMiqqouVu90AJphrZohzCRf4MTT+gz2zuLutePpgbcYF7/xp
         Tm0l17KXpl0jUyYDlSH15nndA3RBoSm7MahCamlRrID4MgO57CbPSfPE7tOmbWmWOmUl
         /sMqUdVtfc2fRVqtd8qGuslDpo8r77zuJGuRByhwow8n0q+qU1SzbD73CV8qunua9WlN
         U3SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hkt1kKs1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x82si485614vkd.1.2019.03.22.07.14.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hkt1kKs1;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 38F5B206BA;
	Fri, 22 Mar 2019 14:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553264063;
	bh=d7m5lWgnOHhNt1BQ0+9REncdZcRdLFzNye+ZEz4AGnA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hkt1kKs19XHx5ivYGffDcp+8yb7tDaMIsSKj4hUQIGIs6OEgxWizvrL4runhH8SIE
	 vhc6Luv7BJDCH2VVT4Zqrr34aEQDn9ClaXuS6YbiNZfyKv8px71AOXTij86Cr2bygQ
	 /Njk2dTe3okr8WLJkT9+M176GxFWhssbwPvyd0/Y=
Date: Fri, 22 Mar 2019 15:14:21 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/3] staging: vt6655: line over 80 characters
Message-ID: <20190322141421.GA25959@kroah.com>
References: <20190321213906.15851-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321213906.15851-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Mar 22, 2019 at 03:09:06AM +0530, Vatsala Narang wrote:
> Move function arguments thet go over 80 characters a line limit to a new
> line to get rid of checkpatch warning.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index fd09b9771cf5..8d1caa4b19e8 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -737,7 +737,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  		return false;
>  	}
>  
> -	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD(bySleepCount, byInitCount));
> +	MACvSetMISCFifo(priv, MISCFIFO_SYNINFO_IDX, (unsigned long)MAKEWORD
> +			(bySleepCount, byInitCount));

This should go one character to the left, to line up with the "priv"
above it.

>  
>  	return true;
>  }
> @@ -933,7 +934,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
>  	 * register
>  	 * Channel Index 1~14
>  	 */
> -	if ((byOldChannel <= CB_MAX_CHANNEL_24G) && (byNewChannel > CB_MAX_CHANNEL_24G)) {
> +	if ((byOldChannel <= CB_MAX_CHANNEL_24G) &&
> +	    (byNewChannel > CB_MAX_CHANNEL_24G)) {

This is good.

>  		/* Change from 2.4G to 5G [Reg] */
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[2]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[3]);
> @@ -942,7 +944,8 @@ bool RFbAL7230SelectChannelPostProcess(struct vnt_private *priv,
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[10]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[12]);
>  		ret &= IFRFbWriteEmbedded(priv, dwAL7230InitTableAMode[15]);
> -	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) && (byNewChannel <= CB_MAX_CHANNEL_24G)) {
> +	} else if ((byOldChannel > CB_MAX_CHANNEL_24G) &&
> +			(byNewChannel <= CB_MAX_CHANNEL_24G)) {

This needs to line up like the other one does.

thanks,

greg k-h


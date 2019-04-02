X-GM-THRID: 6675179920364142592
X-Received: by 2002:ae9:e849:: with SMTP id a70mr7746844qkg.34.1554187338861;
        Mon, 01 Apr 2019 23:42:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5dc:: with SMTP id o28ls822047qvf.0.gmail; Mon, 01 Apr
 2019 23:42:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlD7+5N/tCMzFx5KalEeFlyyLfdhifs06KtT3FDo6YZbtpMXF0A1jQMrdqOoSdA2OYHvkm
X-Received: by 2002:a0c:d1fd:: with SMTP id k58mr7285468qvh.0.1554187338300;
        Mon, 01 Apr 2019 23:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554187338; cv=none;
        d=google.com; s=arc-20160816;
        b=HVq9gjAIeORQaKj2D83HAUWRNgglyEOB1lAsdflFMZ7nnEA+nwnZmx1+U03uwqFxep
         AOcO83dmeupH4ubi569RKDx+YzN/kTixOOKbG9UQo+SHV3KdEvBYnh61BfyBfseyqBPR
         vDrkp1Hf8YGRclWABzt4gHQpdMani4P/DmYJn7fOaMPjTmQdNpBdz1X68nQMcgfPlqHN
         RMTGOO0jtMoFhPHQ+w8/r9HLKfc8ZxTVU5I70GO9rCNmX6LA4ALcRCwWXjrGnOHp4SCq
         8nzO4HhImFLhKanjlTUfqv15/HXx/AwOHAnCdL2C7mgHW6nuuAsKY5H7PG4sj573hSXf
         UEfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=85LToQw2u8IM8AJUZWmKbrMDZpprYeuB+TVpS9qeKbQ=;
        b=gj/5BJ6Drb9AC9T6YpOx3Ku+yhwW0Y+OGlBe5UnB178ulWGTmEEVYKL4wwpXA7tz9i
         Eq+oLNBzIHupHfiTgYUZ7P/ZvhIQuXpAPfJBk69aeqO+/Wg9gNA2JVJj9qQBsBFQcZaI
         s3vIEdVyv4XLWi44M0GaxOVue7mpldsEfs9uCaZpPePIKKotTMIQzJinqXbRIFqG5W0N
         AwgDLqwPO3uBkUC03TzliI7OZlXvi6+fR4Ym0MV7pKEw/7Xeh/QCm5MEr9ezJe5ydvRB
         Rhp2Y76wOvcQ2tJaiSfkYI/NNrBMxcJNoKZ+/cNmps5qf1tySnO2I5/zd/G5sOwQ9bNW
         QW/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CxSmaTl7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n57si536384qtb.2.2019.04.01.23.42.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=CxSmaTl7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F6642082C;
	Tue,  2 Apr 2019 06:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1554187337;
	bh=8gGQxfZI3e7B1vlh9FEDFxFlZUTUjFkKNvixFnZtsek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CxSmaTl7mYt8Q5wFbwWBA99XFTfCxZGP5pya91Ln0i09fPqkaIHvRm0T8pZ+RckA6
	 dMcuJWC5Rr/jMivcLHdnifQPV9LEEhooqj6lbhEDdf/SA78jumV7URSdjEZI99jWt4
	 JOL+c+bwbrEDc6yE1pi8hfiJF6xNE7IRCBPkCy34=
Date: Tue, 2 Apr 2019 08:42:14 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8723bs: include: Remove typedef for struct.
Message-ID: <20190402064214.GA8270@kroah.com>
References: <20190402062706.13340-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190402062706.13340-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Apr 02, 2019 at 11:57:06AM +0530, Sanjana Sanikommu wrote:
> Challenge suggested by coccinelle.
> 
> Linux kernel coding style guidelines suggest not using typedefs for
> structure.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8723bs/include/ieee80211.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
> index 9efb4dcb9d3a..ce523dfb6faf 100644
> --- a/drivers/staging/rtl8723bs/include/ieee80211.h
> +++ b/drivers/staging/rtl8723bs/include/ieee80211.h
> @@ -202,7 +202,7 @@ enum NETWORK_TYPE
>  #define IsSupportedVHT(NetType) (((NetType) & (WIRELESS_11AC)) ? true : false)
>  
>  
> -typedef struct ieee_param {
> +struct ieee_param {
>  	u32 cmd;
>  	u8 sta_addr[ETH_ALEN];
>  	union {
> @@ -240,13 +240,13 @@ typedef struct ieee_param {
>  			u8 buf[0];
>  		} bcn_ie;
>  	} u;
> -}ieee_param;
> +};
>  
> -typedef struct ieee_param_ex {
> +struct ieee_param_ex {
>  	u32 cmd;
>  	u8 sta_addr[ETH_ALEN];
>  	u8 data[0];
> -}ieee_param_ex;
> +};
>  
>  struct sta_data{
>  	u16 aid;
> @@ -870,10 +870,10 @@ static inline int is_zero_mac_addr(const u8 *addr)
>  #define CFG_IEEE80211_RESERVE_FCS (1<<0)
>  #define CFG_IEEE80211_COMPUTE_FCS (1<<1)
>  
> -typedef struct tx_pending_t{
> +struct tx_pending_t {
>  	int frag;
>  	struct ieee80211_txb *txb;
> -}tx_pending_t;
> +};

This structure isn't used anywhere, right?  So why not just submit a
patch to delete it?

thanks,

greg k-h


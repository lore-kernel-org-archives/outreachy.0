X-GM-THRID: 6674814656588021760
X-Received: by 2002:a9d:4d0f:: with SMTP id n15mr6478410otf.0.1554102429636;
        Mon, 01 Apr 2019 00:07:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4f1a:: with SMTP id d26ls2337171otl.10.gmail; Mon, 01
 Apr 2019 00:07:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzHboo4ANN3GbsB1TsDmpkDmCNCZZ6a2uSEytahsL0O6bRvyOIS9fOdTp4OAKHhyYZqLARP
X-Received: by 2002:a9d:6a53:: with SMTP id h19mr5685007otn.33.1554102428958;
        Mon, 01 Apr 2019 00:07:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554102428; cv=none;
        d=google.com; s=arc-20160816;
        b=e8/nHJIcVEqrz7+munu3DPF4KEks8WPoAmJCQuqaaRCZxTjr1Xk1CbQilFaEBaJ+sm
         mGSTC1GbP/UY+0CKEdtBBTWnadua8NVucGE9GooOZvpgH6c4IZhJvDeXVmZszBem8H+U
         GfuTPaRuJE7RFGnilJvymbCTU87IJl8BmRzFTsu54I17aTH4OvWKFvABhUf4ORWziZ0I
         21ttfZrneM5dOTdabfjrrDH2UsZcbBQDS2ywEd2UeY10HadPkNKeVq//l1wA88jI/TLq
         dErg0YtphEaUaWCriyXhsMzQ1DJ21c2wRYCi4uxzE7UldKXopX0yVuiV/7CDceVc4Suk
         KNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=B8kxicrWDjMYXw6BGEqwBonW0JDSFT1mlNasgp5yT7w=;
        b=lhr/HSa+D8SJLQtW8H3BdFltp/EU8vG8cy8VoiylNUaJmdygh4lCN9RfVrIPulUZN2
         vqu+ycuMypEFf7r448vmCX00bGtKRLojdblQFQJcKGg/zvDEVVXJZ9NIAeL/q3mdDnr3
         1C+rJs/HkMuPvM/4MKldtc9ZKGz0vFodyI1bUbpPDqP/bIjPHuiL0NHBxj5hn4OM5FR9
         YeAaqn+PcVKRAsAWtgEyF0tZbLpU4dW+ocyRzTW8zQ4Q+gvRPe3r+3TBvYr208GR6WRr
         XMc1Vl4z7flnDR0LN2AR3BPjX+Drp/97TeoznGt2pbrcWknyYjJhG/PTDWn+OZNEErxK
         rLgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=urx5FxOK;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=IatjuNkY;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id d12si451575oib.0.2019.04.01.00.07.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 00:07:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=urx5FxOK;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=IatjuNkY;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 459C221D2E;
	Mon,  1 Apr 2019 03:07:08 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 01 Apr 2019 03:07:08 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=B8kxicrWDjMYXw6BGEqwBonW0JD
	SFT1mlNasgp5yT7w=; b=urx5FxOKdRHMEO0OB1M8YMLYOs6alDf6Orf6pzmWoof
	DWSoiQVf07Xur3DOmO1nzJs0J5QCxRRH64rm2RwuNV9fOjapO0kbdFKD0YNpbM+T
	6cjbCxEvwnCQYtk6NfQC0qIVLqe6ju6qDnu5afjCkc9CiobBzLoKezE6BWIC8Cr5
	DPLJulkFe7Nc7GAYLUwa5r+8GE3RzsZSVl1V07Ho+ebpdUFpyxfFEB4/Ic5uuZD7
	XACCnTtYa47zpDlJswHDthE/lLcwgph4VqW9+qBfjRSze7VmbyVpLXzxDsnxMu8i
	oj77NslLE0TRf055bpyL5F2OBcwaqjY0OCh0upAlmWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=B8kxic
	rWDjMYXw6BGEqwBonW0JDSFT1mlNasgp5yT7w=; b=IatjuNkYPjgGz9O/XsokKb
	CfE764tSZZnpZ72S1Pfonfbd9n1JElPxH1+9sTNoVlUkSmvgpFxnyxzV8p39iCFj
	n3ZWO1AdJurgiu7fAoSmzacRCz9CMAOpsypHYZKmo+nrYiRLNkyxeYiar5y5+UV2
	52J9egXWYRlHA33vgh+8Ky8xPOKuJGIw0vubiSYW+B2ZouD3HBCA4u8IE6BcxXpF
	vqMAiDtqjrtW0tboC88AQ6VdOZ4TEnYlsyv2G1jDmwaxTciBTjA4jaZ/Ho0oGXIp
	ea/6RBcONqk1VFYmTfZsBAFHYlRxWmkVdPN8h9fnGHp+hu0RfH9/3Gcs9hvgCxAg
	==
X-ME-Sender: <xms:nLihXHl0whq8hazL1Z6zPe-6iDcLjHDwl0muBQm0-Zx6lJcp3elSHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrleefgdduudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
    ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
    dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
    vehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:nLihXKOkMChu7O7yQ1k4tWMGPSb_kGx3PnysuotVbzMZR6emr-LevQ>
    <xmx:nLihXAP4vbKioUa7QsTECtqBYeB9ylaRhFzDS4rZLLodBF55GxhfWg>
    <xmx:nLihXAwQ2TDRu8rQPDxgyC1XOwAJNLWTUTQYNlg3DLbl3u63Of0eaQ>
    <xmx:nLihXN9fH5J8g-jVK_TD3_D8OfPLExO9Wf17OV2o4_T4FoQz8nlscA>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id A4D42E4841;
	Mon,  1 Apr 2019 03:07:07 -0400 (EDT)
Date: Mon, 1 Apr 2019 09:06:57 +0200
From: Greg KH <greg@kroah.com>
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove print
 statements for error messages.
Message-ID: <20190401070657.GD20095@kroah.com>
References: <1554101376-7055-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1554101376-7055-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Mon, Apr 01, 2019 at 12:19:36PM +0530, Payal Kshirsagar wrote:
> Challenge suggested by coccinelle.
> Remove prints of error message, it is not needed to print error
> messages.
> 
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> index 1094454..085309a 100644
> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
> @@ -119,7 +119,6 @@ static struct sk_buff *ieee80211_ADDBA(struct ieee80211_device *ieee, u8 *Dst, s
>  	}
>  	skb = dev_alloc_skb(len + sizeof(struct rtl_80211_hdr_3addr)); //need to add something others? FIXME
>  	if (!skb) {
> -		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc skb for ADDBA_REQ\n");
>  		return NULL;
>  	}

Please also remove the now-unneeded { } characters/lines.

thanks,

greg k-h


X-GM-THRID: 6609994215538556928
X-Received: by 2002:a6b:4614:: with SMTP id t20-v6mr16724183ioa.13.1539009915737;
        Mon, 08 Oct 2018 07:45:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7b49:: with SMTP id m9-v6ls266134iop.1.gmail; Mon, 08
 Oct 2018 07:45:14 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62Spmv6chyJfihM3iO+6j/UsEyaGMD46+FKv3P1Rbm0taGGYLUwZc0aRMmF5y6GkiN1myBn
X-Received: by 2002:a5e:d80f:: with SMTP id l15-v6mr9581022iok.30.1539009914725;
        Mon, 08 Oct 2018 07:45:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539009914; cv=none;
        d=google.com; s=arc-20160816;
        b=lWQ9cNrEWmrxLac+72cnyQYANj8Dkwz1gZy2/+KD0gNMKM8ZOUHDHobesHir8iJEI2
         6kkVq+pA53/FQi8IPovxgsmMCWO1A4mwdxjy2+yb9YZr5IWnupoUqhfoQc/iigiIZd4l
         IX/Vbj/hECJKDWSarFvHgjfnKQTePtXgiVEZxtmV7g/TjpQpffQfk51snUMkKr/8JCGh
         hrgdQjYpMHd7j6BvFojPVv2z7a+iPJKatHbgG4uWVWTt+K+K07nH2zR6QL9fUmBUZhoU
         vTuahajn4BqPTCrMskvfoOTQY8XoBGz3dHKa/pwnM137p2/kNkNIbjHjguENbaBqpCBO
         y+Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=gVqEJz6iAn5XkBZufTyv1KwQIISU5mGMuJTwD5qE7Uo=;
        b=C/JIUQY0REe4k70DED5J8m8kaqVD7r9DGKuqLqZHpGEM+m8I7m7iFL3DMXDnRVEzaZ
         +2KjmX4MoYMbtcOCDunoJyItwiV08oF0jUEDMC9V7W8g9tR/ix8/MfQiRrxQNqXWlgv4
         E93YLuIZrJ7fTyL+ySfFKKAPejxtIC6NpYPo+uzgtL62H2mkKlVjaQ65WVUPAgsFdMFu
         75OM7ZM73LHaaE/Qrdw85cH6AlX8GftImU/DjCLWfXR9xIC4GC5qLMgbva/k897PkjXT
         ZAIhxrMGQDxRCTDYViBKGPm9E/RnmvtIVlQJD0MhsDL9AR7OBDDaG250k9yR2JsMRyVe
         Vv5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=CLhZZRBE;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=eceCsjhp;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com. [66.111.4.27])
        by gmr-mx.google.com with ESMTPS id n1-v6si348113ioh.0.2018.10.08.07.45.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 07:45:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) client-ip=66.111.4.27;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=CLhZZRBE;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=eceCsjhp;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.27 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id A36DC2217D;
	Mon,  8 Oct 2018 10:45:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Mon, 08 Oct 2018 10:45:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=gVqEJz6iAn5XkBZufTyv1KwQIIS
	U5mGMuJTwD5qE7Uo=; b=CLhZZRBEqfOdPB3CGviuPxjKv9XxOR5Gxau3og00b4n
	KSvwaKwtA/k1nIRVn/X/hNEPvgPbL7wVIjCTanAHr5eBbXfue9kEYJE7bWtN4As5
	pMT+tAB/x/Z/x17WoM8l7ZK0PF6r5+hUW0GJqgUJRsab//UEPqxqwVYtReSmyeXi
	yNFzTILuYUu7xOHdgK4dqnKWQ8iX4Hfpfkx7XAUBxj1mYA6FkBhXV6soziro1Owf
	NHB/A8TLqOl3WJkctLmsj15S/Lt7KHKO4Rt171+SHfVCVm96MAHjyzyVXSoLUW4u
	+Zo2nxukup5MQpXWN3mPRBt8/tMXTlLuj4EHdEs6dFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=gVqEJz
	6iAn5XkBZufTyv1KwQIISU5mGMuJTwD5qE7Uo=; b=eceCsjhpfje0VIIKvjI2Ba
	uz7Ha1xsYnuS+A5Y8wC88H65lWgrDwWkqjitGjuWUKcrMG8+RffiiIyHP++oWG+d
	3pRj2eSaxVjmBiRG5LNFvI9hS64tFgG0zIPlRJ5aFO+ZgubA1ctsiOYmgOcDQ1jX
	9MoWCofxVIkXF7jKVTmouOMjX2HxE1rmPVRV5e2DioGys3hPfTkkZY4WCZCQTVyy
	udljtNAkSlXHU41dd5WamUA2sNsXkMssVSYoeFs2q13QmPbKQT2XFrlkT1Z129Gb
	WuCS+XnRZodXU+X8kS64SQmVvPTP7/kvOn4edWtS7ezFkUSio9F9CH1/ncTVqzqA
	==
X-ME-Sender: <xms:eG27W-s0oZhNWTnKtk6vqJKAJrRyZcLb745q3z8umJJjbJ2xdI9K1A>
X-ME-Proxy: <xmx:eG27W8WJFqHovZEv7DILnjJbthEYIkxMATpjgw5umv-CnavAAAgLeg>
    <xmx:eG27W8YlHr0zcgqokqF0DzPYyKyVePJJ_RALUujKXYRlx68b_F_z4Q>
    <xmx:eG27W3snK11ApztCVqkjsnmmAr58aYfQ5vQdf33FcuNX3Uu6-l3Nwg>
    <xmx:eG27W-k0x33J5TXP5Y6Smc0fgf9TniMCZtCmL-juI7FBZLv5lrmnFw>
    <xmx:eG27WxSPWCbpHMcpG7nsJCApokUkix2up6QD_t7saQu8umr-DQI5Mw>
    <xmx:eG27W-hSZx57WLx72bLuJ52aAsl0NtLp5XFUy7iYwBv50EJFinwHbg>
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	by mail.messagingengine.com (Postfix) with ESMTPA id C9C6E102E8;
	Mon,  8 Oct 2018 10:45:11 -0400 (EDT)
Date: Mon, 8 Oct 2018 16:45:10 +0200
From: Greg KH <greg@kroah.com>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel][PATCH] staging: mt7621-dma: Fix Spelling
Message-ID: <20181008144510.GC15968@kroah.com>
References: <20181008143321.GA12062@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181008143321.GA12062@veda-VGN-CS3AGH-R>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Mon, Oct 08, 2018 at 08:03:22PM +0530, Bhanusree Pola wrote:
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> 
> Fix Spelling in #define GDMA_REG_CTRL1_CONTINOUS. Perhaps 'CONTINUOUS'

Changelog goes above the signed-off-by line.

> ---
>  drivers/staging/mt7621-dma/ralink-gdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
> index 6d9fe175ea52..a430c8afa3d0 100644
> --- a/drivers/staging/mt7621-dma/ralink-gdma.c
> +++ b/drivers/staging/mt7621-dma/ralink-gdma.c
> @@ -47,7 +47,7 @@
>  #define GDMA_REG_CTRL1_REQ_MASK		0x3f
>  #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
>  #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
> -#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
> +#define GDMA_REG_CTRL1_CONTINUOUS	BIT(14)

If you changed this, and no code broke, that means this define isn't
used anywhere, so why not just delete it?

thanks,

greg k-h


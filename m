X-GM-THRID: 7021822549853995008
X-Received: by 2002:a05:6e02:216f:: with SMTP id s15mr187783ilv.259.1634912797072;
        Fri, 22 Oct 2021 07:26:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:2b97:: with SMTP id r145ls1723521ior.4.gmail; Fri, 22
 Oct 2021 07:26:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwNh13f5B9+EioXWJ+1EtSKR25Eqaj0bDIx2YEt2I1UJVPlrhVVxA+UvKmST98iMigWebdJ
X-Received: by 2002:a6b:fc11:: with SMTP id r17mr9351843ioh.59.1634912796141;
        Fri, 22 Oct 2021 07:26:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634912796; cv=none;
        d=google.com; s=arc-20160816;
        b=FdfMwiHXHfhBnxpgUW3a4hIWNGOTdTzI08I1FWT4qz7KmEepBzOzz+56cgQp9jH4Bz
         64H+Tj8weMp9jRuNZTT2Ezz40YgRN/KGpr85yoT9ra8f1YXsNQIP+BTgU3+k4a7HZfp/
         KDkK4SF1TtVQd+yu/QwfxzoNNDGSesdpoRHfXSrIH8JsJg+HADxfZT1T69x4glO7igAn
         VZltOmrjUARMqg9rQzHxtEtw2xVcrUvRgn0R6PBEV2wx+/3N6k2ivw1Vqy+W15e7klB+
         mMibTQsAwwgnjZQTP/5d9B4rSyBsxOm2M/jeV9RMGlOgvgZgvNgOONW0WVLlK3YoImxV
         +P/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=JhwFuccVZQeiwvNuHNQ1RS7yIFWPLwTUxexiIKglluM=;
        b=D74f1oNnhohIkugBJiQgpYBSiydFK+2VoJgeYeSEzY3BiPGL7YQiydRMpuFc8TGXRW
         aNuyvIFMmz4Dkpyb8oKiZjc0UM+/ffhVBwFbAWJbWJ1S6ZJtDClZ1L0vObygN4ItDz43
         3y1fMwrDIOegF3n391kFBNy9mL4kz/RrTTvTEtkIkp9bso4y6wK2dsiO49UC9FAWQZft
         mNlp+yFuQySCKAMiseZAiLofKMSEwSh6wSrq+NmgBy4X00MgCTVTde46+RFxjDanMWdI
         o6p1rqrND89MPFC+c2Fv28T8QdvmyO7nQuaQu/Xj80vsaumdQH8INrzjpSrNJd14u7F6
         0ryQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Z4u24KML;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id d20si700088ioy.2.2021.10.22.07.26.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 07:26:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Z4u24KML;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id o133so3771137pfg.7
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Oct 2021 07:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JhwFuccVZQeiwvNuHNQ1RS7yIFWPLwTUxexiIKglluM=;
        b=Z4u24KMLF/8Ym9rkji3BWniCuaq4Qc7CR11xwyizB+rQcVNYj05t0WbBDBmi0wZkB/
         M2FzT5a0jpdsgEIW+TwVATCsXGR8mzfRywoqD0fF02bgM+DAgOTjhdObYu6ujxfBk/yN
         7W4sj6mS59Ilm1u+Jm/+0vyNko45GJoV0NiwBxZm3BcZZSbHMKwDFMgO+i9XcHeuDSmh
         gyTsiIql7khMX8Cq/kc6i3Lh/TDPdSOzKsqfcu3JvsnM4coJvp22QNdmkdscpWuRrqQd
         HKbrphcur2Qum/YZRI5yFrztx40OrO+Ngq+xUtIvYJrttdnBisWd7StdVNFJuOBk+68b
         s1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JhwFuccVZQeiwvNuHNQ1RS7yIFWPLwTUxexiIKglluM=;
        b=D0jD842zoLtJo79XUydX7JcDN3liPTN3XCPVWCI9X+0nguja7aZ73jqUIEb0ygjRxw
         a4fgWqJjS3rb/XDVP/J6o+694hkq6V/09Q+aGpG59esGrDdm1moX+Lg9Ovg78EQt7Xhg
         5TeDCMzMTZrfD2pzjuDNpd4KiXBG+3g7U0GxixJfS7JqGjuaQkRnBHzpMoLOso4csElH
         JIc7/hShrjEbekCWfgYg2yjfj8hsE3G3GE0fteq1dLaYG1LvKL0YSsYng/xUPimGEfLT
         JjXDi6Zq9/aFXI+aLSsBufptasbh+WWJ9ZMJgI+4FySkICH1frIz9oXq+YcndSM3HT46
         RPyg==
X-Gm-Message-State: AOAM530bnBo55ed90+/jJ2/tJLMvV9+UroIpBN4KDoEgIpK1ejfz5y5G
	/Ku55H+jmPsWBu3u0S6R2bI=
X-Received: by 2002:a63:8f4a:: with SMTP id r10mr22860pgn.337.1634912795519;
        Fri, 22 Oct 2021 07:26:35 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from [192.168.1.122] ([122.181.48.19])
        by smtp.gmail.com with ESMTPSA id g5sm1238858pfc.65.2021.10.22.07.26.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Oct 2021 07:26:35 -0700 (PDT)
Message-ID: <049d4b3e-ed32-9b48-0c2e-19f9af95ca37@gmail.com>
Date: Fri, 22 Oct 2021 19:56:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: vt6655: Rename `byRFType`
 variable
Content-Language: en-US
To: Karolina Drobnik <karolinadrobnik@gmail.com>,
 outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <cover.1634826774.git.karolinadrobnik@gmail.com>
 <f0b6818d2b15982081bebaf14f830f4646f61fe2.1634826774.git.karolinadrobnik@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <f0b6818d2b15982081bebaf14f830f4646f61fe2.1634826774.git.karolinadrobnik@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22-10-2021 15:07, Karolina Drobnik wrote:
> Drop Hungarian notation in `byRFType` variable in
> `RFvWriteWakeProgSyn` function. Change it to use snake case.
> 
> Fix issue detected by checkpatch.pl:
>   CHECK: Avoid CamelCase: <byRFType>
> 
> Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 4 ++--
>  drivers/staging/vt6655/rf.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 0dd91b0433f6..3f57834901a6 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -676,7 +676,7 @@ bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType,
>   * Return Value: None.
>   *
>   */
> -bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
> +bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
>  			 u16 channel)
>  {
>  	void __iomem *iobase = priv->port_offset;
> @@ -685,7 +685,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
>  	unsigned char sleep_count = 0;
>  
>  	VNSvOutPortW(iobase + MAC_REG_MISCFFNDEX, 0);
> -	switch (byRFType) {
> +	switch (rf_type) {
>  	case RF_AIROHA:
>  	case RF_AL2230S:
>  
> diff --git a/drivers/staging/vt6655/rf.h b/drivers/staging/vt6655/rf.h
> index d3f2b8dd6afc..0939937d47a8 100644
> --- a/drivers/staging/vt6655/rf.h
> +++ b/drivers/staging/vt6655/rf.h
> @@ -60,7 +60,7 @@
>  bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData);
>  bool RFbSelectChannel(struct vnt_private *priv, unsigned char byRFType, u16 byChannel);

IMO, probably we can sync RFbSelectChannel as well with similar notation in another patch.

>  bool RFbInit(struct vnt_private *priv);
> -bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType, u16 channel);
> +bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type, u16 channel);
>  bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH);
>  bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
>  		    unsigned int rate);
> 

Regards,

~Praveen.


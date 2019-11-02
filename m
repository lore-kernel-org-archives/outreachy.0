X-GM-THRID: 6754500769734459392
X-Received: by 2002:a67:544:: with SMTP id 65mr7613257vsf.12.1572659450258;
        Fri, 01 Nov 2019 18:50:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:8c04:: with SMTP id o4ls316424vkd.4.gmail; Fri, 01 Nov
 2019 18:50:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxKoUXhkb6sAqh7hU+vI3aM4iMTC0ts7eWJSspxGki+VdbckqVAVdu9Ctb6dWeaEW5NvhKT
X-Received: by 2002:a1f:21ce:: with SMTP id h197mr6797541vkh.84.1572659449022;
        Fri, 01 Nov 2019 18:50:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572659449; cv=none;
        d=google.com; s=arc-20160816;
        b=E2H9Gqk0L4naGxzR5VIt0s0jtzCV7otoNfy3jtY5XII94hB7ICE938GZBDIiCThv3o
         5nhn/G3QLwad/2YQ5Jk+SexbGYDJA29iNhwMX/mOzJeADw2m9K/5NFtqHj2v/pc3J73r
         t3zuSB/209E3PcjjFi3KVm3umpC+D9ABNf6ENHgyf6UafREioNHA0RWHoLVfm0SRRnr2
         Qru1Oe+fVyzUvACJEJZH+GomreuysOLzgsi/rL00izbjDmgr5NnMR2mQCbpUYVZo3Qd5
         xaeY42hvWig315hTP0oY8VetB8z3hfknrcrSdvU1BOz9+1QY4n2VscOf8WZDlPn/YB5f
         XvMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=HEmilNnfVUnO6EepDOEdAgoRduvlFylCbxOE9lJXs8E=;
        b=D7WvavGYW2F2nEcCVm4W9TaW+AQCUmOYvLoTH4m5meAWOhiWFS1sWkg1/iEdKrgfIF
         Pzdj1r1jJtjkswLVakPfji926G9sSWRsLugHywd4Vp0e5vdBlOZ8Ijxn1Dj6+6poCKmu
         jpxqCR6A5hDuSL8xs3wPtsC4+I0iu4dP0AUc+74rg2YKgtVZDKbe4+tYQ/dIftwzBTFK
         I7u7YLtGe14vBS3/2V+Y/k95j85/2iAt+XAHYt8TBhZO8qzV37LxSXa6KdGCfsh17byp
         TVEhgXAlsIeuYRelDz3H0NHoZQDx1fs98krGM20pQ0Vx0huMCPTmM1yFw6IFl2afLokb
         LotA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rNc5jEJN;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u206si596785vke.2.2019.11.01.18.50.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 18:50:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rNc5jEJN;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id u23so7550669pgo.0
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 18:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=HEmilNnfVUnO6EepDOEdAgoRduvlFylCbxOE9lJXs8E=;
        b=rNc5jEJNn3c7kuZGBpT5OiC1dV9U2W0ExMatemdQUitGmtLczkYnFG/U+vDq4xmQf/
         0TH6iGZQYh655gB+e1iwvDMXBXy1xxz/IJ+sVwpX2DhekvWmr2hKrWNk4DAFw6WKWdzO
         1xOS84vZbity/xseD+rn52rUTwsHlzaOfx3eO6c0LSF02B7jCXqdNH0N2FzEZFELw4OO
         S0rKrVt0VqYyVosGht8Qng8kNFew0k9hlHdikJCFWVhXQWEsTfSx/DT1ZpiFLKjLgmQ4
         U63inHoWk5tix+l7bBTlB1JM6VxhTFtXhiMceKd+7MHY1+qU0QDUqf2CQBUEM1lzgnDO
         IZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=HEmilNnfVUnO6EepDOEdAgoRduvlFylCbxOE9lJXs8E=;
        b=PWmsClosOqMQKyIUvakeE2w5h7QSpOQcfpDXttfre1UROCYfNTWEVMyuAaAN3uoH0u
         4cVgXCtdVtOdjSps3NnWBIJ5Xg81lSyZ8u+umW7baW/tP6t7HfJugmuKyrKjzx3uKFQ3
         ymsZGSij3cwGVUPcL6819PazX/yF78g5d4OiiM893lDavFVYMhcop/bemAPk8zR4EV0+
         iqWV8ATEMFnyFnb1pPb49lAj4Gi47nbgMHWbo2mIoToUuLBDXp+9xmALjKcvDJBgta6w
         W9TQgwvfeqTFD5Z/+iUbz8L+gDR6g8G4VRxJdkG+8C73lEs58H1BPe7gMdW5KI0Nf8aP
         Dh6A==
X-Gm-Message-State: APjAAAUIAN+F16Dy2xG1XIksSOVASd1zefDvN7d3QOwYJDwd5Jz3vwWa
	i5NBRR3+lg2mqsbozfejVEuBoqEE+c+AZA==
X-Received: by 2002:a17:90a:8a8a:: with SMTP id x10mr19978350pjn.113.1572659448178;
        Fri, 01 Nov 2019 18:50:48 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id 16sm9944944pgd.0.2019.11.01.18.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 18:50:47 -0700 (PDT)
Date: Fri, 1 Nov 2019 20:50:44 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH V2] staging: rtl8723bs: Remove unnecessary conditional
 block
Message-ID: <20191102015044.tgsr7np4ek7br6ar@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <20191102014017.t5rtf5syzs762nea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191102014017.t5rtf5syzs762nea@gmail.com>

Hello Greg,

Please ignore the version change for this patch. It hasn't changed 
I edited the wrong commit.

Thanks

On Fri, Nov 01, 2019 at 08:40:17PM -0500, Javier F. Arias wrote:
> This patch removes a conditional block that had no effect.
> It also reformat the affected lines to set the right indentation
> after the removal.
> Issue found by Coccinelle.
> 
> Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
> ---
> Changes in V2:
> 	- Edit the commit message and description.
> 
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c | 19 +++++++------------
>  1 file changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> index 0f5dd4629e6f..b4b535c66bae 100644
> --- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> +++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
> @@ -551,18 +551,13 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
>  
>  	pregistrypriv = &padapter->registrypriv;
>  
> -	if (pregistrypriv->wifi_spec) {
> -		/*  2010.04.27 hpfan */
> -		/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
> -		/*  Timeout value is calculated by 34 / (2^n) */
> -		valueDMATimeout = 0x06;
> -		valueDMAPageCount = 0x06;
> -	} else {
> -		/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
> -		/*  TX/RX Balance */
> -		valueDMATimeout = 0x06;
> -		valueDMAPageCount = 0x06;
> -	}
> +	/*  2010.04.27 hpfan */
> +	/*  Adjust RxAggrTimeout to close to zero disable RxAggr, suggested by designer */
> +	/*  Timeout value is calculated by 34 / (2^n) */
> +	valueDMATimeout = 0x06;
> +	valueDMAPageCount = 0x06;
> +	/*  20130530, Isaac@SD1 suggest 3 kinds of parameter */
> +	/*  TX/RX Balance */
>  
>  	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
>  	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
> -- 
> 2.20.1
> 


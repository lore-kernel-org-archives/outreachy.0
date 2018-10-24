X-GM-THRID: 6615663139748839424
X-Received: by 2002:ae9:f208:: with SMTP id m8-v6mr1714560qkg.31.1540382208139;
        Wed, 24 Oct 2018 04:56:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e6f:: with SMTP id z47ls3365441qve.10.gmail; Wed, 24
 Oct 2018 04:56:47 -0700 (PDT)
X-Received: by 2002:a0c:d601:: with SMTP id c1mr1678387qvj.51.1540382207629;
        Wed, 24 Oct 2018 04:56:47 -0700 (PDT)
Received: by 2002:a37:ae04:0:0:0:0:0 with SMTP id x4-v6msqke;
        Wed, 24 Oct 2018 03:45:47 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dcWI6FB4TiHE7xu6dFYwLbWgVc/AJnsHXcWi0l08RyEekkAt2Y9BX9oZ9fc5DKH7NyiFC6
X-Received: by 2002:a1c:9c55:: with SMTP id f82-v6mr227708wme.14.1540377946698;
        Wed, 24 Oct 2018 03:45:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540377946; cv=none;
        d=google.com; s=arc-20160816;
        b=EAPEnz6TA0uohGXTi0RalRJkvMH1qp6Hw3ga2OMyTbkfdO2KRgix9KaQ5EXwjlxjwH
         vpskcqKQm+cxLexNdbWzfC40MKylM9yji9crmokhRQ75Dsarq58kutb/Y03avxSZb0LP
         5eosWOdtBLtKbaIsG24v/LgDpksEeiZG89serb/6583JGwrwUwHkv75nOVSGxM5zIFMH
         xzkyBQCVGiN5PBVwdqhExkZ0bpY0EsqQp0QzA54XnKMdx+NziL0MqOhbKfWSJfvClyFX
         6uelrsaRC1vWPIAL4laMB6rdlOFCW6D4OzV+2YrPkSttbSZ+Tw1vVWippoZaE/niDmXg
         myqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject:dkim-signature;
        bh=2Z1x24zFXOEh96eWa1oNBNP3KJopWafctSfuWyEhL24=;
        b=jZ5w19fASMdYCTWv8YQ180vjYqweMER1UknfckEQRF7Nghs6lsIm2WW/zMSaZL3GWt
         q/Vt3+IjOEyTwrCAeBmokU6mQHqvggBEXsGAXRawJ80llbDHTe302MgJnCyIg9x/ihYf
         rakJCA++HAHD+SZrJAgJa/m0SGJyBy/zGHA6sFOEAbETYVMTmLKhF7yUVnm3h2sIEp8I
         GGjbYK2db80tBTgyIzr2bNairsrG78Dmt3x/J+3v+YwfxeYbeckiIi7vzvm12S5NqqoY
         pBjFmjAFueBgHh9U8LpMLaObSCvN5QPCumgKym2PQqQXe2PEFvyaY6n+0L5wqWemXpqZ
         R0Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m2a4LdxP;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <matthias.bgg@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o9-v6si129035wmh.2.2018.10.24.03.45.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 03:45:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m2a4LdxP;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id 143-v6so4836287wmf.1
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Oct 2018 03:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2Z1x24zFXOEh96eWa1oNBNP3KJopWafctSfuWyEhL24=;
        b=m2a4LdxPoznaDLivY7crzzymPqsJUbg76coq656mTAxrwhFuLgtLstC5zpsCsCAFJ6
         Fn4hMH/RRlSd+XT6ezHJ3gxZckf6OXw68lxgvUH+KDuZqHHH6zaSMDuU42LDZktyvS3X
         6opSF+ESTGwPpWk/HAh7hPcCaZ7WOhkfARonvFBJlarGEQhxL40shvgZ7UEz9bUi2MoI
         Jzoo+r2DECNKB09dra8w7ShdnHXGRGKY45+Dc22hYl25R/yeZQw77tS/rNyd2EFGGhoY
         TMvlEKJwB6Fe1jc0puQN7y5ramg/HZ3vditzlIvXHFfuAT3prU/h3scVu5F3bY0M8rE/
         nafg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=2Z1x24zFXOEh96eWa1oNBNP3KJopWafctSfuWyEhL24=;
        b=GJ5YROV4XWH1/BtTT+EoX2bo2ovrxyevf1ImKp+uNnykZ/atouLN5FXWGBZHACUl/c
         6mNNE4E23oGviVjt/rvoFBNy6YD8pTQK7XWmREQsKouG2swsZeswubY/vW+w90ot2waK
         GpxZ0zNqAePKXau1IPDoIrckt1yjPDCUcOks1UFBS0NP8kT5pQliSTeKY45oWb44SNSy
         2eGKGFCt3zALwVgGV9TfkF2RoQKWioqDS8J6iHfTsPUq4rQuTLNKLwz8moiVEHjCntJr
         CXe63pCjOKZUaj99dPwV9SoxWzldIp7Zi6R706Wd9eKPL55+bsJW4ftpsstmvxCuG4zP
         aNCA==
X-Gm-Message-State: AGRZ1gJD4M5ygHmfQigTivEw9LKwmKH8NZxdmZ5sna71GjcKPoDQLAnv
	3GXfl/bjM0SFWv90ULxcDuQ=
X-Received: by 2002:a1c:1203:: with SMTP id 3-v6mr2058194wms.21.1540377946077;
        Wed, 24 Oct 2018 03:45:46 -0700 (PDT)
Return-Path: <matthias.bgg@gmail.com>
Received: from ziggy.stardust ([167.98.65.38])
        by smtp.gmail.com with ESMTPSA id 140-v6sm4388408wmx.34.2018.10.24.03.45.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Oct 2018 03:45:45 -0700 (PDT)
Subject: Re: [PATCH v2] staging: mt7621-dma: Add braces around else branches
To: Kimberly Brown <kimbrownkd@gmail.com>, outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: NeilBrown <neil@brown.name>,
 =?UTF-8?Q?Christian_L=c3=bctke-Stetzkamp?= <christian@lkamp.de>,
 John Crispin <blogic@openwrt.org>, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
References: <20181023211142.GA2661@v> <20181024045653.GA2864@v>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 UXI+r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <af4594cc-05c0-672c-d560-b50705ceaab3@gmail.com>
Date: Wed, 24 Oct 2018 12:45:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20181024045653.GA2864@v>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Kiberly,

Thanks for adding all the emails in CC.
I would encourage you for your next patch to distinguish between CC and TO.
You should send your patch TO important maintainers in the get_maintainers.pl
list (as default, to all of them). If there is someone you really want to look
into the patch, then add him/her in TO as well.

Put the rest (people and mailing lists) in CC. Why? Some people filter their
mails so that they can concentrate on the mails they got send directly and look
on mails they are in CC with lower priority (maybe not at all, because there are
too much?). So it is important to have the maintainers in the TO list and not in CC.

Keep up the good work :)
Matthias

On 24/10/2018 06:56, Kimberly Brown wrote:
> Add braces around else branches in conditional statements that include
> branches with multiple statements. This style complies with the Linux
> kernel coding style and improves consistency and readability. Issues found by
> checkpatch.
> 
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
> Changes in v2:
> - Added people and mailing lists from get_maintainer.pl to the CC list
> - Added Reviewed-by line
> 
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index df6ebf41bdea..35556f024aa1 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -418,8 +418,9 @@ static void mtk_hsdma_chan_done(struct mtk_hsdam_engine *hsdma,
>  			vchan_cookie_complete(&desc->vdesc);
>  			chan_issued = gdma_next_desc(chan);
>  		}
> -	} else
> +	} else {
>  		dev_dbg(hsdma->ddev.dev, "no desc to complete\n");
> +	}
>  
>  	if (chan_issued)
>  		set_bit(chan->id, &hsdma->chan_issued);
> @@ -456,8 +457,9 @@ static void mtk_hsdma_issue_pending(struct dma_chan *c)
>  		if (gdma_next_desc(chan)) {
>  			set_bit(chan->id, &hsdma->chan_issued);
>  			tasklet_schedule(&hsdma->task);
> -		} else
> +		} else {
>  			dev_dbg(hsdma->ddev.dev, "no desc to issue\n");
> +		}
>  	}
>  	spin_unlock_bh(&chan->vchan.lock);
>  }
> 


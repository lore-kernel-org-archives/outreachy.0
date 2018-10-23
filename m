X-GM-THRID: 6615663139748839424
X-Received: by 2002:a37:b4c3:: with SMTP id d186-v6mr16081117qkf.56.1540330129810;
        Tue, 23 Oct 2018 14:28:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4e84:: with SMTP id c126-v6ls2518577qkb.11.gmail; Tue,
 23 Oct 2018 14:28:49 -0700 (PDT)
X-Received: by 2002:a37:7ec1:: with SMTP id z184-v6mr18822607qkc.52.1540330129335;
        Tue, 23 Oct 2018 14:28:49 -0700 (PDT)
Received: by 2002:a37:ae04:0:0:0:0:0 with SMTP id x4-v6msqke;
        Tue, 23 Oct 2018 14:22:34 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63VW556rppkgrxPxc6bbTqCSdMuFzjCbaxtLfAvAz2VgL1+3zZUbjl9gyc3XO4T8Gkvkuo7
X-Received: by 2002:a2e:460a:: with SMTP id t10-v6mr1907283lja.30.1540329753594;
        Tue, 23 Oct 2018 14:22:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540329753; cv=none;
        d=google.com; s=arc-20160816;
        b=w8GxnlXy73c2I7MqZBWFZYrnHT7WIkL6DpW1caBX+AILx9aG5DRBib/SHER9/5x4bo
         VOb0xA1sX/C3/HytoPSOSjBz/SaPcPkGSlfLb8CTcrbVzpsdirJlaPdJNhYYHb1M9OET
         lqm2eNpvoqZZ5RCeHAjmFV/hRBhciu6/E2hzyO/J85J+UGDlbHMCjdkKuKMaDSzKTAqN
         GV/dUHeh5FNNzft5QBGFeMe5yw7q9v48hL6cKfoPlYR6t+NaHsBQbxShRVUM60Fh/hGu
         nuNFGCu3T2Vh6JEXUd8kOEhKhHPVsUpccxuVVBtf8jzzECDchIkDs63oHDJXe59yJLKr
         1zhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject:dkim-signature;
        bh=Wde6iJEqj1KWss/YHIJdGcgMRNVxyCs8nw/+Zgo441U=;
        b=EfBOLP3Yg4ttfmoTRkb3TxB2rMCqOVLb02aOiic2/KRKvSZfPw6qyZpsvCMtaQI8cl
         6NcNswMCt+v4F2Co4L4g4sXVjrF77Sk8suVyerXBuQquxf4ElxOI6Vwfzdj+EC+R8Lsc
         lHJqcDO8gNWQw0d61A8i0lUkYsmr6b28dznx2YbEct+NH0aCuEwpwbHWAg9DT/V+gJj9
         UdI53pdxou6/L22PouD1BEpDCto5o1MY3O+4ly1tXVjiosPhOQB+FSpJ9bC2YAKcCXet
         fQx+/NR9HRNq9Vf2gXqe8vvUYTkBBUvdtJQkf36BYqOiwW5otxdQnXlJ2XYrfJIAvkt4
         F25w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VtaHnUCt;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <matthias.bgg@gmail.com>
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id h192-v6si87955lfg.1.2018.10.23.14.22.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 14:22:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VtaHnUCt;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x335.google.com with SMTP id a8-v6so3254997wmf.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 14:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Wde6iJEqj1KWss/YHIJdGcgMRNVxyCs8nw/+Zgo441U=;
        b=VtaHnUCt/sii+pLpyomcxoCaAZh7+fYrZxGNF1THramfTUjoERHOeF2/bZAu35D0lf
         gcV5TmYsB9zYHBAhXexl/VUZWSBMl1u6unqmc8X5+1A6uoDu4nWHmK0VEymdPVk/tnvs
         M72PlL9ql7dTMdSyPgsjJd4s07HZ4pWUvWW0wD3yM5E0LSjE1A2IGeBf74QQJj1hLTLC
         XakP1G/YtZL86SnriWVY2gECVHYysJAcZn1xvo2uC8ygv4/47B73zp6DECLZgf19YV1Z
         DbF6n/GfcvG24LXui5wv0JPRQpWfudtkejrcEsmWNXpZzKyWhgNd0DZvfvXaM1cQjq92
         jIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Wde6iJEqj1KWss/YHIJdGcgMRNVxyCs8nw/+Zgo441U=;
        b=kPPmmiIU99d4RSVcgfpuOVGYhs4FuER4l4EMkF4JxUjsVDCcplIkG2/3PG9HPOVccD
         /p4zxudOjAgArG9gQ9TJWMVViI1AeWkAkNGA1ZFLq0FkypK16PAG77WJ602/2fb0nXV5
         o+8pD4L5RNQsQMy1DWpRmQsHZ53ifbea7KNNXlg+eaZKW7zPView4O9b0WLjcJAZQxds
         GQRQKjfZMNHz1oRSQScOubTTKfv8ThmJYZd7DA47d91zlxI4ZfDgV6NC5b4hdr04UU/4
         weAdr6mSQ+Ur9IZMyQ6kBAkungMUEDX+DJYg8Kj0ezoKgXsu3XxlABdcex15f2DK1rvZ
         p/xg==
X-Gm-Message-State: ABuFfogfFRSiSH+YF/UMlzRg85jSV7Dtcx1nTn55W+cmDzx7u/btZ0Di
	Wdl+dUCASDSpH8v4I1TGedSJmwtS0gA=
X-Received: by 2002:a1c:1fcd:: with SMTP id f196-v6mr21994490wmf.19.1540329753112;
        Tue, 23 Oct 2018 14:22:33 -0700 (PDT)
Return-Path: <matthias.bgg@gmail.com>
Received: from ziggy.stardust ([81.145.148.99])
        by smtp.gmail.com with ESMTPSA id 125-v6sm2899006wmm.25.2018.10.23.14.22.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 14:22:32 -0700 (PDT)
Subject: Re: [PATCH] staging: mt7621-dma: Add braces around else branches
To: Kimberly Brown <kimbrownkd@gmail.com>, outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20181023211142.GA2661@v>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 UXI+r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <50f85d7b-e64a-3725-38fc-8733903e099b@gmail.com>
Date: Tue, 23 Oct 2018 23:22:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20181023211142.GA2661@v>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 23/10/2018 23:11, Kimberly Brown wrote:
> Add braces around else branches in conditional statements that include
> branches with multiple statements. This style complies with the Linux
> kernel coding style and improves consistency and readability. Issues found by
> checkpatch.
> 
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)

Looks good to me, thanks!
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>

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


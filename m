X-GM-THRID: 6659597331609944064
X-Received: by 2002:ab0:3246:: with SMTP id r6mr19003398uan.1.1550591808377;
        Tue, 19 Feb 2019 07:56:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2706:: with SMTP id a6ls3481654uaa.0.gmail; Tue, 19 Feb
 2019 07:56:47 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZZXUhaAwJ9J4u4aRgqCYDfqU7VXgc70yUB1qm9pZ7uuTITJFPWzPS+QFkSRnrdKt8CYPPR
X-Received: by 2002:ab0:4e23:: with SMTP id g35mr19023664uah.0.1550591807736;
        Tue, 19 Feb 2019 07:56:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550591807; cv=none;
        d=google.com; s=arc-20160816;
        b=lVnwgfKOZipiz9p+tGofm6x61fORUuMO3gx9rygOle8Wy/73ne/MbTh+a5g0ZSGl08
         IzKD+4uuo3ehGi6pf0hYkjzU1rvf+Oyfj6VlHVD4G49b7RfQXQvxMehj4lSmWpOhkSCm
         G92IUKrW4ZR4MNwKl3IHmcX5vpVSpngZECkUwWRWs3IgEl/2Gd8x67bu3Y/mrgcZm+eQ
         Yjt+j7sOVG6OjmcC0noOvVOjd4OjPbKJTq7IgV4ibjI7HiKZS7aS8KwV7Of2vCJqsvt1
         PnuoxxMDe3B3EVWGxR0+9FmDIBk9lDQPSHRVbQkMEgXxjW1XJNNf7wcSM9620hx7+ro+
         ErTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=SnPMPBYhwas1IyYhjoKK/O0zkxaaqtWg4iDcAAftVQc=;
        b=Kc75Z/uj5D15aK1e3143D9P3CkqWB4qm0Bw+wek6NwvMfaFJZ/vFSWvO6zQ15Xmkck
         vNwgTMZ/YvKwRMV33cLCMRX7e0BlzHkblV3WTXbne5DAjQZJ0r4Pio2ulFKUJup7ahM8
         NPmvsDgd9LPMgPlNcmTlai+6hW9S6HxB4be5JUeEd4fV7JJmntyLffLKzZ5QvGRUMuHp
         b9QMDHJlzncsCngeUEQJxqV03dqOEkmgwCDAE1oKatCxICtReS91I8EF7ZAjtj1gkYD2
         AbKeyqSjWISlMHNC+FfBbmmhJyRyIU4VP3XQ59jazXCWrq3OO+YxfjDhz7OkVkIGlPti
         Ru+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTrLCbCn;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s73si61177vkd.1.2019.02.19.07.56.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 07:56:47 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dTrLCbCn;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id o6so10630684pls.13
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 07:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SnPMPBYhwas1IyYhjoKK/O0zkxaaqtWg4iDcAAftVQc=;
        b=dTrLCbCnxT2yX6f72VtyKcqg0hlUTgSyIkU62z5tx+YI4Pg27qONYoZDYl4kbi1so8
         sRZjs2tFbpNEugEp1JhWEUSsvWhnGqZJXTzn7RfFqkiexAGXOuM22wN5tJuQHXazZlnO
         ybkAhvMFXicEGaYJUeifLOced1+p997kUJC5J5FmNDIiYnveZUe2EZslcbl60nuBAdpf
         W24PvFV7OYb2Qqvl0u0gQJXrjrbOrUY2IkyrJwhvkJePff/bVBwyGD7bzdGafCg2ga/+
         Sn78hTf6s7qS0LXvUJ+4HLnI8IB4AWdQXwGp5fDnXYML42mc+nWnVIMw8a+InXCw63PF
         wCdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SnPMPBYhwas1IyYhjoKK/O0zkxaaqtWg4iDcAAftVQc=;
        b=nT6DXHsjJON18J1iu7jOG6hR3UxcAkWjWbu0ft6yXYkLuZE8CVqUh163TVXROIAAiV
         l4I6QAQe++ekFRgYzh7M/JM98PTaKeTDgUBDUXxGvW+Up6PuP+UZyu5GbAe0GhPHD820
         YgA3bDGKGU/GYjSoi5vapUGZVsZmA+VOM2VryGdEhCXPBCEhW3s39JF0GzRiuxidjGyk
         cSzzcbhNbW+L0eF1H29u0FqO8i26WB12JcQxY1gSa7JySmXGP6mrSahI3qrP6QQ8LBbJ
         TFU0LDAaouKDIQy6w74PIRnP9QLGGZb796cUIgRAdOylmatAqXnAB87uszAz6X0mR/Vt
         peLA==
X-Gm-Message-State: AHQUAua8RrZslNXSXbeLSV14xe5sgTNkr+G77AxoeTrDrRFysAis/8Wx
	yf1w89PUowVU66FFwJFmEPw=
X-Received: by 2002:a17:902:59c3:: with SMTP id d3mr21107283plj.214.1550591806671;
        Tue, 19 Feb 2019 07:56:46 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.77.41.93])
        by smtp.gmail.com with ESMTPSA id u87sm40334900pfi.2.2019.02.19.07.56.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 07:56:45 -0800 (PST)
Date: Tue, 19 Feb 2019 21:26:36 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH]staging:mt7621-mmc:
 Prefer using BIT macro
Message-ID: <20190219155635.GA18454@himanshu-Vostro-3559>
References: <20190219063848.GA2994@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190219063848.GA2994@bhanusree-MacBookAir>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Feb 19, 2019 at 12:08:48PM +0530, Bhanusree Pola wrote:
> Use BIT(x) instead of (1<<x), reported by checkpatch.pl.
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/mt7621-mmc/mt6575_sd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-mmc/mt6575_sd.h b/drivers/staging/mt7621-mmc/mt6575_sd.h
> index 4e287c140acb..038a484a9476 100644
> --- a/drivers/staging/mt7621-mmc/mt6575_sd.h
> +++ b/drivers/staging/mt7621-mmc/mt6575_sd.h
> @@ -363,7 +363,7 @@ enum {
>  #define MSDC_CKGEN_MSDC_DLY_SEL   (0x1F << 10)
>  #define MSDC_INT_DAT_LATCH_CK_SEL  (0x7 << 7)
>  #define MSDC_CKGEN_MSDC_CK_SEL     (0x1 << 6)

This could also be changed as well ?
Likewise others present(if any) in the header file.

FYI, a simple cocci script could also be written to complete
this task.

Now that I see this patch has been already been applied, so
its fine for now and an explicit "Patch applied." from Greg
would have been better IMHO.

Times up for Ack-by and discussions Matthias.

> -#define CARD_READY_FOR_DATA             (1 << 8)
> +#define CARD_READY_FOR_DATA		BIT(8)
>  #define CARD_CURRENT_STATE(x)           ((x & 0x00001E00) >> 9)


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology


X-GM-THRID: 6615663139748839424
X-Received: by 2002:a0c:873b:: with SMTP id 56mr42329857qvh.13.1540330129819;
        Tue, 23 Oct 2018 14:28:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ad88:: with SMTP id w8ls2527251qvc.4.gmail; Tue, 23 Oct
 2018 14:28:49 -0700 (PDT)
X-Received: by 2002:a0c:baa5:: with SMTP id x37-v6mr2858087qvf.41.1540330129333;
        Tue, 23 Oct 2018 14:28:49 -0700 (PDT)
Received: by 2002:a37:4890:0:0:0:0:0 with SMTP id v138-v6msqka;
        Tue, 23 Oct 2018 14:25:17 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63AKMJnyHthhzkPgpo/DuRkBAsnkNiziZV/y3FRwnJEYS4G9a8g0i2qRWp/cdm9rcFGqypz
X-Received: by 2002:a19:f618:: with SMTP id x24-v6mr376927lfe.21.1540329916369;
        Tue, 23 Oct 2018 14:25:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540329916; cv=none;
        d=google.com; s=arc-20160816;
        b=GqjFYFafnaHK+l0UC/hCugZZWlKJuBp9mvOdEl4Y+UoiD+NTIoDbSoXd3/HRmdPd54
         VpQTIGkRy2/sqzoDaDgXZfSttpIkhqOtfx81Rf1rGlukPzEsD9yvC9qEJhoXIgGQ0jAz
         nEj9P6XyMdb3k4EKlhNWT/FMEkx3C/yNOIAAMuSqdIGRXgb+5HbT269ZMag6/Jg3bavZ
         8AzfpA8GcR7emeUNmz9r6YxUFTNpmSgL/UVGtANYmzDUF8tlOnpmBU43eM2WGpejqBCe
         XbBpcGhUrizdZfwgBLpssehnQ4jgZa4A3hSiA7QzwoAwOpnM8wHCWiXuv5vaTr1vVcI+
         h++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:references:cc:to:from
         :subject:dkim-signature;
        bh=tPl0fau3yzGc3Y+muF+KfJ3PbqITYTYl8FZCWm7RoMw=;
        b=mVGH0DAghm8OM81goEsZ6aY5hi7ofy1eMxHysQJEwQmF04M9X8lRQFyFc4xuDRiGwO
         JKS+ACey1NEa04wNBgW2p+SmokTXAU1IeH0irAVoFe3PKXS8LqlZhWl6OnAWtNIjR1l7
         Xizo532SUvkNnytoHrwHPaThShURbbWavsIA7R+vwjTsjfIBfvPGh39eWElYCCBTqMrl
         o4qjP60lg0RruaAkccs8pSZGpd+SNWnYai7v6RriBpbyCzCKAC10flX5XgbdIGaWH5ac
         CMBziGeno5kV4xe8XJozBEchl5y2S/OvhM0suXyBAtz8ULHj9p2GnRv6SLIbZsGiJaTn
         EXFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AJbsUqiV;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <matthias.bgg@gmail.com>
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id h20-v6si105673ljj.5.2018.10.23.14.25.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 14:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AJbsUqiV;
       spf=pass (google.com: domain of matthias.bgg@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=matthias.bgg@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x332.google.com with SMTP id a8-v6so3261237wmf.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 14:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tPl0fau3yzGc3Y+muF+KfJ3PbqITYTYl8FZCWm7RoMw=;
        b=AJbsUqiVOBlvC0jO0FlqA0zICShdNL4TBOr+FyWb+RnRp7W1A39QHtCWGo3cF1Me1U
         zAlmcS1BsQJNMBeHD2xCTDTgWAit5NKS5a2lYhQxettlV1TGlBOb0uZ98YyKCj086jkw
         UAI1h4qdJzht4sJeLYa/tNTKfe06iatOQJQXzAF9Iip9Lu8CmxSoEZGEsnAeglKAppmp
         9Dk/Dxob1vxA+5wI7vq8DctmVOcFFma1L+HHxYnjOR+afCyxnluZKSGGHBGzdJzkCttu
         up+sMsYcFEfISPZdJZc1vLp4lJI6KKKIrX4qors29kYz55C4CS11189dmF3uKik036jn
         IKVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=tPl0fau3yzGc3Y+muF+KfJ3PbqITYTYl8FZCWm7RoMw=;
        b=mG7u6ZUUWcs8xqA8L6ucCUtl8aYP2UtbwZ+alUPPAnQ0TcS44G/NHsK0+Ty6bcCbzO
         AhMXgtBC/2KR6MLXcFmVu7ifLJZ0+yo+SrpuQbjJKdAQMavwHHBqjKV5/MfJ3tpudTnj
         GT8WG4uPx1fCOdQow5zapVV/ENTW8Rc+QnTGkzFMcLpH3T2KMk9uPSq2D0DWtzDnUSsh
         cEX9R3Ak60Yw+b5xCWF/DoHsMzuwI/MFuDlDUSD2Xs44odqGUI6IktQQgJbUxftgBjNH
         Y+XYJWuM7y98nU1jJmkib/8ulVIJ5Y1up16NAGZfvFlJA2OIADaWlQGY60B/LVYzDFcZ
         xZ+Q==
X-Gm-Message-State: AGRZ1gJHO9nbXxyKcBgDJYFYWhrssaJjdjOTRe6q5t0eda6LbhbIB+zz
	PVcUikt2gqkG0wwtthKLrrY=
X-Received: by 2002:a1c:2784:: with SMTP id n126-v6mr263747wmn.124.1540329915926;
        Tue, 23 Oct 2018 14:25:15 -0700 (PDT)
Return-Path: <matthias.bgg@gmail.com>
Received: from ziggy.stardust ([81.145.148.99])
        by smtp.gmail.com with ESMTPSA id y7-v6sm1805606wmy.27.2018.10.23.14.25.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 14:25:14 -0700 (PDT)
Subject: Re: [PATCH] staging: mt7621-dma: Add braces around else branches
From: Matthias Brugger <matthias.bgg@gmail.com>
To: Kimberly Brown <kimbrownkd@gmail.com>, outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20181023211142.GA2661@v>
 <50f85d7b-e64a-3725-38fc-8733903e099b@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 UXI+r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <493c8f89-2ad0-b444-48d8-b4491c6d081e@gmail.com>
Date: Tue, 23 Oct 2018 23:25:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <50f85d7b-e64a-3725-38fc-8733903e099b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 23/10/2018 23:22, Matthias Brugger wrote:
> 
> 
> On 23/10/2018 23:11, Kimberly Brown wrote:
>> Add braces around else branches in conditional statements that include
>> branches with multiple statements. This style complies with the Linux
>> kernel coding style and improves consistency and readability. Issues found by
>> checkpatch.
>>
>> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
>> ---
>>  drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ++++--
>>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> Looks good to me, thanks!
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> 

Hm, just one thing that I see right now. Can you please use
./scripts/get_maintainer.pl
to get the whole list of persons and mailinglists that you should your patch to.
Otherwise people might not be able to follow your patches or the relevant
persons will not notice.

Regards,
Matthias


>>
>> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
>> index df6ebf41bdea..35556f024aa1 100644
>> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
>> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
>> @@ -418,8 +418,9 @@ static void mtk_hsdma_chan_done(struct mtk_hsdam_engine *hsdma,
>>  			vchan_cookie_complete(&desc->vdesc);
>>  			chan_issued = gdma_next_desc(chan);
>>  		}
>> -	} else
>> +	} else {
>>  		dev_dbg(hsdma->ddev.dev, "no desc to complete\n");
>> +	}
>>  
>>  	if (chan_issued)
>>  		set_bit(chan->id, &hsdma->chan_issued);
>> @@ -456,8 +457,9 @@ static void mtk_hsdma_issue_pending(struct dma_chan *c)
>>  		if (gdma_next_desc(chan)) {
>>  			set_bit(chan->id, &hsdma->chan_issued);
>>  			tasklet_schedule(&hsdma->task);
>> -		} else
>> +		} else {
>>  			dev_dbg(hsdma->ddev.dev, "no desc to issue\n");
>> +		}
>>  	}
>>  	spin_unlock_bh(&chan->vchan.lock);
>>  }
>>


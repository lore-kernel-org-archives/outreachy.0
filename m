X-GM-THRID: 6668560476445605888
X-Received: by 2002:a02:6018:: with SMTP id i24mr8182164jac.6.1552840590573;
        Sun, 17 Mar 2019 09:36:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls4734078jaf.3.gmail; Sun, 17 Mar
 2019 09:36:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxOkGbfvpAdm371fTdTEhPKT8p9VVArOKWrPmCChj6U67DfLTtsoU/mc4NZWaru0rcoID75
X-Received: by 2002:a02:3f1d:: with SMTP id d29mr8196892jaa.4.1552840589731;
        Sun, 17 Mar 2019 09:36:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552840589; cv=none;
        d=google.com; s=arc-20160816;
        b=fxwEkVBV/ammtfxQyFJScJhuGtgz0ixxO4fqi25yAYOXOXru+YtRAz/4LpIfdTB98B
         lnFZM597rtLGbLAKJ4EHp8JllTP2G1esnAWDAh1aDJ/dnMoWSWidkgYuPiJQSA1QfLaW
         /j8o4kZ7jK6mRFBS3/lVfVA5O91MjnX+KsgrLG7vLvDLbs2rJgaJf2S/ySKRR9clFiLK
         cyXpgMz7DJUOGYckW+hJ6ypvO67RivlRjFmO4V7z1pJ3oVwYSYqbysSpXLoesMmwhujJ
         9IKC8hmMkWFTSlwoR4TXG/LYIePYZ3Sm050324XqaGRq+VpvdSBCR3SfHeFoB4R0Sjz4
         FE2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bnA4kTc14XHVMs6uS7lNFRH3ufcxHCQffREoUKymMak=;
        b=RGPeK9Vb4snksnpSybe2veRWPZSpY5RTzOlxR7iILAYOAzU4wI5+hCNRnnITrCZt+s
         vOd23A9bKVhIbkO3wIqxNEvpm8V/4DP3OCHq1o0xJOmJYQ0TziYmz5zb8L8wYu4jOf/R
         +sTKylbOkpky3ySYW3QcWMesXaFt0aAh13xWUE0gcIEFC1RqrT1bj5nbYoRzjN4TfbqN
         ecPnpBdJPp6Gutpt9ZKVQ1d7AZH6DYRQ2F3Hja9yadHcSHStD/UmlyH3jXEsCSutLEEy
         v7I+dL+SChnS4Zd3hh3sujNeg2DB+74Jamroq9nbt3/SUfGEJDiKbNfA+5zSpX+KyZgO
         Kh0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="O/P9aS4V";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic303-21.consmr.mail.sg3.yahoo.com (sonic303-21.consmr.mail.sg3.yahoo.com. [106.10.242.38])
        by gmr-mx.google.com with ESMTPS id j196si378948itb.0.2019.03.17.09.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 09:36:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) client-ip=106.10.242.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="O/P9aS4V";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552840586; bh=bnA4kTc14XHVMs6uS7lNFRH3ufcxHCQffREoUKymMak=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=O/P9aS4V9s9nxZ+/nSsgLu70Au6kxcHtPUNZsLOYiq5l4PrVDdVut0kqy9g0qrBrTz02qmMFx0wl00cYusq2YrK3Jr1CovAKFBPDR6CkCNUwm8U+oocNS3qAnVkBoH6UKxTsAzpgOGpbCl8z1i9pIhCU+laVaF/WHjA7+FJYGPpZFjxt2dcWsVoRogxU1iXY7Ys0djzzurqwPYmqwjZGr5YMbBSHuIW1d1YBH/2H37sJR1Swp20Iz3cvMyF2N/MbS6z68ail/5SZvDvm4dgs/i+SoXBtdwFpshaTcpnJshEdKf25F7c1lJc46Cs++c9keinJKIQThsKjqKKTS9sRUw==
X-YMail-OSG: JPiuvLcVM1kmQq9YBJ4CuL5SSV9OOzUVeQxu5w_Kj2lInkrGwdUWkWV85unTorf
 g21aJNH0lwJWWTZDlyEqDZmxlYlhTBb3LbzgNFn05mtI.uw1F88ckoH9cfxMTqvFFbgEHIbPQ0LO
 baaleMJ4TjHeoiA4BjO8pdmScAc9XDDrzW67obNycuFxcTuJnLq8epKLCt_ncPJG7_T1LIW1iATo
 OTRX3RJwzMbbFdRlY678Cd32mMhmSBY5sMvQizNLnVsAQ31cWY0d0aoBDS_xJAjN7h4v6neqD50.
 _v1EEXJHJz716UTgB9Jsnbs2p8FfqSDlfiCmgP7Yn5tHSS1NRUFnaeeAqZlmM7Gy5WF1gcO5Q3bw
 YXDceLak5InN1EyKroKsoo0BIJAPNJI2GEaEcbaplZI3YC71yZyfSABoCi6GxzM9zxZPiaFytVYP
 DILBG3nnO25MCgpUeji49lb.cFAd1y56j0Gvh_oy7cMB_KqDWAymqtthnPNc8xa61I6fNbL3dCaa
 bPmhsSmvKjj_fUJ_JSP.CAcyOqqy8vPNPZMWYTffYlWEbJVpH8FOC4LBZTw3usFEWAuVRLhXip5o
 CB8Vi7xIwg1FK7EJ4nTkMJydeL0U5mwr16obzr2ROP_nVV11rgQlVwJ719MQpC9QSgDpu0InkOTQ
 oF8TtmWa34rdgZdhpCFxyd_bCmkf967n9cMcRzITLPbTNu7mTayd6oYy1FG0O.l9Dgdurz6PchTH
 4Y3uFoMZ8bwZTqb_iI7TGxKHZ7U5Q9DAtL.h0gOmEpuntSVpVhdlwN0qWzcoJyiaCpnt_3NhFaej
 oPzK3Xonyru2MiASNR_GgVE7ZovYInjEEr19_YqBUn8LBxAKsJC8tDHys9T7JDuxbMQn.OZu18UV
 .0KAq0gRyWc8e844PSl7.muHuoFB0EvQZ5SBUa6xwxSkgEKFNHOG0XBnzInBFqyrjp8DivaYZNsU
 ylA9NdhVcEZnG6KtemScjd7c4RzfjX7mI0XrfEIz_lNs6ph4BZbxTipfScTdTiH.gdwfYDoq1v.q
 Cb7waXA2heMFCgtiwNjyVm8H3tGYoNC5WJ8rBi33tYnP2QwjmG0ci7Jrq_4jfrtRQZmyR1P4seZD
 jukzRGVzpzJ3o7HYE3TjECwGgTLI-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.sg3.yahoo.com with HTTP; Sun, 17 Mar 2019 16:36:26 +0000
Received: from 210.212.93.46 (EHLO [10.0.2.15]) ([210.212.93.46])
          by smtp402.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID cfcabc169cf5d1c3e57e2dd2ebee2005;
          Sun, 17 Mar 2019 16:36:24 +0000 (UTC)
Subject: Re: [PATCH] staging: sm750fb: Remove unnecessary function
To: Greg KH <gregkh@linuxfoundation.org>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
 outreachy-kernel@googlegroups.com
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
 <20190317104323.GA16257@kroah.com>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <c6bcf143-56b8-958a-fe5f-1ffad198e04a@yahoo.com>
Date: Sun, 17 Mar 2019 22:06:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190317104323.GA16257@kroah.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 17/03/19 4:13 PM, Greg KH wrote:
> On Fri, Mar 15, 2019 at 03:50:07PM +0530, Nishka Dasgupta wrote:
>> Remove function sii164ResetChip() as comment above it said "below
>> function is not necessary".
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>>   drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
>>   drivers/staging/sm750fb/ddk750_sii164.h |  1 -
>>   2 files changed, 14 deletions(-)
>>
>> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
>> index c8e856c13912..8884ef927893 100644
>> --- a/drivers/staging/sm750fb/ddk750_sii164.c
>> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
>> @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
>>   	return -1;
>>   }
>>   
>> -/* below sii164 function is not necessary */
>> -
>>   #ifdef SII164_FULL_FUNCTIONS
>>   
>> -/*
>> - *  sii164ResetChip
>> - *      This function resets the DVI Controller Chip.
>> - */
>> -void sii164ResetChip(void)
>> -{
>> -	/* Power down */
>> -	sii164SetPower(0);
>> -	sii164SetPower(1);
>> -}
>> -
>>   /*
>>    * sii164GetChipString
>>    *      This function returns a char string name of the current DVI Controller chip.
>> diff --git a/drivers/staging/sm750fb/ddk750_sii164.h b/drivers/staging/sm750fb/ddk750_sii164.h
>> index 862e7bf27353..1f7b5f9c1885 100644
>> --- a/drivers/staging/sm750fb/ddk750_sii164.h
>> +++ b/drivers/staging/sm750fb/ddk750_sii164.h
>> @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
>>   unsigned short sii164GetDeviceID(void);
>>   
>>   #ifdef SII164_FULL_FUNCTIONS
>> -void sii164ResetChip(void);
>>   char *sii164GetChipString(void);
>>   void sii164SetPower(unsigned char powerUp);
>>   void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
> 
> Did you test build this?  This function is still used if
> SII164_FULL_FUNCTIONS is defined.

Yes, I did test build this, and there were no problems. However, I have 
not been able to properly grep search for it since my laptop crashed a 
few days ago and I have only just been able to set everything back up. 
Where can I find SII164_FULL_FUNCTIONS?

Thanking you,
Nishka
> 
> thanks,
> 
> greg k-h
> 


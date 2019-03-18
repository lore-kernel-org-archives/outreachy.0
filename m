X-GM-THRID: 6668560476445605888
X-Received: by 2002:aca:4911:: with SMTP id w17mr10255117oia.5.1552892578198;
        Mon, 18 Mar 2019 00:02:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:164a:: with SMTP id h10ls2352623otr.7.gmail; Mon,
 18 Mar 2019 00:02:57 -0700 (PDT)
X-Received: by 2002:a9d:590f:: with SMTP id t15mr9138913oth.7.1552892577812;
        Mon, 18 Mar 2019 00:02:57 -0700 (PDT)
Received: by 2002:aca:c3d2:0:0:0:0:0 with SMTP id t201msoif;
        Sun, 17 Mar 2019 23:37:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXwxujEK98amSRHMWs6szx7syuOVtPderT8/b8CE4yP9tsuVYb19ksqCyZMSQd07ygnyI2
X-Received: by 2002:a24:6f15:: with SMTP id x21mr9656404itb.2.1552891050314;
        Sun, 17 Mar 2019 23:37:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552891050; cv=none;
        d=google.com; s=arc-20160816;
        b=nUdBMmoSJUsYqCOs0uHrVpuSUgDbps5fr4W9xY3epdGN1bvc01So8eBDrnxZir5PuN
         pCsOYR1a5FMFntbhkWBfW1vK+RKt4kEiW1XPfAkSlKHh5vxe1SdELBnVe/4mDa7fMkcx
         hpc7v67DZ4gBUEFWl6LvvDtzEfKnL4Sk8Sd85k35MXY2kwlIf/vrvof/HEMw96ZRUGLi
         Rz3pVEu7bTtGpoDoa8RqP3tLM7YbAeNgu6IHQPMnwRlUrjxPZDGZRZPf3UUu/JIdEPPn
         PW/4YG02uJtjpM/cD0W7ZOvBbl5EJACJSR10lmHQzVqrF36FQCkUUBev6Ty3+NFgyQpv
         OgSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2Q8u6jajuD+rEHnPrTOX24TfswEbI4dFMaylZlMb/Rc=;
        b=HEjpIDbbaP0PCuDk5ie5KJ6l7S3RUkQQnmY+ps90AZ/abTGmjiDa5XZf1KdJ03poxc
         C8yNuY74gsXyjfWGYY7A587ebo6WFT+H1TJbJlRdh3x70XyISyCZgksvBsOH8QwLa5gv
         3XGqcFeH7a4wuQmM3kiQc9lUt5XYVNmbpKEBxENfJEZ2Xe2QRmMCCnkFWrAr2Zen77GW
         +zIXbs+fHohKM6m9vgKn3s9WBb/lxYHgbWoKZjJjOQy4GPEKI4utjLBiPpOlIg8Ji0P/
         851j3Uf7gYtvdAwgcscQU7pEf7tok86hKcgFSQbP0A1JWS8iGhyWTQR+hqamPctneC6c
         D04w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=uYJe188W;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.139 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-19.consmr.mail.sg3.yahoo.com (sonic310-19.consmr.mail.sg3.yahoo.com. [106.10.244.139])
        by gmr-mx.google.com with ESMTPS id t17si276278itb.2.2019.03.17.23.37.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 23:37:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.139 as permitted sender) client-ip=106.10.244.139;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=uYJe188W;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.139 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552891047; bh=2Q8u6jajuD+rEHnPrTOX24TfswEbI4dFMaylZlMb/Rc=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=uYJe188WwKnZUNjpAnLgkEVgwLcgdbw+aaVfZzE+oOCIpEEQitP1eM4J/mQjEmACYoSXvas9ZFgJgXazyOiOw2E2hIrX9Wyhdop/MftPJkfcb3nZmRfQ0/eRDSOgv6wYU4K1Vn0dyLbMGkGUwnpBzHKpUwInSs6fz+OxBQPZxqk7EoQMR++ASJ3g9JG119A+daAn92kSxiFUM23LLX2H9KpBiMNZc+yCePQEyXm9Hx+NKipflZQ60yDwRS/xYE3xjzAoYL9mzGIWsSGSttm/g9/BQ/et8+VJVTXZA3WlkPSZzfocGVKzRsoShoTorr+0c5BA4viHMIvxu4Kb4V2Ymg==
X-YMail-OSG: kv1xrBMVM1mPLqwH5bZGtrrxX_88VkshPDQ.9fX1YoB3NMsEK2_dT9T6Rf0qUV2
 mJ73q1VeXAJH0QRSFeOsHvf647wlos8JYYp6EN4WC2YeH.0cZ2E6leLqK_irWPhTdnZ2o8Zjy4P_
 rT1iBO1HhzKxj_kQX_qeG31Spn1D3KrpjFV.O7vm_.hBDLq5wM5H90.LVIWuTbc4zZD8hNpW_31E
 j8x71ekU1jHF5Vba.spkqRBcSr9qHIFUk1J4dEtcOyAshL4EEJQ7j01wuB9ku4V8okCfb9InPayV
 V2qsxz9POq90o71nu_ec4hF7sxdBZFhc0D.N7mbZ76OcpTimWLH3Yew5BzE9esZb8IzAOmPFgkES
 A5l9TdONplAJCCNpFw53S6.6TDHmkJpwzHAH3fiLbyBfFsrICHu4JJUaMTtqayPjeREW.sMZ5mie
 4Ox_0_sSgozsKaHaVP4PwLyHIzmkgTFy_z50145PHxdi2EyZzgqCe_q.9h3FzRAs0tbILns8tNG0
 9Pn_dPs5pZQmzcaDParz8LZlK2HnA_11117hD74CFJYKIhL.igWBshTRa6cbq8kSPpVH3DFFhJ4I
 acMVjCV_zXyRF9.WXKTzF3klEOhN.2pvd4jeSwTVGa.rAOXkQn44jJK8lpFV8pfQm8tssd5Q.ze2
 JQPMuqbi746c.izdPmVbtR6Xcuzz.uwGzvd_t.iI8YEYq.82g8DYLcqaJoou2xweCWfwI58qP8OC
 Ci2Y3eyaaH4AliXSAw_ucAmGWVK3Hv._PUPNjBQ4aJ3WjuoAiGN6RpJjKtJtoFqwHKOIvlIf_v5t
 .F2_zK_1J3dzzi.sddVNDBIS5RLjV9Lg1zVCZJn5TnYZF7Y_nJ3udvY5jWfUsDw8D56Jjp71.DxZ
 s2eK3xGox4etKPflvs.Jp.I9Vi7XvOZ.M8gg.lu_ci.5HYBoQvg5tY4FRdbpID7PbDe1aU2W6tAG
 8zZBwrvqcFW3TKO5LJeJUC0hll6pK.qjF_DxZr8373Y8CdMSaybz1yv5gtXUFCH2z5TDgZws8H0T
 YvMyhJHcpM39tZNqzdEUv6esRibkV6q1D1MLTh1A7nmVA7swqFxK_SUNt3JrdRdk9Th33fgMvBsF
 NYZCh5Lx.0Q1lfylXspYnn7.EeM0Ljhy_06tOHrJprWe.0kGdqg1NV53Q
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Mon, 18 Mar 2019 06:37:27 +0000
Received: from 125.22.40.140 (EHLO [10.0.2.15]) ([125.22.40.140])
          by smtp426.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID b4ee90efaf89f992496eb684e49d8744;
          Mon, 18 Mar 2019 06:37:23 +0000 (UTC)
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: sm750fb: Remove
 unnecessary function
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
 <20190317104323.GA16257@kroah.com>
 <c6bcf143-56b8-958a-fe5f-1ffad198e04a@yahoo.com>
 <alpine.DEB.2.21.1903171754540.2434@hadrien>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <2d3e19c4-8513-92f2-4521-8bb0d3d6310f@yahoo.com>
Date: Mon, 18 Mar 2019 12:07:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1903171754540.2434@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 17/03/19 10:25 PM, Julia Lawall wrote:
> 
> 
> On Sun, 17 Mar 2019, 'NIshka Dasgupta' via outreachy-kernel wrote:
> 
>>
>>
>> On 17/03/19 4:13 PM, Greg KH wrote:
>>> On Fri, Mar 15, 2019 at 03:50:07PM +0530, Nishka Dasgupta wrote:
>>>> Remove function sii164ResetChip() as comment above it said "below
>>>> function is not necessary".
>>>>
>>>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>>>> ---
>>>>    drivers/staging/sm750fb/ddk750_sii164.c | 13 -------------
>>>>    drivers/staging/sm750fb/ddk750_sii164.h |  1 -
>>>>    2 files changed, 14 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/sm750fb/ddk750_sii164.c
>>>> b/drivers/staging/sm750fb/ddk750_sii164.c
>>>> index c8e856c13912..8884ef927893 100644
>>>> --- a/drivers/staging/sm750fb/ddk750_sii164.c
>>>> +++ b/drivers/staging/sm750fb/ddk750_sii164.c
>>>> @@ -237,21 +237,8 @@ long sii164InitChip(unsigned char edge_select,
>>>>    	return -1;
>>>>    }
>>>>    -/* below sii164 function is not necessary */
>>>> -
>>>>    #ifdef SII164_FULL_FUNCTIONS
>>>>    -/*
>>>> - *  sii164ResetChip
>>>> - *      This function resets the DVI Controller Chip.
>>>> - */
>>>> -void sii164ResetChip(void)
>>>> -{
>>>> -	/* Power down */
>>>> -	sii164SetPower(0);
>>>> -	sii164SetPower(1);
>>>> -}
>>>> -
>>>>    /*
>>>>     * sii164GetChipString
>>>>     *      This function returns a char string name of the current DVI
>>>> Controller chip.
>>>> diff --git a/drivers/staging/sm750fb/ddk750_sii164.h
>>>> b/drivers/staging/sm750fb/ddk750_sii164.h
>>>> index 862e7bf27353..1f7b5f9c1885 100644
>>>> --- a/drivers/staging/sm750fb/ddk750_sii164.h
>>>> +++ b/drivers/staging/sm750fb/ddk750_sii164.h
>>>> @@ -28,7 +28,6 @@ unsigned short sii164GetVendorID(void);
>>>>    unsigned short sii164GetDeviceID(void);
>>>>      #ifdef SII164_FULL_FUNCTIONS
>>>> -void sii164ResetChip(void);
>>>>    char *sii164GetChipString(void);
>>>>    void sii164SetPower(unsigned char powerUp);
>>>>    void sii164EnableHotPlugDetection(unsigned char enableHotPlug);
>>>
>>> Did you test build this?  This function is still used if
>>> SII164_FULL_FUNCTIONS is defined.
>>
>> Yes, I did test build this, and there were no problems. However, I have not
>> been able to properly grep search for it since my laptop crashed a few days
>> ago and I have only just been able to set everything back up. Where can I find
>> SII164_FULL_FUNCTIONS?
> 
> Just do git grep SII164_FULL_FUNCTIONS at the root of your kernel tree.
> It may be in a Kconfig file.
> 

I did that, thank you. All the occurrences of SII164_FULL_FUNCTIONS 
follow ifdefs in C and header files in sm750fb (ddk750_dvi.c, 
ddk750_sii164.c, ddk750_sii164.c again, and ddk750_sii164.h). There 
don't appear to be any occurrences of SII164_FULL_FUNCTIONS anywhere 
else in the entire staging tree.
Does this mean I can delete every ifdef referring to 
SII164_FULL_FUNCTIONS since SII164_FULL_FUNCTIONS does not appear to be 
actually defined anywhere? Or should all those (including the function 
deleted by this current patch) stay?

Thanking you,
Nishka

> julia
> 


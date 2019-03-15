X-GM-THRID: 6668560476445605888
X-Received: by 2002:a81:6209:: with SMTP id w9mr1090324ywb.4.1552651753667;
        Fri, 15 Mar 2019 05:09:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:41d4:: with SMTP id o203ls1374837yba.0.gmail; Fri, 15
 Mar 2019 05:09:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwhZXjb3DgRqlJiy/c/9umnF9XaFbZ3ILEzU1rlMLZ9D5DUr5gU/unKOHy41QDGJD5xSTbc
X-Received: by 2002:a25:e648:: with SMTP id d69mr1351632ybh.95.1552651752488;
        Fri, 15 Mar 2019 05:09:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552651752; cv=none;
        d=google.com; s=arc-20160816;
        b=OakakytyCGsoxwSKaRB8Ky2Pe498BtxSngBjT/Kip7ERwoV/zzMpgKy3LfAd8gVWQh
         0xlOyhS0Oq5UwsY8GgZaJP9A/eF2ny4VZtve1QN4dC+e+Py3qSEBEAI6ZZ3WR+VAfFQp
         VTZl0WvU5sYO6/AAJgr87O2G0vbUmROy3GJusYftT9e8/LaMubgkz9sW7SSm367HkrPp
         3M7sG2RtQoVcncDQf1aLI55hgbqPjw0xxBCo1QIklhP5spix+l7JMiBD+tUgp+WAFCk9
         OW8m9Vf40PoDC04hjJ74cAQobI3Uv4wD7/TRU1txvo1X3rpuFnVPQ4jx2qiglejQWdH+
         uxHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3lvqbwDiBoUpah7GymJDB/sfQDiMD55AVhZgsxaOI1Y=;
        b=qW9KffIi0FQZnVY406F4HVdkecOEEw2fy3yrU4bwY1PjtBQjuHhNMAjxZ7qUXuYHAg
         YZMkM1WdqL+CJhHYBxCIX0Yv0PJPbkgmGoapAMm40rJ5gWh3HF8hOPWAKjHZ8o5hjmPi
         ugcrkaacDpU8ek7hGu4dGtbqiB0VmE/S6U/EoLbsJguFLtJs+JhVceyriK5uC0IHs4dL
         Rde9FaLTD8cyAMPRviTd7qdI/laLImIwjdmghK++VF6J+y+huUOzWlhuZhKT9q0bQpS5
         N1I5JEzjooLWqMcK7UHLgCrHM7HEjvXOBvqTFFntW+xsjXirnppw930OVDmQci5zuORK
         vVxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=DI19r+dP;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.139 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-19.consmr.mail.sg3.yahoo.com (sonic306-19.consmr.mail.sg3.yahoo.com. [106.10.241.139])
        by gmr-mx.google.com with ESMTPS id e23si85466ybb.1.2019.03.15.05.09.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Mar 2019 05:09:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.139 as permitted sender) client-ip=106.10.241.139;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=DI19r+dP;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.139 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1552651749; bh=3lvqbwDiBoUpah7GymJDB/sfQDiMD55AVhZgsxaOI1Y=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=DI19r+dPQ8OiTGrxmYUQwYaOTauvPY2KPJhhZtkJLYKFRmgfSmRjCOs5FdsGubmktM5c9jHDaPf4UcCiUimQz7gzR5CMDeSxOYtBmTG/v8rhCiZQPlUglFX9TZGfU5z/yZOa6hn0uEq4Yd+Jji0yBTDVjVXxIb6ZFWnDU8dv9VUwGdrlw+7/eVNdokNIfRPTubMyMfGPUOqwF5T4EodC7QMHnLZonpBqzP+C0Jcc3R/YUts8SN7SmFHigDLcMPrEXsCf+R3h1t8xDyItroDs+tPj6v2uMPRHA2c1geBBG1uVuGpYyfCg+EokFnaMe+3rv+mnhVDqE3sLXvsqng0U4g==
X-YMail-OSG: sg6_BHkVM1kNelH0i3fvcr68uMUyQR84AFYV8WEXPwlYFfB6L.wxvNsfVi6yQN1
 _HPvrQ2DUmxel0eOomb6BuaQUPUV9_pSvnee2k0WyrjJjOUDD2PAi8EJzeurCDJNmAhN86f84H6n
 VIWpEV64XusH75GhX46tfjpwglo2XuQAi8gtAPIu7k9wcMazqb4nO6vRQGCLDqS7oUuoplX9tCJo
 SbJl6ufLOZUqhL_5r.tkjiVNdXzL9qvg47Zbkd5UtSiKcKIcOtD.7sp0XWwfZH5oC9DmooDlz6rp
 RSQeDkbkUta.q_PrwBaVVOxiYLP284Cwr3XkdR4ZOw4M4dUc2udWW8xKi0rVQriTo9V.5VHcqFxj
 a0hRW49N3EOVyShSb_ZGoOARjDyqWP8v3EvCJTG3gKbikKwxtj1PQbqymi0RXVMEtw7ujTDq0nMU
 SHM5BQINng57WsG.ISDlBQJPy0YT0zGypxZrT3PLm1QWrArz0nIOppI.jEbyLMYFTHN4PwHj6WhD
 tLWBmBeoMfh2Lr4LGDeCxYQ7WLeoQvCTz5ZfsUKP0dQ.rmKVLwXvEWEZwH8zjLZZKD0C426mjo6K
 fUYf19MPiE1Z6g0Ta8QRpPykSKicrMDbHvB14A_.MDUQP051YX9M66Dwb3sK_TVgxkW4fWAenXrK
 5UMC8agI4b9HOAc3yf8WKmsfMKiR4O1Kn0zKIh7mok2jgl4WlxM2ENA7OvlQeXOMCe2f0YUPJhIX
 YoduyiLlZoygyskHfLeQzPkMSf2Q.b5ub0Zc05SBHg1HcVKFhvy4Bwqj6jiMokFhF89krX7U1blK
 YJKXi_yQcz5cwEx04X4pXmupE4dVl99zhY9OsEKmwRkHiKAs.iiJhmvJuP77bEqEdMTOjnT.Oa4c
 Ng9aO788iV7b9zf68G5qgexByyL8qsdy0rwe2WrL1sh5C1agwfzre.KFSpCLbxdDpU3PCAfFxbv7
 qPHjQFRsgv5MYAoxNwAq1L2VymsCqMVOQyhXGCkn20bispwq_rqNkCM.nOeHfHe8f133iZNbXzo6
 vpCFanUzi67EfEMH3_E.ouUoz38qW9es1FiukeQc.BAQ6HrIf2i0XweqyEdjJMfL82rothwYbK3h
 28lUnZlXP
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Fri, 15 Mar 2019 12:09:09 +0000
Received: from 125.22.40.140 (EHLO [10.0.2.15]) ([125.22.40.140])
          by smtp422.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6625d5ed74cc58c681d8d8df3d4f22e1;
          Fri, 15 Mar 2019 12:09:05 +0000 (UTC)
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove unnecessary
 function
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, sudipm.mukherjee@gmail.com,
 teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
References: <20190315102007.26612-1-nishka.dasgupta@yahoo.com>
 <alpine.DEB.2.20.1903151127460.10610@hadrien>
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <e999c266-1b09-0bd5-0a94-4d92d073bde7@yahoo.com>
Date: Fri, 15 Mar 2019 17:38:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1903151127460.10610@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 15/03/19 3:58 PM, Julia Lawall wrote:
> 
> 
> On Fri, 15 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> 
>> Remove function sii164ResetChip() as comment above it said "below
>> function is not necessary".
> 
> I think that this is not the best justification for removing something.
> Is the function ever called in the kernel?  If not, it should go.

I don't think it's ever called in the kernel. I compiled sm750fb by 
itself and then the entire kernel after removing the function.
- Nishka

> julia
> 
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
>> --
>> 2.19.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190315102007.26612-1-nishka.dasgupta%40yahoo.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


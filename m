X-GM-THRID: 6674202395831959552
X-Received: by 2002:a67:85c6:: with SMTP id h189mr5442431vsd.33.1553963095987;
        Sat, 30 Mar 2019 09:24:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:3205:: with SMTP id x5ls898362uad.2.gmail; Sat, 30 Mar
 2019 09:24:55 -0700 (PDT)
X-Google-Smtp-Source: APXvYqznuz6TejapaVCtiXbQcQ7qKGkkxRG8xuzA8c9Ok1KUX4tEQJStcohx5O+ZY3tguYR7esO6
X-Received: by 2002:ab0:60b5:: with SMTP id f21mr5501779uam.14.1553963095360;
        Sat, 30 Mar 2019 09:24:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553963095; cv=none;
        d=google.com; s=arc-20160816;
        b=zmMJOWEfUJAfqNcTZiSVvxfOnBtvrBDl9uZP1Vm5XWO/Oe9DddJieCn3oALGYrnPHY
         2UE3upyI4enUkxpisWlO+cZtI+MnM0sQDNtA1EnEGLQWRDeVaIZpSZNuQaJGNdbCnxl3
         2wofb6RXFxhm0c4GRedNScKy95UF9s0nN+RAMvWuaV7Ix3h+LGTMCSmKhu7oU/tifXFc
         0KsQWpQ24DzwPJbuN/fnm+/W4by9y3uuxK4/F7cpXq06F94T/zT7k/Qs5uWzmnXBCMTP
         1QMnB66HEM/Uddf465Ws8yqYfEX9Daj/fgFEuKX3/hRlIn0HcJ9rFXqJwLC1YrA/5trH
         55xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=l+zn0uqMgNX4dF3fHHjY5FZxah/GJtNaoAqeCBwJnM4=;
        b=bAXPHG96B2xSkbKpvcpHEP/krqofIfveVBHLm6TDdzbLfIrN8wHnDr4BFyDk5+QEju
         7g1Ppq0dn2CqqqX0tcxsuxkoWmg91gg24XxXz9DuvPvU1P8wJTkj/EPwy9k2nAlq8qi0
         /WTp+4iXmYJh5WrxT2JZ4XeIC+wgYGwxJ1xFMQFAPoNpuR2y+XHiHi/h76xVHugLr0jn
         IEREGTwojCDcn60sz7X03donN6EJuVVUqLBBOqOSUamzdkDsui8rNMLUEXe50fiGJi5J
         WU7XyaGpaGvSo31LfmqBJDv+5O4U0Y/ge2wHsEKCqKM1HHhynPTg4vt3/16W2rNaWcXh
         sCGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=IiwzJwn+;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic312-20.consmr.mail.sg3.yahoo.com (sonic312-20.consmr.mail.sg3.yahoo.com. [106.10.244.210])
        by gmr-mx.google.com with ESMTPS id n2si265505uap.0.2019.03.30.09.24.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:24:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) client-ip=106.10.244.210;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=IiwzJwn+;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.210 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553963092; bh=l+zn0uqMgNX4dF3fHHjY5FZxah/GJtNaoAqeCBwJnM4=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=IiwzJwn+CkHg4P9AbjDghHpJZyMQ3X2XUambwFRexf/mfXm4YMSvLGP02P0swzYiyPvvlaZMQIP5LtP8qo2BC7Uky2SN32ecLt/uzvTYA31MxWHFX+HWr0M3WcHf0X/SNjhkKE/AxAlrf636+xLDt+aRgnHzc9N3SImj/SZ0cylIoXMo84YolGBI9svJl2OTTTBdXw7e3c+fNm+ZIyL2Rmtjk5gt9NTnlBa0cGC3EltSgZI3LRWjcl4O9rQVZV0gYxqlXHB/yw3fIu2Ft7rL+LFbKOgk7bNo14/dLbswXZqGRCT+qrCdq+Gsbure2EmDMy8LUkSPjzx5vHCH0qERqA==
X-YMail-OSG: KewjKRgVM1mMY_5fzZiWMsGZwPhK_GC7PU.JZeZX6zjLV82gLwc4fcQkNbSqcLC
 z5loZ4DizY4MXIumC3BAKJsjf_jQpQe5SdmPzgi4VtD0K8XcKFM7Nl72Q1oiJmQhGBioBSW6xqxI
 5Nscaen.Ykkr52HNhlC6Vt2S3F3EMddaSHnCEN0EAe0S8dj_HgaNd4u_c_k3iFo0THQwEBiCbxyi
 DvVcySiY8Py.39i0kPZw6BEgtZZ4K.O3tJwh0ZZjRw4QuPowCckvDdZHV3iHAoezTBbxIp5lngPn
 GraUV3871BqV3RU5ynXmtHu.BICfZzrb3uulCKgY4CpSVYkj2CLlQinb41.hWynzQn0VLMHCe9JQ
 WfQJSxN68298a7A28Il32HAkl.sHnGqB2jQILxIAVLjtuRObJ7PfErgukqrYHCSsGDI.DoCta7E2
 B_8sgkQkQqEWxKaPRSXan7HXLOGlHmwW0_IJ34sDnsw5ZJQ5QBG_b2tWgqUFy4dc.a8fr5gUdr0A
 qo1nsMqKqRkQl5IEaA1ldQ3JycKyq3O2bFr.R67jUpwg3rol1W1NvFyddtBWkVsFo0pV5UeK_dkW
 EOJz4lT8TjTOT8KCjTVMAU4xY_MTeUO0qP6zCRPbqxwSPlC3Zf7KpyUqGIgkhCZTOlTfwEqkhdIX
 ukWzmW6Oue_WRJoTfjKRrbgKll6IoYhjdKK.UA_Pgx3MCcLS_.9ofNH7zNPKIORL99xzxfOobkHd
 F5pbvBU6o6EsRLZVIKBUAD2TsR8ft4pSKQq219BTk0exR3E4f3wbuwEg_ju_7G1oisT7iBPjcWRW
 oz_cSl6gculo1MKgq9WRfnVFybZjWjhiW2ylA2BAF7ES.m_h_yrR_m0qtXTCHX4iOCpIBk0zl22Y
 UXjpV2wXAwclOg.Gx9ytdgVNVM5cQigB7FXsb4ygFFCWyGqhRYmyBsCtR_zvUEvrD6vkfjy4eHZK
 sa4cGWgkDS2dGg_l2hl9f_eCxPpJG1NinXoPvCsn.CUEAeLhCpDDBWu9v_2lht1FMavygOi5sg9o
 zvDzP5d7GDGd.19G1lqsd4mHUUnlaCMi4wiB2LPKTLERDXjUVhrHeOMBe_pVTV9LhiMj1oPCHpEE
 1XDVh
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 16:24:52 +0000
Received: from 125.22.40.140 (EHLO [10.0.2.15]) ([125.22.40.140])
          by smtp414.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 6a0700570e2821a3a40d9ae4ec346ca3;
          Sat, 30 Mar 2019 16:24:47 +0000 (UTC)
Subject: Re: [Outreachy kernel] [PATCH v3] staging: rtlwifi: phydm: Remove
 parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
References: <20190330155517.2194-1-nishka.dasgupta@yahoo.com>
 <alpine.DEB.2.21.1903301717000.2608@hadrien>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <2c938e0a-a06d-3a0c-6f64-98e73aeea724@yahoo.com>
Date: Sat, 30 Mar 2019 21:54:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1903301717000.2608@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 30/03/19 9:48 PM, Julia Lawall wrote:
> 
> 
> On Sat, 30 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
> 
>> Remove unnecessary parentheses on the right hand side and simplify
>> expression from 'status = status & <expression>' to 'status &=
>> expression' to make code more readable.
> 
> It should be two patches, since you have done two things.

Okay, I will resend it.

> There is a third thing to do, which is get rid of the checkpatch error
> about a ( at the end of a line.  There is plenty of room for the first two
> arguments, as far as I can see.

The first two arguments fit. The problem is that the arguments have to 
be aligned (as far as I know), and the third argument (even just the 
typecast) cannot fit after the open bracket of the function without 
triggering the 80-character warning. I thought a checkpatch check about 
a ( at the end of the line might be preferable to a warning about line 
exceeding 80 characters?
Given the existing alignment and indentation, I don't see how we can 
avoid both the check and the warning without adding new variables (i.e 
by doing the enum typecast before). What should I do?
- Nishka

> julia
> 
>> Issue first detected using Coccinelle.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>> ---
>> Changes in v3:
>> - Move explanation of simplification to commit log.
>>
>>   drivers/staging/rtlwifi/phydm/phydm_debug.c | 18 ++++++++----------
>>   1 file changed, 8 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
>> index 91f2c054d83b..13b34dc33011 100644
>> --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
>> +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
>> @@ -51,20 +51,18 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
>>   				      (power_index << 16) | (power_index << 8) |
>>   				      (power_index);
>>   			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
>> -				status = (status &
>> -					  phydm_api_set_txagc(
>> -						  dm, power_index,
>> -						  (enum odm_rf_radio_path)
>> +				status &= phydm_api_set_txagc(
>> +						   dm, power_index,
>> +						   (enum odm_rf_radio_path)
>>   							  dm_value[1],
>> -						  i, false));
>> +						   i, false);
>>   		} else if (dm->support_ic_type & ODM_RTL8197F) {
>>   			for (i = 0; i <= ODM_RATEMCS15; i++)
>> -				status = (status &
>> -					  phydm_api_set_txagc(
>> -						  dm, power_index,
>> -						  (enum odm_rf_radio_path)
>> +				status &= phydm_api_set_txagc(
>> +						   dm, power_index,
>> +						   (enum odm_rf_radio_path)
>>   							  dm_value[1],
>> -						  i, false));
>> +						   i, false);
>>   		}
>>
>>   		if (status)
>> --
>> 2.19.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190330155517.2194-1-nishka.dasgupta%40yahoo.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


X-GM-THRID: 6675208982241476608
X-Received: by 2002:aa7:850b:: with SMTP id v11mr1190473pfn.108.1554234664317;
        Tue, 02 Apr 2019 12:51:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6182:: with SMTP id v124ls406592pgb.12.gmail; Tue, 02
 Apr 2019 12:51:03 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyS21V+UKxLhiXwFWjpQ2ii0sGXl2/sZluZQ7vP+9r5RwCSXKTQiX9od1gDfKVLGE0Evjzq
X-Received: by 2002:aa7:8d4d:: with SMTP id s13mr1374653pfe.92.1554234663558;
        Tue, 02 Apr 2019 12:51:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554234663; cv=none;
        d=google.com; s=arc-20160816;
        b=MTmNqvs9mJWfBrKAkKYnuKnCEoAvr6gs0pJJrj08bTL/10LNW92BA1scp7Lj9WkNVN
         2VfClg6iaO8VyFT6tk2Op/oTkWea2izaIXTDZ14ApPphR8KrFNcdT3jjTunGGaJ8DF5q
         xU/xK/ZTqT16cn5mSA8gnniPuz9pkhNvr7Jbo0kSg2sPqdI6cEf1BriCDjyf1wSsqxk1
         REvSUa3GoMpzvuy29IFxuBQCt+PhQ7HqruK8gV62HI/OYxi1BcVyV23iqlDCgOP0wUXZ
         4PT1cAHMyvP5FqJBlZsq7V0aUi+gDl8ahuh9KeXlOs58qdtlRGh8pkm+0UmSjngSg94F
         Oktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Jx95b7TJ8BYEL00PrEv6LiLlfkbvRhlyWd1DaUM+Z4Q=;
        b=nViMdJNcu4xtS8meXWunx8GjUiK1VGr5yz6cMkPP1ftWscXt+CO4Gl5C5UyjdxQ2VQ
         dZpQykdbZj8nj68GELYuhdaxECB1pep/jMzL3tDCwMutzvC8TYhQ/XyhTYFrjZrzuEqB
         bkfNH80Q0jXb03pix+v6UxvGefnRTK6uB153ICUJw9jWKLsmVHOjisvep1Of/x8V+Bie
         1hmEBMaKbyp3YCll2lmNaY7BNVU8hkPGBmwNT5ycC2cmVp6QodDs/906+hB1Yc0PJcyH
         LrZihs7bSMQwRogCvxSEnD8Wad7isXPAsr5xiwsge/1XD/v/u6qrE0P+ZQfCSRAkI4vZ
         brwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Rh1QSoZM;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.167 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic310-47.consmr.mail.sg3.yahoo.com (sonic310-47.consmr.mail.sg3.yahoo.com. [106.10.244.167])
        by gmr-mx.google.com with ESMTPS id j8si890784plk.3.2019.04.02.12.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 12:51:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.167 as permitted sender) client-ip=106.10.244.167;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=Rh1QSoZM;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.167 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554234661; bh=Jx95b7TJ8BYEL00PrEv6LiLlfkbvRhlyWd1DaUM+Z4Q=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=Rh1QSoZMEWVFn4wzBpy2jRYHbbcThaNiPhaK8nnhVmx93eJRpJrTpdyuBz2AuNcpn/gQSGMYy0u4rrTrTcYcK97DhGanswH824Y3n9SKj/0FBmnWZZ10oEgf5azzr0mLr6bASR/y7lH4MHtkvbr/k2yt6Lrx74c7N7YMf5btYOH1OzORK/LUZlh2EUYUyYCybrVYdftw3rZJzgQVa+WSELtsoC7qMXlKcduLvep2XeiHnjGPyJgCAYydqFvsj5jElLR7GBSQVY8xchE6sKXyTjV0VIuHzoeZvNJcazUKKnryRdUH8hFe5Im2riKjtzvhPWtrOCHax7OkpLweNKBOMQ==
X-YMail-OSG: xeI3qDcVM1nWlo1QOQ4mJ2zOiCsQ4z9D6OuVa75VH0cs.6hjAznIhwD1hhONpL0
 dC31CMizgJ_3QwxX.u_ehxB6TRz5TqA9FQuJgLRh_mhE-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 19:51:01 +0000
Received: from 125.22.40.140 (EHLO [10.0.2.15]) ([125.22.40.140])
          by smtp410.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID f96a01eab2d2807230b08f0e4bf37067;
          Tue, 02 Apr 2019 19:48:59 +0000 (UTC)
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: hw.c:
 Remove parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20190402081946.22590-1-nishka.dasgupta@yahoo.com>
 <alpine.DEB.2.20.1904021151040.3297@hadrien>
 <CAC4++KDCUWt832f+4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw@mail.gmail.com>
 <alpine.DEB.2.20.1904021159350.3297@hadrien>
 <2df6ffc7-d084-c254-e20a-a219e6eb05c0@yahoo.com>
 <alpine.DEB.2.21.1904022144030.3803@hadrien>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <c6b464e6-7c06-4893-73ec-080e97391d41@yahoo.com>
Date: Wed, 3 Apr 2019 01:18:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1904022144030.3803@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 03/04/19 1:15 AM, Julia Lawall wrote:
> 
> 
> On Wed, 3 Apr 2019, NIshka Dasgupta wrote:
> 
>>
>>
>> On 02/04/19 3:30 PM, Julia Lawall wrote:
>>>
>>>
>>> On Tue, 2 Apr 2019, Nishka Dasgupta wrote:
>>>
>>>> On Tue, Apr 2, 2019 at 3:21 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>>>>>
>>>>>
>>>>>
>>>>> On Tue, 2 Apr 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
>>>>>
>>>>>> Remove unnecessary parentheses around right hand side of expression.
>>>>>> Issue found with Coccinelle script:
>>>>>> @@expression e1, e2, e3;@@
>>>>>> (if(e1)
>>>>>> e2;
>>>>>> else
>>>>>> e3;
>>>>>> |
>>>>>
>>>>> What is the purpose of the above code?
>>>>
>>>> Without that if block, my cocci file was also flagging if-else blocks.
>>>> This block does nothing if an if-else sequence is matched. After
>>>> adding this, my .cocci file has only documented assignment statements
>>>> as required.
>>>
>>> Do you have a specific example?  I don't see how the pattern below can
>>> have an impact on an entire if statement.It only matches an assignment.
>>>
>> My mistake; a previous version of paren.cocci looked something like this:
>> @@expression e1, e2;@@
>> e1 =
>> - (e2);
>> + e2;
>>
>> This was highlighting if-else blocks in mt7621-spi; it does not appear to be
>> doing so any more, so perhaps whatever was triggering that has been fixed?
>> This previous version of paren.cocci also picks up on expressions that have
>> been split across multiple lines, for some reason.
>> What was I doing wrong with this patch?
> 
> Often you don't care about the details of parentheses, so if they are
> uniformly removed, Coccinelle also accepts the case where they simply
> aren't there.  By putting the -( and -) on separate lines, with the
> unremoved code in the middle, you got around this issue, and it only
> changes the things that are desirable.
> 
> On the other hand, your original rule probably did a good job of solving
> 80 character problems :)

I see. Thank you for the clarification!
- Nishka

> julia
> 
>>
>> - Nishka
>>> julia
>>>
>>>
>>>
>>>> - Nishka
>>>>
>>>>> julia
>>>>>
>>>>>> e1 =
>>>>>> -(
>>>>>> e2
>>>>>> -)
>>>>>> ;
>>>>>> )
>>>>>>
>>>>>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>>>>>> ---
>>>>>>    drivers/staging/rtlwifi/rtl8822be/hw.c | 10 +++++-----
>>>>>>    1 file changed, 5 insertions(+), 5 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.c
>>>>>> b/drivers/staging/rtlwifi/rtl8822be/hw.c
>>>>>> index 88ba5b2fea6a..847bd3bcd1d6 100644
>>>>>> --- a/drivers/staging/rtlwifi/rtl8822be/hw.c
>>>>>> +++ b/drivers/staging/rtlwifi/rtl8822be/hw.c
>>>>>> @@ -243,7 +243,7 @@ static void _rtl8822be_fwlps_leave(struct
>>>>>> ieee80211_hw *hw)
>>>>>>         u8 rpwm_val = 0, fw_pwrmode = FW_PS_ACTIVE_MODE;
>>>>>>
>>>>>>         if (ppsc->low_power_enable) {
>>>>>> -             rpwm_val = (FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK); /* RF
>>>>>> on */
>>>>>> +             rpwm_val = FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK; /* RF
>>>>>> on */
>>>>>>                 _rtl8822be_set_fw_clock_on(hw, rpwm_val, false);
>>>>>>                 rtlhal->allow_sw_to_change_hwclc = false;
>>>>>>                 rtlpriv->cfg->ops->set_hw_reg(hw,
>>>>>> HW_VAR_H2C_FW_PWRMODE,
>>>>>> @@ -474,7 +474,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw,
>>>>>> u8 variable, u8 *val)
>>>>>>                 rtl_write_byte(rtlpriv, REG_SECCFG_8822B, *((u8
>>>>>> *)val));
>>>>>>                 break;
>>>>>>         case HW_VAR_AMPDU_FACTOR: {
>>>>>> -             u32 ampdu_len = (*((u8 *)val));
>>>>>> +             u32 ampdu_len = *((u8 *)val);
>>>>>>
>>>>>>                 ampdu_len = (0x2000 << ampdu_len) - 1;
>>>>>>                 rtl_write_dword(rtlpriv, REG_AMPDU_MAX_LENGTH_8822B,
>>>>>> ampdu_len);
>>>>>> @@ -583,7 +583,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw,
>>>>>> u8 variable, u8 *val)
>>>>>>                         _rtl8822be_fwlps_leave(hw);
>>>>>>         } break;
>>>>>>         case HW_VAR_H2C_FW_JOINBSSRPT: {
>>>>>> -             u8 mstatus = (*(u8 *)val);
>>>>>> +             u8 mstatus = *(u8 *)val;
>>>>>>
>>>>>>                 if (mstatus == RT_MEDIA_CONNECT) {
>>>>>>                         rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AID,
>>>>>> NULL);
>>>>>> @@ -1912,7 +1912,7 @@ static void _rtl8822be_read_adapter_info(struct
>>>>>> ieee80211_hw *hw)
>>>>>>
>>>>>>         /*board type*/
>>>>>>         rtlefuse->board_type =
>>>>>> -             (((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0)
>>>>>>>> 5);
>>>>>> +             ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0)
>>>>>>>> 5;
>>>>>>         if ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) == 0xFF)
>>>>>>                 rtlefuse->board_type = 0;
>>>>>>
>>>>>> @@ -2406,7 +2406,7 @@ void
>>>>>> rtl8822be_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
>>>>>>
>>>>>>                 rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
>>>>>>                 rtlpriv->btcoexist.btc_info.ant_num =
>>>>>> -                     (value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2);
>>>>>> +                     value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2;
>>>>>>         } else {
>>>>>>                 rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
>>>>>>                 rtlpriv->btcoexist.btc_info.ant_num = ANT_TOTAL_X2;
>>>>>> --
>>>>>> 2.19.1
>>>>>>
>>>>>> --
>>>>>> You received this message because you are subscribed to the Google
>>>>>> Groups "outreachy-kernel" group.
>>>>>> To unsubscribe from this group and stop receiving emails from it, send
>>>>>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>>>> To post to this group, send email to
>>>>>> outreachy-kernel@googlegroups.com.
>>>>>> To view this discussion on the web visit
>>>>>> https://groups.google.com/d/msgid/outreachy-kernel/20190402081946.22590-1-nishka.dasgupta%40yahoo.com.
>>>>>> For more options, visit https://groups.google.com/d/optout.
>>>>>>
>>>>>
>>>>> --
>>>>> You received this message because you are subscribed to the Google
>>>>> Groups "outreachy-kernel" group.
>>>>> To unsubscribe from this group and stop receiving emails from it, send
>>>>> an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>>>> To view this discussion on the web visit
>>>>> https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021151040.3297%40hadrien.
>>>>> For more options, visit https://groups.google.com/d/optout.
>>>>
>>>> --
>>>> You received this message because you are subscribed to the Google Groups
>>>> "outreachy-kernel" group.
>>>> To unsubscribe from this group and stop receiving emails from it, send an
>>>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>>> To view this discussion on the web visit
>>>> https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKDCUWt832f%2B4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw%40mail.gmail.com.
>>>> For more options, visit https://groups.google.com/d/optout.
>>>>
>>


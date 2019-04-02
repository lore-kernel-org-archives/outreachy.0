X-GM-THRID: 6675208982241476608
X-Received: by 2002:ae9:ebd4:: with SMTP id b203mr8602488qkg.17.1554234160725;
        Tue, 02 Apr 2019 12:42:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1c0f:: with SMTP id a15ls626657qtk.15.gmail; Tue, 02 Apr
 2019 12:42:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzYLkDrcgcJ2x7jKOAhRzt90cpfK43IrmEulNCjdENgG6A2CJGhMVQZxeqMKtgrdeGmCL6w
X-Received: by 2002:ac8:529a:: with SMTP id s26mr2108375qtn.51.1554234160007;
        Tue, 02 Apr 2019 12:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554234160; cv=none;
        d=google.com; s=arc-20160816;
        b=gaQdZbGZr3HKOgkopat31/xLkh1mFPYXFop9DxWNBlVyQLMC/ydq6CJ1Tq2ZL8At25
         7g2TwUJQ7k1tS3OxoYFaUBdQsLOJ5ozwhoMKH4WHzmgtKmk7bfzz3J+FRLNSnuW447Vn
         SuJoijC2JsWDjNR4QCFddS5CYvpO9O6yoxT2K1o4xT7SLLDhvSPyGf/UOzTAO2KR33Yr
         kB2ek2dNt+WiEKJPC0/35Yh1GbkmqloAIkreQ7wTZfiGGfzmg3/xHNPFY9D+kAuypDwY
         qEGUs7ZAMb8Pb3vVE8rij30a5lD6eCvtaQZeoFRIeO5cEygqgqXlRViS8MTCH0sbYHdf
         41aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=w3wQLfLROeTDEupTuy8hQ4JHl8Bj6H+OC5oaD+9lQIs=;
        b=iSUHYakVX9t3vz8qBKnsq/iVag4AoE8HLyPbrgAhEi47DV4NXLLsnnKpUAyrRdXLYw
         uYBQMHho6xq4CUQQtOAtvoDFTfUK0wVRtpd3wfOX8KSFPQUlaYwrl9Wg4nSNS08Sbr4z
         UtfL1Z/fE0LtiQU3sIqECxXOsBN5Xgz8pY4RJlqUHwreJIBd6b+SL0qvLL3HsHb/5mDX
         7qVgh8gKaVaxRVT9WeexcBzP+aUFoktZ5SjAmfAsffkVMwo11assJkkgWoYf2Vq42mPc
         G32G7wyaEO76T+rEPyJ2o73LdPrS7UXY4MB9cIu01J4NvhhtjNMPb5BBrhFeXYOWMgDl
         rEdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="Ee/WHQ67";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic306-20.consmr.mail.sg3.yahoo.com (sonic306-20.consmr.mail.sg3.yahoo.com. [106.10.241.140])
        by gmr-mx.google.com with ESMTPS id t17si874831qtq.0.2019.04.02.12.42.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 12:42:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) client-ip=106.10.241.140;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="Ee/WHQ67";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.241.140 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554234157; bh=w3wQLfLROeTDEupTuy8hQ4JHl8Bj6H+OC5oaD+9lQIs=; h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject; b=Ee/WHQ67WIkaBqI3CT9909TaYE/A7E/qN+ZQZPPX/I0rBafzubqLvy9BX4s5iGU+Wp8h6wTAUP1MXHlKfInqCsTfitSpZkof6VhNow5hmX/resyJAgxlTjL21oBkFwNTkD3AgcA3ESyB7Wd1PNxzaOIEkxsncca3FuR8UYN+UG/az3BJtxY/dsOQ4pxtYviJiYjMbGML+pblXgEktUnA+tOPePL0emP/woljggAqHzxp+68d5uR0OJTd/B3iU9POBjVzfBkBEMvN7k7ajtJ95hGUyW7H86W07AmF+LyuM4WFDA+HTFMXi2ZZ/y5gcM0fm+xhnmeUXMvH71v3ZTyJaQ==
X-YMail-OSG: MsaUGZ4VM1kj1HBeD3pfKtUn6r.ccs9v5SpYNmIu0towGH6qZXH0ynwR4PEIZnA
 RwPAruIVDll.0hxSy8KSerloLhJKMFYeWfGs0yWOa9CJzwutFitbQ3XuLzqPlsa2xqFKz7THTckz
 p.zvXnqcsjBjbolwyAWGI8Zv4ZzEmlXBrBRENXl0b8jfXESO5Oy5c7YE6sFmr6No_qGOXAcZWA6.
 kjCSn_CCZGr53wECtVpm2FPFisYdV73KhINqi2xwi2w8Y2.B2GP48QWUb4IJvtMgVGKX2xdP.kYM
 HikYatTQlOUgH7l0q299DaSuiMgty3C_vl_kILUkjVgP.vakngtk10fMuVLEUslOzhDKol_8jbFR
 Li9p9R_OEwjqMX2jPLjMzl6yVtk8tTCIXgRR.7BTzCkRcid4ljA.7t6qNSfJAYwsuy3mtbTx17tN
 0aJ5xqqSthBs30hGzOEv6KocXAiLwOgr8l2JHcpMeZUAk_7YxjF6snXlkL3.NeN5FW70bLZJJi1M
 emApxVFLYcUCVMj1uNNQ40xpjK_i4XgJ_uTLjmHgKzL.vSR61H97xopGIfNqK1SCyDcnTvjzJ9ZU
 qwE89efYOL_bidZHJZNMmryJBC.3VDtN2ZzrHlWGe7yTPrsJMtJiHFzaMTpN0U9fecOzNvLQuGKs
 yV6O86_opwoFIx15vgKv2BLcu4zHu5TK0o5.IR0vZy1nHedOnpwlPIEQsbpH0evSAQ78izMNmuEZ
 XekTkYzw2Mr6cYv00JMBFeAVEy3ZmWDRLu1IVc2uDL4uHQ6g3PsQSNlZTFQt9J7DTb9swiqw.0rU
 vYe0UsI9_UFOMwhfsODgdwDSY75oQ8JMOTWUCJMhfS8rKgF_BkQgDnEH3KpKAP14Q0_M7yyEe8lT
 tVw30Akrf6giTuVeFx29qe_yn2fIljFlvO4cgWf2Ir4ZHQHDe5.TlbsJhjpiweMsa.VraYNA2o0d
 zEX3J9OzMobWLXHkzQpdwZUci2tS.59zJRpIqXXfoNnrrPMqFHfnZc71V43grjtIvnKsDWmTJDgF
 5NXn3y16DyRhZt1votYRZazBB2IGp2A1kzaLj2KpRvACvyXub7YMczhxoXMODlJMQrTv6vLaiMVH
 ze3Y-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 19:42:37 +0000
Received: from 103.7.128.210 (EHLO [10.0.2.15]) ([103.7.128.210])
          by smtp406.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID e0acf6d1e30b4450c4b7c1d44fda77a8;
          Tue, 02 Apr 2019 19:42:35 +0000 (UTC)
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: rtl8822be: hw.c:
 Remove parentheses
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>,
 outreachy-kernel <outreachy-kernel@googlegroups.com>
References: <20190402081946.22590-1-nishka.dasgupta@yahoo.com>
 <alpine.DEB.2.20.1904021151040.3297@hadrien>
 <CAC4++KDCUWt832f+4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw@mail.gmail.com>
 <alpine.DEB.2.20.1904021159350.3297@hadrien>
From: NIshka Dasgupta <nishka.dasgupta@yahoo.com>
Message-ID: <2df6ffc7-d084-c254-e20a-a219e6eb05c0@yahoo.com>
Date: Wed, 3 Apr 2019 01:12:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1904021159350.3297@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 02/04/19 3:30 PM, Julia Lawall wrote:
> 
> 
> On Tue, 2 Apr 2019, Nishka Dasgupta wrote:
> 
>> On Tue, Apr 2, 2019 at 3:21 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>>>
>>>
>>>
>>> On Tue, 2 Apr 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
>>>
>>>> Remove unnecessary parentheses around right hand side of expression.
>>>> Issue found with Coccinelle script:
>>>> @@expression e1, e2, e3;@@
>>>> (if(e1)
>>>> e2;
>>>> else
>>>> e3;
>>>> |
>>>
>>> What is the purpose of the above code?
>>
>> Without that if block, my cocci file was also flagging if-else blocks.
>> This block does nothing if an if-else sequence is matched. After
>> adding this, my .cocci file has only documented assignment statements
>> as required.
> 
> Do you have a specific example?  I don't see how the pattern below can
> have an impact on an entire if statement.It only matches an assignment.
> 
My mistake; a previous version of paren.cocci looked something like this:
@@expression e1, e2;@@
e1 =
- (e2);
+ e2;

This was highlighting if-else blocks in mt7621-spi; it does not appear 
to be doing so any more, so perhaps whatever was triggering that has 
been fixed?
This previous version of paren.cocci also picks up on expressions that 
have been split across multiple lines, for some reason.
What was I doing wrong with this patch?

- Nishka
> julia
> 
> 
> 
>> - Nishka
>>
>>> julia
>>>
>>>> e1 =
>>>> -(
>>>> e2
>>>> -)
>>>> ;
>>>> )
>>>>
>>>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
>>>> ---
>>>>   drivers/staging/rtlwifi/rtl8822be/hw.c | 10 +++++-----
>>>>   1 file changed, 5 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/rtlwifi/rtl8822be/hw.c b/drivers/staging/rtlwifi/rtl8822be/hw.c
>>>> index 88ba5b2fea6a..847bd3bcd1d6 100644
>>>> --- a/drivers/staging/rtlwifi/rtl8822be/hw.c
>>>> +++ b/drivers/staging/rtlwifi/rtl8822be/hw.c
>>>> @@ -243,7 +243,7 @@ static void _rtl8822be_fwlps_leave(struct ieee80211_hw *hw)
>>>>        u8 rpwm_val = 0, fw_pwrmode = FW_PS_ACTIVE_MODE;
>>>>
>>>>        if (ppsc->low_power_enable) {
>>>> -             rpwm_val = (FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK); /* RF on */
>>>> +             rpwm_val = FW_PS_STATE_ALL_ON_8822B | FW_PS_ACK; /* RF on */
>>>>                _rtl8822be_set_fw_clock_on(hw, rpwm_val, false);
>>>>                rtlhal->allow_sw_to_change_hwclc = false;
>>>>                rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_H2C_FW_PWRMODE,
>>>> @@ -474,7 +474,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
>>>>                rtl_write_byte(rtlpriv, REG_SECCFG_8822B, *((u8 *)val));
>>>>                break;
>>>>        case HW_VAR_AMPDU_FACTOR: {
>>>> -             u32 ampdu_len = (*((u8 *)val));
>>>> +             u32 ampdu_len = *((u8 *)val);
>>>>
>>>>                ampdu_len = (0x2000 << ampdu_len) - 1;
>>>>                rtl_write_dword(rtlpriv, REG_AMPDU_MAX_LENGTH_8822B, ampdu_len);
>>>> @@ -583,7 +583,7 @@ void rtl8822be_set_hw_reg(struct ieee80211_hw *hw, u8 variable, u8 *val)
>>>>                        _rtl8822be_fwlps_leave(hw);
>>>>        } break;
>>>>        case HW_VAR_H2C_FW_JOINBSSRPT: {
>>>> -             u8 mstatus = (*(u8 *)val);
>>>> +             u8 mstatus = *(u8 *)val;
>>>>
>>>>                if (mstatus == RT_MEDIA_CONNECT) {
>>>>                        rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_AID, NULL);
>>>> @@ -1912,7 +1912,7 @@ static void _rtl8822be_read_adapter_info(struct ieee80211_hw *hw)
>>>>
>>>>        /*board type*/
>>>>        rtlefuse->board_type =
>>>> -             (((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5);
>>>> +             ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) & 0xE0) >> 5;
>>>>        if ((*(u8 *)&hwinfo[EEPROM_RF_BOARD_OPTION_8822B]) == 0xFF)
>>>>                rtlefuse->board_type = 0;
>>>>
>>>> @@ -2406,7 +2406,7 @@ void rtl8822be_read_bt_coexist_info_from_hwpg(struct ieee80211_hw *hw,
>>>>
>>>>                rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
>>>>                rtlpriv->btcoexist.btc_info.ant_num =
>>>> -                     (value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2);
>>>> +                     value & BIT(0) ? ANT_TOTAL_X1 : ANT_TOTAL_X2;
>>>>        } else {
>>>>                rtlpriv->btcoexist.btc_info.bt_type = BT_RTL8822B;
>>>>                rtlpriv->btcoexist.btc_info.ant_num = ANT_TOTAL_X2;
>>>> --
>>>> 2.19.1
>>>>
>>>> --
>>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190402081946.22590-1-nishka.dasgupta%40yahoo.com.
>>>> For more options, visit https://groups.google.com/d/optout.
>>>>
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1904021151040.3297%40hadrien.
>>> For more options, visit https://groups.google.com/d/optout.
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKDCUWt832f%2B4R_Y-UDxe9HXeUf3m_N8QSCqLTr5Gd7Rvw%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


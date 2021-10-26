X-GM-THRID: 7022901752311578624
X-Received: by 2002:a05:6214:18c2:: with SMTP id cy2mr3471065qvb.59.1635269798163;
        Tue, 26 Oct 2021 10:36:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:4001:: with SMTP id h1ls10706155qko.7.gmail; Tue,
 26 Oct 2021 10:36:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxoZu82r/BIr1u7PhWfaCMbu1CLC73ogHpE7vGRQaRCq6C0Qnhp2R0tFEiUCFr+bivzq/I0
X-Received: by 2002:a05:620a:bd5:: with SMTP id s21mr20195971qki.175.1635269797189;
        Tue, 26 Oct 2021 10:36:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635269797; cv=none;
        d=google.com; s=arc-20160816;
        b=dzxu/mVpTk37xw1fJiaiL8MNgTAbvHvRpQ10BDkCMOApyjs4lV9DUWbd9uf/VBBuoA
         2r6HeYcXzyEAckaSEcQ5SNUv/o5iPwwsZ/ORK1KltMix23oj7trEDEama0FeaGXlZKc3
         1GhSp9o/I/H95LH5dPMyfZvqi1/YJ0471GPoYwMdRYte2PVKeAxysY5c0nwz8Hc9svFe
         O1bHc/cx/pGn7gAOCc58mK9Osay7N1nJ4FL0jtRCK0tdG4UiTG3EWqM/i9keuCWOgzoZ
         7Jt9eKrXh6pam4TWZBd7aQa2546+2Rn6D5mRrdjhK1B02YkwhImxcBIwWhCi2/g7hqwu
         YEXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=fedtuZxfy8Ocxg9jPE6FfUu7D50bZfVQXO7CcPYFPaQ=;
        b=pD/q5IL3gJs2h49OvyyPA5ffP9EGnAaYyDtgZujN8H3A+7+zqdsoHS2t9dwWiGDzoE
         9Q6ZuV7++lN4uVmq2zz+l+XRn6mi2bOFcZ5dYhMUAZvwhn1qmgUujwOtV//uxHWXG68b
         nrFbsAGbTajaZHWGOtfQ8ExGjTlbhymNppIAcLEzNl8BdQTetVYkuPFY3y/91FuEYZQi
         m/pr8jAKAl9aWdvTKdnwgK2IP6AjamsWfjQb/oardzCYf6uKQU/s1nK/XxbYm2XLU8Ar
         Y8gR64wan1kBGRBOzVBWVevmOAH2eiPJ1tnHFnDcrmco15uP7kc2CaT+SYKZC8H6dTiw
         H68w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Rp/48xqJ";
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id k18si1767896qke.1.2021.10.26.10.36.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 10:36:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b="Rp/48xqJ";
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1029.google.com with SMTP id k2-20020a17090ac50200b001a218b956aaso58957pjt.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 10:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fedtuZxfy8Ocxg9jPE6FfUu7D50bZfVQXO7CcPYFPaQ=;
        b=Rp/48xqJ726UzicfVm/WK0fAu1dJLrUw0jyhc6peOETyiGRW0XiHtW55NGw/+aKEZD
         s0wff2jsf5BN2iLHZ++fT0fvMqu3VjRhbcOYKWhike8NQXbIkREkzdz5xmiOJL3BqORP
         NBuD16qLJQeFz8/aHHaE2KddMbOPwKEaZIJvQyZegRK+la7qSCDhPTF2KJp+nJxJnYtj
         UKyhEXzxzAXz97GYWcEFWTiuT+N8t9p5z9TJhmO3guHixiPnKcOowNz1lJBk6WGMpeEy
         +z+XTnyieY8ZG2/zVLtHv6xxENfagcoH/i8mcddl4BkV1q3oYWr0HBU0HFSSrnOCRqDP
         3JiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fedtuZxfy8Ocxg9jPE6FfUu7D50bZfVQXO7CcPYFPaQ=;
        b=LvF9aubEC323cpGACV+pQfNEdJ8FH7hqxYZGiuzB9aDi+wB6Pi9TsBteKc1HNwQFhS
         M+T39z9HITnEwMiCnsSwjAeuGMdyK7enrRBaXd/EKsH5DRVVNvBZGEVuHVdd3W5GIKvL
         vXqPZ07XthMCoZ9M0gxD0uTO2PMCLn48mSU3VvWuD0AKS0fyU8NS3GNuHSZUWt5oxjUo
         DMRSD0roRCywHzEY9PhkQ8TmYEISlsiZ1cusTbiDnmEK9Pq3CSaB2k3qtvrIrGe7LAUl
         qGXiC8adSCadHVXRxwolSuwoj35528BzXFPm10hOlqze/d6Zr4DFoIeT6LA4QPxz/Iqk
         yxfw==
X-Gm-Message-State: AOAM533FReIU1PjYHsofXkKrIyEf8IhhlFYV9NZEYfcQy4go8cretvow
	5bSUFrEjjWiZp8P4esZ0RXtErFMj6bQ=
X-Received: by 2002:a17:90a:6b0d:: with SMTP id v13mr116099pjj.138.1635269796433;
        Tue, 26 Oct 2021 10:36:36 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from ?IPV6:2405:201:d007:e827:784a:f821:cdd9:94b9? ([2405:201:d007:e827:784a:f821:cdd9:94b9])
        by smtp.gmail.com with ESMTPSA id l11sm1473285pjg.22.2021.10.26.10.36.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 10:36:36 -0700 (PDT)
Message-ID: <fc1d20ea-762a-f9cc-31e4-76737897a8e8@gmail.com>
Date: Tue, 26 Oct 2021 23:06:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: core: Refactor
 nested if-else
Content-Language: en-US
To: kushal kothari <kushalkothari285@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, fabioaiuto83@gmail.com,
 ross.schm.dev@gmail.com, hdegoede@redhat.com, marcocesati@gmail.com,
 "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Mike Rapoport <mike.rapoport@gmail.com>,
 kushalkothari2850@gmail.com
References: <20211026134253.7868-1-kushalkothari285@gmail.com>
 <84add494-6e39-cdd9-96c6-04a0245ae11c@gmail.com>
 <CALtHPQsh=0LyM3K9dn8d0X+n4gbx2TApF6k_WhpypHXGj6Hj-w@mail.gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <CALtHPQsh=0LyM3K9dn8d0X+n4gbx2TApF6k_WhpypHXGj6Hj-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26-10-2021 20:00, kushal kothari wrote:
>> Can you please check if this works well. Thanks.
> 
>  checkpatch.pl again warns of
> "WARNING: Too many leading tabs - consider code refactoring"
> when adding another if loop on top .
> 


Thanks for checking. The whole intention was to reduce unnecessary memcmp.
These operations are heavy and performing same comparison twice, IMHO needs to be thought well.
But, I'll wait for others to comment on this. Thanks.

Regards,

~Praveen.



> On Tue, Oct 26, 2021 at 7:24 PM Praveen Kumar <kpraveen.lkml@gmail.com>
> wrote:
> 
>> On 26-10-2021 19:12, Kushal Kothari wrote:
>>> Refactor nested if-else to avoid deep indentations. There is no change
>>> in the logic of the new code, however, now it is simple because it gets
>>> rid of five unnecessary else conditionals and it combines nested if into
>>> single if-else-if. This refactor also leads to fix warning detected by
>>> checkpatch.pl:
>>> WARNING: Too many leading tabs - consider code refactoring
>>>
>>> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
>>> ---
>>>
>>> Changes in v2: Fix the bug of not handling properly the else logic
>>> when p is not null in else-if. Also, reword the subject line and break
>>> it up at 72 columns.
>>>
>>>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 69 ++++++++-----------
>>>  1 file changed, 29 insertions(+), 40 deletions(-)
>>>
>>> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
>> b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
>>> index 0f82f5031c43..267d853b1514 100644
>>> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
>>> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
>>> @@ -1192,50 +1192,39 @@ unsigned int OnAssocReq(struct adapter
>> *padapter, union recv_frame *precv_frame)
>>>               p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
>>>               for (;;) {
>>>                       p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC,
>> &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
>>> -                     if (p) {
>>> -                             if (!memcmp(p+2, WMM_IE, 6)) {
>>> -
>>> -                                     pstat->flags |= WLAN_STA_WME;
>>> -
>>> -                                     pstat->qos_option = 1;
>>> -                                     pstat->qos_info = *(p+8);
>>> -
>>> -                                     pstat->max_sp_len =
>> (pstat->qos_info>>5)&0x3;
>>> -
>>> -                                     if ((pstat->qos_info&0xf) != 0xf)
>>> -                                             pstat->has_legacy_ac =
>> true;
>>> -                                     else
>>> -                                             pstat->has_legacy_ac =
>> false;
>>> -
>>> -                                     if (pstat->qos_info&0xf) {
>>> -                                             if (pstat->qos_info&BIT(0))
>>> -                                                     pstat->uapsd_vo =
>> BIT(0)|BIT(1);
>>> -                                             else
>>> -                                                     pstat->uapsd_vo =
>> 0;
>>> -
>>> -                                             if (pstat->qos_info&BIT(1))
>>> -                                                     pstat->uapsd_vi =
>> BIT(0)|BIT(1);
>>> -                                             else
>>> -                                                     pstat->uapsd_vi =
>> 0;
>>> -
>>> -                                             if (pstat->qos_info&BIT(2))
>>> -                                                     pstat->uapsd_bk =
>> BIT(0)|BIT(1);
>>> -                                             else
>>> -                                                     pstat->uapsd_bk =
>> 0;
>>> -
>>> -                                             if (pstat->qos_info&BIT(3))
>>> -                                                     pstat->uapsd_be =
>> BIT(0)|BIT(1);
>>> -                                             else
>>> -                                                     pstat->uapsd_be =
>> 0;
>>> -
>>> -                                     }
>>> -
>>> -                                     break;
>>> +                     if (p && memcmp(p+2, WMM_IE, 6)) {
>>> +                             p = p + ie_len + 2;
>>> +                     } else if (p && !memcmp(p+2, WMM_IE, 6)) {
>>
>> I would think of something,
>>
>> for(;;) {
>>         p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len -
>> WLAN_HDR_A3_LEN - ie_offset);
>>         if (p) {
>>                 if (memcmp(p+2, WMM_IE, 6)) {
>>                         p = p + ie_len + 2;
>>                         continue;
>>                 }
>>                 pstat->flags |= WLAN_STA_WME;
>>                 ...
>>         }
>>         /* Here we will reach only if p is NULL or its required entry */
>>         break;
>> }
>>
>> Can you please check if this works well. Thanks.
>> Also, wanted to check how are you testing these changes ?
>>
>>> +                             pstat->flags |= WLAN_STA_WME;
>>> +                             pstat->qos_option = 1;
>>> +                             pstat->qos_info = *(p+8);
>>> +                             pstat->max_sp_len =
>> (pstat->qos_info>>5)&0x3;
>>> +
>>> +                             pstat->has_legacy_ac = false;
>>> +                             if ((pstat->qos_info&0xf) != 0xf)
>>> +                                     pstat->has_legacy_ac = true;
>>> +
>>> +                             if (pstat->qos_info&0xf) {
>>> +                                     pstat->uapsd_vo = 0;
>>> +                                     if (pstat->qos_info&BIT(0))
>>> +                                             pstat->uapsd_vo =
>> BIT(0)|BIT(1);
>>> +
>>> +                                     pstat->uapsd_vi = 0;
>>> +                                     if (pstat->qos_info&BIT(1))
>>> +                                             pstat->uapsd_vi =
>> BIT(0)|BIT(1);
>>> +
>>> +                                     pstat->uapsd_bk = 0;
>>> +                                     if (pstat->qos_info&BIT(2))
>>> +                                             pstat->uapsd_bk =
>> BIT(0)|BIT(1);
>>> +
>>> +                                     pstat->uapsd_be = 0;
>>> +                                     if (pstat->qos_info&BIT(3))
>>> +                                             pstat->uapsd_be =
>> BIT(0)|BIT(1);
>>>                               }
>>> +                             break;
>>>                       } else {
>>>                               break;
>>>                       }
>>> -                     p = p + ie_len + 2;
>>>               }
>>>       }
>>>
>>>
>>
>> Regards,
>>
>> ~Praveen.
>>
>>
> 



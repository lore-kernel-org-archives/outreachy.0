X-GM-THRID: 6339162656111329280
X-Received: by 10.25.16.93 with SMTP id f90mr1724168lfi.30.1475995084315;
        Sat, 08 Oct 2016 23:38:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.141 with SMTP id 135ls660806ljj.8.gmail; Sat, 08 Oct 2016
 23:38:03 -0700 (PDT)
X-Received: by 10.46.5.68 with SMTP id 65mr60970ljf.11.1475995083658;
        Sat, 08 Oct 2016 23:38:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id c74si521449wmd.3.2016.10.08.23.38.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 23:38:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x79so1301120lff.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 23:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ai8/R/rJ+BCJ9A/IiEQ1BZIjweYw2xtw7R+PQUYKaZk=;
        b=OyeqCF93o7URHdpATEMw3By++CHbNHkqdwAJFU+5FTxlr7cry/yko9pAp1bzjwtuiZ
         v3ndRq1LcdUo+7/wNYz1sn0M0kuX9vF84JaceYnfFXukCK4+c+cf3MK3mfj0kI6o9um8
         HxEAE1Jq0toTkcIgsLCD7NYLK1PWBc8NLVLz2GhcggNmz2EekhatFpbPQHS8BhU7Qne6
         g9UDpjygHpbkhBx3Pf2jWXKay8VbxBTWnzK8R5E0jd2TfX6Y0LmfJ/M3PrvuPnHM6RGJ
         qRxWY9nVw8D7iBRYBs4FrG/igqhGuZppiz5kTN80rT1cBcaxdSk6vJyLB8IusTY4wNpO
         Bc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ai8/R/rJ+BCJ9A/IiEQ1BZIjweYw2xtw7R+PQUYKaZk=;
        b=DHOs/H8W5KgiMFxrif+4JYWAFvMY+ZMURCDMhkzclgKc/4Uq9MvuSRoN6awKa8ZK9K
         OxXyAoTNcz9yiHelyAIGxsZYFA9J1YOMPoaPom/xhGi1UnqZiCGA+zNZGCLtohV3bf0U
         afuTfLRZeXCswfxayO+8y39qm8HeeDfKr7w75Rhsl/GM96gRbAiQ9mOFRc/neo+qVimM
         sirUZg7nYdY9kp3nA0/qF55q3gIEBzeWgPArTcxU2JPCzio2rm6HuQIPcm4X6xHKdJDw
         VbgT92SxwYGTfBFP8RffjzkRpMQUa+7o67no9pvBowUAe3gu0eXgZujb2BvxtBprCfOJ
         Kevw==
X-Gm-Message-State: AA6/9RlTg71uQuclZwXWiFkBgbq8tbXQJ8yMHvL5NbiLHVm4WxaDToD5eSqQTEKIpn+D+Hl/FusuDaQ6ED67xA==
X-Received: by 10.25.158.143 with SMTP id h137mr11608814lfe.83.1475995082437;
 Sat, 08 Oct 2016 23:38:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Sat, 8 Oct 2016 23:38:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1610090759420.3134@hadrien>
References: <1475951297-10364-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1610090759420.3134@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Sun, 9 Oct 2016 12:08:01 +0530
Message-ID: <CAOH+1jGUWFyq5gJJq=1MhrjZjXyW0zeF4+m8g+jvVPurerLg0w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Remove ternary operator
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 9, 2016 at 11:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 8 Oct 2016, Bhumika Goyal wrote:
>
>> Relational and logical operators evaluate to either true or false.
>> Explicit conversion is not needed so remove the ternary operator.
>> Done using coccinelle:
>>
>> @r@
>> expression A,B;
>> symbol true,false;
>> binary operator b = {==,!=,&&,||,>=,<=,>,<};
>> @@
>> - (A b B) ? true : false
>> + A b B
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
>>  drivers/staging/rtl8192e/rtllib.h         |  2 +-
>>  2 files changed, 5 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
>> index dd9c0c8..8cd51a9 100644
>> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
>> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
>> @@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
>>  #endif
>>       HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
>>                         (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
>> -     pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
>> -                              true : false);
>> +     pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
>>
>>       pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
>> -                                 ((pPeerHTCap->ShortGI20Mhz == 1) ?
>> -                                 true : false) : false);
>> +                                 (pPeerHTCap->ShortGI20Mhz == 1) : false);
>>       pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
>> -                                  ((pPeerHTCap->ShortGI40Mhz == 1) ?
>> -                                  true : false) : false);
>> +                                  (pPeerHTCap->ShortGI40Mhz == 1) : false);
>>
>>       pHTInfo->bCurSuppCCK = ((pHTInfo->bRegSuppCCK) ?
>> -                            ((pPeerHTCap->DssCCk == 1) ? true :
>> -                            false) : false);
>> +                            (pPeerHTCap->DssCCk == 1) : false);
>
> Even with the simplification, these look like a mess.  Could && and || be
> used here?
>
Yes, I think these can be further reduced to something like:
pHTInfo->bCurSuppCCK= (pHTInfo->bRegSuppCCK && pPeerHTCap->DssCCk);
as the left hand side is true only if both the RHS values are true/1.
Same reduction could be done for pHTInfo->bCurShortGI40MHz and
pHTInfo->bCurShortGI20MHz.

Thanks,
Bhumika

> julia
>
>>
>>
>>       pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;
>> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
>> index b895a53..f2c28f3 100644
>> --- a/drivers/staging/rtl8192e/rtllib.h
>> +++ b/drivers/staging/rtl8192e/rtllib.h
>> @@ -464,7 +464,7 @@ struct ieee_param {
>>  #define RTLLIB_QCTL_TID            0x000F
>>
>>  #define      FC_QOS_BIT                                      BIT7
>> -#define IsDataFrame(pdu)     (((pdu[0] & 0x0C) == 0x08) ? true : false)
>> +#define IsDataFrame(pdu)     ((pdu[0] & 0x0C) == 0x08)
>>  #define      IsLegacyDataFrame(pdu)  (IsDataFrame(pdu) && (!(pdu[0]&FC_QOS_BIT)))
>>  #define IsQoSDataFrame(pframe)                       \
>>       ((*(u16 *)pframe&(RTLLIB_STYPE_QOS_DATA|RTLLIB_FTYPE_DATA)) ==  \
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475951297-10364-1-git-send-email-bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


X-GM-THRID: 6536210357179908096
X-Received: by 10.31.208.195 with SMTP id h186mr4507373vkg.52.1522692359756;
        Mon, 02 Apr 2018 11:05:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.208.1 with SMTP id h1ls8492752vkg.19.gmail; Mon, 02 Apr
 2018 11:05:58 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4/ZPA1rwdyP4CuvY9NAt4tTLe3yIiHFNjgvDr9lM/vzSXr9LUV54k1JHG0VeeYk49pyr5Fp
X-Received: by 10.31.95.8 with SMTP id t8mr4134898vkb.94.1522692358771;
        Mon, 02 Apr 2018 11:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522692358; cv=none;
        d=google.com; s=arc-20160816;
        b=JC4TvjZcqPxyT1bO/rzitUebQjj3LRfkZk2UgyKKzGHGyU0RfQjs04F4S9wuUjWDlC
         8KQKKj406kHwZCUaYcuoTM2o/MBhqrnLlccrGq/JqUCWBi33XPiVSXFqZOPTtsKP5SQ3
         iqJafDiRJyosYX1wn0rAb7rf8ooDKZM4yd9eRHwMs/+X6TvL1X4S8HMVaiLd5hSFBmeA
         JHCgdmylbOTTi1hUG/PxOnSVRf3S3z0nr5Y+9r0BR+2zfl77FMaKmh8SwYb9JjSYFYo/
         EydTC05vIGUw4Lrf+Wqg7rw/f2fCtZEDdo5MK2bK5KqVglY0/kyHLHge5H2yoWviVUu2
         b6+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=GGg/cM6IDtchmbkFpogzmqDTnqsI/pLaLmRaTPKuyNg=;
        b=dR0Oyc9lwoeUVeT3d+htCVfSuCktMGIid9Wsn/Bdicp2hZGupaA1lnyJ0A4ezUOiX7
         C206YJ5mhH3bYkCnl+W8q0+FOctWIjY2xECkD/DwvJvdoQl/FBntheA9v/+Q7pUa7e8U
         nBimKb8FR/qjnCQTcTLFPgAQKXwXsc7N3VEA4jFaNmzI4mxiZK+mXFlvDslE+J7cNfOe
         p1aYVCTSmPSttcFcT9Jts0q2SVl1Im5RAhgha/FbjreUqivCbWsK18WL52O/dYEiL3GM
         gVxFp+wDo/aLgBaQ7qpdkb8Xts2OZ0ytk+lsFJV81V1YKmtx3sETqVBwVfVCy77u8jFZ
         280A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=IdedzG3x;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id g138si66164vke.3.2018.04.02.11.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Apr 2018 11:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=IdedzG3x;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x242.google.com with SMTP id 19-v6so19337009itw.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Apr 2018 11:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GGg/cM6IDtchmbkFpogzmqDTnqsI/pLaLmRaTPKuyNg=;
        b=IdedzG3xseBTykGKpOJVrRMy8FQOnYO6wCx25bjNDJxmEVQQuz8UFMImO+PscgR+eH
         TvbOh6dgFZTQYFcLBZTVyKMyKShmdKSGdTFbFfIslO1kCUKq1yT7mGnW5Z2pXqukJlVp
         AN8rVGKSNAV3Hqv4Vxo+ALU2iPDEzj8NiHK20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GGg/cM6IDtchmbkFpogzmqDTnqsI/pLaLmRaTPKuyNg=;
        b=fGel4feSZb/AYbqRAWfB+EAjApnx7JxNPNIIjbomhfY88LHM1LgGmeWpjHEBt17r9/
         NSPPgKOtUW+8z1qVoPoBiqCXK9wx33ACEdExe8gcziGgl0O8rQqaEcTm6pfTd1ngLmdS
         ceelIsI8wLf5LoegALw63nCKFe2GXFgb+kD78Nl/S299zocUbSBDOPzCgNKFexYNAL27
         CuVVlWyIYsUrJ8Indcx87PELbqw6Dqckvp0W1QsDSPQfnF+IoNEMfQbmSYQsmklWo8Hg
         ee6gZerIJXDuCnruSt5qXpvSZb4CugWEE8c1jjPlAdQioMbL5D9+2xnrdC23V531jL1n
         JyMQ==
X-Gm-Message-State: ALQs6tClRAKmXhPQajoUt1GZ1x3NTDRO/igg/5dZlp0eoCBe0J8XaXiI
	1qVJj/awIuF46aBN6Icz65NhQliHz+pXK3TKtrt57A==
X-Received: by 2002:a24:da45:: with SMTP id z66-v6mr1798549itg.44.1522692358020;
 Mon, 02 Apr 2018 11:05:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.204.130 with HTTP; Mon, 2 Apr 2018 11:05:57 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1804021119160.3198@hadrien>
References: <1522659771-799-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <alpine.DEB.2.20.1804021119160.3198@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 2 Apr 2018 23:35:57 +0530
Message-ID: <CAC4++KCUXi2Lsum_834SQvxq6JOrZHC-9XwNYuaaF9Xs87bQUw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v6] staging: vt6655: Remove else after return
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, forest@alittletooquiet.net, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 2, 2018 at 2:58 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 2 Apr 2018, Nishka Dasgupta wrote:
>
>> Remove else after return and match alignment with open parenthesis.
>> Issue found with checkpatch.
>
> Overall, I'm not sure that this is a good idea.  The file is full of ifs
> and elses that each deal with different cases, sort of like a state
> machine.  It seems reasonable for the else code to be somehow at the same
> level as the then code.
>
> On the other hand, it could improve a lot the future of this file to make
> it look more like Linux kernel code.  You could make a patch to drop all
> the s_u and s_v's in front of function names.  In this function, maybe it
> would be useful to make a local variable u16 datadur and then assign this
> variable to the result of calling GetDataDuration.  There could then be eg
> buf->duration_f0 = cpu_to_le16(datadur); all over the place.  This would
> make it possible to move the GetDataDuration calls over to the left.  Then
> some newline could be added to their arguments to stay within 80
> characters.  The local variable could also have the letters indicating
> their types removed from the fronts of their names.  Overall, it's
> unfortunate that there are so many function calls with huge argument
> lists, where most of the arguments are the same.  This seems quite error
> prone as well as being verbose.  I don't know if it is possible to solve
> this problem, though.
>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>> Changes in v6:
>>  - Remove else after return
>>  - Move variable declarations to top of code block
>>  - Adjust alignments within the if-block
>>
>>  drivers/staging/vt6655/rxtx.c | 41 ++++++++++++++++++++---------------------
>>  1 file changed, 20 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
>> index 9c4a532..78b814e 100644
>> --- a/drivers/staging/vt6655/rxtx.c
>> +++ b/drivers/staging/vt6655/rxtx.c
>> @@ -552,6 +552,11 @@ s_uFillDataHead(
>>                       return buf->duration_a;
>>               } /* if (byFBOption == AUTO_FB_NONE) */
>>       } else if (byPktType == PK_TYPE_11A) {
>> +             struct vnt_tx_datahead_ab *buf = pTxDataHead;
>> +             /*Get SignalField, ServiceField & Length */
>> +             vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
>> +                               byPktType, &buf->ab);
>> +
>
> I'm not sure that this is correct, because the call to vnt_get_phy_field
> has been moved out of a conditional.

But if the if condition is true then vnt_get_phy_field gets called
again and if not then the value stays at it is, so does that affect
much?

> Also you now have a declared
> variable buf that is shadowed by another variable buf, of another type, in
> a nested if.  That could be confusing.

Should I change the name of the outer buf? The two variables don't
exactly conflict with each other, since the if ends with a return, but
I agree that it is confusing.

>
> julia

Thanking you,
Nishka Dasgupta

>>               if (byFBOption != AUTO_FB_NONE) {
>>                       /* Auto Fallback */
>>                       struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
>> @@ -565,31 +570,25 @@ s_uFillDataHead(
>>                       buf->duration_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
>>                                                                              wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>>                       buf->duration_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
>> -                                                                             wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>> +                                                                            wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>>                       buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>>                       return buf->duration;
>> -             } else {
>> -                     struct vnt_tx_datahead_ab *buf = pTxDataHead;
>> -                     /* Get SignalField, ServiceField & Length */
>> -                     vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
>> -                                       byPktType, &buf->ab);
>> -
>> -                     if (is_pspoll) {
>> -                             __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>> -
>> -                             buf->duration = dur;
>> -                     } else {
>> -                             /* Get Duration and TimeStampOff */
>> -                             buf->duration =
>> -                                     cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
>> -                                                                         wCurrentRate, bNeedAck, uFragIdx,
>> -                                                                         cbLastFragmentSize, uMACfragNum,
>> -                                                                         byFBOption));
>> -                     }
>> +             }
>> +             if (is_pspoll) {
>> +                     __le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>>
>> -                     buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>> -                     return buf->duration;
>> +                     buf->duration = dur;
>> +             } else {
>> +                     /* Get Duration and TimeStampOff */
>> +                     buf->duration =
>> +                             cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
>> +                                                                 wCurrentRate, bNeedAck, uFragIdx,
>> +                                                                 cbLastFragmentSize, uMACfragNum,
>> +                                                                 byFBOption));
>>               }
>> +
>> +             buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>> +             return buf->duration;
>>       } else {
>>               struct vnt_tx_datahead_ab *buf = pTxDataHead;
>>               /* Get SignalField, ServiceField & Length */
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1522659771-799-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
>> For more options, visit https://groups.google.com/d/optout.
>>


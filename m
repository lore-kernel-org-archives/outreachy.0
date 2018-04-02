X-GM-THRID: 6536210357179908096
X-Received: by 10.101.81.135 with SMTP id h7mr928316pgq.126.1522691419350;
        Mon, 02 Apr 2018 10:50:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8b82:: with SMTP id ay2-v6ls6945388plb.11.gmail;
 Mon, 02 Apr 2018 10:50:17 -0700 (PDT)
X-Google-Smtp-Source: AIpwx4+TLWRMUsX92WSRbcDms9a1bthoTILwK6GVMnzV6IYxLyGVFRTsTOFuTLlyZYmXxqrXb+q8
X-Received: by 2002:a17:902:8ec9:: with SMTP id x9-v6mr3273101plo.39.1522691417746;
        Mon, 02 Apr 2018 10:50:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522691417; cv=none;
        d=google.com; s=arc-20160816;
        b=xHY6f1ZD0rRvQ8aC0KdKWJkWDXyA7VvFgNrYYPWeLDfYUCKJVxCWrjfjTo+cGY4XXE
         /ZpSqINNRw0yIYk4Yy8xIXo02TvDqPwif1ILf2maNfDjSch0R0n2S4TNRy4B/MC1Bdl3
         aum1OXjoaSRpUx+jXcFqRL9H5+vnV4bYcrTT+x8jALpw6pcZ8pqExND8FfMlujMwI+9L
         oILGR2V/zlAjoVZdHaUe2mDvQM2lhzAiaNjd95W6ePjgnGc1icPsAbfGPNkwqpXkmG/G
         msdtxU0E4XX+ps2a01N7+X7HpsdpDOXSU7rhF2mPxFXR0J4x5THBBLgr3225z5mXOTei
         n6YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=XwjNGWdlzkQkCCxHeOzAdvjdsL+dcMH5Rzly+WD055I=;
        b=grdiTD95/V0J1F3KITkD7XqsFzyMIkZlmnmDrKrDlOAwgh4cTgbFQJ5gSPCB/rXXZw
         KvjBSuxTmyfo20MnHuASiKwueDl9vkopAwEzFs9rkEsIVC1VjCYEAzgwoIKWU03pSgcV
         vS4YBNa2nZh8qJ8KIp96376bHB2LG11z48nhEXlL1RVsEMqXMYPdxsYKcGxWIzCg3QRo
         dnP0qGcfFohbqRiFQkJJq3+CoOR9iOdJ1xRxe0y8hFJW5AqquFDQgEZHYDgpBKeY7c/Z
         JpUQHXz36jP+aLWq7qNsZbshvKH/STpeEyDNI+G78ewrFesDdncj+Gd1+0BMXqCxthYw
         nmfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CkdPJ3E3;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::234 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x234.google.com (mail-io0-x234.google.com. [2607:f8b0:4001:c06::234])
        by gmr-mx.google.com with ESMTPS id 3-v6si79165plr.1.2018.04.02.10.50.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Apr 2018 10:50:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::234 as permitted sender) client-ip=2607:f8b0:4001:c06::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CkdPJ3E3;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::234 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x234.google.com with SMTP id o4so18795383iod.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Apr 2018 10:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=XwjNGWdlzkQkCCxHeOzAdvjdsL+dcMH5Rzly+WD055I=;
        b=CkdPJ3E3BuQA3CwTySTfYFsi96DmpgPVWj+S9o+DvAMQKRRao7coJ6lvolqh/mRg/H
         klzppGeO7rIJcIC/UxUY9hX06Vi1Y/dVn4Uwq5BPUWhXPDIzMOmbirGfrwXl955IcgcT
         BWVouQr5MoTYZQGw3L/IiClsipomm4jrgeOh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=XwjNGWdlzkQkCCxHeOzAdvjdsL+dcMH5Rzly+WD055I=;
        b=V576K8tus42dVnX3FzpwHayXeE6zPPQidV4K8GsY3XncGekF3bVYQ5GhzJKa/CgYJf
         nQcDf0J7WVZu45dA65v7ooMCXSshNp0BayBpYEHSmBge602qtwyhsYW/3RT0A0C5AiUM
         AOov87Cg57u+Ff/Aw4PL8GR08q9CwluDGrCbGtFiSFms+UHOFyo3jpqpSpsY4Z9HPgvy
         MdoS/HU/f9ewc0nrel45Pb1Y/Kgz+gmusjaMHGrOXPPsBnQ6+UekdZHQtUPSdX1tOMpc
         XC1CnGUIvs/hZLXl4TkWSvfM4eRcVVYTvsyCeidzBAWIXOLAxBf36sYe5pTAOpn6TAIN
         GP9w==
X-Gm-Message-State: ALQs6tCOh6K26QhALpUQ2TqZIvJtcWo348nd0ziIKxfxJH9ExHjws9tT
	HQFQ2qVaZMXcR7G6yW9/gGfEnJ86GDXiMPZSuhcBMg==
X-Received: by 10.107.95.23 with SMTP id t23mr10086482iob.242.1522691417227;
 Mon, 02 Apr 2018 10:50:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.204.130 with HTTP; Mon, 2 Apr 2018 10:50:16 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1804021119160.3198@hadrien>
References: <1522659771-799-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <alpine.DEB.2.20.1804021119160.3198@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 2 Apr 2018 23:20:16 +0530
Message-ID: <CAC4++KBNTsP=WaDJeNJ1yGJOjWFwP_DQSMKDDmfKmTtXsgyNbA@mail.gmail.com>
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
> variable to the result of calling GetDataDuration.

Wouldn't a new variable make it harder to keep track of the code?

> There could then be eg
> buf->duration_f0 = cpu_to_le16(datadur); all over the place.  This would
> make it possible to move the GetDataDuration calls over to the left.  Then
> some newline could be added to their arguments to stay within 80
> characters.

I'm sorry, I'm not quite sure I follow. What would moving the
GetDataDuration calls to the left involve?

> The local variable could also have the letters indicating
> their types removed from the fronts of their names.

I will work on that.

To clarify, should all these changes be in the same patch or a patchset?

Also, what about the alignment I matched? There were some other cases
like that (an extra space or not enough spaces). Should I put all
those in the same patch or a patchset?

> Overall, it's
> unfortunate that there are so many function calls with huge argument
> lists, where most of the arguments are the same.  This seems quite error
> prone as well as being verbose.  I don't know if it is possible to solve
> this problem, though.
>

Thanking you,
Nishka Dasgupta

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
> has been moved out of a conditional.  Also you now have a declared
> variable buf that is shadowed by another variable buf, of another type, in
> a nested if.  That could be confusing.
>
> julia
>
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


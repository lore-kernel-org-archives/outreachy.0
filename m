X-GM-THRID: 6396246100239450112
X-Received: by 10.99.175.6 with SMTP id w6mr11543559pge.125.1489244032992;
        Sat, 11 Mar 2017 06:53:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls750740otd.12.gmail; Sat, 11 Mar
 2017 06:53:52 -0800 (PST)
X-Received: by 10.129.137.3 with SMTP id z3mr10676420ywf.20.1489244032550;
        Sat, 11 Mar 2017 06:53:52 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id t8si459818ith.0.2017.03.11.06.53.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:53:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id r141so2091816ita.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=uzqF0kePaulKUCpblZhAwCwADhReDEg5WuxIrdNg/Rw=;
        b=UZ2r/Z2mGlRKqpMtYwHDMgUeuM2SdA6dMqOPQ3OElcylcL3mxTMXi+xpLAxieqV1su
         AfkmHSfDWYhSmIdwATjrO3Scyx9NzF6xa49pBAUs4MTb/ffxqFwYp4v9Qqq4Pm8ici5T
         kg4tOP17J2b5HFkKrfmFUJO7N7kKg4uYUGTfUFezcGYU8Qz9/UJzaolPCPuz6mBreZ8g
         ltvNNR/iDF+Zbf/UGYEgfxfjwrmIIMtyaJonEJFdjEaiR9WOsXDOxupsJiB2jEQNziwU
         52oRug8ETtCVPSO9sQCw/d6DaJ/0ciPiREQav+A8QXsmQeVcdbetKKBAgD9jYKOxINfE
         g+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uzqF0kePaulKUCpblZhAwCwADhReDEg5WuxIrdNg/Rw=;
        b=UENW6SeX2pdHK2HwC3nWcEYg4ppOOxhanpLFwD4q29vPQvPDwTwwKkTPtLOydITHGd
         kOGfhDPbgn2bxquHaqrds/hmAaoifS8FdWE469Ufh/y7z1JvI5rG/LeCZ10epsGCtj6j
         VCloy+IiGeMZS4FFLl+dfg0VXcHjUcnCVxHuSri40Od+Bkk0xSiFWb5fbI0KmNX1mjXA
         3ICf1ZwqnxWIS0cQIG6dXbK8JVnkR3YAowtJqv0fMqL/sqj/3u2SfE1nJ3pRFEeOL6s+
         fbWWBJzcJBAUorwqaquvSv8rr9I+M6pGgB4/1GrQcEDi/PwZPyidVqcD9BrjnB7LubZh
         2Qfw==
X-Gm-Message-State: AFeK/H3tJWmL1uz+Jvz4JsAmcd0pRtedgNUkl8j9ifpX1DPwKDHLgnX3rko+mBSo8nSPqTU5rx3zVwWrDYXPDw==
X-Received: by 10.36.17.7 with SMTP id 7mr3705036itf.113.1489244032232; Sat,
 11 Mar 2017 06:53:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sat, 11 Mar 2017 06:53:21 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703111550410.3127@hadrien>
References: <1489241955-12103-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703111550410.3127@hadrien>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sat, 11 Mar 2017 20:23:21 +0530
Message-ID: <CAOCi2DH5QU7XG4t-DDP66JqWyH3MuOKZcmMXvQqQJwNoiKjF7Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove multiple assignments
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 8:21 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 11 Mar 2017, Gargi Sharma wrote:
>
>> This patch removes multiple assignments by factorizing them.
>> This was done with Coccinelle. Braces were also added to the
>> else part to remove the checkpatch warning, "braces should be
>> on all arms of if-else statements".
>>
>> @ identifier i1,i2; constant c; @@
>> - i1=i2=c;
>> + i1=c;
>> + i2=c;
>>
>> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> ---
>>  drivers/staging/rtl8192e/rtl8192e/rtl_dm.c | 8 +++++---
>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
>> index d101974..32e51be 100644
>> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
>> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_dm.c
>> @@ -887,10 +887,12 @@ static void _rtl92e_dm_tx_power_tracking_cb_thermal(struct net_device *dev)
>>                       tmpCCK40Mindex = CCK_Table_length-1;
>>       } else {
>>               tmpval = (u8)tmpRegA - priv->ThermalMeter[0];
>> -             if (tmpval >= 6)
>> -                     tmpOFDMindex = tmpCCK20Mindex = 0;
>> -             else
>> +             if (tmpval >= 6) {
>> +                     tmpOFDMindex = 0;
>> +                     tmpCCK20Mindex = 0;
>> +             } else {
>>                       tmpOFDMindex = tmpCCK20Mindex = 6 - tmpval;
>
> Coccinelle doesn't find it because the right hand side of the assignment
> is not a constant, but you could do the else branch as well (and mention
> in the commit message that you did this part additionally).

Oh yeah sure. I missed it completely. :')

Thanks,
Gargi
>
> julia
>
>> +             }
>>               tmpCCK40Mindex = 0;
>>       }
>>       if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1489241955-12103-1-git-send-email-gs051095%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703111550410.3127%40hadrien.
> For more options, visit https://groups.google.com/d/optout.


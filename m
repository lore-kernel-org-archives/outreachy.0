X-GM-THRID: 6536210357179908096
X-Received: by 2002:a9d:1044:: with SMTP id o4-v6mr13407071oto.37.1521875783758;
        Sat, 24 Mar 2018 00:16:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:643:: with SMTP id 64-v6ls1468310oig.8.gmail; Sat, 24
 Mar 2018 00:16:22 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvACxF50+BY4DIzl112BNY0kozKAeKTc3tqRePUW3/IVGL5oZei2QpCjPtQwD0Zfa708Fkz
X-Received: by 10.202.208.80 with SMTP id h77mr11126792oig.70.1521875782751;
        Sat, 24 Mar 2018 00:16:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521875782; cv=none;
        d=google.com; s=arc-20160816;
        b=sL/UMpYYFNO5G5e3C/7EpNPjl6yDo0uchkkgPvQW9WgmR1vDa7Mk7ovQ2kjHXcluDt
         V4mtN7YMljsimpCTiE+QQQZZwApKDOBxEyu4FFUvB5YIV3uJ9QhERgSqZqzC0PwDx2xJ
         66bwWwAwPfnMX3dMMxUoycBMj5Ln/W/djDEavsIFtXjuWKSaMvWbwuXiY3jyzLb4ghhd
         nQIHLWus/2KqcOLpNtT9pp0VCvdlL+nv5D5e1kN7MU6c2/VkCU9yBxYP0Pu7PKuAUXYA
         SdolbEfmnzjXER8207NbxdFQgjm4pRv2B8/aNrPtpD5vEm0O/nPbJAg8GcpnUQ30JASm
         487Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=FJqk+bURul2kqpXgwVm1aJf64ZH7qJ+ut29n/UdXASw=;
        b=A1uMI1NWuoPYY0FSxi0ElOhvG2Zs2Eh+g8nOcPG70odrTnyLr+GwkBelqrUX8R8/cM
         OeM3VU3mOjvvw561Cv2rFff+qEJxUisujOD8G9/YwpUEsHbUWTJlHMrXt3zqaFk2Gn36
         F+LP8PUbxHt8/M2fFFolAxQHAVGCaThuyp0GLFSvJLYVcJS5u799Uz0bcBPAQze8EbWA
         ut4TLgT9thasOxG7vUbwk/I4yfrKTiJ1ZbxcBQDTfEpPmL5bBpnqvk2le0GtFxRl59b3
         BntatwYOBOZHa/6yuOmbaEcmO6TfGlLCPrF1GPgVCdhV227CmZXhfQzNOvjzhW1MTi1g
         YuiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=HRVSBGrT;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id x192si744365oif.4.2018.03.24.00.16.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 00:16:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=HRVSBGrT;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-it0-x242.google.com with SMTP id z7-v6so7360784iti.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 00:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=FJqk+bURul2kqpXgwVm1aJf64ZH7qJ+ut29n/UdXASw=;
        b=HRVSBGrTOhqgK2OSCI1JEHL6YkA5w4+LirRxMoRQwowuj2EXpUd/adQot9VwzBb6i0
         FezpoaGEpfSNqOwxJ5bX/w+DUURHPini2W2CORuCACKiEEe2GvAdu4CTA/9PAXUbRqN2
         TC+uRtUIv9hcpP8y8o7z1BvzfoKRHMMYV5t60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=FJqk+bURul2kqpXgwVm1aJf64ZH7qJ+ut29n/UdXASw=;
        b=Xt1TvjbtQAAxx9bfW/Ag/GBZAPpg/Ydd3TP1F9H78QIs+LWTgPFhYFG1sNnsCUDCNv
         fIFEdM7Si7uC0ZWjmrUa8cz9yFiBYIvaavARxQy8xibimrpOZYi16G/Z1SnG98tg5TeZ
         EXOj/zmTxutrpFBmTGk6gO8HYP/87SMKSIKpYO3yvbQR6qBSWnb/LVBdQ682wHg4m+v3
         si/JnZr9JRNChI8whxE2EzWCz+Jr5hWuJK0jNW1I/zpU7oVkOjl4o8Hv4dFHgmxHvJex
         xxSE81Zaeispndj42WDRXpFuHRv0RTov9lxdj2svJRUYPvQa7x2hQf94QM13GBdPUMDF
         ChEA==
X-Gm-Message-State: AElRT7FrnHgW19oZbSTyk9UXkkDN6waVRYcrjEPgfuw9Zonw4U4KSDYt
	R9epvDX/gBKpIH74SJlTxQVXiYU27fb3QtO7ADeGDQ==
X-Received: by 2002:a24:eec5:: with SMTP id b188-v6mr15360486iti.96.1521875781603;
 Sat, 24 Mar 2018 00:16:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Sat, 24 Mar 2018 00:16:21 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803231437560.2450@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <1521830040-7138-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <alpine.DEB.2.20.1803231437560.2450@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Sat, 24 Mar 2018 12:46:21 +0530
Message-ID: <CAC4++KC39g_k5CPWTRLK4GLPcM_d3xyG4M3mxU_xc9GEPtd8CA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 4/5] staging: vt6655: Change
 _chip_type from typedef enum to enum
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Mar 24, 2018 at 12:08 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 23 Mar 2018, Nishka Dasgupta wrote:
>
>> Change _chip_type from typedef enum to enum.
>> Issue found with checkpatch.
>>
>> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
>> ---
>> Changes in v2:
>>  - Make subject and commit message clear.
>>
>>  drivers/staging/vt6655/device_cfg.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
>> index 3972881..2f38634 100644
>> --- a/drivers/staging/vt6655/device_cfg.h
>> +++ b/drivers/staging/vt6655/device_cfg.h
>> @@ -51,8 +51,8 @@ struct version {
>>
>>  #define PKT_BUF_SZ          2390
>>
>> -typedef enum  _chip_type {
>> +enum CHIP_TYPE {
>>       VT3253 = 1
>> -} CHIP_TYPE, *PCHIP_TYPE;
>> +};
>
> I don't think that a type name in all capital letters is such a good idea.
> But maybe this type is never used?  If it is not used, it should be
> removed.

All the other typedefs I found in this driver had names in all upper
case; I modified this one for the sake of parity (and also because I
could not find any usage of it).

> julia
>
>>
>>  #endif
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-4-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
>> For more options, visit https://groups.google.com/d/optout.
>>

Thanking you,
Nishka Dasgupta


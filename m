X-GM-THRID: 1433009127424
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2f516636de888aad
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.37.200 with SMTP id a8mr815831lak.5.1424628690510;
        Sun, 22 Feb 2015 10:11:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.6.38 with SMTP id x6ls146413lax.63.gmail; Sun, 22 Feb 2015
 10:11:29 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr831263lbc.2.1424628689875;
        Sun, 22 Feb 2015 10:11:29 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x22b.google.com (mail-lb0-x22b.google.com. [2a00:1450:4010:c04::22b])
        by gmr-mx.google.com with ESMTPS id mv2si3475225lbc.0.2015.02.22.10.11.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 10:11:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) client-ip=2a00:1450:4010:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lbiw7 with SMTP id w7so14615417lbi.10
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 10:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=m1NxkoOQToR+v/GyA7NI/V85uxPo9CEbOHBN00tvkio=;
        b=eTG1YVCw06JL41kD8ltCm6PC1LL7XbaoWS1sw35DH/AoqZzCslVUCEo7m1XUHOwhwc
         cjjGT7+0oQV9J4jAgsHlrOcO+gQ1b0ZfrU3y1ESLpp8X2mpWewF9R+0w8MkRe1Sy3zH2
         AptME/BlbbQvG42YZujk7PRkpfJEKLXenYiUVYwrLHDWIm3EqzO0EFMPcewDF9aKx1vV
         9sGrAH5N/D+IVYeXLtIsl1XCtUj/KZ/n0PUuiXetU8+D5ZfczCUJHdmEPcYPF30uRjQr
         LYDEuXuyNFpM0DsX75KRUZdAfc47Rs8C95ZxphHmnnQ5OjOD7JW/WXIxNLQGo+YS3tu2
         ivHw==
MIME-Version: 1.0
X-Received: by 10.152.18.133 with SMTP id w5mr6492835lad.51.1424628689781;
 Sun, 22 Feb 2015 10:11:29 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Sun, 22 Feb 2015 10:11:29 -0800 (PST)
In-Reply-To: <54E78525.9090308@gmail.com>
References: <1424457078-5570-1-git-send-email-ksenija.stanojevic@gmail.com>
	<54E78525.9090308@gmail.com>
Date: Sun, 22 Feb 2015 19:11:29 +0100
Message-ID: <CAL7P5jL-6E=QaKjaCV+YzWoPGmv9L2+ScGWSkEg6RCRBLRp1Lg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove else after return
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 20, 2015 at 8:04 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 02/20/15 13:31, Ksenija Stanojevic wrote:
>> This patch simplifies the code by removing else and fixes
>> the following checkpatch.pl warning: "else is not useful after
>> break or return".
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
>> index e210664..00be1fd 100644
>> --- a/drivers/staging/rtl8192u/r819xU_phy.c
>> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
>> @@ -1363,11 +1363,11 @@ static u8 rtl8192_phy_SwChnlStepByStep(struct net_device *dev, u8 channel,
>>                       if ((*stage) == 2) {
>>                               (*delay) = CurrentCmd->msDelay;
>>                               return true;
>> -                     } else {
>> -                             (*stage)++;
>> -                             (*step) = 0;
>> -                             continue;
>>                       }
>> +                     (*stage)++;
>> +                     (*step) = 0;
>> +                     continue;
>> +
>>               }
>>
>>               switch (CurrentCmd->CmdID) {
>>
>
> There is one issue with your patch, you add a blank line after continue,
> that one needs to be removed.
>
> rtl8192_phy_SwChnlStepByStep() is an utter mess, and given that the
> function is huge and have a lot of return points, one either has to take
> the approach you have chosen or fix them all up. I just told Aybuke
> Ozdemir to use a goto to fix a similar case, so I wanted to point out
> that here I think your solution makes sense.
>
> There is another bad case with this function in that they return
> true/false in a u8 variable, ie. the variable and the values assigned to
> it do not match. This would call for a separate patch though.
>
> Cheers,
> Jes
>
Hi,

I can not find any variable that  uses true/false in this function.
Can you please explain in more detail?


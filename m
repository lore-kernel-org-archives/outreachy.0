X-GM-THRID: 6205040264708358144
X-Received: by 10.13.234.66 with SMTP id t63mr8549725ywe.45.1444724090627;
        Tue, 13 Oct 2015 01:14:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.73 with SMTP id l67ls909865qge.36.gmail; Tue, 13 Oct
 2015 01:14:50 -0700 (PDT)
X-Received: by 10.129.74.198 with SMTP id x189mr28800749ywa.53.1444724090083;
        Tue, 13 Oct 2015 01:14:50 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id t64si112623ywd.2.2015.10.13.01.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:14:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x230.google.com with SMTP id z77so7860174qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=XMKN+FbdojCCnqAkNGK9jw9SmJe1HapyiaTDHRxLunE=;
        b=ZMH/of0v7j94Mzx49MVrhggc1GhFtmtKBsTaGQkB8mtIghsXj6xitOdIuvp+TCaWOU
         C3+ni4LTnbHNmJ0aups6ZHnWun4W1Z1Uo1mgPQ3x+jQ1tNhlgUX4PIYDwqmiQue1B8bi
         o04yYxK95zgXoprL//Tzgc91zy5HD2H+JWRz8IiFnLYoq0rU1hsQ9l9LLKdBk9eJN0sp
         3BeIdC4lTKzb2NOCn7MA9jr8av9YasA930gDx2n9UxV3g0GgdvbDjqExcj3dXImD2Fou
         nuLS2y6jtn4LkjzpWGQp9D54tgfbf4QuAobkPG4sGjsPr8QvRUWKWbrQPXxXkoINY7Ml
         9Xog==
MIME-Version: 1.0
X-Received: by 10.140.92.233 with SMTP id b96mr36214037qge.104.1444724089925;
 Tue, 13 Oct 2015 01:14:49 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Tue, 13 Oct 2015 01:14:49 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510131009580.2391@hadrien>
References: <cover.1444723375.git.amitoj1606@gmail.com>
	<55c502b96a27eaf4c78cbfdc373433e7cb898d42.1444723375.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510131009580.2391@hadrien>
Date: Tue, 13 Oct 2015 13:44:49 +0530
Message-ID: <CA+5yK5EDabSwO916CGG6PvRr9-rjomM0eH19STbs6tRs5xKbsQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8712: Remove useless
 cast on void pointer
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 1:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 13 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> The semantic patch used to find this is:
>>
>> @r@
>> expression x;
>> void* e;
>> type T;
>> identifier f;
>> @@
>>
>> (
>>   *((T *)e)
>> |
>>   ((T *)x)[...]
>> |
>>   ((T *)x)->f
>> |
>> - (T *)
>>   e
>> )
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 105 ++++++++++-------------------
>>  1 file changed, 35 insertions(+), 70 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
>> index 77f01bf..af33e05 100644
>> --- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
>> +++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
>> @@ -41,8 +41,7 @@ uint oid_null_function(struct oid_par_priv *poid_par_priv)
>>  uint oid_rt_wireless_mode_hdl(struct oid_par_priv *poid_par_priv)
>>  {
>>       uint status = RNDIS_STATUS_SUCCESS;
>> -     struct _adapter *Adapter = (struct _adapter *)
>> -                                (poid_par_priv->adapter_context);
>> +     struct _adapter *Adapter = (poid_par_priv->adapter_context);
>
> The parentheses are not needed. Since they were probably put there because
> of the cast, it would be reasonable to also drop them.
>
> Likewise elsewhere.
>
> julia

Will do. Sending v2.


-- 
Amitoj


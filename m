X-GM-THRID: 6202772083227754496
X-Received: by 10.66.148.72 with SMTP id tq8mr11925539pab.34.1444417163226;
        Fri, 09 Oct 2015 11:59:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.34 with SMTP id a31ls1775205qga.25.gmail; Fri, 09 Oct
 2015 11:59:22 -0700 (PDT)
X-Received: by 10.129.123.85 with SMTP id w82mr12391893ywc.39.1444417162807;
        Fri, 09 Oct 2015 11:59:22 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id o73si218211ywd.6.2015.10.09.11.59.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 11:59:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x235.google.com with SMTP id z77so76881494qge.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 11:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=IyjTqzE0zOQi2WDMKOY4qHHnFpkpYUW+xXOcZWoXHdk=;
        b=bMpTAkUj/ByGA9AfZiNavA2ITfGa3kQAQ0Hv8e4p4GOxijLdYPVZzuRaawN0fx4tNP
         QZgnljdXAIOBnsS5i/wxFhTYy8Lyn2DW+ZyF5ObQEU5hkWtihtalQyVH9KzVRgWXqiEP
         z+GK635J4ihkSo7LG4m2Cr8cEPii7AHyi1FpHCj1Xy6+kBVP+a4aJ8L1GyJJIEVyxn8N
         nzSGuJPE68gqDMqFh7InsbtHzmR068kG8Fst1dcgjgOckriy/Ha0dGPooCIcpRIkV2Rd
         1kLj5v4qY66veOKla9jozv6EvlUcLI2clAJNggZGnyrRZP9/w8GyQg8VBXZSPYsDTEkj
         qV+w==
MIME-Version: 1.0
X-Received: by 10.140.92.233 with SMTP id b96mr16459070qge.104.1444417162623;
 Fri, 09 Oct 2015 11:59:22 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 9 Oct 2015 11:59:22 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510080810460.2559@hadrien>
References: <cover.1444194896.git.amitoj1606@gmail.com>
	<e9962700480ca8590bb9386ab0217b449fc4b8db.1444194896.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510080810460.2559@hadrien>
Date: Sat, 10 Oct 2015 00:29:22 +0530
Message-ID: <CA+5yK5EEqAUCCBskLK2ne2B4zh03SV=hOsR3gBo5cTXx_JCXzg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtl8712: Remove NULL comparison
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 8, 2015 at 12:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Wed, 7 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> Remove NULL comparison by using '!' operator. Problem found using
>> checkpatch.pl
>> CHECK: Comparison to NULL could be written "!padapter->halpriv.hal_bus_init"
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/rtl8712/hal_init.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
>> index 957f033..081f361 100644
>> --- a/drivers/staging/rtl8712/hal_init.c
>> +++ b/drivers/staging/rtl8712/hal_init.c
>> @@ -382,7 +382,7 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
>>  uint rtl871x_hal_init(struct _adapter *padapter)
>>  {
>>       padapter->hw_init_completed = false;
>> -     if (padapter->halpriv.hal_bus_init == NULL)
>> +     if (!padapter->halpriv.hal_bus_init)
>>               return _FAIL;
>>       if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
>>               return _FAIL;
>
> Nothing to do with the patch, but _FAIL and _SUCCESS don't look like
> standard kernel return values.  Maybe it is possible to improve this.
>
I've been checking about this but _FAIL and _SUCCESS are used in a lot
of places as return values.
What do you suggest?


-- 
Amitoj


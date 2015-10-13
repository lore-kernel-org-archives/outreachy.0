X-GM-THRID: 6205040264708358144
X-Received: by 10.107.164.154 with SMTP id d26mr12831155ioj.19.1444726149541;
        Tue, 13 Oct 2015 01:49:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.198 with SMTP id q189ls559495ioe.98.gmail; Tue, 13 Oct
 2015 01:49:08 -0700 (PDT)
X-Received: by 10.66.240.138 with SMTP id wa10mr26677298pac.43.1444726148838;
        Tue, 13 Oct 2015 01:49:08 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id y11si106076ywd.7.2015.10.13.01.49.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:49:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x233.google.com with SMTP id p81so4133081qka.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8DDRc4epuN2DczkUasjeFWSnUpkxGAMjJULp+t+GgXk=;
        b=Gy3XTrCWYVvip6R4LJPXu6cWjA8jDPNmJyyrcwDqjp5/xgYDf/V8LmhQKl3DfXAEM/
         aE7/AYIteaTaLHRi5VpEKQ6ySuVhjXxisDycQ6ZWZ8q7w7En4ZwBGHArLiM4pCVALea1
         JRSgJYwbOFNuShksc5QYbBL0Ukaq1I3KtUiTA+wMgRuTz41wdt5yRq+vq1lczs6eihPQ
         JIU2LpwUUeukwIXA7PH4UhxdasKQ8J/K1n87yqFEWB+9dY3TkzLJcPut7iU5mVkMz8ll
         K8uH/tJGn3rlSUfLP5Tlk/MgRqF/sPCF6lyA8WqxpjKX9FtYCd0ur1GP4rQyqe0h9X4f
         padg==
MIME-Version: 1.0
X-Received: by 10.55.207.3 with SMTP id e3mr4431490qkj.32.1444726148646; Tue,
 13 Oct 2015 01:49:08 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Tue, 13 Oct 2015 01:49:08 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510131038240.2391@hadrien>
References: <cover.1444725049.git.amitoj1606@gmail.com>
	<2109e4a1c74989232680cf926b8473370a801818.1444725049.git.amitoj1606@gmail.com>
	<alpine.DEB.2.10.1510131038240.2391@hadrien>
Date: Tue, 13 Oct 2015 14:19:08 +0530
Message-ID: <CA+5yK5EFAik_RWLYyr9_9v1P2x0PcNENWDw3XaHds6T1fbXkhQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 3/3] staging: rtl8712: Remove
 useless cast on void pointer
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 2:08 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
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
>
> When you make a change by hand beyond what the semantic patch does, it
> should be mentioned up here, not just below the ---.
>

 Oh, okay. Will keep that in mind for the future.

Thanks for the feedback,

Amitoj


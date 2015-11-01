X-GM-THRID: 6212095586717401088
X-Received: by 10.182.18.66 with SMTP id u2mr13278044obd.1.1446368825071;
        Sun, 01 Nov 2015 01:07:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.139 with SMTP id b133ls207182ioe.33.gmail; Sun, 01 Nov
 2015 01:07:04 -0800 (PST)
X-Received: by 10.68.194.202 with SMTP id hy10mr13644311pbc.13.1446368824791;
        Sun, 01 Nov 2015 01:07:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22c.google.com (mail-qg0-x22c.google.com. [2607:f8b0:400d:c04::22c])
        by gmr-mx.google.com with ESMTPS id m7si1102723ywe.1.2015.11.01.01.07.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:07:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) client-ip=2607:f8b0:400d:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22c.google.com with SMTP id d10so94941736qga.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:07:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=cYBvFwsOGFthn5tHJYfibDOF+75zyx5roLVqSjKuU/I=;
        b=iA67zXkum5rFagIDMd+5hE4Us6aTPsfE9dUkkRkOZexMI/15w+moWKarKhUF7mCA6A
         5Bfyb//T1y0XMJbD5MbA0wFYhu466S6nU6vmxWxrXqIA1jyiNSQvAkUp6q+7K1EBG27R
         rukZz1sHeU+AgUPSBx+cTbd7iFCKiXbihyNGa68wFEik1GhPx6khMW2VBbqDkdNM3paR
         VJwBsO4TP/fWDaQUzkLfct9JkajAHwnA67bSoEsRANUjlH9p6vA7Clux9Lf8OygGSCFD
         A+f3ZE7Sonukl1oo36LHKmVgjSedGz52Ko+aWU6bXCDTIvtr+fa6fFkKk0cQEs+t0m33
         J+Kg==
MIME-Version: 1.0
X-Received: by 10.140.237.208 with SMTP id i199mr21956841qhc.73.1446368824610;
 Sun, 01 Nov 2015 01:07:04 -0800 (PST)
Received: by 10.140.21.38 with HTTP; Sun, 1 Nov 2015 01:07:04 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1511010931350.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com>
	<d87be280ac9dc0fe8fc50e25afabf579dcd7b98b.1446366036.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1511010931350.2070@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 14:37:04 +0530
Message-ID: <CA+5yK5G+mF3FKZaRb_6wuNGF+Wf=QHJ3GygW1NMgBZgvU5BE0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: rdma: hfi1: chip: Remove
 wrapper functions
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 2:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>
>> Drop wrapper functions add_rcvctrl() and clear_rcvctrl() that can be replaced by a single line of code.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/rdma/hfi1/chip.c | 30 ++++++++++--------------------
>>  1 file changed, 10 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
>> index a9c6abf..23cacbf 100644
>> --- a/drivers/staging/rdma/hfi1/chip.c
>> +++ b/drivers/staging/rdma/hfi1/chip.c
>> @@ -3176,16 +3176,6 @@ static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
>>       spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
>>  }
>>
>> -static inline void add_rcvctrl(struct hfi1_devdata *dd, u64 add)
>> -{
>> -     adjust_rcvctrl(dd, add, 0);
>> -}
>> -
>> -static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
>> -{
>> -     adjust_rcvctrl(dd, 0, clear);
>> -}
>
> Is it really an improvement?  adjust_rcvctrl is not a standard kernel
> function.  In the original code, one can undestand what add_rcvctrl and
> clear_rcvctrl do based on their names.  In the modified code, you have to
> know what is the significance of the different argument positions of
> adjust_rcvctrl, so you have to go look at the definition.  So this makes
> more work for someone who wants to understand the code.
>
> Wrapping standard kernel functions is not good.  And wrapping when the
> arguments don't change and the name is almost the same is probably not
> good either.  But here the wrapping would seem to add some value.
>
> julia

Since both were using the same function and one would have to look at
adjust_rcvctrl to understand what add_rcvctrl and clear_rcvctrl are
doing, I thought this would work by removing that extra 2 functions.

-- 
Amitoj


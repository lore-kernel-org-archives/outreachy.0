X-GM-THRID: 3543146692608
X-Received: by 10.194.63.208 with SMTP id i16mr804712wjs.2.1425266471972;
        Sun, 01 Mar 2015 19:21:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.97.105 with SMTP id dz9ls480851wib.4.gmail; Sun, 01 Mar
 2015 19:21:10 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr1886320wib.1.1425266470696;
        Sun, 01 Mar 2015 19:21:10 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x22f.google.com (mail-we0-x22f.google.com. [2a00:1450:400c:c03::22f])
        by gmr-mx.google.com with ESMTPS id v5si87795wif.3.2015.03.01.19.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 19:21:10 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) client-ip=2a00:1450:400c:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22f as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so30705721wes.7
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 19:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=gnyjXUIVKYVV0IBTiyKDgxNJ3hJlczhrm55+iuptgx8=;
        b=z4Gr9cb2s2hZXhzYWuS/uS76Ub58hwdpDP+jHliJ3V4XwtJDdXNsBBe8h85QUg/MDJ
         jamVnoTGWew7vum95BUt2UGYoyQEMAXODljgMU6x9NPNMmFHTqvjY7IKSCYdo1qEaGiL
         1hJscmpLQNAT6VCdDNp2436VN89s/LLireRqjInEeL4Ujy2MbW+AQUscI/d3jWyFhHHX
         FgDUCyA3m+0JjgoMqgPmPUuG+TUgq4QcuAGABbmfBM+TcTHEu7bZykCoSALiu0h106Yy
         j37iDGyKNUyuruOgdBSXzV7Qkniemg4UFkrm89EjYgNC3UytAmtQxvjouTYZ0C3vcvZJ
         ev5g==
MIME-Version: 1.0
X-Received: by 10.180.206.143 with SMTP id lo15mr6676096wic.22.1425266470561;
 Sun, 01 Mar 2015 19:21:10 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Sun, 1 Mar 2015 19:21:10 -0800 (PST)
In-Reply-To: <20150301231836.GA4616@kroah.com>
References: <cover.1425017327.git.vthakkar1994@gmail.com>
	<c3958d61a2dc3505df021bb66c55e3e3b8b75d5e.1425017327.git.vthakkar1994@gmail.com>
	<20150301231836.GA4616@kroah.com>
Date: Mon, 2 Mar 2015 08:51:10 +0530
Message-ID: <CAK-LDbJX_VV6h5x0Oc9qBvMgo742OP=U9PQpSRwSEx7cSvWzeQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8188eu: Eliminate
 use of _set_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 2, 2015 at 4:48 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Fri, Feb 27, 2015 at 11:48:03AM +0530, Vaishali Thakkar wrote:
>> This patch introduces the use of API function mod_timer
>> instead of driver specific function _set_timer as it is
>> a more efficient and standard way to update the expire
>> field of an active timer. Also, definition of function
>> _set_timer is removed as it is no longer needed after
>> this change.
>>
>> Here, these cases are handled using Coccinelle and
>> semantic patch used for this is as follows:
>>
>> @@ expression x; expression y;@@
>>
>> - _set_timer (&x, y);
>> + mod_timer (&x, jiffies + msecs_to_jiffies (y));
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>> v1 : Here, this patch has some line over 80 characters as
>>      limiting them to 80 characters does not make code look
>>      good and readable.
>> v2 : Change commit log
>>    - Redo the patch against staging-testing
>
> How about you do a v3 that includes:  Fixes build problems in previous
> version.
>
> ALWAYS test build your patches, it breaks my workflow when patches are
> not tested and break the build :(

I am used to send a patch after build-testing it. But here I had some
problem with my gcc and that's why it didn't show me any errors. I
am really very sorry for this.

I will send v3 solving all those build problems.

Thank you.

> thanks,
>
> greg k-h



-- 
Vaishali


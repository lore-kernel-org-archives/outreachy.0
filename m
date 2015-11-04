X-GM-THRID: 6212627761290280960
X-Received: by 10.112.123.17 with SMTP id lw17mr726084lbb.6.1446664535933;
        Wed, 04 Nov 2015 11:15:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.213 with SMTP id o204ls149075lfo.38.gmail; Wed, 04 Nov
 2015 11:15:35 -0800 (PST)
X-Received: by 10.112.202.168 with SMTP id kj8mr713008lbc.23.1446664535183;
        Wed, 04 Nov 2015 11:15:35 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id 13si916318wml.2.2015.11.04.11.15.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:15:35 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id l128so120968wml.0
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Nov 2015 11:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=nabWLgw7/8TN5rdTWXBSedmmEZ9Kq6d6pgCWa9Rb3HY=;
        b=aojAv0ICRSDqVDf3aZH8IVazNCt9B7P5VenGoi0O8N+FewU2KXJ+f9IGKIeeVbjgWw
         2d0FQQV342mTBj7uRpvQm0s7JJ/x6mnF3oG1wrKpqCknsB/Lk62ZazIamvPEWzG+Qvls
         E2SnTf3st4+u9aVI8qG5tJlt9iBBa5qoqrXpuQ8pB3kkAF8oKXEWK0WfhyGyhYSppFGG
         PdPR4epzHArczzfykawC/mFSvqfdbO9IWfl6JfZPeZ0DuF+yuGXaBxEw0JJtVyunRQgi
         MK9QUCSn6rPDdJdFZcbCWu6bIJih2sQwyPJkq5J13/F8pGoI7tHgJM/HSU327Um9RyNP
         w4yQ==
MIME-Version: 1.0
X-Received: by 10.28.132.13 with SMTP id g13mr26796621wmd.35.1446664535059;
 Wed, 04 Nov 2015 11:15:35 -0800 (PST)
Received: by 10.27.186.23 with HTTP; Wed, 4 Nov 2015 11:15:35 -0800 (PST)
In-Reply-To: <20151104190225.GA26290@kroah.com>
References: <cover.1446489978.git.shivanib134@gmail.com>
	<3beed3bcb9ca96a4d504079d6aeaae4f28b43d52.1446489978.git.shivanib134@gmail.com>
	<20151104190225.GA26290@kroah.com>
Date: Thu, 5 Nov 2015 00:45:35 +0530
Message-ID: <CAKHNQQGsqSY-bYHB+3Rh6KvvGXT2WiUwys1stVPGCbmyM2BVmw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: lustre: module: Replace
 function calls
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 5, 2015 at 12:32 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Nov 03, 2015 at 12:19:36AM +0530, Shivani Bhardwaj wrote:
>> Replace the calls of function cfs_trace_free_string_buffer() with
>> kfree() as the former function is not required.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/libcfs/module.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/libcfs/module.c b/drivers/staging/lustre/lustre/libcfs/module.c
>> index 50e8fd2..516a9e7 100644
>> --- a/drivers/staging/lustre/lustre/libcfs/module.c
>> +++ b/drivers/staging/lustre/lustre/libcfs/module.c
>> @@ -392,7 +392,7 @@ static int __proc_dobitmasks(void *data, int write,
>>       } else {
>>               rc = cfs_trace_copyin_string(tmpstr, tmpstrlen, buffer, nob);
>>               if (rc < 0) {
>> -                     cfs_trace_free_string_buffer(tmpstr, tmpstrlen);
>> +                     kfree(tmpstr);
>>                       return rc;
>>               }
>>
>> @@ -402,7 +402,7 @@ static int __proc_dobitmasks(void *data, int write,
>>                       *mask |= D_EMERG;
>>       }
>>
>> -     cfs_trace_free_string_buffer(tmpstr, tmpstrlen);
>> +     kfree(tmpstr);
>>       return rc;
>>  }
>>
>
> Don't you need this to be earlier in the series?  You just deleted the
> function from the kernel in the first patch :(
>
> Never break the build for any patch in a series.  Please reorder and
> resend.
>

I'm sorry for the mistake. I'm resending.
Thank you

> thanks,
>
> greg k-h


X-GM-THRID: 6396125246226694144
X-Received: by 10.99.55.4 with SMTP id e4mr2251355pga.156.1489593972364;
        Wed, 15 Mar 2017 09:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls2530435oth.45.gmail; Wed, 15 Mar
 2017 09:06:11 -0700 (PDT)
X-Received: by 10.129.179.136 with SMTP id r130mr2284199ywh.162.1489593971886;
        Wed, 15 Mar 2017 09:06:11 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x244.google.com (mail-yw0-x244.google.com. [2607:f8b0:4002:c05::244])
        by gmr-mx.google.com with ESMTPS id f187si326752ywc.0.2017.03.15.09.06.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 09:06:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) client-ip=2607:f8b0:4002:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x244.google.com with SMTP id p77so1997831ywg.0
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 09:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=YUq6BCyNA+sEWgYtb7f3XQvHH1Q3xEvkOYE+RGZzaOs=;
        b=LqN4CfpfXZNQjtmrVaACDLVyeWJz4io/9z+oupHOa7XmwbDyiunTcYt/4Ff84U6asj
         9tZVb+FWFZS46EYIERXVFl81fcuMUM7zilbn6QgzytuSwOOAzQ8zkHFpZBf8Zz0MMeNa
         Zu9XLWDpWAZXj8awunGFVdTMFTqJesd0gK2b4Hi2U4vxdmedPmJ0jfR2uC8OI0xNR+nz
         ce+NIKd+RXrTDMC9N/OTQDAMXyfFyylwwLJb5hHLEAmLwM/pvtzQsGmOKhf3LjqplXmL
         KAISLTTQnbnB+koTaqoSU+06ZdS77/xF2vI0TqWEo8Lio8KhD6MJ9ToTwAWlmGWJMVa3
         VBzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=YUq6BCyNA+sEWgYtb7f3XQvHH1Q3xEvkOYE+RGZzaOs=;
        b=FlbhJXQeePyz6pkTj+7hp2ztawYEww6ejxLH+B4VYOmdXS307RjQwzNwflBbPC40AK
         jptt779Tp9MyDJrtfAzxyDDQ+D+NSk5oiUXMEUivrEu6nh0fAuqBVLBGTUi8msDtaaj0
         H3/YCUZG5sfepeSFj+ILETwkVxbQuJ7j15QqDzD5tpB+LK4Xynewfe4OjE22hk/9blvd
         OfF4DiOwKzWQmhWny/PIHRUZ9JLuOE+G7Ho7mS3lee58D1WUeWGAbmFdAeqPfVea2dLi
         AW+Lf6Ao3TRdIVUjYspx9UJw/SqPqSPIIBP6ozxnV5p5VbyXXmZcxPbaWG5GRJ3Z+FBq
         dT4w==
X-Gm-Message-State: AFeK/H1XvbllQMFX1AhFsVbK98wiNueVbulAjnYfu7n9zd71XBv1+X0MV2Kszx10BFAiPuVL6aH7NQYjJyHOzA==
X-Received: by 10.13.234.215 with SMTP id t206mr3026706ywe.150.1489593971422;
 Wed, 15 Mar 2017 09:06:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Wed, 15 Mar 2017 09:05:31 -0700 (PDT)
In-Reply-To: <5D9F29B8-FC98-4FE2-B218-4F5173382EE2@intel.com>
References: <20170311063153.GA6625@sayli-HP-15-Notebook-PC>
 <20170312134000.GE27791@kroah.com> <5D9F29B8-FC98-4FE2-B218-4F5173382EE2@intel.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Wed, 15 Mar 2017 21:35:31 +0530
Message-ID: <CAKG5xWg=vNNUuARiqVZ2aEouYxqSMjpJ4xDh39wBHKg2gTbH0g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: rw26: Remove
 unused function definition
To: "Dilger, Andreas" <andreas.dilger@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, "Drokin, Oleg" <oleg.drokin@intel.com>, 
	James Simmons <jsimmons@infradead.org>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 15, 2017 at 2:37 PM, Dilger, Andreas
<andreas.dilger@intel.com> wrote:
> On Mar 12, 2017, at 07:40, Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
>>
>> On Sat, Mar 11, 2017 at 12:01:53PM +0530, sayli karnik wrote:
>>> The patch removes unused function definition ll_get_user_pages().
>>>
>>> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>>> ---
>>> drivers/staging/lustre/lustre/llite/rw26.c | 26 --------------------------
>>> 1 file changed, 26 deletions(-)
>>>
>>> diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/staging/lustre/lustre/llite/rw26.c
>>> index d89e795..420f296 100644
>>> --- a/drivers/staging/lustre/lustre/llite/rw26.c
>>> +++ b/drivers/staging/lustre/lustre/llite/rw26.c
>>> @@ -156,32 +156,6 @@ static int ll_releasepage(struct page *vmpage, gfp_t gfp_mask)
>>>
>>> #define MAX_DIRECTIO_SIZE (2 * 1024 * 1024 * 1024UL)
>>>
>>> -static inline int ll_get_user_pages(int rw, unsigned long user_addr,
>>> -                                size_t size, struct page ***pages,
>>> -                                int *max_pages)
>>> -{
>>> -    int result = -ENOMEM;
>>> -
>>> -    /* set an arbitrary limit to prevent arithmetic overflow */
>>> -    if (size > MAX_DIRECTIO_SIZE) {
>>> -            *pages = NULL;
>>> -            return -EFBIG;
>>> -    }
>>> -
>>> -    *max_pages = (user_addr + size + PAGE_SIZE - 1) >> PAGE_SHIFT;
>>> -    *max_pages -= user_addr >> PAGE_SHIFT;
>>> -
>>> -    *pages = libcfs_kvzalloc(*max_pages * sizeof(**pages), GFP_NOFS);
>>> -    if (*pages) {
>>> -            result = get_user_pages_fast(user_addr, *max_pages,
>>> -                                         (rw == READ), *pages);
>>> -            if (unlikely(result <= 0))
>>> -                    kvfree(*pages);
>>> -    }
>>> -
>>> -    return result;
>>> -}
>>> -
>>
>> Should this be deleted?  Given that ll_free_user_pages() is used, that
>> implies that this function should also be used somewhere.  Why isn't it?
>
> Al replaced the use of ll_get_user_pages() with iov_iter_get_pages_alloc() in
> commit 91f79c43d1b54d7154b118860d81b39bad07dfff so it is no longer used.
>
Yes it is, thanks for the input!
> Cheers, Andreas
> --
> Andreas Dilger
> Lustre Principal Architect
> Intel Corporation
>
>
>
>
>
>
>


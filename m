X-GM-THRID: 6212618506149560320
X-Received: by 10.112.134.129 with SMTP id pk1mr722137lbb.24.1446664564766;
        Wed, 04 Nov 2015 11:16:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.144 with SMTP id p138ls161559lfd.44.gmail; Wed, 04 Nov
 2015 11:16:04 -0800 (PST)
X-Received: by 10.112.145.201 with SMTP id sw9mr734406lbb.13.1446664564204;
        Wed, 04 Nov 2015 11:16:04 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id t18si863965wme.0.2015.11.04.11.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 11:16:04 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x232.google.com with SMTP id n186so25879wmn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Nov 2015 11:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ukg1QyMIzxcuCKemz7BiMOeqj51Nly5gdeg67GbzL28=;
        b=KVtBmoKixQgcqAJH4ZGbKNQ3F+atOoSapWATdTAYoCmb0ZZR7xaShd+cd4Ea5RgxNZ
         XPW/Zzpf7KDHXke2Rk1P/HNtQp30I6YRyl85I83df3YD2AEFbEm0KMtMlRxHHphG3tab
         lXH/9pXC3P3wRJo1xikL6Ih0a2v3HES+YrO3ZIB7ZKeLyVqu0R/blsNz84PgpYVGgZ9X
         3r35cDOZ3xGduzMmS+wgbVdrdJc0TxjHbORb4M+10opiEAZNyfKblcfjEVhM0wGjt09A
         VxOX0NIKzAvN3AeRupGtG6zMO2nEjf9wQKA6rQ7XAkEkupemjV4sMTeqwJXWWhE8P5Pw
         luzg==
MIME-Version: 1.0
X-Received: by 10.28.46.143 with SMTP id u137mr5810836wmu.52.1446664564095;
 Wed, 04 Nov 2015 11:16:04 -0800 (PST)
Received: by 10.27.186.23 with HTTP; Wed, 4 Nov 2015 11:16:04 -0800 (PST)
In-Reply-To: <20151104190109.GA26203@kroah.com>
References: <20151102181237.GA41744@ubuntu>
	<20151104190109.GA26203@kroah.com>
Date: Thu, 5 Nov 2015 00:46:04 +0530
Message-ID: <CAKHNQQH84XAaam=2=81sp4+cc5_K07mJx=pZtK6uduBgGm_Ydw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: tracefile: Remove
 wrapper function
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 5, 2015 at 12:31 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Nov 02, 2015 at 11:42:37PM +0530, Shivani Bhardwaj wrote:
>> Remove the function cfs_tage_from_list() and replace all its calls with
>> the function it wrapped.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/libcfs/tracefile.c | 18 ++++++++----------
>>  1 file changed, 8 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/libcfs/tracefile.c b/drivers/staging/lustre/lustre/libcfs/tracefile.c
>> index 973c7c2..907214a 100644
>> --- a/drivers/staging/lustre/lustre/libcfs/tracefile.c
>> +++ b/drivers/staging/lustre/lustre/libcfs/tracefile.c
>> @@ -59,12 +59,6 @@ static atomic_t cfs_tage_allocated = ATOMIC_INIT(0);
>>  static void put_pages_on_tcd_daemon_list(struct page_collection *pc,
>>                                        struct cfs_trace_cpu_data *tcd);
>>
>> -static inline struct cfs_trace_page *
>> -cfs_tage_from_list(struct list_head *list)
>> -{
>> -     return list_entry(list, struct cfs_trace_page, linkage);
>> -}
>
> No, this is a "good" function to keep around, it makes it easier to
> understand what is going on, and easier to remember how to call it
> instead of having to look up the list_entry() logic each time.
>
> So please keep this one.
>

Alright.
Thank you

> thanks,
>
> greg k-h


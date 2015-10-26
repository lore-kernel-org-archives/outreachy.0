X-GM-THRID: 6207016662523183104
X-Received: by 10.66.110.111 with SMTP id hz15mr17117277pab.16.1445877637581;
        Mon, 26 Oct 2015 09:40:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.93 with SMTP id 90ls1888438ioi.9.gmail; Mon, 26 Oct 2015
 09:40:37 -0700 (PDT)
X-Received: by 10.50.142.103 with SMTP id rv7mr16722650igb.2.1445877636982;
        Mon, 26 Oct 2015 09:40:36 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22f.google.com (mail-qk0-x22f.google.com. [2607:f8b0:400d:c09::22f])
        by gmr-mx.google.com with ESMTPS id y206si1764413ywd.6.2015.10.26.09.40.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 09:40:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) client-ip=2607:f8b0:400d:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by qkcn129 with SMTP id n129so1747670qkc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 09:40:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=DEOsvKmfIFRwgBImsfanbnTKlRiKm7itPoRIKl4JCiU=;
        b=rg/AW67L4mBrlxvKY7CGiQP54DS1pST7IVabwJZEErMYF8Lh9Ti7U47yfkU/qTL9xz
         9udiIUK4geAJMk2frEUNEVJftwu+aNmDawKaenpVqrlZPqG5q7We8kc43BV+6OUQDdJr
         JddtuPiLPlHDLZdcvRYYKYz6CaP9eY9OC8oee96iEegBx+wNpxa7lR9djXz0dEhDJI5J
         yH7TI6Q5Ni6oJXK7Vtmaam2EvsiIFFje1tBj1/ZxFIZl00iCD3T3F9B6wF3vak6vq85f
         6ytSorTFXQmxtklNHm7cJZQ6bL8K17amr/e6yAaoEWT6OBR4vvOj1q8uyq3TKJWgD5Bf
         0aDA==
MIME-Version: 1.0
X-Received: by 10.55.71.81 with SMTP id u78mr11844837qka.81.1445877636719;
 Mon, 26 Oct 2015 09:40:36 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Mon, 26 Oct 2015 09:40:36 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510251531180.2502@hadrien>
References: <cover.1445183494.git.amitoj1606@gmail.com>
	<df74c544b09b3f3205ab904fe879869400af3d5f.1445183495.git.amitoj1606@gmail.com>
	<20151025013856.GA8425@kroah.com>
	<CA+5yK5E=0Ed0HUtJoxx6VGKr6EuBGfdgnR8=Ja_wEUTxk7whMw@mail.gmail.com>
	<alpine.DEB.2.10.1510251531180.2502@hadrien>
Date: Mon, 26 Oct 2015 22:10:36 +0530
Message-ID: <CA+5yK5FBNhqyCuGVAYXg7ruy8YObbV3x9Z-UoT4DqYtwNAAuWw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: lustre: ptlrpc: Replace
 seq_printf() with seq_puts()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 25, 2015 at 8:01 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 25 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> On Sun, Oct 25, 2015 at 7:08 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> > On Sun, Oct 18, 2015 at 09:33:37PM +0530, Amitoj Kaur Chawla wrote:
>> >> Replace seq_printf() with seq_puts() since it is more expensive than
>> >> seq_puts(). Problem found using checkpatch.pl
>> >> WARNING: Prefer seq_puts to seq_printf
>> >>
>> >> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> >> ---
>> >>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> >> index 6cf9b92..23f1e26 100644
>> >> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> >> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> >> @@ -923,7 +923,7 @@ static int ptlrpc_lprocfs_svc_req_history_show(struct seq_file *s, void *iter)
>> >>                          (long)(req->rq_sent - req->rq_arrival_time.tv_sec),
>> >>                          (long)(req->rq_sent - req->rq_deadline));
>> >>               if (svc->srv_ops.so_req_printer == NULL)
>> >> -                     seq_printf(s, "\n");
>> >> +                     seq_puts(s, "\n");
>> >
>> > Shouldn't this really be seq_putc() instead?
>> >
>> > thanks,
>> >
>> > greg k-h
>>
>> 's' is not of char type but char *
>> I build tested this and sent. After your question I had doubts again
>> so I tried seq_putc() but it breaks the build.
>
> "\n" could be '\n'.
>
> julia
>

So I should write it as seq_puts(s, '\n');?
Should I resend this?



-- 
Amitoj


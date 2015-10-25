X-GM-THRID: 6207016662523183104
X-Received: by 10.50.20.227 with SMTP id q3mr11836404ige.11.1445783440698;
        Sun, 25 Oct 2015 07:30:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.26 with SMTP id x26ls1509507ioi.31.gmail; Sun, 25 Oct
 2015 07:30:40 -0700 (PDT)
X-Received: by 10.67.6.202 with SMTP id cw10mr11660885pad.23.1445783440300;
        Sun, 25 Oct 2015 07:30:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id u202si647981ywf.5.2015.10.25.07.30.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 07:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x230.google.com with SMTP id m62so99686924qkf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 07:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=RfFw58YGrcKSHyhlgDybHXFLXwYtR/A96CwJl4LHv3I=;
        b=bDpPrQCeUX1Cpeujy5qsSeg/4x5AAdNrg7fRFC2Wb7uNhqQnGbP9S+Gdr/w94UZ72Y
         T4w3KZ12j/aQNU3z7+9Z3CNFC2tQAqu+sT+pj2+tdkh4TvcsK3x9bQ1E7hPWkjujNb3m
         g4PWNFRn8HXyigerhwNhRS75iCu8y8kDVY/eDKPKbCPM7KMyj+uTwICF0HrNiauqvNc4
         KaafYbCQZCxC4HzL5R7ylDEheyluP1+tZciU3pM1asY2tBw2FKZs8Myhu2O9GQkGnZpQ
         q1apmqpZhGYOWg0mTfmNb1cIx68Waaxhddl1RnrHJMiRBIHCnDkFEusUNV1yxeMIE7ip
         HIYQ==
MIME-Version: 1.0
X-Received: by 10.55.20.150 with SMTP id 22mr36751635qku.41.1445783440114;
 Sun, 25 Oct 2015 07:30:40 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Sun, 25 Oct 2015 07:30:40 -0700 (PDT)
In-Reply-To: <20151025013856.GA8425@kroah.com>
References: <cover.1445183494.git.amitoj1606@gmail.com>
	<df74c544b09b3f3205ab904fe879869400af3d5f.1445183495.git.amitoj1606@gmail.com>
	<20151025013856.GA8425@kroah.com>
Date: Sun, 25 Oct 2015 20:00:40 +0530
Message-ID: <CA+5yK5E=0Ed0HUtJoxx6VGKr6EuBGfdgnR8=Ja_wEUTxk7whMw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: lustre: ptlrpc: Replace
 seq_printf() with seq_puts()
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 25, 2015 at 7:08 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sun, Oct 18, 2015 at 09:33:37PM +0530, Amitoj Kaur Chawla wrote:
>> Replace seq_printf() with seq_puts() since it is more expensive than
>> seq_puts(). Problem found using checkpatch.pl
>> WARNING: Prefer seq_puts to seq_printf
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> index 6cf9b92..23f1e26 100644
>> --- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> +++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
>> @@ -923,7 +923,7 @@ static int ptlrpc_lprocfs_svc_req_history_show(struct seq_file *s, void *iter)
>>                          (long)(req->rq_sent - req->rq_arrival_time.tv_sec),
>>                          (long)(req->rq_sent - req->rq_deadline));
>>               if (svc->srv_ops.so_req_printer == NULL)
>> -                     seq_printf(s, "\n");
>> +                     seq_puts(s, "\n");
>
> Shouldn't this really be seq_putc() instead?
>
> thanks,
>
> greg k-h

's' is not of char type but char *
I build tested this and sent. After your question I had doubts again
so I tried seq_putc() but it breaks the build.

-- 
Amitoj


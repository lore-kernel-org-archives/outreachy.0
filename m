X-GM-THRID: 6254064858167246848
X-Received: by 10.129.102.215 with SMTP id a206mr27978562ywc.40.1456148022505;
        Mon, 22 Feb 2016 05:33:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.108.5 with SMTP id hg5ls621927igb.41.gmail; Mon, 22 Feb
 2016 05:33:42 -0800 (PST)
X-Received: by 10.107.164.208 with SMTP id d77mr29318941ioj.22.1456148022065;
        Mon, 22 Feb 2016 05:33:42 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-oi0-x231.google.com (mail-oi0-x231.google.com. [2607:f8b0:4003:c06::231])
        by gmr-mx.google.com with ESMTPS id k15si1872219igt.3.2016.02.22.05.33.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:33:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::231 as permitted sender) client-ip=2607:f8b0:4003:c06::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c06::231 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x231.google.com with SMTP id x21so54615419oix.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 05:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=lVX7lGQwFq/1Xzd8X18UNeDshTN6EmZKL6H2yJeznlc=;
        b=g7LwNxAQO8mDm+YJ0KGmkYetGpuICg6aYImEtC0PC/hw9LYfDRPEFwobAm7IdYZEC4
         nY6LObT1fNlQ8IW+jF00tKPpv7Ki+LdzpiEXXoasfUHzOkfIppQGMImmMD8mhmrIgQQL
         /U9nfTPoBUqkALUdu8dnCoKvX52z+8K7yGEiZbvqwpuJPio3QJ+KDOak+qigK5J9E2j7
         rciuxZXAnLB6uSmDYQ9t/+Z2Ezku9DrQu9uTqUyEnFMYDqV5EDJmLpX0LownRK5DQJIZ
         tetSzwJz6T5VQH1eu8IuGTJLFxBW4m5Sxmo7d5uwgH1SQvt2DZR284lK3loD+LWSFLI7
         Ordg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=lVX7lGQwFq/1Xzd8X18UNeDshTN6EmZKL6H2yJeznlc=;
        b=a8x0bJInz/XISW6swmRzJbKrQ71LOqUIOBd4Cz4Bm+ez6WEYLimCmL/JqmajXq1MZB
         JPhjtBN15/kZraEfKGQtmBebths/Tv++iukY+C9jHULUhIpePIJmirDGwdJ0srRjd4iU
         GjOYb7goX7jAkN53sFy7YlRsexxEFb/jkw5KMFu/Cq5trM+G5AfynilvXHST3eFlbv/O
         K+1hl2am+lJmqFqhaKfPPtM2zlz1AnPbMFuVe4M3hJUUN2gJ0entlF4ZXixqnIvAwbE8
         ThKkhmWHigj6OHhetaRmsh01pBUH+P/6nSzoN8p2TNXInR8gCFuZEzjpVAAg/9ulm1td
         GYqw==
X-Gm-Message-State: AG10YOQp9hneN0nT6e3E6CiptuQkFMmH/jWJpWpJvW4PJ8HSzQ4EuSkUHS3tlImeqWgNaC+MrRccoQ3jyIjf9A==
MIME-Version: 1.0
X-Received: by 10.202.217.136 with SMTP id q130mr22093184oig.127.1456148021884;
 Mon, 22 Feb 2016 05:33:41 -0800 (PST)
Received: by 10.157.40.238 with HTTP; Mon, 22 Feb 2016 05:33:41 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602220740070.2532@hadrien>
References: <cover.1456136671.git.bhumirks@gmail.com>
	<ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks@gmail.com>
	<alpine.DEB.2.10.1602220740070.2532@hadrien>
Date: Mon, 22 Feb 2016 19:03:41 +0530
Message-ID: <CAOH+1jHFnNGhm5YtLZ=bvH-0Fp-J5okYjFWwY0umQt2ANT9bzQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: lustre: Use min_t or
 max_t instead of ternary operator
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 22, 2016 at 6:10 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 22 Feb 2016, Bhumika Goyal wrote:
>
>> Replace ternary operators with macros min_t/max_t as they are
>> shorter and thus increases code readability. Macro min_t return the minimum
>> and min_t returns maximum of the two compared values.
>> Made a semantic patch for changes:
>>
>> @@
>> type T;
>> T x;
>> T y;
>
> Nice use of types.
>
> julia
>

Thanks to you for always guiding :D .

Bhumika

>> @@
>> (
>> - x < y ? x : y
>> + min_t(T,x,y)
>> |
>> - x > y ? x : y
>> + max_t(T,x,y)
>> )
>>
>> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/include/lustre_disk.h | 6 ++----
>>  drivers/staging/lustre/lustre/osc/osc_request.c     | 2 +-
>>  drivers/staging/lustre/lustre/ptlrpc/events.c       | 2 +-
>>  3 files changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/include/lustre_disk.h b/drivers/staging/lustre/lustre/include/lustre_disk.h
>> index 7c6933f..c886f7c 100644
>> --- a/drivers/staging/lustre/lustre/include/lustre_disk.h
>> +++ b/drivers/staging/lustre/lustre/include/lustre_disk.h
>> @@ -331,14 +331,12 @@ static inline void lcd_cpu_to_le(struct lsd_client_data *lcd,
>>
>>  static inline __u64 lcd_last_transno(struct lsd_client_data *lcd)
>>  {
>> -     return (lcd->lcd_last_transno > lcd->lcd_last_close_transno ?
>> -             lcd->lcd_last_transno : lcd->lcd_last_close_transno);
>> +     return max_t(__u64, lcd->lcd_last_transno, lcd->lcd_last_close_transno);
>>  }
>>
>>  static inline __u64 lcd_last_xid(struct lsd_client_data *lcd)
>>  {
>> -     return (lcd->lcd_last_xid > lcd->lcd_last_close_xid ?
>> -             lcd->lcd_last_xid : lcd->lcd_last_close_xid);
>> +     return max_t(__u64, lcd->lcd_last_xid, lcd->lcd_last_close_xid);
>>  }
>>
>>  /****************** superblock additional info *********************/
>> diff --git a/drivers/staging/lustre/lustre/osc/osc_request.c b/drivers/staging/lustre/lustre/osc/osc_request.c
>> index 43b11c6..065a915 100644
>> --- a/drivers/staging/lustre/lustre/osc/osc_request.c
>> +++ b/drivers/staging/lustre/lustre/osc/osc_request.c
>> @@ -1170,7 +1170,7 @@ static u32 osc_checksum_bulk(int nob, u32 pg_count,
>>       }
>>
>>       while (nob > 0 && pg_count > 0) {
>> -             int count = pga[i]->count > nob ? nob : pga[i]->count;
>> +             int count = min_t(int, nob, pga[i]->count);
>>
>>               /* corrupt the data before we compute the checksum, to
>>                * simulate an OST->client data error */
>> diff --git a/drivers/staging/lustre/lustre/ptlrpc/events.c b/drivers/staging/lustre/lustre/ptlrpc/events.c
>> index 64eaa0e..3219fad 100644
>> --- a/drivers/staging/lustre/lustre/ptlrpc/events.c
>> +++ b/drivers/staging/lustre/lustre/ptlrpc/events.c
>> @@ -254,7 +254,7 @@ static void ptlrpc_req_add_history(struct ptlrpc_service_part *svcpt,
>>
>>       new_seq = (sec << REQS_SEC_SHIFT) |
>>                 (usec << REQS_USEC_SHIFT) |
>> -               (svcpt->scp_cpt < 0 ? 0 : svcpt->scp_cpt);
>> +               (max_t(int, 0, svcpt->scp_cpt));
>>
>>       if (new_seq > svcpt->scp_hist_seq) {
>>               /* This handles the initial case of scp_hist_seq == 0 or
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ae653a4fe839af60c62a545477d803c8b0866968.1456136671.git.bhumirks%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


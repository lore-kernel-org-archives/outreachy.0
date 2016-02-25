X-GM-THRID: 6255207810462646272
X-Received: by 10.66.63.104 with SMTP id f8mr41610727pas.4.1456405187995;
        Thu, 25 Feb 2016 04:59:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.73 with SMTP id j67ls317911qga.13.gmail; Thu, 25 Feb
 2016 04:59:47 -0800 (PST)
X-Received: by 10.140.101.242 with SMTP id u105mr13657835qge.12.1456405187349;
        Thu, 25 Feb 2016 04:59:47 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id l85si425850ywb.2.2016.02.25.04.59.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:59:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x233.google.com with SMTP id b35so38663936qge.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 04:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=cBpd7zMwiZAVu/kL19HoIXK8Dqk/jzbfj0wurPyZzHE=;
        b=CgX/wI/lfrCoUAMdiUKbjpY7aOCLBaSzawEIwOEYkGptR28JPFi4oqrWkTYF1RUmNu
         r6RDqQvOPInyQJ1EnmZ5yKKAAsFLbSk26Ge29Vc5lTvZkbWhq1XPpEeFzFi2HBnaYm+0
         K3TTi6JPwY8B/zdAbU1p5KXT6mQbA6Obhp4fatH15t6A6+/nn5ChAGOXzEiSCs16qCJh
         2XhYsrO11lv7nn0QiD97c0qCNfVQU4J8QvI2vGX+ycjdvUjQT7PrYBTiVFCKqmelqKFz
         /dA68Q6IvEt+KtnnzOoHmQGP1rylneswG5okXrW5AWetnePPwu0wyTZNpHXE+XDVZhZs
         P0hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=cBpd7zMwiZAVu/kL19HoIXK8Dqk/jzbfj0wurPyZzHE=;
        b=YuCV/GuHwnIqKYHGHOnRf1qutQYsGvbG3f/UUyPwbg28CWA7jFG2gRSX6Oqo/GXsMh
         ZTQRCyo3y+tW4OKQP7rGujPXEa6yXp6oq9vxFaEVLrRlUCKG4JD838J9IXfjmLv/Tzhk
         r43dk50mayUIDVEA6cjbIgLnfgaN6exCk3UThR0qNmhCfUZRy5wUk/fka+CnO22CCmCt
         mjxu1bBhMPflXViH/yGL05v5QunZEo4+yl8FUKWW/6C9U/f3VWjErRzjkP+MN8s50BrH
         SbYJeyrKk27+q1deVzugrfQCTSyWe3QJ0iy6pmM9kqGJasuNXGxLZLiq0+PO5B6GHu96
         eEzg==
X-Gm-Message-State: AG10YOSD8JbVhmtRpDeq6SXLDBXb99Uk6PBAfVRcB0DKdfXg+gthm7O/Eento99YEkpyTC4Ip+FhGfNUu5uGVA==
X-Received: by 10.140.106.11 with SMTP id d11mr55487069qgf.80.1456405187176;
 Thu, 25 Feb 2016 04:59:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Thu, 25 Feb 2016 04:59:07 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602251347320.2708@hadrien>
References: <20160225124135.GA7636@Karyakshetra> <alpine.DEB.2.10.1602251347320.2708@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Thu, 25 Feb 2016 18:29:07 +0530
Message-ID: <CAFNHFT9sNPZsxqW+SXKxpyjyp-dNYQBBbO1BTjxwSTBydyRdQw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: Remove casts
 of pointer to same type
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 6:17 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> Casting a pointer to a pointer of the same type is unnecessary, so remove
>> these unnecessary casts.
>>
>> This was done with Coccinelle:
>>
>> @@
>> type T;
>> T *ptr;
>> @@
>> - (T *)ptr
>> + ptr
>
> Good idea :)
>
> julia

Thanks! :D

>
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/core/rtw_recv.c | 10 +++++-----
>>  1 file changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> index 40b7a30..d3c9ded 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
>> @@ -141,7 +141,7 @@ struct recv_frame *_rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
>>               }
>>       }
>>
>> -     return (struct recv_frame *)hdr;
>> +     return hdr;
>>  }
>>
>>  struct recv_frame *rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
>> @@ -240,7 +240,7 @@ void rtw_free_recvframe_queue(struct __queue *pframequeue,  struct __queue *pfre
>>
>>               plist = plist->next;
>>
>> -             rtw_free_recvframe((struct recv_frame *)hdr, pfree_recv_queue);
>> +             rtw_free_recvframe(hdr, pfree_recv_queue);
>>       }
>>
>>       spin_unlock(&pframequeue->lock);
>> @@ -1417,7 +1417,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
>>       phead = get_list_head(defrag_q);
>>       plist = phead->next;
>>       pfhdr = container_of(plist, struct recv_frame, list);
>> -     prframe = (struct recv_frame *)pfhdr;
>> +     prframe = pfhdr;
>>       list_del_init(&(prframe->list));
>>
>>       if (curfragnum != pfhdr->attrib.frag_num) {
>> @@ -1437,7 +1437,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
>>
>>       while (phead != plist) {
>>               pnfhdr = container_of(plist, struct recv_frame, list);
>> -             pnextrframe = (struct recv_frame *)pnfhdr;
>> +             pnextrframe = pnfhdr;
>>
>>               /* check the fragment sequence  (2nd ~n fragment frame) */
>>
>> @@ -1780,7 +1780,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
>>       /*  Check if there is any packet need indicate. */
>>       while (!list_empty(phead)) {
>>               prhdr = container_of(plist, struct recv_frame, list);
>> -             prframe = (struct recv_frame *)prhdr;
>> +             prframe = prhdr;
>>               pattrib = &prframe->attrib;
>>
>>               if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
>> --
>> 2.1.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160225124135.GA7636%40Karyakshetra.
>> For more options, visit https://groups.google.com/d/optout.
>>


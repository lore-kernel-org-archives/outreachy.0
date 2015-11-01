X-GM-THRID: 6212095586717401088
X-Received: by 10.50.73.228 with SMTP id o4mr6050714igv.10.1446368275582;
        Sun, 01 Nov 2015 01:57:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.230 with SMTP id j93ls2037406qgf.69.gmail; Sun, 01 Nov
 2015 01:57:54 -0700 (PDT)
X-Received: by 10.129.95.6 with SMTP id t6mr14832900ywb.7.1446368274815;
        Sun, 01 Nov 2015 01:57:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x22a.google.com (mail-qk0-x22a.google.com. [2607:f8b0:400d:c09::22a])
        by gmr-mx.google.com with ESMTPS id m124si1087198ywb.7.2015.11.01.01.57.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:57:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) client-ip=2607:f8b0:400d:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by qkcl124 with SMTP id l124so44096933qkc.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=vSHtK//aNkhaksfsuMwMZCtSwthdtM8znKJQkrVzrto=;
        b=Ooiph6PqZSMoQ+M3Ye6CPILECYRETBmB3Vjarnl3onOhZwn8+WEMsd0sOvIbQfImng
         Ttx7V8VH3zkXlDAVuEvVwH1nbsTNLVUNz0CACnVAL3ApcJjtdgQjH4nYbib44Jb17GVE
         zxJ6edvSkMWtL2iWPFooLByHIZPezkNUTYMFfsGT47GXPb4xrm4hmkBvCC8DU+QRG2fy
         lMR4wiewwrwH6l2vKqBI52T9RD1hyoTxsmc+for+B+3gMKVshFIfrPYgWEiPbwrkZqzO
         mDnDckHcaySgVm8UjJbcDZj7dBXI1P/oUugqsxatNUGN5pdpFSrIrweYc6WPi77pNKKF
         YmTw==
MIME-Version: 1.0
X-Received: by 10.55.195.135 with SMTP id r7mr22712370qkl.4.1446368274586;
 Sun, 01 Nov 2015 01:57:54 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Sun, 1 Nov 2015 01:57:54 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1511010938560.2070@localhost6.localdomain6>
References: <cover.1446366036.git.amitoj1606@gmail.com>
	<23ac38a01d5092053da227aaa0741b270125ceeb.1446366036.git.amitoj1606@gmail.com>
	<alpine.DEB.2.02.1511010938560.2070@localhost6.localdomain6>
Date: Sun, 1 Nov 2015 14:27:54 +0530
Message-ID: <CA+5yK5E2vnAQfvv0F_TyyyNf6ALtz-MVQnCmQ8Nazn7gL30q3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: rdma: hfi1: chip: Remove
 wrapper function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 2:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 1 Nov 2015, Amitoj Kaur Chawla wrote:
>
>> Drop wrapper function remap_receive_available_interrupt() that can be
>> replaced by a single line of code.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/rdma/hfi1/chip.c | 8 +-------
>>  1 file changed, 1 insertion(+), 7 deletions(-)
>>
>> diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
>> index beac326d..a9c6abf 100644
>> --- a/drivers/staging/rdma/hfi1/chip.c
>> +++ b/drivers/staging/rdma/hfi1/chip.c
>> @@ -8749,12 +8749,6 @@ static void remap_sdma_interrupts(struct hfi1_devdata *dd,
>>               msix_intr);
>>  }
>>
>> -static void remap_receive_available_interrupt(struct hfi1_devdata *dd,
>> -                                           int rx, int msix_intr)
>> -{
>> -     remap_intr(dd, IS_RCVAVAIL_START + rx, msix_intr);
>> -}
>
> remap_intr is not a standard kernel function.  But perhaps one could argue
> that the constant name gives the same information as the function name, so
> the function is not needed.
>
> But this function is the neighbor of another very similar function that
> remaps three interrupts at once.  The two functions are also used in a
> very parallel way, at the end of successive if branches.  It seems strange
> to inline one function and not the other.
>
> julia

In this case, the function names are very similar and the wrapper just
add the macro IS_RCVAVAIL_START to the second argument, so the change
made sense to me.
>
>>  static int request_intx_irq(struct hfi1_devdata *dd)
>>  {
>>       int ret;
>> @@ -8890,7 +8884,7 @@ static int request_msix_irqs(struct hfi1_devdata *dd)
>>                       snprintf(me->name, sizeof(me->name),
>>                               DRIVER_NAME"_%d kctxt%d", dd->unit, idx);
>>                       err_info = "receive context";
>> -                     remap_receive_available_interrupt(dd, idx, i);
>> +                     remap_intr(dd, IS_RCVAVAIL_START + idx, i);
>>               } else {
>>                       /* not in our expected range - complain, then
>>                          ignore it */
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/23ac38a01d5092053da227aaa0741b270125ceeb.1446366036.git.amitoj1606%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Amitoj


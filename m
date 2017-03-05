X-GM-THRID: 6394061646033059840
X-Received: by 10.28.45.7 with SMTP id t7mr327264wmt.9.1488735726755;
        Sun, 05 Mar 2017 09:42:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.146.139 with SMTP id u133ls864540wmd.2.canary-gmail; Sun,
 05 Mar 2017 09:42:05 -0800 (PST)
X-Received: by 10.28.98.130 with SMTP id w124mr336588wmb.20.1488735725958;
        Sun, 05 Mar 2017 09:42:05 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id p144si200418wme.2.2017.03.05.09.42.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 09:42:05 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id r36so11371992lfi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 09:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bdQXpY/JF0D3XK3lmb/t2FkmTMu8n3MZ7me+yG9n42k=;
        b=l3PCf/YLXNHgoyfRZ8UpfW/eR394MfkOBblrGuKjSyiwg/BPy3ux1tgYELX0iIdHaV
         6P3pVRFrnWmfDBRP5TpSrkjTsjEGG8dntNXv6y1AjtU1noSo3XyTFJtvy6569u/WszSL
         77TMYrZHoHUbOf+XrD2J4eHVkSZ2k1CgmP9pkKUeXg8lbFGWkrPv/wLWs+5Fbo2bt65N
         d9q6LA9RCosRIuJWQ9sLkFqM8CZisQEkd7kNH1DdVIUpSM7v362O/zJcAZptgTrWu37J
         ocbWo7dQ7k31fcETJoxkBFK7JQ8uj5+oarJdVAVJZWgMUKPFEMavkxurJlAulu+WQ8gi
         KmDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bdQXpY/JF0D3XK3lmb/t2FkmTMu8n3MZ7me+yG9n42k=;
        b=XN1e8X3Q2vt7S3ur+XKXzl7wWU/zjMfSa4IG3A+5YSJjEVBUDIzLEzcPo4+IWJW33A
         bjVXG8o+jx5/9sMYfAWVAg0Ev6g3yrO5D4y+TBTB5woJMrutrt0kbdqDFqjJAtkxcSGD
         OQvhp5x19x188Aq+IJLJuflHHAcAw2pFCsIkninrwu1mtlsx8LF/PZSf/4i8YhCwzE7I
         S3oNIqJp/q50yldgqMsG/21cg0aXWf2NBVW4TMtnLVvat9Z7a1HyxEOL5mxfWIOAFSEk
         Q8YN0xG3fW/i8dEJTpl9hF0YXnUJCCXBr7YDhWvWBfOzOFxf97ltdOis2khgdtbjjNfY
         Vtmw==
X-Gm-Message-State: AMke39m6ZIPYR6/iH7FL87RtrYmP7bdbfidehpuuf/vJadnpujFXZ+k4R0WpJHZzaH3AV1AoEoha3i1vtU7xMw==
X-Received: by 10.46.88.79 with SMTP id x15mr4005087ljd.39.1488735725626; Sun,
 05 Mar 2017 09:42:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 5 Mar 2017 09:42:05 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703051838110.3052@hadrien>
References: <1488733610-22289-1-git-send-email-singhalsimran0@gmail.com>
 <1488733610-22289-3-git-send-email-singhalsimran0@gmail.com> <alpine.DEB.2.20.1703051838110.3052@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 5 Mar 2017 23:12:05 +0530
Message-ID: <CALrZqyO2XF80KZoYQiM_zCJe42c_W_AyhJQ7-JBQZsoeYBkK1w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: lustre: ptlrpc: Use list_for_each_entry_safe
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
	Greg KH <gregkh@linuxfoundation.org>, lustre-devel@lists.lustre.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 5, 2017 at 11:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 5 Mar 2017, simran singhal wrote:
>
>> Doubly linked lists which are  iterated  using list_empty
>> and list_entry macros have been replaced with list_for_each_entry_safe
>> macro.
>> This makes the iteration simpler and more readable.
>>
>> This patch replaces the while loop containing list_empty and list_entry
>> with list_for_each_entry_safe.
>>
>> This was done with Coccinelle.
>>
>> @@
>> expression E1;
>> identifier I1, I2;
>> type T;
>> iterator name list_for_each_entry_safe;
>> @@
>>
>> T *I1;
>> + T *tmp;
>> ...
>> - while (list_empty(&E1) == 0)
>> + list_for_each_entry_safe (I1, tmp, &E1, I2)
>> {
>> ...when != T *I1;
>> - I1 = list_entry(E1.next, T, I2);
>> ...
>> }
>>
>> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/ptlrpc/sec_gc.c | 5 ++---
>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
>> index 8ffd000..fe1c0af 100644
>> --- a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
>> +++ b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
>> @@ -98,12 +98,11 @@ void sptlrpc_gc_del_sec(struct ptlrpc_sec *sec)
>>  static void sec_process_ctx_list(void)
>>  {
>>       struct ptlrpc_cli_ctx *ctx;
>> +     struct ptlrpc_cli_ctx *tmp;
>
> Another improvement would be to define both variables at once:
>
> T *I1
> + , *tmp
>   ;
>
This is particulary for this patch or for all the patches of this patch-series.

> julia
>
>>
>>       spin_lock(&sec_gc_ctx_list_lock);
>>
>> -     while (!list_empty(&sec_gc_ctx_list)) {
>> -             ctx = list_entry(sec_gc_ctx_list.next,
>> -                              struct ptlrpc_cli_ctx, cc_gc_chain);
>> +     list_for_each_entry_safe(ctx, tmp, &sec_gc_ctx_list, cc_gc_chain) {
>>               list_del_init(&ctx->cc_gc_chain);
>>               spin_unlock(&sec_gc_ctx_list_lock);
>>
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488733610-22289-3-git-send-email-singhalsimran0%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


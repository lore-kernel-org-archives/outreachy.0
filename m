X-GM-THRID: 6212594982457442304
X-Received: by 10.28.138.83 with SMTP id m80mr2498602wmd.7.1446483379838;
        Mon, 02 Nov 2015 08:56:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.37.69 with SMTP id l66ls227380lfl.8.gmail; Mon, 02 Nov 2015
 08:56:19 -0800 (PST)
X-Received: by 10.112.63.165 with SMTP id h5mr4658560lbs.18.1446483379094;
        Mon, 02 Nov 2015 08:56:19 -0800 (PST)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wm0-x231.google.com (mail-wm0-x231.google.com. [2a00:1450:400c:c09::231])
        by gmr-mx.google.com with ESMTPS id t18si506141wme.0.2015.11.02.08.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2015 08:56:19 -0800 (PST)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) client-ip=2a00:1450:400c:c09::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c09::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x231.google.com with SMTP id c75so65839435wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Nov 2015 08:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Da967adt3yQ2RVKacg1ZwALvGXonhKOPFoPz/mMYIP0=;
        b=bl8oR6BvMHvWnR8VL+PQi8GXlrET/I77cX5CEoQjNooJYYyJppt4iqLVN2Em5x4Bqo
         YmfE0eKulVAbozYnaPtwKkM57tq7gL3w9e0hVVYYn1c4mXS+7SrzvoAhQBqVC779iI+2
         ObMAeE1HBsqHCKPLL32qXNfEglJTZYG8X4flzttgh1AsbQkja/IcKkAvri77Fm5mSbHN
         JFICgyED1wiDqfcY8XM+fYNuz4tfNBSzcmxrZAXbJY5ik3TvZCsW+AFtM2JWbqIJYT4k
         E0A5Kn55K5tMxQaW42K7kTPed9m/5eqtcak5yOMuhynTmZjt1Dg5QcrnuSgL0oOyiYYy
         lCWQ==
MIME-Version: 1.0
X-Received: by 10.28.19.65 with SMTP id 62mr13948508wmt.35.1446483378934; Mon,
 02 Nov 2015 08:56:18 -0800 (PST)
Received: by 10.27.186.23 with HTTP; Mon, 2 Nov 2015 08:56:18 -0800 (PST)
In-Reply-To: <20151102165223.GA12839@kroah.com>
References: <20151102164119.GA32817@ubuntu>
	<20151102165223.GA12839@kroah.com>
Date: Mon, 2 Nov 2015 22:26:18 +0530
Message-ID: <CAKHNQQFRSko0HhvRjhn+N2v6RRjA=z-5Ug6-CVvOeu+tHPUByA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: linux-cpu: Remove
 unnecessary wrapper functions
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 2, 2015 at 10:22 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Nov 02, 2015 at 10:11:19PM +0530, Shivani Bhardwaj wrote:
>> Remove the functions cfs_cpu_core_siblings(), cfs_cpu_ht_siblings(),
>> cfs_node_to_cpumask() and replace their calls with the functions they
>> wrapped.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  .../staging/lustre/lustre/libcfs/linux/linux-cpu.c | 30 +++++-----------------
>>  1 file changed, 7 insertions(+), 23 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
>> index 2097364..31719af 100644
>> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
>> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-cpu.c
>> @@ -78,23 +78,6 @@ struct cfs_cpt_data {
>>
>>  static struct cfs_cpt_data   cpt_data;
>>
>> -static void cfs_cpu_core_siblings(int cpu, cpumask_t *mask)
>> -{
>> -     /* return cpumask of cores in the same socket */
>> -     cpumask_copy(mask, topology_core_cpumask(cpu));
>> -}
>> -
>> -/* return cpumask of HTs in the same core */
>> -static void cfs_cpu_ht_siblings(int cpu, cpumask_t *mask)
>> -{
>> -     cpumask_copy(mask, topology_sibling_cpumask(cpu));
>> -}
>> -
>> -static void cfs_node_to_cpumask(int node, cpumask_t *mask)
>> -{
>> -     cpumask_copy(mask, cpumask_of_node(node));
>> -}
>>
>
> Please remove one of these at a time, it makes it much easier to review
> the patch.
>

Should I resend this one as well? I'll take care next time.

Thank you

> thanks,
>
> greg k-h


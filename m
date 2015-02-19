X-GM-THRID: 697096470528
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ae4d3b7517c21de2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.109.129 with SMTP id hs1mr4961820pdb.6.1424364224198;
        Thu, 19 Feb 2015 08:43:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.227 with SMTP id i90ls475173qge.59.gmail; Thu, 19 Feb
 2015 08:43:43 -0800 (PST)
X-Received: by 10.236.42.228 with SMTP id j64mr4993530yhb.36.1424364223875;
        Thu, 19 Feb 2015 08:43:43 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-ob0-x233.google.com (mail-ob0-x233.google.com. [2607:f8b0:4003:c01::233])
        by gmr-mx.google.com with ESMTPS id e3si1932200igq.1.2015.02.19.08.43.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 08:43:43 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::233 as permitted sender) client-ip=2607:f8b0:4003:c01::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::233 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x233.google.com with SMTP id wp4so16432067obc.10
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 08:43:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=rAVwGz/iolw8JLd48/juHYHgOivQskZsBEMAZc8gF1c=;
        b=NLQzPg2Eg7gGRuRqyodoXRsY0mxZk1vdyEef9GqgvB+BS8yQGyGrqBVzoNHiofszZW
         VADgtT80TPk0d342dJUqhPmSogLK7uyFsRsNeZtakC167r5jOmaOBPH/zQQtsmZb5ls5
         BzkvDj2SR/c+hio7Ux4dSkzBkThQN5ddJM1ar56PiyzovWoV9NCsHI3DBU/nIcTT+qRu
         GW0MBmxdGgjOlzmB99qGNoiITorl0IWTuli7oL6Hr45+xNYGNZRjDjolNq0wazXsn7LU
         bD3gGdcOCh5KDYq2XwpFTEKN64f7eVSNmRFcRg4fRDUm24Q3I8vmHY6ndWqjd4q1oiwE
         79Ew==
MIME-Version: 1.0
X-Received: by 10.182.213.166 with SMTP id nt6mr3619834obc.60.1424364223583;
 Thu, 19 Feb 2015 08:43:43 -0800 (PST)
Received: by 10.202.72.69 with HTTP; Thu, 19 Feb 2015 08:43:43 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502191738120.3284@hadrien>
References: <1424363402-10346-1-git-send-email-navyasri.tech@gmail.com>
	<alpine.DEB.2.10.1502191738120.3284@hadrien>
Date: Thu, 19 Feb 2015 22:13:43 +0530
Message-ID: <CAAJLE+1BsZaDcMkR_VVV+e9VasJSwhnx1umbTEMtroFnGKebYA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: parport: Convert
 simple_strtoul to kstrtoul
From: navya sri nizamkari <navyasri.tech@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

When the conversion is not successful the final string (whose pointer
is ep) and the initial string are the same(a parsing error).kstrtoul
returns a non-zero value for parsing and overflow errors.Maybe I
should add an addtional check for the return value of kstrtoul to be
EINVAL.
On Thu, Feb 19, 2015 at 10:10 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Thu, 19 Feb 2015, Navya Sri Nizamkari wrote:
>
>> This patch fixes the following checkpatch.pl warning:
>>
>> WARNING: simple_strtoul is obsolete, use kstrtoul instead
>
> simple_strtoul and kstrtoul don't have the same functionality.  You have
> to argue carefully why this change is correct.  That is, under what
> circumstances does simple_strtoul end up with the value in its second
> argument being the same as its first argument, and under what
> circumstances does kstrtoul give a non zero result.
>
> julia
>
>> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
>> ---
>>  drivers/staging/media/parport/bw-qcam.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
>> index 67b9da1..1b81244 100644
>> --- a/drivers/staging/media/parport/bw-qcam.c
>> +++ b/drivers/staging/media/parport/bw-qcam.c
>> @@ -1106,10 +1106,8 @@ static int accept_bwqcam(struct parport *port)
>>       if (parport[0] && strncmp(parport[0], "auto", 4) != 0) {
>>               /* user gave parport parameters */
>>               for (n = 0; n < MAX_CAMS && parport[n]; n++) {
>> -                     char *ep;
>>                       unsigned long r;
>> -                     r = simple_strtoul(parport[n], &ep, 0);
>> -                     if (ep == parport[n]) {
>> +                     if (kstrtoul(parport[n],0,&r)) {
>>                               printk(KERN_ERR
>>                                       "bw-qcam: bad port specifier \"%s\"\n",
>>                                       parport[n]);
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424363402-10346-1-git-send-email-navyasri.tech%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


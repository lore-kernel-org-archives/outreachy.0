X-GM-THRID: 739037413376
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fb3c1311c9c4e49b
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.61.132 with SMTP id p4mr12286801igr.7.1424447101114;
        Fri, 20 Feb 2015 07:45:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.65.33 with SMTP id u1ls193045igs.30.canary; Fri, 20 Feb
 2015 07:45:00 -0800 (PST)
X-Received: by 10.42.43.199 with SMTP id y7mr10857865ice.9.1424447100537;
        Fri, 20 Feb 2015 07:45:00 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-ob0-x22c.google.com (mail-ob0-x22c.google.com. [2607:f8b0:4003:c01::22c])
        by gmr-mx.google.com with ESMTPS id e3si167742igq.1.2015.02.20.07.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 07:45:00 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) client-ip=2607:f8b0:4003:c01::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22c.google.com with SMTP id nt9so24922918obb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=U2MD5L9iAoYBbjDdy+JADPngLbmwI1RY0i0sogBLIIc=;
        b=BoBK2TkhxowR1oMxH/R0/XxJQ9nm9ZQxjZnbbjvdMyc8HAEdaVBHEnnWlhODZ5KgJW
         tHS09RMnf0ITmnRDRuh9tVjnwESsKlQcjNfc05yl5xD107Xzdf7ckI2Sws0TJCRpqdgJ
         e54lCHsgbQE/hc930sA4rmNTpQgIcXxxnvKsDZ4d/tXMEcLPmjQXKHqjYZIyYfb/RtdA
         P8JYJyH3HYsIwfqMMTfF8RIisukqCh59qmSGhYZ89eqywIBuBaAT/t9LT/abf/OablSB
         zXh+Sabckx/grGT9erEJEz4cyIjD7WqZkS3v0MHs6v8uCAOgx5M6T+IzFCTmAScSuzyS
         KD9Q==
MIME-Version: 1.0
X-Received: by 10.202.174.69 with SMTP id x66mr6517295oie.79.1424447100040;
 Fri, 20 Feb 2015 07:45:00 -0800 (PST)
Received: by 10.202.72.69 with HTTP; Fri, 20 Feb 2015 07:44:59 -0800 (PST)
In-Reply-To: <54E71372.7030500@linux.vnet.ibm.com>
References: <1424369465-12930-1-git-send-email-navyasri.tech@gmail.com>
	<54E71372.7030500@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 21:14:59 +0530
Message-ID: <CAAJLE+1VG_UgBCjkfq-ggwPsj4W1t7z8yfzvshPv=D53uNxmzw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3] Convert simple_strtoul to kstrtoul
From: navya sri nizamkari <navyasri.tech@gmail.com>
To: Preeti U Murthy <preeti@linux.vnet.ibm.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi,
I've made changes according to your feedback and sent in another
patch. Is i2o going to be removed too?
Thanks,
Navya.

On Fri, Feb 20, 2015 at 4:28 PM, Preeti U Murthy
<preeti@linux.vnet.ibm.com> wrote:
> Hi Navya,
>
> On 02/19/2015 11:41 PM, Navya Sri Nizamkari wrote:
>> This patch fixes the checkpatch.pl warning:
>> simple_strtoul is obsolete, use kstrtoul instead.
>>
>> When the string is not converted(parsing error), the strings pointed to by ep and parport[n] are the same. This parsing error results in kstrtoul returning a non-zero value.
>
> When you write changelogs restrict the length of the line to 80
> characters, so that the patch looks uniformly aligned throughout.
>
> On another note, the patch is fixing an issue that is not specific to ep
> and parport[n]. It looks at replacing strtoul() with kstrtoul() in
> places where there are checks for parsing error in string parsing.
> Make the explanation more generic because its not specific to this file.
> Ideally if any one else finds such a usage elsewhere, they can change it
> the same way. Hence under such circumstances avoid using file specific
> parameters in the changelog.
>
> And try to link the usage of strtoul() with kstrtoul(); you replace
> strtoul() with kstrtoul() in the error handling part here because both
> check for similar errors while parsing strings. Ideally kstrtoul() error
> check should be a superset of strtoul(). Else this patch would have been
> wrong.
>
> But hold onto these points for a similar cleanup on another driver. See
> below.
>
>>
>> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
>> ---
>> Changes in v3:
>>    -Removed few changes made in previous commit which were introducing new checkpatch.pl warnings.
>>
>>  drivers/staging/media/parport/bw-qcam.c | 4 +---
>
> Refer to the mail that Arnd sent out. He has listed the drivers that are
> not in mainline. So avoid sending patches against the following drivers,
> since they will soon be removed from staging-next as well.
>
> drivers/staging/line6/ (moved to sound/usb)
> drivers/staging/media/parport/
> drivers/staging/media/tlg2300/
> drivers/staging/media/vino/
>
> Regards
> Preeti U Murthy
>
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
>> index 67b9da1..6c9b400 100644
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
>> +                     if (kstrtoul(parport[n], 0, &r)) {
>>                               printk(KERN_ERR
>>                                       "bw-qcam: bad port specifier \"%s\"\n",
>>                                       parport[n]);
>>
>


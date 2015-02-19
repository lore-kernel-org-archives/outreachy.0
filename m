X-GM-THRID: 739037413376
X-Received: by 10.236.7.37 with SMTP id 25mr5286126yho.18.1424367769509;
        Thu, 19 Feb 2015 09:42:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.138.69 with SMTP id qo5ls484988igb.3.gmail; Thu, 19 Feb
 2015 09:42:49 -0800 (PST)
X-Received: by 10.66.147.165 with SMTP id tl5mr5171463pab.17.1424367769305;
        Thu, 19 Feb 2015 09:42:49 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-ob0-x22c.google.com (mail-ob0-x22c.google.com. [2607:f8b0:4003:c01::22c])
        by gmr-mx.google.com with ESMTPS id g3si1946547igr.2.2015.02.19.09.42.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 09:42:49 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) client-ip=2607:f8b0:4003:c01::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:4003:c01::22c as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22c.google.com with SMTP id nt9so17283073obb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 09:42:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=sL5/Iy3mg0exPNZKhON75b0f3XFJtavMD931Fe8wxpw=;
        b=E2AB7AaIA6Tl3cqXyMy9JsoxzgjG3kG6zWksIHQWJB6c+Jdt99IidUNifxBPHvERiu
         TTm/zRVVLchSMd7s40RlrqkIB31mSpDtKZSnsVGN3g837/BIIlmOsA4mXHt7rtYymakf
         lAeC6+beAK3Q4R3OzFPqpzAnOD2oHmHd/3ktiWehPjQ//uvXM+9d+WwvQLgM6zT7I2BP
         ccfDtXYW8erqf34qeFrrVZxQ3oh7XqLbmnMVRmc3kqFbFnaZ0CDwinmXUK0zh9zSM8qP
         LEUHFvwYijWnS+T6GER1IgNGlbFnEzItxP/pQxEHHEhxy1HtmpHz1OGGjW+jamF3cfPu
         WJsQ==
MIME-Version: 1.0
X-Received: by 10.182.81.98 with SMTP id z2mr3769642obx.35.1424367769153; Thu,
 19 Feb 2015 09:42:49 -0800 (PST)
Received: by 10.202.72.69 with HTTP; Thu, 19 Feb 2015 09:42:49 -0800 (PST)
In-Reply-To: <3900724.V4V6DqiR5q@avalon>
References: <1424367299-11953-1-git-send-email-navyasri.tech@gmail.com>
	<3900724.V4V6DqiR5q@avalon>
Date: Thu, 19 Feb 2015 23:12:49 +0530
Message-ID: <CAAJLE+0G8Fjj+PenQjyDh3CQWPJX5rApBDHDeOQiEpcnexP+oA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Convert simple_strtoul to kstrtoul
From: navya sri nizamkari <navyasri.tech@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>
Content-Type: text/plain; charset=UTF-8

I'll send in another patch. I'm not sure if I changed anything in the
printk error message.
Thanks,

Navya

On Thu, Feb 19, 2015 at 11:09 PM, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
> Hi Navya,
>
> Thank you for the patch.
>
> On Thursday 19 February 2015 23:04:59 Navya Sri Nizamkari wrote:
>> This patch fixes the checkpatch.pl warning:
>> simple_strtoul is obsolete, use kstrtoul instead.
>>
>> When the string is not converted(parsing error),the strings pointed to by ep
>> and parport[n] are the same.This parsing error results in kstrtoul
>> returning a non-zero value.
>>
>> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
>> ---
>> Changes in v2:
>>     -Added a descriptive commit message.
>>
>>  drivers/staging/media/parport/bw-qcam.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/media/parport/bw-qcam.c
>> b/drivers/staging/media/parport/bw-qcam.c index 67b9da1..1b81244 100644
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
>
> It's nice to fix checkpatch warnings, but not if you introduce new ones. If
> you run checkpatch on your patch you should get warnings regarding missing
> spaces after commas. As a general rule, you should always run checkpatch on
> all patches you want to submit for review before sending them to mailing
> lists.
>
>>                               printk(KERN_ERR
>>                                       "bw-qcam: bad port specifier \"%s\"\n",
>>                                       parport[n]);
>
> --
> Regards,
>
> Laurent Pinchart
>


X-GM-THRID: 6206160535830921216
X-Received: by 10.180.208.7 with SMTP id ma7mr3329306wic.5.1445173326631;
        Sun, 18 Oct 2015 06:02:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.11.232 with SMTP id el8ls108105wid.48.canary; Sun, 18 Oct
 2015 06:02:06 -0700 (PDT)
X-Received: by 10.180.105.98 with SMTP id gl2mr3344798wib.0.1445173326230;
        Sun, 18 Oct 2015 06:02:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id go9si281461wib.3.2015.10.18.06.02.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:02:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id fv8so44023731wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 06:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=e2V6fYO/rlslyOS6NZjG+D8gwmeSTgBLiofBYFf04jc=;
        b=CJvzGnilQ3S5tW3GMrcDN17/OdzMoenw9K5l1lifJvRJwN0A06PrzenYWfSImGot3t
         eyw8h+EwHwWsMq0OjfVw2+9bHg17IysOkCWjMvS33zx11K75pz9gFWmBtg0cJG1lfsrD
         H8svUkhcoj79naf8vPqod5vjlCp+s891vEUruPqVK5vRJoP7wndtNE4RQtiXJgpyTnUe
         zeu6yWdCyQeqxWouq9jGpNqj3uyKTBX9AczLlnxqNXdYzQ6EKImrwK6TQ8lvSuqweBGq
         rOkL4wMLH2hRKZN/FfBQTt9z2C7s43cwEdTAJTYa2pHPCpzNQa+LW1vmzhJ1/Q7tGiqE
         AZAg==
MIME-Version: 1.0
X-Received: by 10.180.198.233 with SMTP id jf9mr11169717wic.66.1445173326144;
 Sun, 18 Oct 2015 06:02:06 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 18 Oct 2015 06:02:06 -0700 (PDT)
In-Reply-To: <11015695.tbMmBsISvl@wuerfel>
References: <20151016083218.GA2815@ubuntu>
	<CAKHNQQGQTmd2-UHKSqyf_86D7Xo30HPm=y-VZM4AagrQ_u6zFA@mail.gmail.com>
	<CAKHNQQHa4qnxs-CnrdLhFFTSxRs=xjH2XQbNb-bKBymFJDzrpg@mail.gmail.com>
	<11015695.tbMmBsISvl@wuerfel>
Date: Sun, 18 Oct 2015 18:32:06 +0530
Message-ID: <CAKHNQQGC4LAGrQ2Z-A_TBVu9NhXE_uXpiQCBb-exKbuLMYHGMw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change
 the variable to be checked
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 6:24 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Sunday 18 October 2015 16:01:48 Shivani Bhardwaj wrote:
>> Hi Arnd! I still have a doubt.
>> if (rc)
>>      return rc;
>>
>> still doesn't make any sense, right?
>
> I don't understand what you mean.
>
>> On Fri, Oct 16, 2015 at 4:32 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
>> > On Fri, Oct 16, 2015 at 3:25 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> >>>
>> >>> This means it is never going to throw out of range error?
>> >>> If that is the case why do we take the variable val as unsigned long?
>> >>> It can be typecasted in the function kstrtoul. We can take it as
>> >>> simple int. And still
>> >>> if (rc)
>> >>>      return rc;
>> >>>
>> >>> statement is never going to be valid, is it?
>> >>
>> >> A used may still write "aardvark" into the file, which would return
>> >> -EINVAL, and writing 999999999999999999 would return -ERANGE.
>
> Anything wrong with my explanation here?
>
>         Arnd

According to your explanation, -EINVAL or -ERANGE if failure or 0 if success.
if(rc)     ->   if rc happens to be true which means >0.
This is never going to happen. Right?
So, this

if(rc)
     return rc;

stays useless. Doesn't it?
I'm just asking to avoid introducing bugs if I have misunderstood the thing.


X-GM-THRID: 3543146692608
X-Received: by 10.112.181.166 with SMTP id dx6mr1683254lbc.17.1425911324071;
        Mon, 09 Mar 2015 07:28:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.68 with SMTP id k4ls350137lam.53.gmail; Mon, 09 Mar
 2015 07:28:42 -0700 (PDT)
X-Received: by 10.112.77.101 with SMTP id r5mr4105469lbw.4.1425911322562;
        Mon, 09 Mar 2015 07:28:42 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id r6si838550wix.0.2015.03.09.07.28.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 07:28:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id ex7so20416436wid.1
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 07:28:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=GjOppVPCL0+79LWFvNFa0oKrXTPtwAhvq83GK6iHWuI=;
        b=HcjWubmFKEdEQCITd5sLc97ux/+NSNCoLQ6HxPX93+224RetBSGcLe3sIoL/PHi0DO
         II0HotDJaRl2PWdyquJ0DVSBmythLNY541bCyjgPxCalopcmVLSubFCLHr9TSThRbihM
         IYDTNcudiHR3bzvpAsufsAr3SflTdKeEbPRXG7prMi3OH1d9XlKmjoioXdbVXdBxl64D
         /boJOl9w+HIOXlhU7ZnXknM8v0BZp29qT5mUy1ej+l43fzXPxD9EjL0OV/K0PGSWsmyO
         50wqL+rV6SaIA7axLieZGX2oqzW73tipCet6Ds2VKe7e7Ck5WsX7zJtVcsIniefqqnDW
         KvAQ==
MIME-Version: 1.0
X-Received: by 10.194.134.68 with SMTP id pi4mr59083965wjb.101.1425911322413;
 Mon, 09 Mar 2015 07:28:42 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 9 Mar 2015 07:28:42 -0700 (PDT)
In-Reply-To: <20150309121443.GA6934@kroah.com>
References: <cover.1425714259.git.vthakkar1994@gmail.com>
	<b993ec823a6d73cc6ba50fc36cc9fd13e8b92ea9.1425714259.git.vthakkar1994@gmail.com>
	<20150309121443.GA6934@kroah.com>
Date: Mon, 9 Mar 2015 19:58:42 +0530
Message-ID: <CAK-LDbKPnPw5WTq9gOB-o+Arb=FJb6c+ZNNv1kHRue=E9Nup5A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8188eu: Eliminate
 use of _set_timer
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 9, 2015 at 5:44 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sat, Mar 07, 2015 at 01:21:37PM +0530, Vaishali Thakkar wrote:
>> This patch introduces the use of API function mod_timer
>> instead of driver specific function _set_timer as it is
>> a more efficient and standard way to update the expire
>> field of an active timer. Also, definition of function
>> _set_timer is removed as it is no longer needed after
>> this change.
>>
>> Here, these cases are handled using Coccinelle and
>> semantic patch used for this is as follows:
>>
>> @@ expression x; expression y;@@
>>
>> - _set_timer (&x, y);
>> + mod_timer (&x, jiffies + msecs_to_jiffies (y));
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>> v1 : Here, this patch has some line over 80 characters as
>>      limiting them to 80 characters does not make code look
>>      good and readable.
>> v2 : Change commit log
>>    - Redo the patch against staging-testing
>> v3 : No change but as patch is in series with another patch,
>>      sending this as a new version.
>
> You obviously didn't even test-build this patch, otherwise you wouldn't
> have submitted it :(

Oh...not again. :(

Ok. I guess something went wrong from my side and I am really very
sorry for that. It is definitely bad thing to break the build. But trust
me I buid-tested it. And my gcc is working good for all other drivers.

Let me tell you what I did. I am used to run this command for each
and every file before submitting a patch:

'make drivers/staging/rtl8188eu/core/rtw_cmd.o'

Now, for this particular driver [rtl8188eu], this command is not working.
It is showing me this :

./scripts/Makefile.build:44: drivers/staging/rtl8188eu/core/Makefile:
No such file or directory
make[1]: *** No rule to make target
`drivers/staging/rtl8188eu/core/Makefile'.  Stop.
make: *** [drivers/staging/rtl8188eu/core/rtw_cmd.o] Error 2

So, I run 'make drivers/staging/rtl8188eu/' and it is not showing me any error.
I once asked Arnd about it and he told me that may be it has
non-standard make-file.
May be here, its my mistake. I should have asked him the solution to
fix this issue.

Anyways, for now can you please tell me which building errors are shown by this
patch and what can be done to solve my make-file issue??

It would be great if you can help me with this.

Sorry again.


> Hint, _ALWAYS_ test build patches, to break the build is not allowed at
> all.
>
> thanks,
>
> greg k-h



-- 
Vaishali


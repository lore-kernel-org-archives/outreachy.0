X-GM-THRID: 6208399403783290880
X-Received: by 10.182.89.129 with SMTP id bo1mr12178904obb.4.1445515996281;
        Thu, 22 Oct 2015 05:13:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.172 with SMTP id 41ls1314845qgf.79.gmail; Thu, 22 Oct
 2015 05:13:15 -0700 (PDT)
X-Received: by 10.13.202.13 with SMTP id m13mr9547250ywd.57.1445515995602;
        Thu, 22 Oct 2015 05:13:15 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si1654965pbb.0.2015.10.22.05.13.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:13:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id z6so85633319pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=p1n+3LWLGCKR/NvaFmJOk9vYO0xBrXcJMfaMr2csw1I=;
        b=T13XMT5AXKgsokKu2LTvcSZ/Z7HIPiN64oDFrIlJmffy3dot5k2gX6iSrACE4+hfEN
         HO6z2hUnUwBIDycGTJ3OdXPxrCT0Q35r3JcyRbJ8ByKn6A3dKY/3eHELnjBxrcoQYmQ7
         9c2XrYvKcxfgdJOuphdHvQr2i9iXhWpIaROxt1ALvwU1AEyBoQe0U9ujcwU0yMRV4z2g
         oGPJ7vfWAdGeQaJevYJWkaDmWnME3rpt8VK7rrLm2KYxVJ1bhEvHAOv7s3LXxF+CUW+8
         1rjy8T+xwzOyTcvmW0n1hz8mF74n4m5XpNBDOJIEMmMCwi3OsPnWkT3o7x1ggMiF92J6
         CjwA==
X-Received: by 10.66.186.141 with SMTP id fk13mr17141680pac.7.1445515995470;
        Thu, 22 Oct 2015 05:13:15 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id bz2sm13578245pad.32.2015.10.22.05.13.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:13:14 -0700 (PDT)
Date: Thu, 22 Oct 2015 17:43:10 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: lustre: Remove unused
 functions
In-Reply-To: <alpine.DEB.2.10.1510221356250.2607@hadrien>
Message-ID: <alpine.DEB.2.11.1510221737540.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com> <5359017.vBRWqNddLo@wuerfel> <alpine.DEB.2.11.1510221514420.31987@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <3775464.sOJsegMime@wuerfel> <alpine.DEB.2.11.1510221655060.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
 <alpine.DEB.2.11.1510221717070.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <alpine.DEB.2.10.1510221356250.2607@hadrien>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Thu, 22 Oct 2015, Julia Lawall wrote:

> On Thu, 22 Oct 2015, Shraddha Barke wrote:
>
>>
>>
>> On Thu, 22 Oct 2015, Shraddha Barke wrote:
>>
>>>
>>>
>>> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
>>>
>>>> On Thursday 22 October 2015 15:16:39 Shraddha Barke wrote:
>>>>> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
>>>>>
>>>>>> On Thursday 22 October 2015 14:50:18 Shraddha Barke wrote:
>>>>>>> These patches remove the definitions of functions which are not
>>>>>>> used.
>>>>>>>
>>>>>>> Shraddha Barke (2):
>>>>>>>   Staging: lustre: ptlrpc: Remove unused functions
>>>>>>>   Staging: lustre: obdclass: Remove unused functions
>>>>>>>
>>>>>>>  .../lustre/lustre/obdclass/lprocfs_status.c        | 139
>>>>>>> ---------------------
>>>>>>>  .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    |  63 ----------
>>>>>>>  2 files changed, 202 deletions(-)
>>>>>>>
>>>>>>>
>>>>>>
>>>>>> How did you check that they are indeed unused? I suspect these two
>>>>>> patches
>>>>>> are wrong.
>>>>>
>>>>> I grepped for the uses of these functions. When I did make
>>>>> M=drivers/staging/lustre, I didn't get errors. What am I missing here?
>>>>
>>>> I see now that you did not remove the declarations from the header files.
>>>> Please remove those and try again. Alternatively, you should see link-time
>>>> errors when you try to do 'make' without the listing directory.
>>>
>>> Yes, you are right. This patchset is incorrect. However I still don't
>>> understand why I get these errors when it seems like these functions are not
>>> used anywhere. confused
>
> I didn't keep the previous messages, so I don't have the names of the
> functions handly, but one thing to look out for is that macros can be used
> to construct names with the ## operator.

Yes I think this is what happened here. The grep returns all possible 
uses of the function.

Another issue could be,
> depending on how you did the grep, that the function name is used as a
> variable, eg stored in some function pointer typed structure field, rather
> than being called directly.
>
> julia
>


X-GM-THRID: 6208399403783290880
X-Received: by 10.66.158.229 with SMTP id wx5mr12472396pab.3.1445514482957;
        Thu, 22 Oct 2015 04:48:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.136 with SMTP id m8ls1301417qge.72.gmail; Thu, 22 Oct
 2015 04:48:02 -0700 (PDT)
X-Received: by 10.13.228.133 with SMTP id n127mr11956714ywe.37.1445514482217;
        Thu, 22 Oct 2015 04:48:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si1638437pbb.2.2015.10.22.04.48.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 04:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id rc13so85068852pab.0
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 04:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:cc:subject:in-reply-to:message-id:references:user-agent
         :mime-version:content-type;
        bh=hN0/3E59P3Dxu2gGigcZ8xoIo07s/f/G4T+vIbWETUU=;
        b=msRrNKUqszvdcsijGR6H4pp/9ybRaVR0S0OtHa3QBkBqe7Zq28Rlvy3GKBOc/JVjZ1
         UdiseAPjal2q7IbLNhNoxEKsaR1rWzSWe6dbytEAIYi1xP7wYSYzx+yIqxgNWO+xjvAa
         wS3Lo095lg0CVkQ6a4+M+t5o/gbn3wiNK+UpVyenFD/mqQlBwhX0VgOlZk+yhfI7jkGM
         fGeZts2rqsXz/nrIAhEAoi54oRn5e8iSM8INZfVCfPxeiweUN8A28oufMZED6kLU/pWE
         gxuVkW+nYs8tYppginMKGxzFh2svS/DxQUWntJeW8TCxae0w07bqkkxQgt1Fn7rbBB5B
         YLGg==
X-Received: by 10.68.69.45 with SMTP id b13mr16930995pbu.67.1445514482066;
        Thu, 22 Oct 2015 04:48:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id zk3sm13645692pbb.41.2015.10.22.04.48.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 04:48:01 -0700 (PDT)
Date: Thu, 22 Oct 2015 17:17:46 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: lustre: Remove unused
 functions
In-Reply-To: <alpine.DEB.2.11.1510221655060.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
Message-ID: <alpine.DEB.2.11.1510221717070.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com> <5359017.vBRWqNddLo@wuerfel> <alpine.DEB.2.11.1510221514420.31987@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <3775464.sOJsegMime@wuerfel>
 <alpine.DEB.2.11.1510221655060.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Thu, 22 Oct 2015, Shraddha Barke wrote:

>
>
> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
>
>> On Thursday 22 October 2015 15:16:39 Shraddha Barke wrote:
>>> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
>>> 
>>>> On Thursday 22 October 2015 14:50:18 Shraddha Barke wrote:
>>>>> These patches remove the definitions of functions which are not used.
>>>>> 
>>>>> Shraddha Barke (2):
>>>>>   Staging: lustre: ptlrpc: Remove unused functions
>>>>>   Staging: lustre: obdclass: Remove unused functions
>>>>>
>>>>>  .../lustre/lustre/obdclass/lprocfs_status.c        | 139 
>>>>> ---------------------
>>>>>  .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    |  63 ----------
>>>>>  2 files changed, 202 deletions(-)
>>>>> 
>>>>> 
>>>> 
>>>> How did you check that they are indeed unused? I suspect these two 
>>>> patches
>>>> are wrong.
>>> 
>>> I grepped for the uses of these functions. When I did make
>>> M=drivers/staging/lustre, I didn't get errors. What am I missing here?
>> 
>> I see now that you did not remove the declarations from the header files.
>> Please remove those and try again. Alternatively, you should see link-time
>> errors when you try to do 'make' without the listing directory.
>
> Yes, you are right. This patchset is incorrect. However I still don't 
> understand why I get these errors when it seems like these functions are not 
> used anywhere. confused
>
> Thanks,
>
> Shraddha
>>
>> 	Arnd
>> 
>


X-GM-THRID: 6208399403783290880
X-Received: by 10.67.7.35 with SMTP id cz3mr12104183pad.40.1445516255158;
        Thu, 22 Oct 2015 05:17:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.131.196 with SMTP id oo4ls710432obb.53.gmail; Thu, 22 Oct
 2015 05:17:34 -0700 (PDT)
X-Received: by 10.182.52.226 with SMTP id w2mr12473310obo.40.1445516254751;
        Thu, 22 Oct 2015 05:17:34 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id sm2si305321pab.0.2015.10.22.05.17.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:17:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id fv9so89695786pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 05:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:cc:subject:in-reply-to:message-id:references:user-agent
         :mime-version:content-type;
        bh=ta2/Kam4UWUvbopvqpptG0vu1qUkI9Iyg82Iir0donI=;
        b=cCQtlngidPObD4vftuQsRRc93Ud1b/buBFRTOBAquUu8u+pytVMWk867kDjZWVyDhz
         QsLkV+qjS7xjzLXcPaL5TOjWY9FtR8IwZ+yLwJaujVQ8sLJyXkjuTRcV7Bepaw9iAXdz
         HLHCj2O6W6RVJqMz0kjGXJGvOAjOiYRuZQ1RHlrmM/Y6/IWKGroULvouhBbE0tRH8UxF
         39yoBko+ZM3BAudDVv9jw5cCL9KmQR3XkrF6L6+zTXQrNmwbINZEhyCS1dlxmB9Xk5hh
         WEDhXv9TfdTLQ8jdpjQ7Y2CzMccPjU8WI2J3d16oCGiL+lpjKhL9uX7ZkVV3S1zxcNij
         N9zA==
X-Received: by 10.66.102.38 with SMTP id fl6mr17258352pab.36.1445516254622;
        Thu, 22 Oct 2015 05:17:34 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id db8sm13808135pad.43.2015.10.22.05.17.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 05:17:34 -0700 (PDT)
Date: Thu, 22 Oct 2015 17:47:30 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: lustre: Remove unused
 functions
In-Reply-To: <alpine.DEB.2.11.1510221745390.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
Message-ID: <alpine.DEB.2.11.1510221747000.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445505620-10350-1-git-send-email-shraddha.6596@gmail.com> <3775464.sOJsegMime@wuerfel> <alpine.DEB.2.11.1510221655060.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V> <22058642.AcY4u3glHG@wuerfel>
 <alpine.DEB.2.11.1510221745390.12430@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Thu, 22 Oct 2015, Shraddha Barke wrote:

>
>
> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
>
>> On Thursday 22 October 2015 16:59:01 Shraddha Barke wrote:
>>> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
>>> 
>>>> On Thursday 22 October 2015 15:16:39 Shraddha Barke wrote:
>>>>> On Thu, 22 Oct 2015, Arnd Bergmann wrote:
>>>>> 
>>>>>> On Thursday 22 October 2015 14:50:18 Shraddha Barke wrote:
>>>>>>> These patches remove the definitions of functions which are not used.
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
>>>> Please remove those and try again. Alternatively, you should see 
>>>> link-time
>>>> errors when you try to do 'make' without the listing directory.
>>> 
>>> Yes, you are right. This patchset is incorrect. However I still don't
>>> understand why I get these errors when it seems like these
>>> functions are not used anywhere. confused
>> 
>> The problem here is that there are macros using string concatenation
>> to create references to these functions in
>> drivers/staging/lustre/lustre/include/lprocfs_status.h:
>> 
>> #define LPROC_SEQ_FOPS_WR_ONLY(name, type)                              \
>>        static ssize_t name##_##type##_write(struct file *file,         \
>>                        const char __user *buffer, size_t count,        \
>>                                                loff_t *off)            \
>>        {                                                               \
>>                return lprocfs_wr_##type(file, buffer, count, off);     \
>>        }                                                               \
>>        static int name##_##type##_open(struct inode *inode, struct file 
>> *file) \
>>        {                                                               \
>>                return single_open(file, NULL, inode->i_private);       \
>>        }                                                               \
>>        static struct file_operations name##_##type##_fops = {  \
>>                .open   = name##_##type##_open,                         \
>>                .write  = name##_##type##_write,                        \
>>                .release = lprocfs_single_release,                      \
>>        }
>> 
>> I made the same mistake when I removed a lot of unused code from this
>> file system, but I caught it during the compile-testing.
>> 
>> I usually try to avoid macros like this in my own code, or at least make
>> references to other identifiers explicit.
>
> Thanks! It is much clear to me now :)
> It might be a good idea to
>> try replacing the macros with calls to the normal APIs that we have
>> in include/linux/debugfs.h for the same purpose, but I'm not sure if
>> that is an overall win.
>
> I'll try to do this.
>
> Shraddha
>>
>> 	Arnd
>> 
>


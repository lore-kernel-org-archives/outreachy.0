X-GM-THRID: 6254188564975714304
X-Received: by 10.31.152.208 with SMTP id a199mr8260798vke.4.1457722182454;
        Fri, 11 Mar 2016 10:49:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.40 with SMTP id 37ls2382672qga.14.gmail; Fri, 11 Mar
 2016 10:49:42 -0800 (PST)
X-Received: by 10.140.240.11 with SMTP id l11mr8334747qhc.11.1457722182060;
        Fri, 11 Mar 2016 10:49:42 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x241.google.com (mail-qg0-x241.google.com. [2607:f8b0:400d:c04::241])
        by gmr-mx.google.com with ESMTPS id y131si646926ywc.0.2016.03.11.10.49.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:49:42 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) client-ip=2607:f8b0:400d:c04::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x241.google.com with SMTP id y89so7850541qge.0
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 10:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=ns+4leCtG9bnPvU/ZGcZST2i1RTEMI1NioKqTKIhUmU=;
        b=R6mhkyHmxmauusOMeevCGVWZp7Jy+LmsKMYSrKHjKkIpY097CqiKsmqenVsOwCE5qj
         zRFH259pRGe2FsLIm52RkdrOZGxo4rOtwbMfW2BNpQTz+MzqhZZNnBzpWUQsBgGbjacX
         +giHaBu5nIwQygVMXD+eLdFZDisD6jaJlJgMT/GwqnIxNpJPkJnQEF5uIXZxmeIdDAE+
         n9XRagb3DjoCv/eBerUVocuJJxfL/ZFp2grNWOKic/VmrWanrCXNhuBrTzYzVEswkJp6
         TLRCz1V1izuhw1gq4OjHqVoPLI/gvgb8+bdbviiNKUpXf2mINbFPYy8PV4vFnpLhl6pj
         /Rgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=ns+4leCtG9bnPvU/ZGcZST2i1RTEMI1NioKqTKIhUmU=;
        b=MrkC09cMyJQWZkp2ZfytXHnQ3Xi7t8k9y0P/9041dxlT/7V0M2OTYQDuxZtFnO06hQ
         pAFE42VNBdUA/uAbdUr1HRLfWzTc1jpfpkY7aiAmWj5PlAMdVIlTYCGGH6KYL8nVVJvr
         T5xn7y8wHqJ6afKcQRCmTCvnjidg3L0i2TrL/1sCpAyYoITkqOMdDg5qgBqd6wXM9Hd7
         5OqrNRJKb+j1LB9GZE6clWxUpbYL3vTH0OOy6wBL1m8wo9Ekhgbhz6Mf72m5vNjCzx9P
         f3NuetkzXgOimYWDwEi9Zf3mWsZ/Wqus0FpMThHwJRSUM2ujowdogl3mnncKZsFhAjQy
         pgqQ==
X-Gm-Message-State: AD7BkJKPUWDD8Kd10YxNFdrGN9A8VD9Uxl/84i6KUnn2M7VomC9wguDbIWzO3K4NSE2I3tiyQM+6ECr6cEBmnw==
MIME-Version: 1.0
X-Received: by 10.140.167.133 with SMTP id n127mr14026967qhn.73.1457722181803;
 Fri, 11 Mar 2016 10:49:41 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Fri, 11 Mar 2016 10:49:41 -0800 (PST)
In-Reply-To: <20160311184316.GA11794@kroah.com>
References: <20160223210002.GA26262@amitoj-Inspiron-3542>
	<20160311184316.GA11794@kroah.com>
Date: Sat, 12 Mar 2016 00:19:41 +0530
Message-ID: <CA+5yK5FcnFxguxxiZtoF5Wr9LjbXJvxC-773EbGepoGOEevmGg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rts5208: Replace
 pci_enable_device with pcim_enable_device
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 12, 2016 at 12:13 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
>> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
>> index 5dfcdfb..7882193 100644
>> --- a/drivers/staging/rts5208/rtsx.c
>> +++ b/drivers/staging/rts5208/rtsx.c
>> @@ -329,7 +329,6 @@ static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
>>
>>       pci_save_state(pci);
>>       pci_enable_wake(pci, pci_choose_state(pci, state), 1);
>> -     pci_disable_device(pci);
>>       pci_set_power_state(pci, pci_choose_state(pci, state));
>>
>>       /* unlock the device pointers */
>
> Are you sure this works?  Does the PCI core now control the
> disable/enable of the device in the suspend/resume code paths just
> because pcim_enable_device() is called?  I can't see that in the PCI
> core code, but I might be missing something...
>
> thanks,
>
> greg k-h

I checked previous commits related to pcim_enable_device, no one is
modifying the suspend and resume code paths so I think I am wrong
here. Sorry about that. I should have checked this beforehand.

I'll send v3 modifying only probe/remove paths for pcim_enable_device.

Amitoj


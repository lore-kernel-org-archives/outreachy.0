X-GM-THRID: 6336586801480728576
X-Received: by 10.157.51.10 with SMTP id f10mr397228otc.84.1490257727342;
        Thu, 23 Mar 2017 01:28:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.48.22 with SMTP id d22ls4290354otc.43.gmail; Thu, 23 Mar
 2017 01:28:46 -0700 (PDT)
X-Received: by 10.237.37.80 with SMTP id w16mr354093qtc.4.1490257726823;
        Thu, 23 Mar 2017 01:28:46 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x243.google.com (mail-yw0-x243.google.com. [2607:f8b0:4002:c05::243])
        by gmr-mx.google.com with ESMTPS id u134si546540ywg.2.2017.03.23.01.28.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 01:28:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) client-ip=2607:f8b0:4002:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x243.google.com with SMTP id d191so4996077ywe.1
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Mar 2017 01:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=HAgsL0+xWzpzng5cr0iIGyR9lPp4//poss6tqD+ih1s=;
        b=Bu+tz81V9YAygo1ucGi0KWyWC6YGhpj/21oV1lZbaTtfuUYZAb2m4Tg5D0i1ulDmHR
         TtLCBcgMXmS2ywRUCdTCZOUPpyWPH2PxTm5ifcjR6/i1Oh+/pgyp3P6gp+hv+y3EXwkx
         yGfZ9S+OrmvRWO2m/qfLzGKo0O7pvcypNPnm2ewguq1qVq0cUVvsJlnGPBPUr07/l32V
         5xNgKSc4lInLIRV8Cx7WRB5VPderI9ClZSh//NqgrpbKXSjJb1kC2/mUwoiU/xQSUr5B
         2uNtvdo5BifV0T35QIH9+wdTwUp6VIQX84SrI5/m6FvQ+HkM0UQxOivjj7YltZekhnJV
         I0sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=HAgsL0+xWzpzng5cr0iIGyR9lPp4//poss6tqD+ih1s=;
        b=QhpFaFrf3Ui7Ahi3cQq2dt2yIiI+TLvu331jpffBU/NZVV7EWn+Tb4iFiSii/mp5J8
         yruRWVlY2ZKpf5j9OEndXbRbaa7VnehqyJyqwZKEiryTL6tvbs0BDvgWqJOfppK4ZTmK
         7Sh0tBrOQCaumw7IUYLVXTuGjuUVjICxqIOEWnrOAm/giIj2sziSG+OdUTAJKL8eCCIf
         vUV7PQt8u9BnrgIkyMFsT1hYBOMq32Gkfd6fGZEkE3QdR6TndPeDt/VE8kcA3W5GRPyv
         tNJMkadN/sWA/j8CCAimdEy/ARYaCD4V8j1bajI0yMFaZZd5jNdZguxbo7rsKOfnNPug
         jyIA==
X-Gm-Message-State: AFeK/H10Rm5sCc6bwgWqDEt27PtHKIP5YBg36vfdNiYoU2eVdzP1E+xzE4Efn6wP1SK8bpOiTpreqHMLpJMc9w==
X-Received: by 10.129.123.213 with SMTP id w204mr811496ywc.267.1490257726470;
 Thu, 23 Mar 2017 01:28:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Thu, 23 Mar 2017 01:28:06 -0700 (PDT)
In-Reply-To: <CAEnQRZAqrXG5HRqMROPa4P4sWXMK=iF=6c4=Dr+H=Unn+BWDaQ@mail.gmail.com>
References: <20161001195259.GB12284@d830.WORKGROUP> <CAKG5xWhDNtKrZuAKFjBPdj+VV=bPSZmCNM2_ySM0Nr_YHiiDbA@mail.gmail.com>
 <CAEnQRZBHyH6WUgLFiJVH1aFjqOZCP+HgEzrrdtAi0r-OGHScpw@mail.gmail.com>
 <CAKG5xWg2hiraHxsSF0tDAFOcRXwqW97mQknrnP69Jbe4=MLQeA@mail.gmail.com> <CAEnQRZAqrXG5HRqMROPa4P4sWXMK=iF=6c4=Dr+H=Unn+BWDaQ@mail.gmail.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Thu, 23 Mar 2017 13:58:06 +0530
Message-ID: <CAKG5xWj4fqCZQPB8CnaXhvU1Lz_opMt0mjnd6YPMSFKMp1SSjA@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 3, 2016 at 11:32 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Mon, Oct 3, 2016 at 8:48 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
>> On Mon, Oct 3, 2016 at 10:53 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
>>> On Mon, Oct 3, 2016 at 8:14 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
>>>> Hello,
>>>> I encountered 'Invalid format error' while inserting the iio_dummy_evgen module.
>>>>
>>>> On Sun, Oct 2, 2016 at 1:22 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>>>>> If you have questions about building the modules in IIO Experimenting
>>>>> Task #1, please post here.
>>>>>
>>>>
>>>> I ran:
>>>> sudo insmod drivers/iio/dummy/iio_dummy_evgen.ko
>>>> I got:
>>>> insmod: ERROR: could not insert module
>>>> drivers/iio/dummy/iio_dummy_evgen.ko: Invalid module format
>>>>
>>>> dmesg output after insmod:
>>>> [36856.453312] iio_dummy_evgen: no symbol version for module_layout
>>>>
>>>> What I learned so far:
>>>> The error arises because the kernel booted in and the one the driver
>>>> belongs to are different.
>>>> A post on Google says this is because the vermagic strings don't match.
>>>> ( 'modinfo' gives different vermagic strings for drivers in different kernels)
>>>> So I tried copying my running kernel's Makefile into the driver's
>>>> Makefile. But the error persists.
>>>>
>>>> I also tried:
>>>> export KBUILD_SRC=<location of the running kernel's source>
>>>> But that didn't help either.
>>>>
>>>> Any ideas?
>>>
>>>
>>> Well, are you using a virtual machine? Can you update your kernel?
>> No I'm not using a virtual machine. I'll try updating my kernel!
>> Do you suggest that I should boot into the kernel that
>> iio_dummy_evgen.ko belongs to?
>
> Yes. Another option would be to compile your module out of tree
> using the kernel headears of your running kernel.
>
I tried booting into the same kernel as the driver. On insmod I get:
Invalid module format
The dmesg output is:

[  580.388196] iio_dummy_evgen: version magic '4.11.0-rc3 SMP
mod_unload modversions ' should be '4.11.0-rc3 SMP mod_unload '
[  591.775123] iio_dummy: version magic '4.11.0-rc3 SMP mod_unload
modversions ' should be '4.11.0-rc3 SMP mod_unload '

Any suggestions?

thanks,
sayli

> To do that, you should check which version is your running kernel
> with uname -a, then find the correct headers under /boot (most likely).
>
> Then use Makefile and Kbuild similar with these ones:
>
> ocw.cs.pub.ro/courses/_export/code/so2/laboratoare/lab02?codeblock=3
> ocw.cs.pub.ro/courses/_export/code/so2/laboratoare/lab02?codeblock=2
>
> thanks,
> Daniel.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAEnQRZAqrXG5HRqMROPa4P4sWXMK%3DiF%3D6c4%3DDr%2BH%3DUnn%2BBWDaQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.


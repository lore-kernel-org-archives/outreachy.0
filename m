X-GM-THRID: 6336586801480728576
X-Received: by 10.28.1.129 with SMTP id 123mr623295wmb.7.1475517737360;
        Mon, 03 Oct 2016 11:02:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.141 with SMTP id 135ls886050ljj.8.gmail; Mon, 03 Oct 2016
 11:02:16 -0700 (PDT)
X-Received: by 10.25.196.207 with SMTP id u198mr954108lff.27.1475517736575;
        Mon, 03 Oct 2016 11:02:16 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x244.google.com (mail-lf0-x244.google.com. [2a00:1450:4010:c07::244])
        by gmr-mx.google.com with ESMTPS id s6si1182250wmb.1.2016.10.03.11.02.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 11:02:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) client-ip=2a00:1450:4010:c07::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x244.google.com with SMTP id l131so9231469lfl.0
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 11:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=KdKk9p/2CfFtN5jMWECFNpJjmvD7pfLghDwfsRsICoQ=;
        b=GJgpWypisflhY1MBqWIDc9wMh58+FLBz7rdAtX2A+JLF2NOJ4DvUq3rq1QoEyu/3Pu
         vf3gskJ8lWoX7gZsa2uUGB0tJzCpMuGBhMc6/lv6MKS2KEvUzvN6e6QHcpn/909RwuA5
         zZNIuZ/ZRxZVx2fvF3hrlxROH9Cpwfw8/Q+k77Gqhm+gAAGk3FHam+CSo+tdQcS55uwT
         XlYNgZ4vm+ZcHKKOSu8wbIA/tbc6k78c0h4oUzBp7XxcDXYe68P1Sql0rpVFSCFth8hF
         X1jFcXMS80mODg8CjV9BFKDzmtKFcVp/5Hg5Gy5fuS+BE2yTJm4gIhXpXWbHeB/U7ZQb
         a/bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=KdKk9p/2CfFtN5jMWECFNpJjmvD7pfLghDwfsRsICoQ=;
        b=HevD2e/bMN22ge3v0kZwGn9m30EhpQ1isEwECvu5WWYqgfP38AlpASP5B1+Omy9WGp
         8FHoFAuJnkEu9gMPUeMXApx/sAuXkbhwuM7B26bLvNhdHK0chjBu1ViguMXGT6e1A+nv
         JAVcoVoxYHz2CWgclC1R1N257iUPkVwF2csgPSLTn0q6jtJBpuzfxdbROodaOwtEiNHF
         MIQS4aRyqROIBNVil6Q6X/x32XluLJTFhLhIIqRnl9Ci7ElUf5/CAcOKEtOuTVZ6efoJ
         ehQzruaWkVZjEgyUQxkxt0EPYGhSIw9Z40NcgOM+nbulayw5sDZs/IeOwtw5xXcfFtnc
         aZzw==
X-Gm-Message-State: AA6/9Rn3cxnJ+emGw1HWBCgmheJSLCnR8eWxQEAQwmD0GshZa6X8DnastKatJZh4taW5CP/tnS9u6l3Ch6lrfQ==
X-Received: by 10.46.1.42 with SMTP id 42mr7581975ljb.51.1475517736257; Mon,
 03 Oct 2016 11:02:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Mon, 3 Oct 2016 11:02:15 -0700 (PDT)
In-Reply-To: <CAKG5xWg2hiraHxsSF0tDAFOcRXwqW97mQknrnP69Jbe4=MLQeA@mail.gmail.com>
References: <20161001195259.GB12284@d830.WORKGROUP> <CAKG5xWhDNtKrZuAKFjBPdj+VV=bPSZmCNM2_ySM0Nr_YHiiDbA@mail.gmail.com>
 <CAEnQRZBHyH6WUgLFiJVH1aFjqOZCP+HgEzrrdtAi0r-OGHScpw@mail.gmail.com> <CAKG5xWg2hiraHxsSF0tDAFOcRXwqW97mQknrnP69Jbe4=MLQeA@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 3 Oct 2016 21:02:15 +0300
Message-ID: <CAEnQRZAqrXG5HRqMROPa4P4sWXMK=iF=6c4=Dr+H=Unn+BWDaQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: sayli karnik <karniksayli1995@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 3, 2016 at 8:48 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
> On Mon, Oct 3, 2016 at 10:53 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
>> On Mon, Oct 3, 2016 at 8:14 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
>>> Hello,
>>> I encountered 'Invalid format error' while inserting the iio_dummy_evgen module.
>>>
>>> On Sun, Oct 2, 2016 at 1:22 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>>>> If you have questions about building the modules in IIO Experimenting
>>>> Task #1, please post here.
>>>>
>>>
>>> I ran:
>>> sudo insmod drivers/iio/dummy/iio_dummy_evgen.ko
>>> I got:
>>> insmod: ERROR: could not insert module
>>> drivers/iio/dummy/iio_dummy_evgen.ko: Invalid module format
>>>
>>> dmesg output after insmod:
>>> [36856.453312] iio_dummy_evgen: no symbol version for module_layout
>>>
>>> What I learned so far:
>>> The error arises because the kernel booted in and the one the driver
>>> belongs to are different.
>>> A post on Google says this is because the vermagic strings don't match.
>>> ( 'modinfo' gives different vermagic strings for drivers in different kernels)
>>> So I tried copying my running kernel's Makefile into the driver's
>>> Makefile. But the error persists.
>>>
>>> I also tried:
>>> export KBUILD_SRC=<location of the running kernel's source>
>>> But that didn't help either.
>>>
>>> Any ideas?
>>
>>
>> Well, are you using a virtual machine? Can you update your kernel?
> No I'm not using a virtual machine. I'll try updating my kernel!
> Do you suggest that I should boot into the kernel that
> iio_dummy_evgen.ko belongs to?

Yes. Another option would be to compile your module out of tree
using the kernel headears of your running kernel.

To do that, you should check which version is your running kernel
with uname -a, then find the correct headers under /boot (most likely).

Then use Makefile and Kbuild similar with these ones:

ocw.cs.pub.ro/courses/_export/code/so2/laboratoare/lab02?codeblock=3
ocw.cs.pub.ro/courses/_export/code/so2/laboratoare/lab02?codeblock=2

thanks,
Daniel.


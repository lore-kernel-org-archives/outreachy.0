X-GM-THRID: 6336586801480728576
X-Received: by 10.157.13.112 with SMTP id 103mr6082410oti.51.1475516961818;
        Mon, 03 Oct 2016 10:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.23.236 with SMTP id j99ls10500439otj.7.gmail; Mon, 03 Oct
 2016 10:49:21 -0700 (PDT)
X-Received: by 10.157.2.38 with SMTP id 35mr3580690otb.37.1475516961211;
        Mon, 03 Oct 2016 10:49:21 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id u139si2350221ywe.5.2016.10.03.10.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 10:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id g192so6764043ywh.0
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 10:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=iK4foqC8KroHwPlVJDLuE/H7gf3Wm3gvEcSFluIHJSE=;
        b=o0qARwexhDR0XogrGoFZkJH0qMhA7IpTrSqOyKk/p6NhukYi2+qDcKeJqvmOP3+wLT
         YQMw95i6SD0+GJNUHl0eLU5FKYN+Hiqwa/2n8EyCLHD1IhYyHxYYevqGIYESJGUH6D6G
         xFsNC3fORsPWT91F70iGCEBbl7UXcNoth845HbjTfFEUJgLC8QxbL0Zk7cZ8rbnqqHpg
         RMKqV1MEmvh9Npe0w+IwAkoPmSKi4RyXcMS7LXWEZQ6T+O7lcCWgmM3//MY/VbVmULZe
         QBWQDpYwtIBz26lDouJSbun9YP/OTw0ADtCxx7D/kO2ySSG4IDEIqSrlc4Z5xNIlD3zK
         6+cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=iK4foqC8KroHwPlVJDLuE/H7gf3Wm3gvEcSFluIHJSE=;
        b=WKnA8BRXnQFS2xU35XlaFfI5OPi9bDYlXD9b74wT09G/ISxiEbuUOlxGQQihcu1PxL
         R2Vf211ZufGYEyuSUlxu3nPewR4Iui6Zm5bjvv7MRjxgzQoTAAnROmk/N14LvRscusVH
         wErS+2XrKsyqSp1Vlsl8wjUc4AI91Ipdr019bxbWkDEgDs9D2uLkxop7Fzq6UldWzc4H
         Nu4tVUwwB6cxuEZCWJS6Pma1lfHwk327B6ruzewENowFizDZImVrdmuEpByeGig2fLbC
         anJ03ZNGRPjTv+WEFjzSYd8X6/PmFBfByENHyq1sQZe6AHwbgtq6FX0ZUKO6Lx23wPKq
         ou2g==
X-Gm-Message-State: AA6/9RmsVB+4RuZx7l6RM0O703vtEcT7ML0jbFtrZCDVPrvCj98ng54fwnaatDsQNHURNgr/c4TE47MSbxf7nw==
X-Received: by 10.129.117.86 with SMTP id q83mr16862972ywc.75.1475516960875;
 Mon, 03 Oct 2016 10:49:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.21.4 with HTTP; Mon, 3 Oct 2016 10:48:40 -0700 (PDT)
In-Reply-To: <CAEnQRZBHyH6WUgLFiJVH1aFjqOZCP+HgEzrrdtAi0r-OGHScpw@mail.gmail.com>
References: <20161001195259.GB12284@d830.WORKGROUP> <CAKG5xWhDNtKrZuAKFjBPdj+VV=bPSZmCNM2_ySM0Nr_YHiiDbA@mail.gmail.com>
 <CAEnQRZBHyH6WUgLFiJVH1aFjqOZCP+HgEzrrdtAi0r-OGHScpw@mail.gmail.com>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Mon, 3 Oct 2016 23:18:40 +0530
Message-ID: <CAKG5xWg2hiraHxsSF0tDAFOcRXwqW97mQknrnP69Jbe4=MLQeA@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 3, 2016 at 10:53 PM, Daniel Baluta <daniel.baluta@gmail.com> wrote:
> On Mon, Oct 3, 2016 at 8:14 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
>> Hello,
>> I encountered 'Invalid format error' while inserting the iio_dummy_evgen module.
>>
>> On Sun, Oct 2, 2016 at 1:22 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>>> If you have questions about building the modules in IIO Experimenting
>>> Task #1, please post here.
>>>
>>
>> I ran:
>> sudo insmod drivers/iio/dummy/iio_dummy_evgen.ko
>> I got:
>> insmod: ERROR: could not insert module
>> drivers/iio/dummy/iio_dummy_evgen.ko: Invalid module format
>>
>> dmesg output after insmod:
>> [36856.453312] iio_dummy_evgen: no symbol version for module_layout
>>
>> What I learned so far:
>> The error arises because the kernel booted in and the one the driver
>> belongs to are different.
>> A post on Google says this is because the vermagic strings don't match.
>> ( 'modinfo' gives different vermagic strings for drivers in different kernels)
>> So I tried copying my running kernel's Makefile into the driver's
>> Makefile. But the error persists.
>>
>> I also tried:
>> export KBUILD_SRC=<location of the running kernel's source>
>> But that didn't help either.
>>
>> Any ideas?
>
>
> Well, are you using a virtual machine? Can you update your kernel?
No I'm not using a virtual machine. I'll try updating my kernel!
Do you suggest that I should boot into the kernel that
iio_dummy_evgen.ko belongs to?

thanks,
sayli


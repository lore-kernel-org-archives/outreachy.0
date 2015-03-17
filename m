X-GM-THRID: 8816133406720
X-Gmail-Labels: Topic type: DISCUSSION
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dcb10757ef2bddd8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.4.100 with SMTP id 64mr71584971yhi.43.1426610615385;
        Tue, 17 Mar 2015 09:43:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.203 with SMTP id u69ls206713qge.13.gmail; Tue, 17 Mar
 2015 09:43:35 -0700 (PDT)
X-Received: by 10.140.152.136 with SMTP id 130mr29627620qhy.3.1426610615228;
        Tue, 17 Mar 2015 09:43:35 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x232.google.com (mail-qc0-x232.google.com. [2607:f8b0:400d:c01::232])
        by gmr-mx.google.com with ESMTPS id kt5si1717973qcb.3.2015.03.17.09.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::232 as permitted sender) client-ip=2607:f8b0:400d:c01::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::232 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x232.google.com with SMTP id kw5so13709485qcb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 09:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=mt0yTBMq/VemChfdW3nzeXhKTrAD1uU8r019Oc8d+Dg=;
        b=xz4v0q4GwOdT88GWsZhFJtzrQIcCOfnYEn+GyMWdp0ApqkWKH91kqIxFK69FTKWBjY
         azKbL14wWS7g5HmOv3CfKuAedQI1+spHni6cVMQ79KZXoctv8+Sl0yLrh9H/1MWIcBFx
         2qXhEp7+1DiV9xjkGWBeRneiQQbh6nRxZbpbNIjLHCk7T1bA3mQMY2cUb0Q33uzYQ2An
         XAX1fhB6lLYsfMUrv4v30Cy45E03ustLTu01fv8GUXodibRCDx6c38Z8b9/etjDtwcku
         UxShxlEa8LxSVfJ7Pi5YwM71/oXeN4806Zl0z2aB1/xOrg+bp18mjDQY+B754KIz5v3q
         jASQ==
X-Received: by 10.140.236.73 with SMTP id h70mr83728354qhc.41.1426610615140;
        Tue, 17 Mar 2015 09:43:35 -0700 (PDT)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id t102sm9974922qgt.45.2015.03.17.09.43.34
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:43:34 -0700 (PDT)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <550859B5.70807@gmail.com>
Date: Tue, 17 Mar 2015 12:43:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: =?UTF-8?B?S3NlbmlqYSBTdGFub2pldmnEhw==?=
 <ksenija.stanojevic@gmail.com>, Ioana Ciornei <ciorneiioana@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Compiling a specific driver
References: <8570c5e2-98ae-4a1a-8024-83b60ad55ea4@googlegroups.com>	<550843A4.5050103@gmail.com>	<CAHWJYFn2NXmW6GkE4XzDpCyF_YU3jy0m22beZcHiN44QMEPzaA@mail.gmail.com> <CAL7P5jK_9A4zR=fig8KcUrw3yCHOL7N5GOs-nUfF-wf-B2=Cuw@mail.gmail.com>
In-Reply-To: <CAL7P5jK_9A4zR=fig8KcUrw3yCHOL7N5GOs-nUfF-wf-B2=Cuw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 03/17/15 12:15, Ksenija Stanojević wrote:
> On Tue, Mar 17, 2015 at 5:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
>> On Tue, Mar 17, 2015 at 5:09 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>>>
>>> On 03/17/15 09:53, Ioana Ciornei wrote:
>>>> I was wondering if anyone could explain the steps to be followed in order
>>>> to make sure the driver I am working on is compiled
>>>> when running 'make -j5'.
>>>>
>>>> So far, I did the steps explained at [1], under the 'Recompiling the
>>>> driver' section, but when selecting 'Staging drivers' the driver list is
>>>> empty.
>>>
>>> If you are working on a specific driver, you can type something like this:
>>>
>>> make drivers/staging/rtl8723au/r8723au.ko
>>>
>>> Cheers,
>>> Jes
>>>
>>>
>>
>> I run the following command as you suggested:
>>       make drivers/staging/wlan-ng/wlan-ng.ko
>> but I get the output:
>>      CHK     include/config/kernel.release
>>      CHK     include/generated/uapi/linux/version.h
>>      CHK     include/generated/utsrelease.h
>>      CALL    scripts/checksyscalls.sh
>>      make[1]: *** No rule to make target
>> `drivers/staging/wlan-ng/wlan-ng.o'.  Stop.
>>      make: *** [drivers/staging/wlan-ng/wlan-ng.ko] Error 2
> 
> try /drivers/staging/wlan-ng/wlan-ng.o

[jes@ultrasam jes.git]$ cat drivers/staging/wlan-ng/Makefile
obj-$(CONFIG_PRISM2_USB) += prism2_usb.o

prism2_usb-y := prism2usb.o \
		p80211conv.o \
		p80211req.o \
		p80211wep.o \
		p80211netdev.o

There is no wlan-ng.o object, try 'prism2_usb.ko'

Cheers,
Jes

> Ksenija
> 
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHWJYFn2NXmW6GkE4XzDpCyF_YU3jy0m22beZcHiN44QMEPzaA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.



X-GM-THRID: 1123382460416
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f5f770e6dd3ab2f2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.174.36 with SMTP id bp4mr1065848lbc.15.1424421501766;
        Fri, 20 Feb 2015 00:38:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.232 with SMTP id uh8ls249267lac.82.gmail; Fri, 20 Feb
 2015 00:38:21 -0800 (PST)
X-Received: by 10.112.99.37 with SMTP id en5mr1071038lbb.17.1424421501282;
        Fri, 20 Feb 2015 00:38:21 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id ew5si59277wid.1.2015.02.20.00.38.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 00:38:21 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id bs8so1313784wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 00:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=erUDRZMg8a8FTa4t8y5Y1rKTowxvv6nSKj0c1c2hgY0=;
        b=LQM2Wm9jWmQQHPYOMh0yUY03NhGWsqSBrqzL6Vic0Q3yMAoKevOJ2KAULRYs4L/vM6
         d4OjNdnqlTtuDeqipPsSS1Fd8vTakpwYfmwQQkmbVkSjKbMa99Gvs1EzG/lE2ayMVSSI
         YrJYHJcOObGV+DBuozHbu6B7n5nmJiFDFdS8AYOqV1e28Rxq1aVpkQlrawMsHqtMiNkf
         ZjkWNTsSoF7+b91PzOnLGrZuz+3aC4xrDhUqaq10dHMx7nphRTFHdAtIRhic/p3+sLSe
         zWgj+shyAVqKPCk6ng8Ff5x+A3tsZIkMEYTDDqSo4lYS5JgZM2hCUiW6QWU9pHBqlZK+
         jbOw==
MIME-Version: 1.0
X-Received: by 10.180.85.70 with SMTP id f6mr17280793wiz.22.1424421501179;
 Fri, 20 Feb 2015 00:38:21 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Fri, 20 Feb 2015 00:38:21 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502200904550.2159@localhost6.localdomain6>
References: <20150220072850.GA8648@vaishali-Ideapad-Z570>
	<alpine.DEB.2.02.1502200851350.2045@localhost6.localdomain6>
	<CAK-LDbLHqULUx--_fs8oxkTkH1xcFnsApzKVyWiUkD794w5-aQ@mail.gmail.com>
	<alpine.DEB.2.02.1502200904550.2159@localhost6.localdomain6>
Date: Fri, 20 Feb 2015 14:08:21 +0530
Message-ID: <CAK-LDbKdmuTca82bZh7NMtSWGykFFatK8161eLjW5fE=pb6J1g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Remove unused
 struct ndis_802_11_key
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 20, 2015 at 1:36 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 20 Feb 2015, Vaishali Thakkar wrote:
>
>> On Fri, Feb 20, 2015 at 1:21 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Fri, 20 Feb 2015, Vaishali Thakkar wrote:
>> >
>> >> This patch removes struct ndis_802_11_key as it is defined
>> >> in a header file but never used.
>> >
>> > How did you find it?
>>
>> While looking at struct definitions in file wlan_bssdef.h, I accidentally
>> came across this structure and when I used git grep to see the use of
>> it, I didn't find any files using it. That's why I just sent the patch.
>
> OK, it seems at least possible that there are more.  Coccinelle could
> probably be used for this, or maybe just a script with grep would suffice.
> We could discuss later, if you want to look for more of them.

Yes. There is possibility of finding such cases. I have also seen some patches
in network drivers where there are some write-only or write-once
structs/variables
which are removed by developers. May be we can handle some of such cases using
Coccinelle too. I would definitely like to  discuss such things.

> julia



-- 
Vaishali


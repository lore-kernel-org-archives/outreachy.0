X-GM-THRID: 9871294464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,64a1fb55b3e53cb0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.202.207 with SMTP id d55mr10204065yho.4.1423850663948;
        Fri, 13 Feb 2015 10:04:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.221.169 with SMTP id qf9ls594743obc.55.gmail; Fri, 13 Feb
 2015 10:04:23 -0800 (PST)
X-Received: by 10.182.79.168 with SMTP id k8mr10401662obx.49.1423850663715;
        Fri, 13 Feb 2015 10:04:23 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22e.google.com (mail-qa0-x22e.google.com. [2607:f8b0:400d:c00::22e])
        by gmr-mx.google.com with ESMTPS id ba9si1547340qcb.0.2015.02.13.10.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2015 10:04:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22e as permitted sender) client-ip=2607:f8b0:400d:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22e as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x22e.google.com with SMTP id n4so13650328qaq.5
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Feb 2015 10:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=Xz/bjtSfGB6ok4LwmJoByF/ffGDuWxojhCjgKMtQKPo=;
        b=YOcd4e4fOjPAiaIeEaFwO4bU750UugOwMjeKgfkS0CIyJNoCBEVOcdciuu8z8SrcHI
         llwmOuEWLPC9iPyOua+KVxYLrJb6EO4A3fpyXKJxtSxbWUI2v91y5gnV25QhboLliTCP
         qHOWy/qEAAgr53PzHjNBAOeAxzBbA7buwCh8FCwKQpzlZoX/cU1VDZVcz/rj3miN07JD
         rs7IQUNOr/5YASWAI7y5mLGOQI1Lt8yQ6H5dyRajjVSlWgYfqgPWK5WVsUm3HOb6/VSj
         DqoTEM6/dKysgWDVn2od6vFGicaJ7olWBLO0Z1LdMJuXv75r0wljFqFCf2A5DqhcnlBB
         w3Fw==
X-Received: by 10.140.202.213 with SMTP id x204mr4010551qha.95.1423850663584;
        Fri, 13 Feb 2015 10:04:23 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id c67sm7615229qgd.45.2015.02.13.10.04.22
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2015 10:04:22 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54DE3CA5.80602@gmail.com>
Date: Fri, 13 Feb 2015 13:04:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Julia Lawall <julia.lawall@lip6.fr>, 
 Katherine Dunne <kdunne@mail.ccsf.edu>
CC: outreachy-kernel@googlegroups.com
Subject: Re: Tutorial Help - Can't detect wifi after reboot
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com> <alpine.DEB.2.10.1502131808180.2995@hadrien>
In-Reply-To: <alpine.DEB.2.10.1502131808180.2995@hadrien>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/13/15 12:12, Julia Lawall wrote:
> On Fri, 13 Feb 2015, Katherine Dunne wrote:
> 
>> I have been going through the tutorial, using Ubuntu 14.04.1
>> I am at the point under Test Your Changes under Modifying a Driver on Native
>> Linux.
>> Since rebooting, my computer can't detect wifi.
>> I noticed on rebooting a new message appeared "Bluetooth TX [hex address]
>> timeout," but after disabling bluetooth per another tutorial's suggestion,
>> the message does not appear, and there is still no wifi detected.
>>
>> The last time I succesfully rebooted and had a wifi connection was right
>> before cloning the staging repository in the Tool Set Up section.
>> Would it be helpful to list the commands that I've run between my two reboot
>> times?
>> The driver I modified was /drivers/net/hamradio/baycom_epp.c
> 
> Perhaps the kernel you are compiling does not have the wifi driver that
> the ubuntu kernel uses for your laptop?  Maybe it would help to use lspci
> with your ubuntu setup to see what wifi driver you are using, and then to
> see if that is in the configuration of the one that you are compiling?
> One could also wonder if the driver you modified is selected in the
> configuration of the kernel you are modifying.  When you compiled your
> kernel, did you get a file drivers/net/hamradio/baycom_epp.o?  If you did
> not, then your probably has nothing to do with your change, because you
> change is not even in the compiled kernel.  But they are probably not
> related in any case.

The wireless card could be either PCI or USB or SDIO, so if you run
'iw dev' as root, it should tell you the state of your device.

If nothing shows up in the output, try 'dmesg | grep wlan' and see if it
shows something.

It is very possible that you didn't include the wireless driver in the
kernel you built, as Julia points out.

Cheers,
Jes



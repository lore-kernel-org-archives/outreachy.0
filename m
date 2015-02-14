X-GM-THRID: 9871294464
X-Received: by 10.182.112.167 with SMTP id ir7mr12510514obb.29.1423888947615;
        Fri, 13 Feb 2015 20:42:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.80 with SMTP id f77ls1157384iod.39.gmail; Fri, 13 Feb
 2015 20:42:27 -0800 (PST)
X-Received: by 10.43.6.5 with SMTP id oi5mr15892991icb.11.1423888947487;
        Fri, 13 Feb 2015 20:42:27 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x235.google.com (mail-qc0-x235.google.com. [2607:f8b0:400d:c01::235])
        by gmr-mx.google.com with ESMTPS id fg3si2035054qcb.1.2015.02.13.20.42.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2015 20:42:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::235 as permitted sender) client-ip=2607:f8b0:400d:c01::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::235 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-f181.google.com with SMTP id p6so17104901qcv.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Feb 2015 20:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=eHfihAiy+kDx8F/Jgs+WuDM6uarW6EdHQfsnNeCP9u0=;
        b=kEzTqnaiKhQzRJvGaeUmI3iE728lWcRO8qzQo7iIrkTsIZTvbXi7rw4m5etP68+oIW
         i0COG9nVlnRbBHMeF5aUaWfmWfx6d/2WeDxkdxnur3QL8LX9zze3sKRFwnitb6zLjCb9
         VdMMs+SKF4y5wngn7VMjYCoSLOIabYFwz/c5Tcs1Cz1higNfuCLIssvxoQhXTBRk+Sry
         wi15UcavOMhX5VPK9FPXJZ3Lu48n4f1qzQWmEuD1iiyQIj/zRhOnHP1bpY1V/pDbxvXk
         8ZMiTnWPxzDqwt1BEqOLZgPcXbhWDRLp4NPG8qc+I2JnPnfgGd+IQxXuH07Dq3uwMygu
         L97A==
X-Received: by 10.229.201.1 with SMTP id ey1mr18866216qcb.10.1423888947379;
        Fri, 13 Feb 2015 20:42:27 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-71-190-187-138.nycmny.fios.verizon.net. [71.190.187.138])
        by mx.google.com with ESMTPSA id w5sm8749957qas.41.2015.02.13.20.42.26
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2015 20:42:26 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54DED232.8070101@gmail.com>
Date: Fri, 13 Feb 2015 23:42:26 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Katherine Dunne <kdunne@mail.ccsf.edu>
CC: Julia Lawall <julia.lawall@lip6.fr>, 
 outreachy-kernel@googlegroups.com
Subject: Re: Tutorial Help - Can't detect wifi after reboot
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com>	<alpine.DEB.2.10.1502131808180.2995@hadrien>	<54DE3CA5.80602@gmail.com> <CA+Cr939ZXBcs=7pe4TTQ3XJu3iLfVd0DzCXsMmGftHv=H0pRog@mail.gmail.com> <54DECFFA.7020103@gmail.com>
In-Reply-To: <54DECFFA.7020103@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/13/15 23:32, Jes Sorensen wrote:
> On 02/13/15 22:28, Katherine Dunne wrote:
>> Forgive me if I end up not addressing your suggestions. I am new to Linux,
>> so I've been researching exactly what your responses mean.
>>
>> When I ran dmesg | grep wlan it did not give any information.
>>
>> The next thing I did was to reboot in recovery mode, then resume normal
>> rebooting, which connected me back to wifi.
>>
>> After that I ran dmesg | grep wlan and this information seemed important:
>>
>> [    8.279472] usb 1-1.6: Direct firmware load failed with error -2
>> [    8.280800] usb 1-1.6: Falling back to user helper
>> [    8.282676] Bluetooth: can't load firmware, may not work correctly
>> [    8.322736] wl: module license 'MIXED/Proprietary' taints kernel.
>> [    8.323730] Disabling lock debugging due to kernel taint
>> [    8.326499] wl: module verification failed: signature and/or  required
>> key missing - tainting kernel
>> [    8.329087] wl 0000:06:00.0: enabling device (0000 -> 0002)
>> [    8.340921] intel_rapl: domain uncore energy ctr 28408:28408 not
>> working, skip
>> [    8.359971] INFO @wl_cfg80211_attach : Registered CFG80211 phy
>> [    8.361506] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD
>> (1bcf:2b8b)
>> [    8.371637] input: Integrated_Webcam_HD as
>> /devices/pci0000:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/input/input9
>> [    8.372808] usbcore: registered new interface driver uvcvideo
>> [    8.373989] USB Video Class driver (1.1.1)
>> [    8.406564] lib80211_crypt: registered algorithm 'TKIP'
>> [    8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller
>> 6.30.223.141 (r415941)
>> [    8.645326] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
>> [    8.645333] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
>> [   10.288246] Bluetooth: hci0 command 0x1003 tx timeout
>>
>>
>> The wifi driver I am using is Broadcom Corporation BCM43142 802.11b/g/n
>> (rev 01)
>>
>> With the suggestion that the wireless driver was not in the kernel I built,
>> I realized I didn't follow the step under Configure the Kernel. So I copied
>> a config file from /boot into git/kernels/staging thinking this would
>> include the wireless driver, but it has not solved the problem. I have the
>> feeling that is not what you were suggesting.
> 
> OK, what you see above is a message indicating that the wifi driver is
> in the kernel, it is this line:
> 
> [    8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller
> 6.30.223.141 (r415941)
> 
> If that didn't show up in your self built kernel it means the driver
> wasn't built or loaded correctly.
> 
> I did a bit of searching and it looks like the 43142 is known for being
> a tricky device, however I don't have any first hand experience with it.
> There seems to be various drivers for it. Do you get any output if you
> run this command from a system where the wifi is working:
> 
> ls -l /sys/class/net/wlan0/device/driver/module/drivers/
> 
> On my laptop it looks like with (it is using the iwlwifi driver module):
> 
> [jes@ultrasam ~]$ ls -l /sys/class/net/wlan0/device/driver/module/drivers/
> total 0
> lrwxrwxrwx. 1 root root 0 Feb 13 23:29 pci:iwlwifi ->
> ../../../bus/pci/drivers/iwlwifi

Searched a bit more and came across this:

http://www.broadcom.com/support/802.11/linux_sta.php

Looks like Broadcom is shipping a proprietary driver for the 43142 and
my guess is that Ubuntu installs it without warning you. In that case
you may have to install that on top of your self compiled kernel to get
wifi to work :( Alternatively a $10 USB device could work if you don't
want to fight with this constantly.

Jes



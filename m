X-GM-THRID: 9871294464
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,64a1fb55b3e53cb0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.9.72 with SMTP id ov8mr14752606icb.20.1423888380158;
        Fri, 13 Feb 2015 20:33:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.224.129 with SMTP id rc1ls630013obc.5.gmail; Fri, 13 Feb
 2015 20:32:59 -0800 (PST)
X-Received: by 10.182.209.37 with SMTP id mj5mr11655124obc.23.1423888379929;
        Fri, 13 Feb 2015 20:32:59 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x236.google.com (mail-qc0-x236.google.com. [2607:f8b0:400d:c01::236])
        by gmr-mx.google.com with ESMTPS id q2si2080089qcn.2.2015.02.13.20.32.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2015 20:32:59 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::236 as permitted sender) client-ip=2607:f8b0:400d:c01::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-f182.google.com with SMTP id r5so3559853qcx.13
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Feb 2015 20:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=4u/C9A5k4Qyzbvpn/+F2xPqmn5hCY/fZ4fuUFNPSyJU=;
        b=YLFGnrSMcqUTB9fNHJyA4RzrOaerIsxZOZlpwWgM8/6AMkgZe08L0V/q4GaqjICo3e
         +4rGqg+ZpU2L3ljARMTvH7J+RB1PE0dXgFe1yr5bRe3wSfYwpxt9eIiJYRswDEmAUASe
         fl7/VdPitEaJtIf2L9f6FWL8HR8JfK0jwejf1R+zwP/vibbd2wOsrZCvptxzuT/+T9Px
         OPObzVsxPiY72tnfmCrkvB5RMMgIJoFNNXdjOOf3ekWmFmWGoszvpPXizMp9l56aiMNY
         EjWZWRjcFxwiliPKsDv2dkl+CptwrLmpJz6JcGL0F+OHssBjotbeQPl+Czi4LXahffZe
         Nzug==
X-Received: by 10.140.23.40 with SMTP id 37mr30618777qgo.93.1423888379805;
        Fri, 13 Feb 2015 20:32:59 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-71-190-187-138.nycmny.fios.verizon.net. [71.190.187.138])
        by mx.google.com with ESMTPSA id 8sm8728320qgk.33.2015.02.13.20.32.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Feb 2015 20:32:58 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54DECFFA.7020103@gmail.com>
Date: Fri, 13 Feb 2015 23:32:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Katherine Dunne <kdunne@mail.ccsf.edu>
CC: Julia Lawall <julia.lawall@lip6.fr>, 
 outreachy-kernel@googlegroups.com
Subject: Re: Tutorial Help - Can't detect wifi after reboot
References: <43ec1f66-51aa-434c-9193-74e91c6d21c9@googlegroups.com>	<alpine.DEB.2.10.1502131808180.2995@hadrien>	<54DE3CA5.80602@gmail.com> <CA+Cr939ZXBcs=7pe4TTQ3XJu3iLfVd0DzCXsMmGftHv=H0pRog@mail.gmail.com>
In-Reply-To: <CA+Cr939ZXBcs=7pe4TTQ3XJu3iLfVd0DzCXsMmGftHv=H0pRog@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/13/15 22:28, Katherine Dunne wrote:
> Forgive me if I end up not addressing your suggestions. I am new to Linux,
> so I've been researching exactly what your responses mean.
> 
> When I ran dmesg | grep wlan it did not give any information.
> 
> The next thing I did was to reboot in recovery mode, then resume normal
> rebooting, which connected me back to wifi.
> 
> After that I ran dmesg | grep wlan and this information seemed important:
> 
> [    8.279472] usb 1-1.6: Direct firmware load failed with error -2
> [    8.280800] usb 1-1.6: Falling back to user helper
> [    8.282676] Bluetooth: can't load firmware, may not work correctly
> [    8.322736] wl: module license 'MIXED/Proprietary' taints kernel.
> [    8.323730] Disabling lock debugging due to kernel taint
> [    8.326499] wl: module verification failed: signature and/or  required
> key missing - tainting kernel
> [    8.329087] wl 0000:06:00.0: enabling device (0000 -> 0002)
> [    8.340921] intel_rapl: domain uncore energy ctr 28408:28408 not
> working, skip
> [    8.359971] INFO @wl_cfg80211_attach : Registered CFG80211 phy
> [    8.361506] uvcvideo: Found UVC 1.00 device Integrated_Webcam_HD
> (1bcf:2b8b)
> [    8.371637] input: Integrated_Webcam_HD as
> /devices/pci0000:00/0000:00:1d.0/usb1/1-1/1-1.5/1-1.5:1.0/input/input9
> [    8.372808] usbcore: registered new interface driver uvcvideo
> [    8.373989] USB Video Class driver (1.1.1)
> [    8.406564] lib80211_crypt: registered algorithm 'TKIP'
> [    8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller
> 6.30.223.141 (r415941)
> [    8.645326] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
> [    8.645333] IPv6: ADDRCONF(NETDEV_UP): wlan0: link is not ready
> [   10.288246] Bluetooth: hci0 command 0x1003 tx timeout
> 
> 
> The wifi driver I am using is Broadcom Corporation BCM43142 802.11b/g/n
> (rev 01)
> 
> With the suggestion that the wireless driver was not in the kernel I built,
> I realized I didn't follow the step under Configure the Kernel. So I copied
> a config file from /boot into git/kernels/staging thinking this would
> include the wireless driver, but it has not solved the problem. I have the
> feeling that is not what you were suggesting.

OK, what you see above is a message indicating that the wifi driver is
in the kernel, it is this line:

[    8.500670] wlan0: Broadcom BCM4365 802.11 Hybrid Wireless Controller
6.30.223.141 (r415941)

If that didn't show up in your self built kernel it means the driver
wasn't built or loaded correctly.

I did a bit of searching and it looks like the 43142 is known for being
a tricky device, however I don't have any first hand experience with it.
There seems to be various drivers for it. Do you get any output if you
run this command from a system where the wifi is working:

ls -l /sys/class/net/wlan0/device/driver/module/drivers/

On my laptop it looks like with (it is using the iwlwifi driver module):

[jes@ultrasam ~]$ ls -l /sys/class/net/wlan0/device/driver/module/drivers/
total 0
lrwxrwxrwx. 1 root root 0 Feb 13 23:29 pci:iwlwifi ->
../../../bus/pci/drivers/iwlwifi

Jes


> 
> 
> On Fri, Feb 13, 2015 at 10:04 AM, Jes Sorensen <jes.sorensen@gmail.com>
> wrote:
> 
>> On 02/13/15 12:12, Julia Lawall wrote:
>>> On Fri, 13 Feb 2015, Katherine Dunne wrote:
>>>
>>>> I have been going through the tutorial, using Ubuntu 14.04.1
>>>> I am at the point under Test Your Changes under Modifying a Driver on
>> Native
>>>> Linux.
>>>> Since rebooting, my computer can't detect wifi.
>>>> I noticed on rebooting a new message appeared "Bluetooth TX [hex
>> address]
>>>> timeout," but after disabling bluetooth per another tutorial's
>> suggestion,
>>>> the message does not appear, and there is still no wifi detected.
>>>>
>>>> The last time I succesfully rebooted and had a wifi connection was right
>>>> before cloning the staging repository in the Tool Set Up section.
>>>> Would it be helpful to list the commands that I've run between my two
>> reboot
>>>> times?
>>>> The driver I modified was /drivers/net/hamradio/baycom_epp.c
>>>
>>> Perhaps the kernel you are compiling does not have the wifi driver that
>>> the ubuntu kernel uses for your laptop?  Maybe it would help to use lspci
>>> with your ubuntu setup to see what wifi driver you are using, and then to
>>> see if that is in the configuration of the one that you are compiling?
>>> One could also wonder if the driver you modified is selected in the
>>> configuration of the kernel you are modifying.  When you compiled your
>>> kernel, did you get a file drivers/net/hamradio/baycom_epp.o?  If you did
>>> not, then your probably has nothing to do with your change, because you
>>> change is not even in the compiled kernel.  But they are probably not
>>> related in any case.
>>
>> The wireless card could be either PCI or USB or SDIO, so if you run
>> 'iw dev' as root, it should tell you the state of your device.
>>
>> If nothing shows up in the output, try 'dmesg | grep wlan' and see if it
>> shows something.
>>
>> It is very possible that you didn't include the wireless driver in the
>> kernel you built, as Julia points out.
>>
>> Cheers,
>> Jes
>>
>>
> 



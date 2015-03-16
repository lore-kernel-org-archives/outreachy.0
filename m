X-GM-THRID: 8319960875008
X-Received: by 10.112.167.131 with SMTP id zo3mr4816092lbb.7.1426525833656;
        Mon, 16 Mar 2015 10:10:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.226 with SMTP id t2ls716688laj.42.gmail; Mon, 16 Mar
 2015 10:10:33 -0700 (PDT)
X-Received: by 10.152.8.73 with SMTP id p9mr5015603laa.6.1426525833198;
        Mon, 16 Mar 2015 10:10:33 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wg0-x22b.google.com (mail-wg0-x22b.google.com. [2a00:1450:400c:c00::22b])
        by gmr-mx.google.com with ESMTPS id cl5si721469wib.3.2015.03.16.10.10.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 10:10:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) client-ip=2a00:1450:400c:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c00::22b as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22b.google.com with SMTP id a20so45344963wgr.3
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 10:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=POlwwMfNb0pfhUXqIAaK2HCgPSzq3ayZaVBop7wN8eo=;
        b=PhGE6s42W7yIilC3HCnM/N4ebY6dcL95QVI3EJRdNZUcthrGzifCfM4IykbVs73XhV
         /sXeSu7Q8Yav/w3w0Ws1hKL0n2rRPI6V34rCCiHC0NH1hMi5uQqffVZBOm066r2kxCVw
         5DBIyLCcO0x5CvwuXmuRxBooQ1s+9Z2R6N3R5WKtZKB3RAXHxFa+OcYJDUi+51y+ZMDx
         YH5OfbhSI6yRhqZ9zmKviZdX6VXO/Pq38e+WvP0byPy9n98HGaYT+t/iM5pLU8gSfAEw
         Z/clgiTX00/PAvlMUDQr0p0ojmDh9UgPeY7LIrZd0S0p9+6Zex37PfSwFNKzJjh3/rEy
         bmYQ==
MIME-Version: 1.0
X-Received: by 10.180.92.71 with SMTP id ck7mr120040484wib.48.1426525833102;
 Mon, 16 Mar 2015 10:10:33 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 16 Mar 2015 10:10:33 -0700 (PDT)
In-Reply-To: <20150316170803.GC20171@kroah.com>
References: <20150316142901.GA18101@vaishali-Ideapad-Z570>
	<alpine.DEB.2.10.1503161748520.2704@hadrien>
	<CAK-LDbJKZpUrzc4rbaHM6mBQAs-NbnTTuwNjge_d0RN0yG=U9A@mail.gmail.com>
	<20150316170803.GC20171@kroah.com>
Date: Mon, 16 Mar 2015 22:40:33 +0530
Message-ID: <CAK-LDbKRy2X0uNLvAp9Teqw_TQzVVmv5Gp_Z0sfuxHVOK3y=0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Add helper macro
 for spk_synth boilerplate
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 16, 2015 at 10:38 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Mar 16, 2015 at 10:34:34PM +0530, Vaishali Thakkar wrote:
>> On Mon, Mar 16, 2015 at 10:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> +#define module_spk_synth(__spk_synth) \
>> >> +     module_driver(__spk_synth, synth_add, \
>> >> +                     synth_remove)
>> >
>> > Why the newline before synth_remove?
>>
>> Just for the consistency. I followed all such macro examples
>> like module_usb_driver, module_platform_driver, module_pci_driver
>> etc. And I guess may be this line will go over 80 characters though
>> I haven't checked that.
>>
>> Should I go for writing like this in a single line
>> [if it will not go beyond 80 characters]?
>>
>> module_driver(__spk_synth, synth_add,  synth_remove) \
>
> Yes, please do so, the only reason I wrapped the module_usb_driver()
> lines was because I had to.

Ok. Will go for it too.

> thanks,
>
> greg k-h



-- 
Vaishali


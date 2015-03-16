X-GM-THRID: 8319960875008
X-Received: by 10.112.41.131 with SMTP id f3mr9552312lbl.20.1426525475248;
        Mon, 16 Mar 2015 10:04:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.164.193 with SMTP id ys1ls723725lab.39.gmail; Mon, 16 Mar
 2015 10:04:34 -0700 (PDT)
X-Received: by 10.112.125.67 with SMTP id mo3mr7650572lbb.6.1426525474696;
        Mon, 16 Mar 2015 10:04:34 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22a.google.com (mail-wi0-x22a.google.com. [2a00:1450:400c:c05::22a])
        by gmr-mx.google.com with ESMTPS id el6si739826wib.0.2015.03.16.10.04.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 10:04:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) client-ip=2a00:1450:400c:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22a as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22a.google.com with SMTP id j2so49095580wif.1
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 10:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=J7mTNWFG1IAaOQ9tNoJWjZTNkLH0ujuOvYpG5DryNsk=;
        b=m63OQYnpTkGYkC8OuY4Oc+9GehZo13WuoWtBpHOlhRVnOmWlRrY4fIYwAJnSy63f0V
         zHWO/smko9K3/4uoBSdVH44T10di4WYDLNb2Vu0BkZRNjiVyc3ktElKEItsWuGdvP1bH
         GPQDTz+WwFAq4Pdqj4mYwgZsoK0IOWZ+27CD7a1QvRPcW1OcBfw0W6NLrSRarnGG/zo4
         6072bKDzHmL1feCsVRUJm+uvCKr8C6Rhu3WFNOJfqJi2UEN8oRG8OGsFjUnSEaYD3ekm
         c0cRf6TQDGePjbJFWFHhpm4G2M0cPxc3CO7ptRCoXhS9Vh6qG3c7yQ9UK7iDzF+6ODY9
         yNHA==
MIME-Version: 1.0
X-Received: by 10.180.85.103 with SMTP id g7mr163043617wiz.19.1426525474611;
 Mon, 16 Mar 2015 10:04:34 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 16 Mar 2015 10:04:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1503161748520.2704@hadrien>
References: <20150316142901.GA18101@vaishali-Ideapad-Z570>
	<alpine.DEB.2.10.1503161748520.2704@hadrien>
Date: Mon, 16 Mar 2015 22:34:34 +0530
Message-ID: <CAK-LDbJKZpUrzc4rbaHM6mBQAs-NbnTTuwNjge_d0RN0yG=U9A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: speakup: Add helper macro
 for spk_synth boilerplate
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 16, 2015 at 10:19 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> +#define module_spk_synth(__spk_synth) \
>> +     module_driver(__spk_synth, synth_add, \
>> +                     synth_remove)
>
> Why the newline before synth_remove?

Just for the consistency. I followed all such macro examples
like module_usb_driver, module_platform_driver, module_pci_driver
etc. And I guess may be this line will go over 80 characters though
I haven't checked that.

Should I go for writing like this in a single line
[if it will not go beyond 80 characters]?

module_driver(__spk_synth, synth_add,  synth_remove) \

> julia



-- 
Vaishali


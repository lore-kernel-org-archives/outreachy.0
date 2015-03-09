X-GM-THRID: 7174525812736
X-Received: by 10.152.4.229 with SMTP id n5mr3989048lan.1.1425911833483;
        Mon, 09 Mar 2015 07:37:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.226 with SMTP id t2ls319429laj.42.gmail; Mon, 09 Mar
 2015 07:37:12 -0700 (PDT)
X-Received: by 10.112.98.38 with SMTP id ef6mr3239975lbb.3.1425911832031;
        Mon, 09 Mar 2015 07:37:12 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id r6si840623wix.0.2015.03.09.07.37.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 07:37:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id ex7so20376463wid.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 07:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=3N7eoNC0LwKRvtRqnGNxzySBFhbRFWVFws6v0y7pAvY=;
        b=L2LJVqOa1LYSTZ/NBRAxqCmH14UPBMTVsvBkTbvUZnjKWt9JkzsOkwW5mvqF0t1eVh
         lvWg+uE/W3tKpYldmCZxSb0YurfEA/FwN7v2OTSNc/LJ+udSwju1FFat0/zicvrNlkzt
         PdXuEXCkZSK37rMy/4R0RcFEdFX2Pd/rY3mZ20ehlfbogFa4oFQ6Q26zA5i7qszQzK/N
         MDqMr5eeMKTRMcXUsq9OnitTFOGhatvb2MSh+Kohw2O3KYU1+T7BxhtQwIx/kDhfMdTn
         5hPSEmQOBBFwxJjuxX20YyiSqtJM+fKagZzc7LVI174g35ycgsAa/DTLU1QZgngIQXWY
         DGzw==
MIME-Version: 1.0
X-Received: by 10.180.206.143 with SMTP id lo15mr77809192wic.22.1425911831778;
 Mon, 09 Mar 2015 07:37:11 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Mon, 9 Mar 2015 07:37:11 -0700 (PDT)
In-Reply-To: <20150309123430.GA31892@kroah.com>
References: <20150309051708.GA4116@vaishali-Ideapad-Z570>
	<CAK-LDb+mtA=+bMhacGuyjhCeNa3ZJX9X+ZH_iRsYDumouSWivQ@mail.gmail.com>
	<20150309123430.GA31892@kroah.com>
Date: Mon, 9 Mar 2015 20:07:11 +0530
Message-ID: <CAK-LDbJc0MQZQBhGjS21cpA0FPptYtrc8c2a67koJL9d5fDNog@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rts5208: Use module_pci_driver
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 9, 2015 at 6:04 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Mon, Mar 09, 2015 at 11:31:00AM +0530, Vaishali Thakkar wrote:
>> On Mon, Mar 9, 2015 at 10:47 AM, Vaishali Thakkar
>> <vthakkar1994@gmail.com> wrote:
>> > Macro module_pci_driver is used for drivers whose init
>> > and exit paths does only register and unregister to pci
>> > API. So, here remove some boilerplate code by using
>> > module_pci_driver.
>> >
>> > Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> > ---
>> >  drivers/staging/rts5208/rtsx.c | 19 +------------------
>> >  1 file changed, 1 insertion(+), 18 deletions(-)
>> >
>> > diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/=
rtsx.c
>> > index c74f1b8..7f3f16a 100644
>> > --- a/drivers/staging/rts5208/rtsx.c
>> > +++ b/drivers/staging/rts5208/rtsx.c
>> > @@ -1048,21 +1048,4 @@ static struct pci_driver driver =3D {
>> >         .shutdown =3D rtsx_shutdown,
>> >  };
>> >
>> > -static int __init rtsx_init(void)
>> > -{
>> > -       pr_info("Initializing Realtek PCIE storage driver...\n");
>> > -
>> > -       return pci_register_driver(&driver);
>> > -}
>> > -
>> > -static void __exit rtsx_exit(void)
>> > -{
>> > -       pr_info("rtsx_exit() called\n");
>> > -
>> > -       pci_unregister_driver(&driver);
>> > -
>> > -       pr_info("%s module exit\n", CR_DRIVER_NAME);
>> > -}
>> > -
>> > -module_init(rtsx_init)
>> > -module_exit(rtsx_exit)
>> > +module_pci_driver(driver);
>> > --
>>
>> I am sorry for this patch. It has some issues.
>
> What "issues"?  It looks correct to me.
>

It has some build issues. These:

drivers/staging/rts5208/rtsx.c:1051:19: error: conflicting types for
=E2=80=98driver_init=E2=80=99
 module_pci_driver(driver);
                   ^
include/linux/device.h:1258:19: note: in definition of macro =E2=80=98modul=
e_driver=E2=80=99
 static int __init __driver##_init(void) \
                   ^
drivers/staging/rts5208/rtsx.c:1051:1: note: in expansion of macro
=E2=80=98module_pci_driver=E2=80=99
 module_pci_driver(driver);
 ^
include/linux/device.h:919:6: note: previous declaration of
=E2=80=98driver_init=E2=80=99 was here
 void driver_init(void);
      ^

I already knew about them before sending this patch and I was trying
to figure out
the solution. I was supposed to send this patch to my ownself but by mistak=
e
it was sent to mailing list. That's why I sent a message to ignore it.

I will be more careful next time before sending a patch.

> Yes, you delete the unneeded messages to the kernel log, which is a good
> thing, and one reason why I want to see drivers move to these macros.
>
> Am I missing something more obvious here?
>
> thanks,
>
> greg k-h



--=20
Vaishali


X-GM-THRID: 6205612297408217088
X-Received: by 10.13.233.197 with SMTP id s188mr9751247ywe.42.1445065760372;
        Sat, 17 Oct 2015 00:09:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.218 with SMTP id 87ls1013206iol.10.gmail; Sat, 17 Oct
 2015 00:09:19 -0700 (PDT)
X-Received: by 10.50.176.129 with SMTP id ci1mr7745902igc.12.1445065759924;
        Sat, 17 Oct 2015 00:09:19 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22a.google.com (mail-ig0-x22a.google.com. [2607:f8b0:4001:c05::22a])
        by gmr-mx.google.com with ESMTPS id fs10si444321igb.3.2015.10.17.00.09.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 00:09:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) client-ip=2607:f8b0:4001:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22a.google.com with SMTP id kq10so27413890igb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 00:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=jCab5h1H7LQ20yZUJ1VW0lUl527eoyzwuhir8sHW5zI=;
        b=BJnZiM99TXTcV7oehMCaUpqm4NKOrjivIiqIio+zENgxWBuK90a6WApGU9OKoQ5D+v
         BzHHR/BfuMIzC7nZ/H2b022yPlgkeaDMx5JTdGOWrjOtyWA4uyQF3d4HOHQHWqPbeYW9
         PMhqRQrBvtJHa/c8dIkPvTOIkpYEiIY6b/FGaPnZVapXTP2PZY0tJbMceiwNGVtEfMT5
         Q1fkiiq42afhkq2EbjjAhfx+VDqqzbBytCWH0EsPFMx2ILf9KHKhS3jPZOpLF/rly1by
         Rx5Fxt5jE9wqbYsKKRsF5796fUg/QAygLe98S6yAH6zFUMjJTDmU5xK6zRmxHUbByXWp
         Gw1Q==
MIME-Version: 1.0
X-Received: by 10.50.103.99 with SMTP id fv3mr9643713igb.69.1445065759796;
 Sat, 17 Oct 2015 00:09:19 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sat, 17 Oct 2015 00:09:19 -0700 (PDT)
In-Reply-To: <20151017052453.GA19124@kroah.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
	<06092be207de8d5980babdcc7e8d9f1140ebd856.1444856328.git.ksenija.stanojevic@gmail.com>
	<20151017052453.GA19124@kroah.com>
Date: Sat, 17 Oct 2015 09:09:19 +0200
Message-ID: <CAL7P5jLo4S91AsoYSt3FgQT1qDYwcG=43iH1R2chopjQC0gwug@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/4] Staging: lustre: include: Move
 function prototypes
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Hi,

On Sat, Oct 17, 2015 at 7:24 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 14, 2015 at 11:06:28PM +0200, Ksenija Stanojevic wrote:
>> Function prototypes need to be declared before functions are being
>> used.
>
> They do?  What problem is this patch fixing, I don't see the error...

These functions:

+struct obd_export *class_export_get(struct obd_export *exp);
+void class_export_put(struct obd_export *exp)

 are used in macros that I changed into static inline
functions. So if I don't move them, there will be warning: implicit
declaration...


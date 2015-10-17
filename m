X-GM-THRID: 6205612297408217088
X-Received: by 10.13.223.129 with SMTP id i123mr16299146ywe.33.1445065850763;
        Sat, 17 Oct 2015 00:10:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.202 with SMTP id h68ls1289644qgf.63.gmail; Sat, 17 Oct
 2015 00:10:50 -0700 (PDT)
X-Received: by 10.13.212.203 with SMTP id w194mr16543018ywd.44.1445065850261;
        Sat, 17 Oct 2015 00:10:50 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22d.google.com (mail-ig0-x22d.google.com. [2607:f8b0:4001:c05::22d])
        by gmr-mx.google.com with ESMTPS id hx4si468880igb.0.2015.10.17.00.10.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 00:10:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) client-ip=2607:f8b0:4001:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22d.google.com with SMTP id hv6so28035708igb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 00:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Rgycp/nWJhaILKbUKUOGCwTcTiZvrOopmU1KKPOAqLc=;
        b=mwJIYaDOtqdZwWVfyAdPLgbtqkFr8ZaaDgIZyNxgtoswVkTVHxDCByQhIkPtAyuEy2
         mpSltEc9Wczyba8zvAZkuW09AOYFRiXpxiDQUVsURNRNLmktXhq14jpftABArQEZwl66
         n5ZLUhoXOLbG2AchN1OXZTqEtKUoDECbFF7rl2NFP+A1KxS/Qon5RJm7aAO0Yv8f16N4
         lea9spQK3vWYdvgvlrEGW61Bsvfryp/rciXTvjzioVIKme5Vhr83JpOLbbwhO7YgS6c8
         SBTD6ONH+Dx18rIYrZi9k96XUo6gB9hms5zn21dXQHOEyzXE8SNMFMdeMZbHOcoD6Hmr
         5OAA==
MIME-Version: 1.0
X-Received: by 10.50.20.8 with SMTP id j8mr9664792ige.69.1445065850134; Sat,
 17 Oct 2015 00:10:50 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sat, 17 Oct 2015 00:10:50 -0700 (PDT)
In-Reply-To: <20151017052829.GA30655@kroah.com>
References: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
	<177dcb20f3ef1cbdc03ebee64223bb7e69811313.1444856328.git.ksenija.stanojevic@gmail.com>
	<20151017052829.GA30655@kroah.com>
Date: Sat, 17 Oct 2015 09:10:50 +0200
Message-ID: <CAL7P5j+Hd6CQm5-dyOe=EitAbCiqW3tfQa-miYj05pqRvcJY3A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/4] Staging: lustre: include: Convert
 macro class_export_lock_get into static inline function
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 17, 2015 at 7:28 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Wed, Oct 14, 2015 at 11:07:20PM +0200, Ksenija Stanojevic wrote:
>> Static inline functions are preferred over macros. This change is safe
>> because the types of arguments at all the call sites are same.
>>
>> Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/include/obd_class.h | 17 +++++++++--------
>>  1 file changed, 9 insertions(+), 8 deletions(-)
>
> This, and patch 3/4, break the build very badly, did you test these
> patches?

I'm sorry. Yes I did test them, with doing make on top of the directory.
I will try again...


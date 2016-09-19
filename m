X-GM-THRID: 6332043627755208704
X-Received: by 10.25.75.21 with SMTP id y21mr730445lfa.11.1474296124196;
        Mon, 19 Sep 2016 07:42:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.195 with SMTP id u186ls830172lja.37.gmail; Mon, 19 Sep
 2016 07:42:03 -0700 (PDT)
X-Received: by 10.46.1.77 with SMTP id 74mr675071ljb.21.1474296123737;
        Mon, 19 Sep 2016 07:42:03 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id 185si1826436wmr.2.2016.09.19.07.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id l131so8508393lfl.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=yyLwvZzRkae3vlCWzX/oO7I86bGKs4GUGWjwdkKJcd4=;
        b=zGFur8I/Xw4L1+DQuof174fvnu7iMZITaUI5qBp0f+4FurRzvbwQYE2XNOTr1+DL+k
         MVL5/8CwTOo4A+7IRjhupucW6eqm4/ZqVI/EBn1CP8R/W3s64PtmZ91sSUC6XTTc/g9I
         brp8eue+fkWhCkeKdp+/oUk4k9WvOvMTHSOu++D0vUv/sA6lJ2q2cC6au8XIzz+j/+wW
         KLPSFH51rXFtuXr/nwWixgwcCz3sRmtELmhZUnpXXukrl1iNLibvRdSAJiqdgqmrT7zm
         RTVGCQPEAesSbFnzL4fxz9tz0ycjLClT/1UaG7NSB55aBh8JkFWystWuzFAeWqj7GLuD
         nlkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=yyLwvZzRkae3vlCWzX/oO7I86bGKs4GUGWjwdkKJcd4=;
        b=S4SVHSD8060mtr+M0nDI3e7316msbJB64LDCwB8b8j6/iKTl9Q58zokbzq4Yb1YI6m
         6LJiLLc1hZxf8xKZ5Nf02ILWTWqtttMvXK1rCnceQeQlGMZt/qkJSdjCwRpqrh3Bc6Js
         d0OMjHBk8WlPIIXE9gM0wZ/8vBy4c0mpPVBvLkULy1B2K7AHbXZP8Bhu9/FGglhJrP8R
         vfRcOv7A86JO1VcEzTNeiQPIwmG09gENaQXPZ1rsX8knWd1wivm1jqUX8GXr/xLp+rs1
         AegC2TwNsEgLuJu3KxgWw11eTA4SeB8PLgQS5Be/aFXqO2gXzs30cmFeAw2+EEYDpya0
         Y1AA==
X-Gm-Message-State: AE9vXwMOWxvp/iJLQRuIlAsvebffzILqoRVWGClZImQt/n3XVXCnHVVruQkPJdvqdMkGDtODoixZYuxBS3OKOQ==
X-Received: by 10.25.158.143 with SMTP id h137mr11422538lfe.83.1474296123071;
 Mon, 19 Sep 2016 07:42:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Mon, 19 Sep 2016 07:42:02 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609191639290.3203@hadrien>
References: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.10.1609191618590.3203@hadrien> <CAOH+1jH=Kx=hT8DZ4stQf5touCUeUofcJ9H50A3+odUK12r8cw@mail.gmail.com>
 <alpine.DEB.2.10.1609191630270.3203@hadrien> <CAOH+1jFvcwZHT=+4RkKSt9qXuHFXw_uSit8iJa67=8dBU3pasg@mail.gmail.com>
 <alpine.DEB.2.10.1609191639290.3203@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Mon, 19 Sep 2016 20:12:02 +0530
Message-ID: <CAOH+1jEM4zjcwJH+vZRfRg8Zf+10+tXt6UDP4GR+Ms0kx6Cv4g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: wilc1000: Code cleanup
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, ganesh.krishna@microchip.com, 
	aditya.shankar@microchip.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 19, 2016 at 8:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 19 Sep 2016, Bhumika Goyal wrote:
>
>> On Mon, Sep 19, 2016 at 8:00 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Mon, 19 Sep 2016, Bhumika Goyal wrote:
>> >
>> >> On Mon, Sep 19, 2016 at 7:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> > On Mon, 19 Sep 2016, Bhumika Goyal wrote:
>> >> >
>> >> >> This patchset declares some functions as static and remove their
>> >> >> declaration from headers. Also, drop prototypes of some already
>> >> >> static functions.
>> >> >
>> >> > Isn't this a v2?
>> >> >
>> >> > julia
>> >> >
>> >> Actually, yes but they weren't sent as a patchset before. I realized
>> >> that in order to make them work they need to be applied in series and
>> >> so I combined them in a patchset.  Do I need to put a v2 then?
>> >
>> > I think it would make clear that there was something else from before that
>> > should now be ignored.
>> >
>>
>> Ok, but now is it still a v2 or a v3?
>
> No idea :)  Whatever is one larger than where you were before.
>

Ok :D

Thanks,
Bhumika

> julia
>
>>
>> Thanks,
>> Bhumika
>>
>> > julia
>> >
>> >>
>> >> Thanks,
>> >> Bhumika
>> >>
>> >> >>
>> >> >> Bhumika Goyal (2):
>> >> >>   Staging: wilc1000: Drop static function prototypes
>> >> >>   Staging: wilc1000: Make functions wilc_mac_{open/close} static
>> >> >>
>> >> >>  drivers/staging/wilc1000/linux_wlan.c             | 30 ++++++++++-------------
>> >> >>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  3 ---
>> >> >>  drivers/staging/wilc1000/wilc_wlan.h              |  3 ---
>> >> >>  3 files changed, 13 insertions(+), 23 deletions(-)
>> >> >>
>> >> >> --
>> >> >> 1.9.1
>> >> >>
>> >> >> --
>> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474293770-22208-1-git-send-email-bhumirks%40gmail.com.
>> >> >> For more options, visit https://groups.google.com/d/optout.
>> >> >>
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jH%3DKx%3DhT8DZ4stQf5touCUeUofcJ9H50A3%2BodUK12r8cw%40mail.gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jFvcwZHT%3D%2B4RkKSt9qXuHFXw_uSit8iJa67%3D8dBU3pasg%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


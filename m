X-GM-THRID: 6332043627755208704
X-Received: by 10.194.96.237 with SMTP id dv13mr3088698wjb.6.1474295679060;
        Mon, 19 Sep 2016 07:34:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.197.135 with SMTP id v129ls247600wmf.3.canary; Mon, 19 Sep
 2016 07:34:38 -0700 (PDT)
X-Received: by 10.28.55.205 with SMTP id e196mr357400wma.0.1474295678498;
        Mon, 19 Sep 2016 07:34:38 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-lf0-x241.google.com (mail-lf0-x241.google.com. [2a00:1450:4010:c07::241])
        by gmr-mx.google.com with ESMTPS id 82si1458490wmg.3.2016.09.19.07.34.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:34:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) client-ip=2a00:1450:4010:c07::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2a00:1450:4010:c07::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x241.google.com with SMTP id k12so8526017lfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=6ijyVy8nBifAFL+52kygRVUlfzH+YAToIYVpjyQGzOI=;
        b=AKEX9NUQAqvSnzQKRT992M4R8AbW/bhccGJNTGm10j8NmQBwmpQ+WCZqNFNtwhGREo
         IWU6cSIZf9EQNlsMkZtMavDau1fYulkefmab/GVJGD9UxIekMab9hnW7q+CVezn3NQ3F
         YCcYRBbHiGkrS7ZkkCeaHAbq22vfgIlNTZo+AwAiC+BJqtUMImh4QLsb/m4PmLCE+Udl
         g05EFFDvzVnU5ssYljuR3dE5OWSWkdPH/iwionhx5O/FFl9JyRJIxh8PTFSGSOg+Y4Zd
         k3TwQm94s7IbAuQnsfeUuUFlvoZGzgbmFC0cQj+SzOqsXgJjNFUtS1Y3N9T3+bUd7LCV
         h5GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=6ijyVy8nBifAFL+52kygRVUlfzH+YAToIYVpjyQGzOI=;
        b=H20+P/yrxQtyBR8mis9rWuT7ydmS2HCPvDmdhpmdv+kf6qpvaU0QJ1FbpYC1L7nl99
         B3zW/00EBLa4MqvSntIVs68CY+A6J/DtpPf75T+Heox/M1UgCRfqFw0XUTC2LWrx5xWB
         UtO2cjTWfim/HyKBWW1fhLo2HN3KfD8xNXDICGwPzGoYI+VNjSLZ7yBjfKam3ZBPuJD2
         uJwVmuQ+Ohhx7+exNj8zYBejIrxVjGGuVqjbBU3Fa2Exw6+Gt+sKuYxS80RkMNLaa6+f
         EPGa9oRYvRD4QekSnzPEbMLqlID25PpjPKhEm519c50ElycS8LyoZVUvfqJ9y+kZ3g3z
         OyJw==
X-Gm-Message-State: AE9vXwN+V9iYtXJqD561O6NA9snJIqpYppWIOE6WWIqDESZL13qrU8w7TR4ce6yWLk1IY5mKp/wkdq9m7EmSpw==
X-Received: by 10.25.24.91 with SMTP id o88mr11354777lfi.81.1474295678144;
 Mon, 19 Sep 2016 07:34:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.78.72 with HTTP; Mon, 19 Sep 2016 07:34:37 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1609191630270.3203@hadrien>
References: <1474293770-22208-1-git-send-email-bhumirks@gmail.com>
 <alpine.DEB.2.10.1609191618590.3203@hadrien> <CAOH+1jH=Kx=hT8DZ4stQf5touCUeUofcJ9H50A3+odUK12r8cw@mail.gmail.com>
 <alpine.DEB.2.10.1609191630270.3203@hadrien>
From: Bhumika Goyal <bhumirks@gmail.com>
Date: Mon, 19 Sep 2016 20:04:37 +0530
Message-ID: <CAOH+1jFvcwZHT=+4RkKSt9qXuHFXw_uSit8iJa67=8dBU3pasg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Staging: wilc1000: Code cleanup
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, ganesh.krishna@microchip.com, 
	aditya.shankar@microchip.com, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 19, 2016 at 8:00 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 19 Sep 2016, Bhumika Goyal wrote:
>
>> On Mon, Sep 19, 2016 at 7:49 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Mon, 19 Sep 2016, Bhumika Goyal wrote:
>> >
>> >> This patchset declares some functions as static and remove their
>> >> declaration from headers. Also, drop prototypes of some already
>> >> static functions.
>> >
>> > Isn't this a v2?
>> >
>> > julia
>> >
>> Actually, yes but they weren't sent as a patchset before. I realized
>> that in order to make them work they need to be applied in series and
>> so I combined them in a patchset.  Do I need to put a v2 then?
>
> I think it would make clear that there was something else from before that
> should now be ignored.
>

Ok, but now is it still a v2 or a v3?

Thanks,
Bhumika

> julia
>
>>
>> Thanks,
>> Bhumika
>>
>> >>
>> >> Bhumika Goyal (2):
>> >>   Staging: wilc1000: Drop static function prototypes
>> >>   Staging: wilc1000: Make functions wilc_mac_{open/close} static
>> >>
>> >>  drivers/staging/wilc1000/linux_wlan.c             | 30 ++++++++++-------------
>> >>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c |  3 ---
>> >>  drivers/staging/wilc1000/wilc_wlan.h              |  3 ---
>> >>  3 files changed, 13 insertions(+), 23 deletions(-)
>> >>
>> >> --
>> >> 1.9.1
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474293770-22208-1-git-send-email-bhumirks%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jH%3DKx%3DhT8DZ4stQf5touCUeUofcJ9H50A3%2BodUK12r8cw%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>


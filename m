X-GM-THRID: 6471467521247543296
X-Received: by 10.129.129.7 with SMTP id r7mr31099524ywf.89.1507048236695;
        Tue, 03 Oct 2017 09:30:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.73.1 with SMTP id w1ls831671ywa.21.gmail; Tue, 03 Oct 2017
 09:30:35 -0700 (PDT)
X-Received: by 10.129.105.215 with SMTP id e206mr15475803ywc.227.1507048235804;
        Tue, 03 Oct 2017 09:30:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507048235; cv=none;
        d=google.com; s=arc-20160816;
        b=DpkjogEtEi+xecY1kI0a9JMhAntVb2/LqC4JlTVhVBlhDYBg/m8M2806xmM1hUjwYz
         M+42AsZZUROtO6f7FDnbZbTQvLR0FyST3RXzJDS7tuiDFnbk5nPBI8WQdHcjTeN/pPP2
         jz5p5Y1xWbQcZveJrZPEn35Zb+/v4qHV2u1hGm9gHBJacUKPQY+p3Ps4iMPzxuksWoQR
         PIZxhc/cS63TDtaQGFSckQ+PFweyR8KFShBjGj3lgrO4kf+gDWAtsgv9vYSlEqGOA0KN
         r5NdtGHOjdn/Bb8iCzVuOmDmOxiRzw6kIXhVDjhcC/bPIxnSTEyNlU64ANKsb9kyFFOp
         vZ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=YTs75EO147Cge8Ed2gEN6GlxZwPQ604kW3x8PV2eGY0=;
        b=e09WJ6Di73X20Z29ML2UW8ZxXZqjk8YlLnXp7ItBfEw0VeTcHkSfvvWXR/EIiOsoJi
         /CFHjp3IWJEVrLBIOO286WGHoOnqeItyPOzpfpbzyCqbF/e/TvnbD0iB2O0as+ME7eFT
         YQWff5kzNs0PLJdg7Etqf2Br3J/GPMNKnNQ2s4VT/Pq++F6AVaIwZyW5Q8BFby9sw3t3
         VKslXuTQzvg/0gXgF3NAIrra9H7Zz59fjXPZSkvH3Ar8rtNnuZcDGW1Ee9S9wlUzAe3x
         2eNb9gP8bM+lhTN8iTogqqZR6wn+jv2bqGCQwiXMB5sZuJb085VEb+LmKDCeUOd0b+1V
         KQKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pm9Ou72p;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id o65si716085ywf.4.2017.10.03.09.30.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Oct 2017 09:30:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pm9Ou72p;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id a12so3502603qka.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Oct 2017 09:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=YTs75EO147Cge8Ed2gEN6GlxZwPQ604kW3x8PV2eGY0=;
        b=pm9Ou72pOkVd9mkLq47i89f/nqWsJvQenzKBUKhm8Ts1LcihWEht94XfLQFjRK/SxE
         /JHh7zdFoCU5any4iDRTxLYslf1xfugASaeGUEqKMvtLy7+00146X70eI2cVa8rn3IQq
         zXkKbgfUoXFyeWebXkn0e+5EdLh/sg4T610Ia4QBE4Z+qyosP4Bm7SHvgRAxH4TfkItR
         vr9GWaugezihLACnrNQ+Ea31JaDvKqQOVD5rCYhPUS0+1C/kj69X0prmPFXIjm1HMWKE
         vkveunQ794hgPjyoE5FTsHrARu/q057gyTdW6ou3UD9U7cx0zyDltcq1fMe8gkYEV0i4
         GeTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=YTs75EO147Cge8Ed2gEN6GlxZwPQ604kW3x8PV2eGY0=;
        b=UpEewQxpRWrgwqAHKHpHwk/qlJwGCA9qQZQHBQnGiQGV3O46kcXep2XoBxEcYz6Zas
         rBcLacY8/7Iox8KsA/6GCDcD7Hfz3F2oexR7g8UXPkatlU3jj28Pcv/JDAnPg7ysquJ6
         Kag84F8ZutQYT4pUU6sUjMyliCHa49S54dIc6uhQLEzBDLrFJv3Wc9YXU0N7RBdLSP7j
         nlOCpVluIkZAGWTo0mrkrIn0/EBfQrwxrVVeyNvNfoLCHULm6rLorfuuNMjwg1ZMaxht
         kWvEhuh/zMNgq/AqtdaS7p6dMwRZ4nLqWV/oQwYDKGSk33naRS8tNs/F0SO2eX4Z8EvG
         c89A==
X-Gm-Message-State: AMCzsaXNTHiNr3dPJ9D5FN6vzIPyCzYs6zXDVHLLgsWkhWKuwTr58lsk
	8q1p0qeo1iU1tIKGQjzdZZnbi0SEE43iQO2GvCg=
X-Google-Smtp-Source: AOwi7QBU6EsP3RDh7Fp6Cz7Yfqp8UBayGvRvIWTd7VK5gZxqNZZDPJ9B3K2+bcd2njcjfhowXo/RrnRfwGl5HqLqOqg=
X-Received: by 10.55.158.15 with SMTP id h15mr17217332qke.32.1507048235001;
 Tue, 03 Oct 2017 09:30:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.57.196 with HTTP; Tue, 3 Oct 2017 09:30:34 -0700 (PDT)
In-Reply-To: <20171003161409.GB7303@kroah.com>
References: <cover.1506755265.git.srishtishar@gmail.com> <20171003161409.GB7303@kroah.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Tue, 3 Oct 2017 22:00:34 +0530
Message-ID: <CAB3L5oxZCQr8200ZcmG0__WT+bdPANSv4z-UFHM51Hw5TYJeVQ@mail.gmail.com>
Subject: Re: [PATCH 0/6] Replace container_of with list_entry
To: Greg KH <gregkh@linuxfoundation.org>
Cc: devel@driverdev.osuosl.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 3, 2017 at 9:44 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sat, Sep 30, 2017 at 12:49:00PM +0530, Srishti Sharma wrote:
>> Replaces instances of container_of with list_entry to
>> access current list element.
>>
>> Srishti Sharma (6):
>>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>
> As Tobin said, I can't take this series for the obvious reason of the
> same subject line, yet you are doing different things in the patches.
>
> Please fix up and resend.

Yes, some of these loops are to be re written using,
list_for_each_entry_safe, so I have to fix that too and then resend
them .

Regards,
Srishti
> thanks,
>
> greg k-h


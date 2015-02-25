X-GM-THRID: 3321174687744
X-Received: by 10.112.147.35 with SMTP id th3mr35769lbb.15.1424850592617;
        Tue, 24 Feb 2015 23:49:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.218.163 with SMTP id ph3ls935314wic.32.canary; Tue, 24 Feb
 2015 23:49:52 -0800 (PST)
X-Received: by 10.180.72.44 with SMTP id a12mr280025wiv.0.1424850592204;
        Tue, 24 Feb 2015 23:49:52 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x231.google.com (mail-la0-x231.google.com. [2a00:1450:4010:c03::231])
        by gmr-mx.google.com with ESMTPS id xl7si4203985lbb.1.2015.02.24.23.49.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 23:49:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) client-ip=2a00:1450:4010:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x231.google.com with SMTP id gd6so2068378lab.8
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 23:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xLTrkNxO4RRvGSYK9W6EkLTnNZ1bkF2j5mPrkf1miEM=;
        b=lIlX2X+MkM16j8YDA1mcsTRI9YIxmXHG/uJ50kVcvJRmT2QsnsToZtKYfjq2eOMzj8
         aDy0prHy81XZusKAh78loOGBo2vx7LwQcinChhpy1YcqY0jNkP+xL6lPWuMqmwZOZ6Vx
         b3I8IERcrz1+zEstkx7H/5QJWbZ8k1HhX9xL57uTyu67ZcAmR03J85rUxkDzt+E5eG3W
         eNG2vhU4dWtD4eH1kDidDwKOgbyvvYHxDCObXI7y5FOlLLe7SuPhmDekgn4vvdDI+vMs
         +n8ZfZdCORaUWjZYv0s/boEG1utojA+RFZT1C9UGreITg4vgLqHjws2aZWDpohymAV0D
         2EbA==
MIME-Version: 1.0
X-Received: by 10.152.87.3 with SMTP id t3mr1586410laz.19.1424850592102; Tue,
 24 Feb 2015 23:49:52 -0800 (PST)
Received: by 10.114.12.1 with HTTP; Tue, 24 Feb 2015 23:49:52 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502250735010.2063@localhost6.localdomain6>
References: <1424811248-8150-1-git-send-email-ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1502242219480.2081@localhost6.localdomain6>
	<6220123.OEaHGpHvmv@wuerfel>
	<alpine.DEB.2.02.1502250735010.2063@localhost6.localdomain6>
Date: Wed, 25 Feb 2015 08:49:52 +0100
Message-ID: <CAL7P5jLsqN70SxjofiPQZaRWRzs-Q971zcLYoGywKHKDnHmoAw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Simplify if condition.
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 25, 2015 at 7:40 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 24 Feb 2015, Arnd Bergmann wrote:
>
>> On Tuesday 24 February 2015 22:24:23 Julia Lawall wrote:
>> > On Tue, 24 Feb 2015, Ksenija Stanojevic wrote:
>> >
>> > > Remove unnecessary TRUE statement. Fields bDynamicTxLowPower and
>> > > bDynamicTxHighPower are of bool type so such change is correct.
>> >
>> > I'm not sure that the compiler actually enforces that a bool variable is
>> > only ever assigned to 0 or 1.  The kernel contains the following in
>> > types.h:
>> >
>> > typedef _Bool                   bool;
>> >
>> > The following (non-kernel) C program compiles with gcc with no errors:
>> >
>> > _Bool x;
>> >
>> > int main () {
>> >   x = 12;
>> > }
>> >
>> > To be on the safe side, you should look at each place where the field is
>> > initialized and check that the value is true or false.  If that is what
>> > you have already done, then you should expand on the commit message to
>> > make that more apparent.
>>
>> Actually C enforces this:
>>
>> _Bool x;
>> int main()
>> {
>>         x = 12;
>>
>>         if (x == 1)
>>                 return 1;
>>         else
>>                 return 2;
>> }
>>
>> The compiler ensures that this program returns 1, not 2.
>
> Ksenija, in this case you can do it easily with Coccinelle.  One rule
> would be:
>
> @@
> bool x;
> @@
>
> - x == true
> + x
>
> There are three other cases to consider.
>
> Of course, you could also try sed, but then you wouldn't have the
> verification of the bool type.
>
> julia

Thank you.
I will try with Coccinelle script on other files too.


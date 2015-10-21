X-GM-THRID: 6207871882034675712
X-Received: by 10.66.123.14 with SMTP id lw14mr9134372pab.6.1445458923960;
        Wed, 21 Oct 2015 13:22:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.238 with SMTP id u101ls1379124qge.61.gmail; Wed, 21
 Oct 2015 13:22:01 -0700 (PDT)
X-Received: by 10.13.242.134 with SMTP id b128mr10238805ywf.7.1445458921305;
        Wed, 21 Oct 2015 13:22:01 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x243.google.com (mail-yk0-x243.google.com. [2607:f8b0:4002:c07::243])
        by gmr-mx.google.com with ESMTPS id t64si795351ywd.2.2015.10.21.13.22.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 13:22:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::243 as permitted sender) client-ip=2607:f8b0:4002:c07::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::243 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x243.google.com with SMTP id r3so5163109ykd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 13:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=CQ/yN9MQBl6angaM4zZJy+e/CFk3B4851FKt/BvzBrs=;
        b=V0qnul+QkArd6KrbjECSeOhoxaifvchxOiupLIuyz/5ZIZEyspTZZVxESwkpNrEztA
         U2VFuIdzvX/T1v+HrogbJITbCN3feS3q9b1DQnUQHI/PZyS3FzCrwBQcokCiyECLNQb9
         Ur/JXujCQ31tzg2ZML0rRzEhgnjOt84Ki/+BP72BnFBEIyxqOZMu5NSmHqU9oxP6zy9x
         mH1ayj+4guwI5u53FGl81inUYCQFw9wykylEUR1EUO7sWBmQfqDS9c6JdsyqJgf62syE
         BTkmuvadXGys/ZAk6y7OPxZmt3fd90D1bKVeFAISF/aOG3F5kV1sqaTq5VX2eIyjuC+D
         kC8g==
MIME-Version: 1.0
X-Received: by 10.129.29.5 with SMTP id d5mr8041915ywd.278.1445458921197; Wed,
 21 Oct 2015 13:22:01 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 21 Oct 2015 13:22:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510211024520.2588@hadrien>
References: <cover.1445382697.git.ciorneiioana@gmail.com>
	<6a5c7c89e9bc61382ab763935b0f9b9442f67cb9.1445382697.git.ciorneiioana@gmail.com>
	<alpine.DEB.2.10.1510210954140.2588@hadrien>
	<CAHWJYF=XYqG0JuDzW8UVZfpneJ-tn_V29wRhty1-5udwNbBD0w@mail.gmail.com>
	<alpine.DEB.2.10.1510211024520.2588@hadrien>
Date: Wed, 21 Oct 2015 23:22:01 +0300
Message-ID: <CAHWJYFnUhurVsyOkWSYZRQnWFng_6w9GMgoWsv5GtDwS-dVyng@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] staging: dgap: properly indent to
 match open paranthesis
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 21, 2015 at 11:26 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >>  static void dgap_cmdb(struct channel_t *ch, u8 cmd, u8 byte1,
>> >> -                     u8 byte2, uint ncmds)
>> >> +                   u8 byte2, uint ncmds)
>> >
>> > It doesn't look like this is aligned, but I didn't try applying the patch.
>>
>> I think that the email format or the patch does not show the tabs in
>> the proper way.
>> I remember that there were some off by one alignments and this and the
>> previous one belong to them.
>> Nevertheless, I will take a look.
>
> OK, quite possible.  But it is strange that all of the function calls look
> fine with their added and removed lines, and all of the function headers
> look wrong.
>
> julia

It's very strange but the alignment seems proper when the patch is
applied. I really do not have an explanation for the email format.
I verified it, made the other changes suggested and resent it.

Thanks,

Ioana


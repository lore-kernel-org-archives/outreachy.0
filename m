X-GM-THRID: 6537294064154312704
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.107.141.2 with SMTP id p2mr17442841iod.133.1522084395785;
        Mon, 26 Mar 2018 10:13:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2506:: with SMTP id g6-v6ls1405581itg.9.canary-gmail;
 Mon, 26 Mar 2018 10:13:14 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtVVQJ1Y1350Ca2Nfkf2Th1S+zW6i0lPL/X6EnO02ztlRLzTEYjWb1t8/5t+LCqp5jeWb0s
X-Received: by 2002:a24:3a90:: with SMTP id m138-v6mr10243426itm.37.1522084394481;
        Mon, 26 Mar 2018 10:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522084394; cv=none;
        d=google.com; s=arc-20160816;
        b=Fhv38guBx6CWbn0GAVRSMCDHZewRPzyfyYwuQgcjq8A96/xafIQuGc87T5GqPchFJv
         ZmJfBrKvt/knJAh53105qLVC/oW/VblwZTWmvhvBc7y7QOAJy/pv86wz6d4SX7N5+Vmx
         V/kN2ai+N8fdJy0DOi4wKsHZgEBt3uJeU9iXda/d2dhDe+LJmTthn5xVo948t+IkZzFp
         odxtD0+mujfkCJ4Qv1g3Vg+fQQ39v+5/Ghl2VSHNailnoU79prsEWdp3hDl2qYPSQP05
         8b3k+29htrJMnNooBvO8rk+XHv9fynjRBLSbdXtSvLdou6iyrCOM7AoIxvoan5YmNvTK
         IQiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=3zDfPC8c473U2B1lth6m82gMTyJe4q4msYamLK9VQAk=;
        b=0c8rUbvcni/PqOOL8hIfCkQoa0o9urKWwYZAb9TcUukFFO9GlqKkLhh5A3PqCGs+gu
         ttxQ1I+eZs2yUkJUDifTZ+NpVUFkkS7BPB8McgoStF7kzghcYKj2beou8XjB1hV5Cr02
         T9Wjg/5g8eBuwVHURrjhseMg8ZwRnMfsNKLh9/p668Iv/9Q/qBEvNIc69ZEfGSOTQfet
         HAWxJ65z0ssISsRHWGNiD3vX1XxAJjfNidGk/qJLBW/gxzMjehqnfkUShfh8QKN1HxW5
         cPRWHA7Ns8/XXa4GBva7ts0IzOKBTV8i6f2blJnEUaRnjKiawqu/sH2jaXlH90jG5YpA
         aPLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=GC/CUIWc;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id h63-v6si1330268ith.0.2018.03.26.10.13.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Mar 2018 10:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=GC/CUIWc;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-io0-x243.google.com with SMTP id v13so24141577iob.6
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Mar 2018 10:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=3zDfPC8c473U2B1lth6m82gMTyJe4q4msYamLK9VQAk=;
        b=GC/CUIWcTczfSD9311PcWRTtZhm2XTtUuvTOcEEidNr7E/bTpC4N5YBNp8GO9ttAt8
         m4cvw1vNQLzro8oIjKPKqTImAF0bOwWpRwBxC3ETUrOdqkVTNgikQyhMF3W33gQyRYpz
         xGpDaMrJujac6bzWO4C477mCq/n4DvTwHeg+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=3zDfPC8c473U2B1lth6m82gMTyJe4q4msYamLK9VQAk=;
        b=MEsP7ckLqnzx1taYa213uqp9YEZSlApC7dJmq/nUJVpegsx1HjhDadNnQMBFEiQnig
         2Q9hhqLNJhsktaqBiEOJqxVzd6B40OcK6cMEzfqejYXO0jJ2qcDBdmYTtbAruj+J/36P
         w7UOYE5FwMDKXwb+XkXZbVS/jfxVD6ZbY6n7I/1l1sYziD+lB40KSo2D5npB0B096wQ9
         prBEKSwL9RFHPtR5G/qwetAgzdCe4CM2KzdfSDNvWUn7A3BxOjkcTU61j3TrF5A+9ozk
         h1TY332JyfgYiMxZep36Rlatijwidd+ivDQ1UcXy1ZpUBek4ygBe6sy4Id7CQSlrWjGG
         zFKQ==
X-Gm-Message-State: AElRT7FDVFh8ifj9bh0mTaxFzgMBJmH4zA8z8R4Hvz7doOGE1uftL9TS
	T8FuG62HwFMikO4OM5eZcVpFNBlhRcVhVGhDQpEMOA==
X-Received: by 10.107.183.4 with SMTP id h4mr41060393iof.201.1522084394039;
 Mon, 26 Mar 2018 10:13:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.128.23 with HTTP; Mon, 26 Mar 2018 10:13:13 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1803261859440.5291@hadrien>
References: <c7a71e8e-89f1-442c-a3d8-65661c2fa9d0@googlegroups.com> <alpine.DEB.2.20.1803261859440.5291@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Mon, 26 Mar 2018 22:43:13 +0530
Message-ID: <CAC4++KCa9a=B8KZ0_2NiRu_MA9NyC_OvbC2hvzZFi5+CyhdFbQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] dri-devel IRC channel
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Mar 26, 2018 at 10:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 26 Mar 2018, Nishka Dasgupta wrote:
>
>> I joined the IRC channel for my selected project (dri-devel aka kernel GPU
>> subsystem) on Saturday and asked there how I should go about formulating a
>> timeline as required in my Outreachy application. However, I have not yet
>> received any replies to my question. I am also not sure how to proceed since
>> I have never used IRC before, and the Outreachy website specifically says
>> not to email the mentors for specific projects directly, and to stick to
>> public channels instead. What should I do, since the deadline is this
>> Thursday?
>
> Please contact the mentors directly by email for any project-specific
> questions, unless the mentors have explicitly told you do to otherwise.
>

Thank you, I will do that!

> julia
>
>>
>> Thank you for your time!
>>
>> Regards,
>> Nishka Dasgupta
>>
>> --
>> You received this message because you are subscribed to the Google Groups
>> "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c7a71e8e-89f1-442c-a3d8-
>> 65661c2fa9d0%40googlegroups.com.
>> For more options, visit https://groups.google.com/d/optout.
>>
>>

Thanking you,
Nishka Dasgupta


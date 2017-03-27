X-GM-THRID: 6402257939123404800
X-Received: by 10.31.196.2 with SMTP id u2mr6045982vkf.24.1490644680077;
        Mon, 27 Mar 2017 12:58:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.241 with SMTP id 104ls8956496otd.35.gmail; Mon, 27 Mar
 2017 12:57:59 -0700 (PDT)
X-Received: by 10.200.48.218 with SMTP id w26mr7930466qta.42.1490644679698;
        Mon, 27 Mar 2017 12:57:59 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-it0-x243.google.com (mail-it0-x243.google.com. [2607:f8b0:4001:c0b::243])
        by gmr-mx.google.com with ESMTPS id b188si81888ite.3.2017.03.27.12.57.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:57:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) client-ip=2607:f8b0:4001:c0b::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c0b::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x243.google.com with SMTP id e75so6682483itd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 12:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zkk2Kw3dOKGt3+Dnm9lDkpnaT5GKVAz/TA5/9mwkA+8=;
        b=UiyRjoNenBswlbpPZDzgaG9pufDeHBZMBhp+WJ00ZwP8ImZCRDswAiJJllz9EGGYoB
         xCgn2Fg7RUUNxWo3ZBo9ghGFxxRAtTClPh+aaEl+ACLI0R+WaApT/C0EsBfL0165TXw2
         x/VQxXTcA+3K1eD8TyUUexWewTP8kFektsKYfs00+zP0yyXlRpajD6xqXvAJIs8Upnpi
         O4dc9xLurXeomnZMI3AXYgKL/jLcoVUegZ+3QWBOh64uD8TWeZ0j2YYmarAUi6BawO9x
         OHyJlsaEDgQfC7evgovdrogDLCWQQPENRHgKN1Ozx6K2wViiulM8HIlhz12QWBsekUJC
         jVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zkk2Kw3dOKGt3+Dnm9lDkpnaT5GKVAz/TA5/9mwkA+8=;
        b=G/irw/3gGzV2hnfxFBR85aXfQqIDv7Rfi/bDQq/RAbm7hjmDX9hoNP/slHxXaeudnH
         sSep5wf4CrB7gFycf+MSTIWb9+To5WYZAG4ULyz8oiSBSLOvQR34idxBYWzyvk7RJgTJ
         pzuo1a0UosB1LNCXb064njRm5fQ1Pwq93zV6aXFaANprgUn+8NPbTb7yezTWjRNOdipk
         +OrWZP6wJBdtfmsm7OX+4RJbmOavBCMVQ8QnixILsmBI701l6v8aF7WjRyBaQKdqXINs
         8gvB8zlFtw1W75ULOmTGCqHMCOH2CfbPovH6fVxzjby2ZiHnqPBe+FCyS+TQfh2yd8ZF
         oIxA==
X-Gm-Message-State: AFeK/H0iu53YPCbqcqWWi/mWMTnNoNBsxcTOPNCt3L3fjDCIP5JAvhRmC2ZjYvwHW9e1lG0OjUTKiprHFOIiwA==
X-Received: by 10.36.64.198 with SMTP id n189mr12063832ita.6.1490644679448;
 Mon, 27 Mar 2017 12:57:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Mon, 27 Mar 2017 12:57:29 -0700 (PDT)
In-Reply-To: <CAOCi2DFt9kYKDE8Cn47Pbh=B4-E_PLSKLxXLmsdjfdyNWwcm7Q@mail.gmail.com>
References: <1490641815-12741-1-git-send-email-gs051095@gmail.com>
 <20170327191239.GA18080@salvia> <CAOCi2DFt9kYKDE8Cn47Pbh=B4-E_PLSKLxXLmsdjfdyNWwcm7Q@mail.gmail.com>
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 28 Mar 2017 01:27:29 +0530
Message-ID: <CAOCi2DFc2aURc5gAuF5q6NLvBwiVSbF6cpoF=ipfVwntz=86Hg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] iptables: Constify option struct
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: netfilter-devel@vger.kernel.org, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 28, 2017 at 12:45 AM, Gargi Sharma <gs051095@gmail.com> wrote:
> On Tue, Mar 28, 2017 at 12:42 AM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
>>
>> On Tue, Mar 28, 2017 at 12:40:15AM +0530, Gargi Sharma wrote:
>> > The struct  of the type option is only used to initialise a field
>> > inside the xtables_match struct and is not modified anywhere.
>> > Done using Coccinelle:
>> >
>> > @r1 disable optional_qualifier@
>> > identifier s,i;
>> > position p;
>> > @@
>> >
>> > static struct option i@p[] ={...};
>> >
>> > @ok1@
>> > identifier r1.i;
>> > expression e;
>> > position p;
>> > @@
>> > e = i@p
>> >
>> > @bad@
>> > position p != {r1.p,ok1.p};
>> > identifier r1.i;
>> > @@
>> > e@i@p
>> >
>> > @depends on !bad disable optional_qualifier@
>> > identifier r1.i;
>> > @@
>> > static
>> > +const
>> > struct option i[] = { ... };
>>
>> Applied, thanks.
>>
>> You can probably have a look at ebtables.git, probably there are more
>> things to constify there.

Hi Pablo,

There are around 18 files being affected by this semantic patch in
ebtables. Should I still send them as a single patch(since it might be
difficult to review a large single patch)?

Thanks!
Gargi
>>
> Okay, I will. :)
>
> Thanks!
> Gargi
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170327191239.GA18080%40salvia.
>> For more options, visit https://groups.google.com/d/optout.


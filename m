X-GM-THRID: 6472784237919469568
X-Received: by 10.55.7.143 with SMTP id 137mr20982802qkh.46.1507129531165;
        Wed, 04 Oct 2017 08:05:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.34.84 with SMTP id i81ls2170254ybi.2.gmail; Wed, 04 Oct
 2017 08:05:30 -0700 (PDT)
X-Received: by 10.129.55.194 with SMTP id e185mr1179829ywa.35.1507129530256;
        Wed, 04 Oct 2017 08:05:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507129530; cv=none;
        d=google.com; s=arc-20160816;
        b=m7HvMiZn2EZSNkBOIXLSoQrwL/Kp/1paySHd32rkChse+QlIl3x1IcHRMZng6l2OgY
         MMIXnvnaK7oFIEiO+AtDd+uTQaFNkobR/mW4zHTSc38tziFegkE8Pluwi+4uKvRZQob8
         p1ogY6cuaEF5UxRmlAOeTT7LR9hT3YYlu621ewlZTiXw9mFV+QIjv8zh0jzI9RVp4K87
         OcGenOQ+jXHdwtai5c9FgxRL62PDykjVSXBTB3drwXBpxDScb73Bn0/1TwzQ89n65zNU
         Ds3S/rVag81xiG3wOX4R69MVRyqFILKonw9eptNQfTokHa9s+8ohd7dOVIRl9Fvx+e5G
         vuMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=jBBUoabK31cZtljkzwAKyjt/RbrnDPsborebGu5b1Hc=;
        b=SgNLIumK4KJQ6F+e7m7slYu36IUZh38hXsIpOXlnjypDHspz3QxrNqrTEJcuuwxHX1
         6JzUHqEoV1SwZ7SsDCigugaFoN0bf8Z20RnDpkkJ1tYh/KNFWqeCzAzykivMDj1wbwCW
         VPZC2kuLsTojCuxHKGrffdrJanUcCAIbPnSDrLTILqoQKDemZiegbCM3Ib8i5ThPMfkS
         uOdjdJm/2G6wMGS7mzWg1jUZBmlIePPZApdurlsf15AJUPmnJtQ4/8MyEPho6S5v8I/E
         mmEbKtkaKZI9tERrsAfbYzdiofAtPWgLThdgEdbTfDBa3bZPcI6c5+DC5Nr+4h5bZcEj
         FWig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lxEl+ghn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id i77si862423ywc.9.2017.10.04.08.05.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 08:05:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lxEl+ghn;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id k123so8254089qke.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 08:05:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jBBUoabK31cZtljkzwAKyjt/RbrnDPsborebGu5b1Hc=;
        b=lxEl+ghnq2Ij4YXE5fUtA79SZE1YmeK6iXLyjS9UQiSe0ZymzCpEvFGQoSsxF8h6e0
         IjeIAv3JlgkhcBS2uECYdbhducw27GTJ2jqpejEetVCw/kUnXUX/MxmIU1pu8+WeRRQY
         JZExzkBmR0G/i8a2lcukAA5mszFn3znjfXJF9WQmwhltBRPNdRUvkv/tJxsz1N0jhC1q
         PE5uuhy/LdKBO4NmFG6JbuTmrgQqldC55sve5T2J9/ZBq+2ctMVEnGB3YvYy8DJnqgDB
         n+wK5AaJ0yn0juKTV8jOSRyJ7ou6cK3iF7pw+7HY9F0s98o1bY7OdeGRa1HeP1E1o4YY
         vRBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jBBUoabK31cZtljkzwAKyjt/RbrnDPsborebGu5b1Hc=;
        b=gwjCyQguIQr2NO7qxuUOjkrKB3y9Ra+AcjFUyyMzeS1IwGgvTTnNYfZjeh63wvLCd4
         QVaW7KQMRIerbJ+6sXcsVEKeqi11Ywtc3WLgHejPcgDqbQMxUmA5N2PLo2wgWo23SsF+
         lnB1uZtBGOpFB9SKpEEvVGei6+jkRUY9zaqFD8+G+WraEliLpyRvm669LeO+hlAcBg7I
         u/sM3M14yf16sZO9+pTgJE6jIXAXLaN9+F34PZ/bbRzVRF8XyHrDKNuxEftq1DDqL1z8
         WHvcaXwF9Z1dXKccn96HOARds7sbF8FWW7oia2G6dFD9QJ91gwByYqD/oELJ+B3Zo1m7
         89EQ==
X-Gm-Message-State: AMCzsaWspJSCOfas1/I7EyjvG/J/ckV9IYx9a34et8I6zqeIFvBEc1Gg
	CfU4CGFHZN/3p43pm9HrJx8H68H1EIAXMoGfovw=
X-Google-Smtp-Source: AOwi7QAvrkl/OlU0cpUMC09X3HOdn9LpBU9FbYy/qm0fT9zc/SxUcgW3Q17JqXXVqWoFgOl7BUKoOl07RnIhugo/Hh8=
X-Received: by 10.55.158.15 with SMTP id h15mr21865499qke.32.1507129529936;
 Wed, 04 Oct 2017 08:05:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.57.196 with HTTP; Wed, 4 Oct 2017 08:05:29 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710041641280.2815@hadrien>
References: <1507062512-9145-1-git-send-email-srishtishar@gmail.com>
 <20171004112103.cvu5ipkudfpz2adc@mwanda> <alpine.DEB.2.20.1710041537060.2815@hadrien>
 <20171004144012.jciztelhwjdyzpwg@mwanda> <alpine.DEB.2.20.1710041641280.2815@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Wed, 4 Oct 2017 20:35:29 +0530
Message-ID: <CAB3L5oz=-bU2oondnzRypSfrRxuj20F=sdcZr=+V9EQAojGF0Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: core: Use list_for_each_entry_safe
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, devel@driverdev.osuosl.org, 
	Greg KH <gregkh@linuxfoundation.org>, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 4, 2017 at 8:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 4 Oct 2017, Dan Carpenter wrote:
>
>> On Wed, Oct 04, 2017 at 03:39:30PM +0200, Julia Lawall wrote:
>> >
>> >
>> > On Wed, 4 Oct 2017, Dan Carpenter wrote:
>> >
>> > > On Wed, Oct 04, 2017 at 01:58:32AM +0530, Srishti Sharma wrote:
>> > > > Use list_for_each_entry_safe when the list elements may get deleted
>> > > > during traversal.
>> > >
>> > > This patch is fine as a cleanup but none of these are actually buggy.
>> >
>> > I'm not sure what you are getting at with the comment.  The commit doesn't
>> > say that they were buggy.  Perhaps the commit message could have been more
>> > verbose, like "Use list operators on list_head values.
>> > List_for_each_entry_safe is needed because the list elements get deleted
>>                            ^^^^^^^^^
>>
>> It is not *needed*, the original code works fine.  The problem with the
>> original code, is that it's ugly as sin.
>>
>> > during the traversal"?
>>
>> The changelog needs to say *why* we're applying the patch.  At first I
>> thought it was going to fix a use after free.  What I would prefer in
>> the changelog is something like:  "This patch is a cleanup and doesn't
>> change runtime behavior.  It changes an open coded list traversal to
>> use list_for_each_entry_safe."
>
> OK, Srishti, you can put that.  But change the subject lines too.
Ok will do ! Thanks again.
Regards,
Srishti
>
> julia
>
>>
>> regards,
>> dan carpenter
>>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171004144012.jciztelhwjdyzpwg%40mwanda.
>> For more options, visit https://groups.google.com/d/optout.
>>


X-GM-THRID: 7018981355604148224
X-Received: by 2002:a05:651c:511:: with SMTP id o17mr28445202ljp.96.1634551187134;
        Mon, 18 Oct 2021 02:59:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3499:: with SMTP id v25ls255177lfr.0.gmail; Mon, 18
 Oct 2021 02:59:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzWfBfiNwtLUqEgrQQMqyPdSg1AZWPAS6HgdWPArBUku7CbDwEt9hEOuae/PeV1z3e8sp+q
X-Received: by 2002:ac2:46e6:: with SMTP id q6mr27050770lfo.212.1634551185060;
        Mon, 18 Oct 2021 02:59:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634551185; cv=none;
        d=google.com; s=arc-20160816;
        b=MxnJVvylLR5q2+PB5v2duBg5+L6NY3QwQNy9xrgxVQjjRCft0vXOF2Mrofh7amNtbI
         VAXqhMA0/wkdHjMYcYqyw1/2/EmdlhhwFHyt6NWNdfNbvwCtN6Evnqv8UCg+O2UL8DXk
         1Q0nzA6xT2Pk5KhyXYjYO336xyS/2ZLfNcsELA306kV+uPdyQzS69QlAXbNlCfM7AN95
         xiMIBof1zCyr5vs2hdcMABFB1Q0hhUW+96StdRkWO8y0AW+H1AngEY2Bv77qfHJe2VMb
         3RfErWY2tzDWsDLoGRLdQbgvxfO4HzpIeQoGWi1dgzY5/UL+A1eThI4QK1PcwABEoh8j
         QOYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=HxEr5iP/vMvsSOQ5c6AZF/uZqQp9phLaZSTucjNr8M4=;
        b=yXlB1hZ8xez1iC0KB24IQY8yMwBC5zcKIrG8SRFdKGP1aRA8kpMY8PgcuhIfNJWcr/
         3GCAgl1aABAm8LhDFVPVKwapB/p7z+ONjgF0JSzpaQvmXKBgH+PPVmQma0+2BOllxOjM
         P++OP7LsGlZyLZBz0ACkJBziAKfXhSMkrtWxY26MJJiobFA5mkOTXh20DA7+v+li8ewZ
         ZrMg4sfTxoxNElKPSqhxdpVtIMuQucajo/sIGCD9zvGku2JBzENzaN9zlyTGVVbrHAtz
         RT6y5+wO2TXdzUaXCKAAbh8GG2DdSEjdPYCIhLmhPJJER02FqORxp+XBzFwp/RPfxyA0
         bKtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bOUP9FsN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id c35si876641lfv.4.2021.10.18.02.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 02:59:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=bOUP9FsN;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id r7so40306634wrc.10
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 02:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=HxEr5iP/vMvsSOQ5c6AZF/uZqQp9phLaZSTucjNr8M4=;
        b=bOUP9FsNrw7eHCrHp8GB/Cfm6c5cGastThdPtRBF+Q8S7gyxLso9twYDiO7LXWaOvh
         g/CQI3S/uGIukkbUpzLZmZx8pSMwPOMiG/PupuZhJdb5uISCau33M1dfaRxfIKM/lc/j
         jri55CBVo9qLJwQbsHfJ25bw4NXGLdmjAW2GGtFFzb2wmJ2nd4LLiDw22agd9G9B2mrg
         UHxs2IL8KwF7zBXKPPyhtMrKrt/QlrYtvgADqpXNNTWzSDMCnqbW+PQH5RMZXueeXvqx
         CGRxYA4YwWa8xqN+kdnhrsf6zXHuvcqu2PcZRptzzvYtz/bEWS/iNcvhRRutwV6CqkgK
         n/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HxEr5iP/vMvsSOQ5c6AZF/uZqQp9phLaZSTucjNr8M4=;
        b=l18siQiFzZ9jtNVomSN3ZT0ILjxWR84QgAIqOGBkRlumrOGT1HMBv+QiIQaMKEXgC4
         Lg8KOBJ5wpEl8UB08SI/FgkLt+T7M95QdALvdoBtMICTdS9s0hXazbz7VeMo3jYWyln3
         bY0IZ9ZnAgkdn73hupvAsNZX/UybniPCjQTyjuBjYtDbXRUGa7iuEjcDCwz6S/DJ2BAl
         rMSwl99aedkj82K7FHN6wcoEpDYjQWl+/hf2Xf4a7NlvgEKgfUl1UBvSRJj0udwVGXcF
         iTO0ZEHd2plJYKRlZmJbkQg4f6InM8Kxwwl4XQhFghUSbOaoY97XrM9Zg+Rsm+xpf9fQ
         d0hQ==
X-Gm-Message-State: AOAM530yw5xSMwXJbRnkp+MIJLylksGJet3IlAbcgGKUUIa9arXL3AAa
	PzrnP2GxtJ6KzA5DgPZ3g2pbUypKwZjl1g==
X-Received: by 2002:adf:a2d7:: with SMTP id t23mr35333820wra.156.1634551184549;
        Mon, 18 Oct 2021 02:59:44 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id n68sm17761831wmn.13.2021.10.18.02.59.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 02:59:43 -0700 (PDT)
Message-ID: <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>, Outreachy Linux Kernel
	 <outreachy-kernel@googlegroups.com>
Date: Mon, 18 Oct 2021 10:59:42 +0100
In-Reply-To: <20211014174207.GA426328@alison-desk>
References: <20211014174207.GA426328@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi Alison,

I updated the `get_maintainer.pl` code section and split it up a bit,
hope it's fine. Additionally, I decided to extract the note on
`vc04_services` so it's more visible and add a comment on including the
outreachy list (as a reminder).

One thing - should I use double-spaces while editing this wiki? I see
they're used there, I added some in but I wouldn't be surprised if I
missed some.

Please let me know what do you think about these changes.


Thanks,
Karolina

----------------------------------------------------------------------

<<Anchor(submit_a_patch)>>
= Submit a patch =

The first step to sending a patch is to figure out who to send it to. 
For this, you need to find the maintainer of the code you're patching,
and Cc the correct mailing list.  If you simply send it off to LKML, it
will get ignored.  The perl script in the kernel source directory
``scripts/get_maintainer.pl`` will either take a git commit or a file,
and tell you who to send your patch to:

{{{
$ git show --pretty=oneline --abbrev-commit HEAD
a490e2e84eda staging: vt6655: Rename byPreambleType field
diff --git a/drivers/staging/vt6655/baseband.c
b/drivers/staging/vt6655/baseband.c
index 0bae35af6e0f..5efca92f1f18 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1764,7 +1764,7 @@ void vnt_get_phy_field(struct vnt_private *priv,
u32 frame_length,
        u32 count = 0;
        u32 tmp;
        int ext_bit;
-       u8 preamble_type = priv->byPreambleType;
+       u8 preamble_type = priv->preamble_type;
 
        bit_count = frame_length * 8;
        ext_bit = false;

$ git show HEAD | perl scripts/get_maintainer.pl --separator , --
nokeywords --nogit --nogit-fallback --norolestats
Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
<gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
}}}

It is also possible to get a list of maintainers for a particular file
(`-f` option):

{{{
$ perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --
nogit-fallback --norolestats -f drivers/staging/vt6655/baseband.c 
Forest Bond <forest@alittletooquiet.net>,Greg Kroah-Hartman
<gregkh@linuxfoundation.org>,linux-staging@lists.linux.dev,linux-kernel@vger.kernel.org
}}}

The many arguments to get_maintainer.pl cause the output to be in the
form of a comma-separated list and cause only the actual maintainers of
the affected files to be included. However, for IIO drivers, please
also include linux-iio@vger.kernel.org.  For Outreachy patches,
remember to include the outreachy mailing list in your `To:` field as
well.

'''Important:''' The maintainers of staging/vc04_services would prefer
'''not''' to be CCd on Outreachy patches. Please CC Greg explicitly on
these patches: Greg KH <gregkh@linuxfoundation.org>.

The second step to submitting a patch is to create and send a patch as
an email.  You cannot send patches as attachments to the mailing list.
Instead, you will have to craft a special email, and send the patch
inline.

There are two ways to send a patch.  Either way is correct, and we
suggest you get comfortable with sending patches both ways.  We suggest
sending your first patch to yourself, in order to make sure it works.



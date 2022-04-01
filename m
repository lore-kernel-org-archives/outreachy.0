Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543147B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 14:39:22 +0000 (UTC)
Received: by mail-ed1-f50.google.com with SMTP id r23so3270531edb.0
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 07:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KXWY0amQsK+h8IxQQIXLBcZhL7CEriAPsR1EIjhrVlg=;
        b=UrJEr/FihjDvom9G4Aescdqe7LLi7N8kSf3ONs/6joxcs0pEnQ0abDMWEHb47MQ7N6
         YyZhoVNrMA/FlKbFdKUgYBWMrTtsISckomUcwyTDVqas/kTZxZwJCFqYv04F1V9Sze69
         yE7QC5Vszs7PYZS3dVQqeVF+vTqkRvfNw6iuObxpdoP3C28zAS/Nzsgzp1ZcaFSwUUeN
         OQAZseN3FG0tZoUACYNdkb/HLIFhZ0qf0wslt4Deol0ThuLbB0O9WfdsyOlCc+Qz2Vos
         yaiskC/CbilAfBrMsYzQVQTzdpsjUKYlCUxFL0AMkKGG2S1usTAV9ELajv1+tt/FkrG1
         sLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KXWY0amQsK+h8IxQQIXLBcZhL7CEriAPsR1EIjhrVlg=;
        b=G6EIJW6NliVrpNUcH+23+HV/4Mr85eg5nWJGxxrQbTQGLCEkEFAhdAMiAh/YRsuSX7
         T4CoEodfotiXX28WrpvWn4FzLjDcbbMsKXaeI6ETGmTCjjUOMZYdtTV+bQ7Oa0dNdend
         e59hWHhmvBWqqnRO34CutotCCz23OeN8wc1UHIV7OokScuqRdV7XetkKVEF28ybAew9X
         5PS4oEbbYWEJAeiRoGyrkGRQeFoYcv6zaW/ibqaVyDFi44XRFZYQrU1qj+bCWPJyCQqr
         bv2cNIg+mMbN6e2Icr9Q6GyZe4r5cV3kr3b6BzF7DRaKGCCLkJUj1EWRmX1wwwQ9rRBq
         ecJQ==
X-Gm-Message-State: AOAM531pYs72PbymFLNBEF+YPZmQE0IIuvpNMp4SZjFYNYgvqnMNXPRc
	RvWIX50V3u9mePtp9uP/roFb/gwESbU=
X-Google-Smtp-Source: ABdhPJyzlUMq/B08hi/u/W/pqqdEqwjiQeoZpwECedd/n658HIoPKfpPjxuD/vfcq75rd6tmX4GK9Q==
X-Received: by 2002:a05:6402:510c:b0:419:3fe5:15f with SMTP id m12-20020a056402510c00b004193fe5015fmr21444476edd.274.1648823960547;
        Fri, 01 Apr 2022 07:39:20 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id b7-20020a170906490700b006b2512921b2sm1105605ejq.48.2022.04.01.07.39.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 07:39:19 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: outreachy@lists.linux.dev
Subject: Re: Compilation errors
Date: Fri, 01 Apr 2022 16:39:18 +0200
Message-ID: <6296770.K2JlShyGXD@leap>
In-Reply-To: <20220401145714.5a0d826f@elisabeth>
References: <3603561.MHq7AAxBmi@leap> <3410190.V25eIC5XRa@leap> <20220401145714.5a0d826f@elisabeth>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On venerd=C3=AC 1 aprile 2022 14:57:14 CEST Stefano Brivio wrote:
> You reported this issue three hours ago and, as far as I can tell,
> there are 672 hours in four weeks...

Nice calculation. Helpful to use to start countdown to April 22nd...
I'm just kidding :)

However, despite I reported this issue just few hours ago, it's since two
or three days that I have been struggling with this issue.
=20
=46inally I found the "culprit": the "Undefined Sanity Checker" (UBSan).

I had enabled it some days ago and forgot about it. When I set it, I=20
(wrongly) thought that, since I have CONFIG_WERROR set to off, it wouldn't=
=20
have failed the builds. I was just expecting error messages, my fault :(

What led me to figure out this explanation are the messages I got. If you=20
noticed, they were all about "case label does not reduce to an integer=20
constant".

Well, now I have some more stuff to fix in mainline for my spare time :)

Thanks again,

=46abio




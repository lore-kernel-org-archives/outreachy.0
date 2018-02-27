X-GM-THRID: 6527234917858803712
X-Received: by 10.107.15.159 with SMTP id 31mr11325127iop.14.1519744934612;
        Tue, 27 Feb 2018 07:22:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.123.145 with SMTP id q139ls370248itc.8.canary-gmail; Tue,
 27 Feb 2018 07:22:13 -0800 (PST)
X-Google-Smtp-Source: AH8x227DykcAmfVprI+eeJp/GGSDZ1JvRYITgd16ODpj9I4ldgBTvsXtSt7zU5l21lLG6QMvCicr
X-Received: by 10.36.123.129 with SMTP id q123mr11619375itc.17.1519744933549;
        Tue, 27 Feb 2018 07:22:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519744933; cv=none;
        d=google.com; s=arc-20160816;
        b=j2UFc0Yy+AAJs2A6H6Wlcf7e7YR0G+HK1Mtl/vplmu7gwTc4PJl5SmWEHnjkEvoSqr
         c5hRCb2Vv8ZxiPvulXDaLfujkgB+RmsrLLpAzLRVlfDGzy0I7vneiCXNFx6rz2KQ6ghK
         H0SZpDK0IE+1xOOlSfcZQYY5XMea/zHAGq5YWdo8ua6HzIjuWjS6Zrz7/PfGtJSJK6IX
         k8YM9edeA83FETVHE2RD9y4GnZ9PpcdomwwfaIbIFcooATEcX/usO31MEtStWkRqKBqr
         pxIGKbTYTPkeQNSKszlrXutpRsNupMpBKfjV/ao4dGtiI/YJWf2BJO1saWBLzg+6yJ1+
         tm/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=8yz4No3C3NfZoOSdgg3JTGVoXzlwRkdgri8bT8kUyeQ=;
        b=E/j92/bwwLr/TEn1HCApk8t8U7ceQNHASJRxzNCkvza4nin6feu9lWliNdAEG/d2FW
         +ijtc0oM7b+bFYzzdxxIjqEraTCPb6vWwxGd3UQh5Zr5cJe/4VGet0+i9xEN0OwXn4Fj
         +MHpC31bslUF1fo6Piy3oR1nWB9LragvnRpENGh1J4FoebipeXrxvDo4M6Wi5E7h5/jr
         Mo3BE7SbsbP3G6MRSIM0DUqJR2skTf5Cp7cBofgK8MzhUP3gMQJbmEY3U+5M+1ivxMZW
         NHfbD1CzIM+49qeHDzVovglkowdM4POT2728xdipSkVGXIrpUHXxUV4g/bRrXn73Zgbk
         GFQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NFZxs+P7;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::231 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <rvarsha016@gmail.com>
Received: from mail-it0-x231.google.com (mail-it0-x231.google.com. [2607:f8b0:4001:c0b::231])
        by gmr-mx.google.com with ESMTPS id o6si926453ith.3.2018.02.27.07.22.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 07:22:13 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::231 as permitted sender) client-ip=2607:f8b0:4001:c0b::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NFZxs+P7;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c0b::231 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it0-x231.google.com with SMTP id a75so15512532itd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 07:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8yz4No3C3NfZoOSdgg3JTGVoXzlwRkdgri8bT8kUyeQ=;
        b=NFZxs+P7zLZr/X47gH4mI5kRDvk7NIesz5cXCkktWHHUhy2Lh8/Szr1bzNqnSxH5Zu
         BAHkYpgQLmug6kWIGAqCYKFVkftTN78X8ubqJT4DIhdiNKxRLsfXCwpXs2ARVJVPYQUl
         Hz0ZNgCRByB0c9t+wd7Q6DVH929XhZDErpJe2RzhTjA8GvLeTAXpgQtxVuiidtp2d4Mc
         SJ1KCB7mRl2Er0AhF29UcYZYeKqWi7H/VwfE4fiVkkQEmD3nj6uefhtIKuXZxY3l2bBp
         fSh+ER9OTC/5jT4CfezotZByC9qzebtpgZU8ZNeL7ZCuJG4sXAZLl8Q/b9rCb4OOC+JU
         9uUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8yz4No3C3NfZoOSdgg3JTGVoXzlwRkdgri8bT8kUyeQ=;
        b=JZb5PEBhZJwXL5B1Vaj6e5/JAHhscgR0KvxYfd4MTFAjs4Gq26ndKzHFDr5Ne/vsjo
         m8n9cGglI+FjCX4oqphMvinlTV+iBPpi9ze97rdCd9HysTmbk8nK56K95HzL7ytlFb4L
         8YvtK+pM9UO5UHcYCeRYfdVPNW7XjVy31coeHi0BhwPvvtj5r4MQf9M8aiqZGKuLZck8
         u6sTG5ZZ8r3s77o7IWZ7WVH9pvY+WDJ7uUNtbsrp4Y6FOEQ7eT1QTT8w4PFlOdEFc5eW
         ltLP9rILDXrCUZnVov02xIFhKA6Ld7uaAxvthe0LNRxaP0mMopDdd9pMmQuv+ukla+KD
         QBdw==
X-Gm-Message-State: APf1xPCxBoUiKhZ1V8kI972DTWKvuEymbwsKyYnfUojbrPRu/9P2QpTI
	XvccA4Wp6ms0TYPTCfd5lF27dxArILjNmlv9IBfY6Q==
X-Received: by 10.36.133.194 with SMTP id r185mr6028035itd.26.1519744932938;
 Tue, 27 Feb 2018 07:22:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.101 with HTTP; Tue, 27 Feb 2018 07:21:32 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1802271511460.18318@hadrien>
References: <7597d005-1a8f-486e-a706-25f99b7b126c@googlegroups.com> <alpine.DEB.2.20.1802271511460.18318@hadrien>
From: Varsha Rao <rvarsha016@gmail.com>
Date: Tue, 27 Feb 2018 20:51:32 +0530
Message-ID: <CAAFX7JRW5YAfzd-gR+YACa+2aAJ405oDYF8Lh9LTyckbLwcLyg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [IRC] How do I join
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hi Nishka,

On Tue, Feb 27, 2018 at 7:42 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 27 Feb 2018, Nishka Dasgupta wrote:
>
>> How do I join the IRC channels? Simply clicking on the links leads to
>> "Problem loading page" errors on Firefox (Windows 10) and Firefox (Ubuntu
>> 14.04). I apologise for the stupid question; I have never used IRC before.
>
> Maybe try a client such as pidgin.  There is "join a chat" in the
> "conversation" menu.

You can even try Hexchat. Refer these links,

https://code.tutsplus.com/tutorials/irc-is-back-heres-your-starter-guide--net-31369
http://www.ircbeginner.com/ircinfo/tutorials.html
https://fedoramagazine.org/beginners-guide-irc/

Hope it helps.

Thanks,
Varsha


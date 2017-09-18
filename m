X-GM-THRID: 6466031542191783936
X-Received: by 10.31.170.201 with SMTP id t192mr19918470vke.11.1505731217864;
        Mon, 18 Sep 2017 03:40:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.180.22 with SMTP id d22ls8339335iof.48.gmail; Mon, 18 Sep
 2017 03:40:17 -0700 (PDT)
X-Received: by 10.107.104.8 with SMTP id d8mr8159275ioc.5.1505731217137;
        Mon, 18 Sep 2017 03:40:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505731217; cv=none;
        d=google.com; s=arc-20160816;
        b=kkLnHtr0cbPCkdCxIIr1u/7Gxv4e4YYIhlLtiSo6RB+bw5eoEa4/2jo4RVKCas6RDM
         f0xLo6CFKgPJXQGate/oxG4rom+BUFMlUnxwC2lNu7WOM6Lxg5Ngtu4vQT9SwnRO4Jka
         JP9P3eF3/dACIfrAvxj1lutXM03G8LadT3TPIDNVHmG7NuMShoqTH5Y/yy5K2SJWziRp
         fDPKDWaLtGEjqdKvo1KzieaKzEcmTK9yo/rAVBQDepGZyHLAMocaG5G8ZYG9rgaFkYY1
         KDgeOc1kkI55vHvGBqk5SdNluyzaOTG9cU2an7w49gL0KhZdKolstjZ1TOOMzmW4HjTT
         SzDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature
         :arc-authentication-results;
        bh=/GRXFRYColcdx7I60KOpuIwOMyTidhqOXon2RevpAuI=;
        b=lP0z/10fNK6H30WrtyDTPm/WCbLcQmsv5S9TRjnN8U1/iTcvMCfdTH7yvQrLELKStY
         YxcfrXoWe1xo/csdLjQoy2btRW3yXK3adej077A9eWYbQbjAXf3kAe9UAUX9/IAflRa+
         VGxqloSgSVj8jdLEY9cP4sWY4UDos6MvmKh9+cOUNSbWa9p/a6jFnTlkYBRfG4/NXsPj
         cNhLzjNeyTvXl4J2GrwSjJ5kYvKdxMOCcoiA529S18ne6864mPi+3avBRI3ai9yZu/Qj
         H3rS1Zcz8zx0Nqugut5ao+RjkEcxRoSawHPMNg3tmk473MC43nI0RdZ8WBnhaK5Olcqh
         C9ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7ckfpMV;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id p204si345028ywg.12.2017.09.18.03.40.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:40:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7ckfpMV;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id n69so538859ioi.3
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 03:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=/GRXFRYColcdx7I60KOpuIwOMyTidhqOXon2RevpAuI=;
        b=A7ckfpMVDqB66dTcpQKpbRvW8/Q8dTyGJqAi/ZIbRY7oLR2KMZGP3fLFR23Y9BwbV6
         Ugkd71gmu6NiybIZvUsOnd23KJRfOjqgdT3pR+Uxl4t88cYscACqilT2ChnGgGM69JWz
         3TeAkdKdtL9hFyDrIuRjzfnAvOc7PL3DPvp9otnJNwSJqXdVhp2XZldv4E2DOHtohrhQ
         Gw6TUQk9ZtjLGBjBnL6hZ/DFLZnCUc2MakhX5SSTtRlOFp/OMNeRcRdaUKH6gxKk86dJ
         67KjghIroXm/+2IKzvDfzvse6NNl/cdaAQEVQnsrCuwt2MuZ2glzLYDXcgeDcrY6YsPD
         EtMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=/GRXFRYColcdx7I60KOpuIwOMyTidhqOXon2RevpAuI=;
        b=qDbIKQR5ui0BDyU7kdMd8YKNKgGDom3MH1VjpJaA5zgaJ/YvB8ciIriVWjjBqUVhY1
         xpCFSYad2DY4jWcOMcrKuhmH1qRDlrGHaADtBn0ByJhqf5iI65Eg1P0ayFxo1SmUGxrz
         xWVFs5fK0X7g6UGzkRaUPTgVS6ZIL0EHHGKaMrOxm6eOu9V5tjwno35xh0mmAkyc0tmu
         XkT1IVB22OUwUw8xCIWDl0JrDhidvQojScMZJCPPUv4EtCvi3J0OBjX2jHc8zLtJ84W8
         IG7AU38VjE7YxnC9j1J3oE4VcVK+Q3enuR0uD2T6ErKAmgDD138hipOw3awQK9qootRo
         0M3g==
X-Gm-Message-State: AHPjjUgLlyMZBMQLNjwJlpv4Tgek/GXLk+r7wzpB87Kz78q1lZtA20uR
	Ps5cdvMBDQwdJRzIRvg=
X-Google-Smtp-Source: AOwi7QD3yN1MzDbiF4pbMU4OfiovC2qydhuw7D/qxE43tpgKPvNkBLCqKbenZfLtI6y5Io659CBKRw==
X-Received: by 10.107.142.72 with SMTP id q69mr16445297iod.58.1505731216652;
        Mon, 18 Sep 2017 03:40:16 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from [10.66.119.51] ([42.106.56.36])
        by smtp.gmail.com with ESMTPSA id g100sm3519090iod.39.2017.09.18.03.40.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 03:40:16 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] Staging: Dgnc: Remove unnecessary comments around control statements.
From: Keerthi Reddy <keerthigd4990@gmail.com>
X-Mailer: iPhone Mail (15A372)
In-Reply-To: <20170918094344.GE9461@kroah.com>
Date: Mon, 18 Sep 2017 16:10:12 +0530
Cc: outreachy-kernel@googlegroups.com
Content-Transfer-Encoding: 7bit
Message-Id: <93313CDD-AD83-4C44-B42D-1A680A84640F@gmail.com>
References: <20170915154434.GA15633@manoharreddy> <20170918094344.GE9461@kroah.com>
To: Greg KH <gregkh@linuxfoundation.org>

That make more sense. Plese don't consider this patch.

Keerthi.

> On 18-Sep-2017, at 3:13 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> it is good to keep () around things like this so you
> don't have to go look up the order-of-operations to ensure that the
> developer got it correct.


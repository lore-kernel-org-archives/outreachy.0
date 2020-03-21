X-GM-THRID: 6802515514721566720
X-Received: by 2002:aca:dc44:: with SMTP id t65mr1499643oig.176.1584775601682;
        Sat, 21 Mar 2020 00:26:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls3165477oia.0.gmail; Sat, 21 Mar
 2020 00:26:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vviDTg/1VJA0g6dHnmOeymrY4ljjtW5sTPdq7O8BZSYBjiLIuDmNsW2BZ+iJHqTsrcmYEk/
X-Received: by 2002:aca:2801:: with SMTP id 1mr9784452oix.168.1584775600543;
        Sat, 21 Mar 2020 00:26:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584775600; cv=none;
        d=google.com; s=arc-20160816;
        b=CpoIdovdqceFZoYiYUSyIXsWlszPY0tPz7LKPWST6akoKCcWdcHJGCxBdxMp6bua+G
         1x6lcmCcWhU9p5z9j0aFkYSASQHstyajdZbPe6ZxGGcvwX9KaThGrFhBkCTsr3xnIVU7
         BY9taMFLvB+qhbg8sPOaVqNicos3oGwhbX5KWIhoaf2SSY4P+ujFt7k+IZ3b3LMQKOaB
         qjoJnQC145N+2yVPYf4qZeIwu0osF7kwNg/p0aZveek7X30Uo/Sd/PzWwZ3t2gdqjI1i
         0UpzNdtuc8DWYRB5HJi+qJURMntqebjsrMmRLD/tWGvG0KQZsNmZs5xM2MZD24L3pl69
         SQeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=2StGhdWUNSfhFYs27yg6+aLtSvD+cS+lCWdMpzWnE3E=;
        b=e0eTLyxOU/c9GKe3LxeufTC9ZTrO8hzSmNG7yimqfEQBFIMJolndTjt5yN1/afoIBk
         hPBQkMaIqiMcxsnWxc9Xn6QVOYGnCeU8qagT+oiefqmAEGJdbTa3uSRLtB0nmfIhe8Hm
         sE+kLY4y1tRfAzTwYO/Daqf4FRA+ltlkhOZ/n0eAkPx6OUqJka6l3OTUOC275rzkQdnw
         +pqEqmlR1ILvSxWE2bgyQ4AIkfEc78QgHbiPkK6Ze/Cht5qqfMrZ+AGEs7BQEgNRAPYl
         IMdVabR00TnfPYgg7oQFLQOQkhpSTDm1hAUKiZqArhwOa2nM+EJBLizIx+82Ua2Lb6Xk
         K6Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D7I0U/qi";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id d11si457364otk.5.2020.03.21.00.26.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 00:26:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="D7I0U/qi";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id w13so9129299oih.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 00:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2StGhdWUNSfhFYs27yg6+aLtSvD+cS+lCWdMpzWnE3E=;
        b=D7I0U/qilotX6BNv4wJOh+VTuSmq2Iph24M9wdHqK0rTOA/wcvBqYUxrCecDJMcYKW
         iSx0FvnZ8TOHt7I9T/NtPkAURFBFk69FT09uK81N3znHGnotcZ4unV/0fAJZ09vjEBsd
         iAQpbvaq3lgcBYTTvVDPqEBznvmyEtBwg1pzc0YeYC9yhiNnIpLjhYDQdjOmV5FeOlY5
         M/L9RvJ+yo5KBUJ93ZRqHLOAjeWgEog3Z5UxZ9e2/o9NiRefImtWDG//qj6CA2Jwixa0
         3N3woPnkxygE3lJuZzTydxwjgSuAh0d72iVucFKrzcLPxoO0s9zBC51vVJ96fAKoq60U
         3h8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2StGhdWUNSfhFYs27yg6+aLtSvD+cS+lCWdMpzWnE3E=;
        b=PDsaCwn7gv5CfvL8aQOIKRsTnC9StothK8LTI7qcAzJsLl8/e7D0kLENVCAVNXUS0l
         i7qoE+3gc2w7ESdbTNdLZSRQtc17br+LSLIih3kRn03Iouvar69Wr8np34FUdPkegKxv
         y5BDVQ8sXbDWVxXHgIz0hdGqFDsb4peKdrSKWEVYdLa6R9yxeHg7eNQmxO+2CKjopgkG
         9KL9zxYQciESMtOsqV7Rnd26XYI7DHYSGpS7p0LR5lR+wlZtKkHoj43UPB4X0qITSJhJ
         M+aYvWOs3OfqVQaw06ONw/eEuEj5CVvPPR/orbneZQyk4GBOJ+fre0vB/RNNF2WzMn8/
         GjLw==
X-Gm-Message-State: ANhLgQ2c1xWsoCxTiu6uQz7EWmjqZGnmrFvzsqONH7I96X/l+nx+r53Y
	3qDpCCG/zt2kAq4u9FcsgxYB/AcUv7s=
X-Received: by 2002:a54:4e9a:: with SMTP id c26mr9189000oiy.144.1584775600325;
        Sat, 21 Mar 2020 00:26:40 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id m4sm2760885ots.22.2020.03.21.00.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2020 00:26:39 -0700 (PDT)
Message-ID: <a2551dac9465998ba46fbf924a6b8f02f32f3fda.camel@gmail.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
From: John Wyatt <jbwyatt4@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Sat, 21 Mar 2020 00:26:34 -0700
In-Reply-To: <20200321070501.GA850438@kroah.com>
References: <20200320141418.GA707555@kroah.com>
	 <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
	 <20200321065134.GA849159@kroah.com> <20200321070501.GA850438@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


> > > I just sent my patch in ~10 hours ago.
> > > 
> > > Do I need to rebase/resend it?
> > > 
> > > If I do, should I make it a v2?
> > > 
> > > Apologies if you already answered this earlier in the mailing
> > > list.
> > 
> > Julia provided comments on what you need to do to fix up your
> > patch,
> > please follow them and resend a v2.
> 
> And you did just that, nevermind :)

:)

For future reference, if I send in a patch around 10 hours before you
ask to rebase-should I rebase?

If I do rebase, should I mark it as a v2?

Thank you for your time.



X-GM-THRID: 6805874038364176384
X-Received: by 2002:a5d:440a:: with SMTP id z10mr5429064wrq.177.1584636373722;
        Thu, 19 Mar 2020 09:46:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4441:: with SMTP id x1ls1236535wrr.4.gmail; Thu, 19 Mar
 2020 09:46:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt13bHfz3DvaGamGMvRA88nPsBVahEzUIiXxy4Lm+GOlg8smB530I2fR/FPeegVAK+TerfN
X-Received: by 2002:adf:80af:: with SMTP id 44mr5380940wrl.241.1584636372477;
        Thu, 19 Mar 2020 09:46:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584636372; cv=none;
        d=google.com; s=arc-20160816;
        b=iKlnW4yZZinpFJWeFPgx5ne62CasxgMC5liUmI36x1cdvlGIATa1rUYbbPPZmSiodb
         LAap+fhtG5aWy/Gmh4Anx6m5t039kz0UslfNRqryBZI5R1Z4fVyNKHYkjAsTkdz7Nc88
         hWefYbdfkYBK41SHYrITSED8OeskZjaQGYSWYLqGmCFzeLKjguVyqqLCs4f0CkgATK3F
         BnjRfKT9EVEFppdW2eDqDBDCEKuS2Ck15MKOpAtyz3+HhR7Decxmkp8pkIhhluw0Iuym
         b2ZkMWfLgux0EEM2LHFg5K/urk4Ar/QVipxOre589EkHoNv2yvxPxzASoRX636rAUg/v
         ngpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=/V+YhG1vDy8QBO2imwZJkMOrBW0I6L4yGlbK8EYKf/k=;
        b=s5GEmwN9XsX/Wo8qiAQ+lYzWixdF64B1Jn+BtoZu7y6JlYmyaI4YGiNRJeijg1KVks
         3+tI/qvUmlSmWjsJ8Pd7S0c7cycsRpDWPru0lWkvNZKjY6Z91skWJR4X8CRGbqYj2XPi
         rPz5WWrEh2FnZx3GsP8U/X9pp6r5m3LBRr+ocH6NyHbVuqgrRO4jDixbTsb7XefenEhn
         ZpfrW/UpcQAPWelOaAhbOAiCZ901GcFMbAZqVh8xlObDQNoehAV2wmwRNwXS12/pLhW+
         0AODVoMQKhmng4WlETg1/KWzKjZRFZ5lSf3VoaXhwm266jE/thBVSobp65nfDj7qw/1a
         JwBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id m2si340621wmi.3.2020.03.19.09.46.12
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 09:46:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 30757 invoked from network); 19 Mar 2020 16:46:11 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.249.224.198)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 16:46:11 -0000
Date: Thu, 19 Mar 2020 22:16:03 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [RESEND PATCH 00/10] Correction of typos and
 long lines of comments
Message-ID: <20200319164601.GA2240@tulip.local>
References: <cover.1584514678.git.vkor@vkten.in>
 <alpine.DEB.2.21.2003191656520.2312@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003191656520.2312@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 04:58:05PM +0100, Julia Lawall wrote:
> 
> 
> On Thu, 19 Mar 2020, R Veera Kumar wrote:
> 
> > Correction of typos and long lines of comments.
> > Misspellings found using checkpatch.pl.
> >
> > ---
> > R Veera Kumar (10):
> >   staging: rtl8723bs: hal: Correct a typo in a comment
> >   staging: rtl8723bs: hal: Correct a typo in a comment
> 
> Maybe you could just put all the typo ones in a single patch?  They should
> be easy to check and have no impact on the execution, so it is hard to see
> why one would want to revert them separately.
>

Yes. That's what he meant in reply. But I did otherwise because in my
first patch to mailing list I had typos in two different files. I sent
it as single patch and he accepted. And the I asked him whether it could
have been sent as patchset, and he said yes.

Now reading submitting-patches doc it says if it is single kind of
change then it should be put in one patch. And only if it is logically
different then in two separate patches.

> On the other hand, the patch would be just typos, not long line changes
> mixed in as well.
> 

Yeah.

Veera

> julia
> 
> >
> >  drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c |  2 +-
> >  drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c |  2 +-
> >  drivers/staging/rtl8723bs/hal/HalPhyRf.c        |  7 +++++--
> >  10 files changed, 27 insertions(+), 18 deletions(-)
> >


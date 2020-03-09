X-GM-THRID: 6801966173715955712
X-Received: by 2002:a5d:55cf:: with SMTP id i15mr12840625wrw.321.1583771426972;
        Mon, 09 Mar 2020 09:30:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5233:: with SMTP id i19ls3871020wra.6.gmail; Mon, 09 Mar
 2020 09:30:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvm9u/LXqfnWaE1MvSnOz/ughw+JGrdRK/uPgFQnTZS3LpXo0aXuwcOHQNA80A9cPmjM4Px
X-Received: by 2002:a05:6000:18f:: with SMTP id p15mr23601368wrx.149.1583771425645;
        Mon, 09 Mar 2020 09:30:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583771425; cv=none;
        d=google.com; s=arc-20160816;
        b=W6yzJM5UnQudEns4pVz0p3Seb8R83NtRnfh9W50PL202AwVIIlhQizmQZ5TqPV2w7+
         wmbuMDzciWilNFq/IFeP8VMVHmH+yoGeue+i4bvsREQb5hRUAgZSTbq+7Z4Ck4Z3WHKm
         RCsSw2F3qcE92/64/kcmJoxKsn/PCYOCMcdmsHt2cZhzPGlQh6RiOFcFrwCvKmjCP2z0
         uwWAnaMgDNn0sZ2nOcizJgSUnsqC8eLzpSMPFloYVU0vaHpzsD7LImxKbEN4F+oF8hlf
         fvFUjdbuLYXhjNsGaI90NSByh1DrpY54SeKfBsdP2gBAcE4042fbDVX44NZ2X93uHpgK
         mrtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DAVuZ7wfG4Z73fB7oFQ7Fw0YkuQBgScAFjXJlQutkls=;
        b=qNFvZGjP6zUC4+l6SYkUOMZ8S05QgLNnko/y/LQo8a2GUwskU4B8vfaPI1IiTDZoEk
         KmDdkd68z3LR4BR6YW6HTF6oK4Ri76/hCfKWT1O1F3KFqeyg38MRfLLY6D1s+EWquE4/
         HDP8VRLOLyjF3BlG+2EtW0YSwU0Y/BkvTJF+64AFXtpTW69iEGpYsEZw8NWdw4qD4XVH
         oJPkdHulns+CclnURnk0L6vlIyy4pfCDfSWn/bqW0yTJ9RubrnJ4ekjxbLQ7IiCu28LT
         PJrR6sHavc2+BZ+e8YWqR8Njc8HQTaSdei3xs7LrV51K/599w6MwnURtpBAmJKXRz9yw
         LkJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l17si7352wmg.0.2020.03.09.09.30.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:30:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,533,1574118000"; 
   d="scan'208";a="439534599"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 17:30:25 +0100
Date: Mon, 9 Mar 2020 17:30:25 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove commented
 out function
In-Reply-To: <20200309162655.GA3949@supernova>
Message-ID: <alpine.DEB.2.21.2003091729360.4721@hadrien>
References: <20200308222218.16031-1-lu@pplo.net> <20200309125327.422a1807@elisabeth> <20200309162655.GA3949@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:

> On Mon, Mar 09, 2020 at 12:53:27PM +0100, Stefano Brivio wrote:
> > On Sun,  8 Mar 2020 23:22:18 +0100
> > Lourdes Pedrajas <lu@pplo.net> wrote:
> >
> > However, you should at least Cc: the maintainers returned by
> > get_maintainer.pl.
> >
> Yes, I was about to ask because I read somewhere in kernelnewbies wiki that
> Outreachy paths hould no be CCd to everyone in the get_maintainer.pl list,
> but I was wondering if this was really correct. So thank you for the hint!

Please search for get_maintainer in the tutorial and follow the
instructions there.  It gives some options that will get your patch to the
main people who are responsible for the file.

julia


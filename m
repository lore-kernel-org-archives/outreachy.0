X-GM-THRID: 6955730517423554560
X-Received: by 2002:a1c:750b:: with SMTP id o11mr2978459wmc.188.1619510964955;
        Tue, 27 Apr 2021 01:09:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:11:: with SMTP id g17ls8974125wmc.3.gmail; Tue, 27
 Apr 2021 01:09:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxtbrbTTofEg73EHtFA6cWyI6NN/XK/9gc53/JB7dEZJTdja0D8cIIjWWjxLnKUtRkCcggh
X-Received: by 2002:a1c:a914:: with SMTP id s20mr2997958wme.106.1619510963634;
        Tue, 27 Apr 2021 01:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619510963; cv=none;
        d=google.com; s=arc-20160816;
        b=085yD7AhgjORjXcZUevkSCx2Ou5X7d7zjZDLvTFIxu/ir0774DYaHDM3fbwA3wQeDq
         9r2DIVcga8M+GJ0XeRjhDtChI/sm2TIa9bjp1zal1+KNvQ5d9NxbzPPyI232xk7bsbBW
         8YUeggdvMRrwNrBYjS3z/A7gOMW2dl3a1Yn/02xJeOfwLH2TIrbD9/JVnmmKLsPhAWBB
         oOp55oyHeKL6ygSa6c10KeNNazAQ38uY/1PPJFvmhF8ePa0Scr7Qy32zE6fsx2UCe1op
         Kgy1l3PsPGyxOLTKV5//EjX6fUzY8fB86Kz1BcHAJdeI9OCoS+rosnLMtwHUp6ZU23pd
         ajBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=runKSAvUsHWFg5WmOaiFfQXnMZYtZU6vGt8GLgoweEY=;
        b=nkbuQ/+yK+EmD8a3sqYSmyYa0OX08ripcLPadqhD+uo5F3Jhx+iNifJY2/XAF+Maq1
         WoX/rdAaZWM+0iYBFghmxMSNKw0VKXN8My3xI3xQNDk3JzM3Lhjf/N1auEUByRpKVBpK
         S88dTy66RBh7UVKgg9OpDrBP0G99KaOmZSSKOTHPlWxe0xIZGOmrLzg1j3AAyPGhInjV
         tNOoEAdVGctbIbCuzgO929UoCSsz+SLCrcjV4ffl8P9QuahkRw6zv82xuE+1NRcq+pHK
         4BPxG1ubX/pKoM27s2hJdMq+HBNDM15y9ElPD1kY+0fAuFpjm76T6M8TPux2lRLm+UW9
         p58A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MJ7yt/DS";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id y16si1406855wrh.3.2021.04.27.01.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 01:09:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="MJ7yt/DS";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x630.google.com with SMTP id zg3so6646915ejb.8
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Apr 2021 01:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=runKSAvUsHWFg5WmOaiFfQXnMZYtZU6vGt8GLgoweEY=;
        b=MJ7yt/DSJ5Gd5patx5/G4AOVKf27+GmWwkyYRdlB1BnYGb3Kl9i6eVHYGlY0nKtnwV
         XERBkcVjaQeGWvbC3sNYW1Mj9CBd5QoPiUo33cSWDY/HygrVWvOQ7dsVxlUZLgQHJIEx
         0LLB+8jTSYzQ8GnzQ5+n3dSNedzHmYhsye7w6RukLeHC2KRKjwDPGgx9kKjHZq9HI0qw
         xJwhwyO0pVCU7bKXH0XYYLlIn8Y+tXUzuqcvIBpaOaNACWx5dKVRFsM6yCHnb3Z/Zc/i
         e2ul6e4SWsjc3SB0SXgN39+GoUuVPX7s0YYFTXFSqCW21lHa9NsjvTFepuAbbYaqsyhg
         Mzcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=runKSAvUsHWFg5WmOaiFfQXnMZYtZU6vGt8GLgoweEY=;
        b=RLdSBfcPu7qXaSX+JANcPG+b5gFqRAHj7vX68uSdemrWDMndWS8CibheWN0ozmjHro
         +2tLdPZ4bgrslOJSRoiVaNzjKGkxiQc5ycACiXtcjU4K6AhRW2+j/OhM7AJ2GLKx27UR
         fu5jSkonj0U89AR9LT+z+JQatlUORgHgExOHHkpBrRA6i9f6ILIePGfzzq6yfrN+5uAs
         G6h8EOE7z0IYDO+u+9wEDkyIX4Vp5fSai+xMDQtM35gNJ9SjTDLDg5kp0h4vK+P3Y2GD
         42IQkWLRIq5Q3zfkPCdP/Gfd+gUMVfxs3rhsEqavYn6jcUNcsmQBuL3/dOU8D/Cezbn0
         Hg4g==
X-Gm-Message-State: AOAM5331c5jgImMrFTVw9mdPN10ezVMMM4cD2kmfdiLwwhSRmAk5p1Jf
	6PfvPt+xr6wOPplTy0WWVTIQOVpUCBjpfbsc
X-Received: by 2002:a17:906:26c9:: with SMTP id u9mr22120766ejc.520.1619510963396;
        Tue, 27 Apr 2021 01:09:23 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id h23sm1208154ejx.90.2021.04.27.01.09.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Apr 2021 01:09:22 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, outreachy-kernel@googlegroups.com
Cc: Outreachy <outreachy-kernel@googlegroups.com>, Vineeth Pillai <Vineeth.Pillai@microsoft.com>, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] Outreachy project looking for more applicants
Date: Tue, 27 Apr 2021 10:09:21 +0200
Message-ID: <4286858.zKxzTp498l@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104270910230.31629@hadrien>
References: <CAK-LDbK2r+14JB-m4KuU-vy=DAUnv6gmZkEnRyY7Fx_=guk_Ew@mail.gmail.com> <alpine.DEB.2.22.394.2104270910230.31629@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Tuesday, April 27, 2021 9:10:44 AM CEST Julia Lawall wrote:
> On Tue, 27 Apr 2021, Vaishali Thakkar wrote:
> > Hi All,
> > 
> > I quickly wanted to mention that while most of our projects have
> > enough applicants, the following project will still be happy to have
> > more applicants:
> > 
> > "Create a linux scheduler test suite to understand functionality and
> > performance of Core Scheduling"
> > 
> > Feel free to contact the mentor - Vineeth and apply for it if that's
> > something you're interested in.
> 
> This looks like a really cool project :)
> 
> julia
> 
It is for sure. It would have been my first choice. The only problem is that 
it is preferable to have level 4 experience with Bash and Python. I'm afraid I 
have no more than 0 and 1 levels respectively with those scripting languages.

Fabio
> > Thanks!
> > 
> > --
> > Vaishali
> > 
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group. To unsubscribe from this group and stop 
receiving emails
> > from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com. 
To view this
> > discussion on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbK2r%2B14JB-m4KuU-vy%3DDAUnv
> > 6gmZkEnRyY7Fx_%3Dguk_Ew%40mail.gmail.com.






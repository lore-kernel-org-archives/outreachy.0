X-GM-THRID: 6802335278632534016
X-Received: by 2002:aca:b60a:: with SMTP id g10mr800602oif.102.1583841684937;
        Tue, 10 Mar 2020 05:01:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:1c03:: with SMTP id c3ls2987514oic.8.gmail; Tue, 10 Mar
 2020 05:01:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu+Gujt6ez75KPSqsZvZ9tTQnCAh1N9+hsAibP4JCW0U6Cgb1BoVR8vGH8HjJV/wTKgvMfP
X-Received: by 2002:aca:a882:: with SMTP id r124mr837083oie.53.1583841683924;
        Tue, 10 Mar 2020 05:01:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583841683; cv=none;
        d=google.com; s=arc-20160816;
        b=r7S73HoSgvoUrwGCiGVayC6UaJsOgoAqd6iPb10G7PKuYe/9VA4v33squICPkGMlIg
         yPJG9vtF0U2lV2mwhvvXUdYsbBmZfB3k669MfyW8jOPju4vVSWbkfQdAoVVq/HV3nzLe
         8cMkV29hJH2rkjQUfftzEa31JAY/FiJXvo22IeWEj5W+8VXYm9ax/jChFDQMZ9HEMTlk
         BQLrJYgT+BZ9E5kNDK3SMz/8iIfnEB50mDV3M8Z/mb9ddDS+AxKuaeqVDCH1R0oz3Q96
         bqWybx0RNza8ZBRiyFbq6MJKVC9h5GBVadtrnZjemWZKqrY9WDQhVVMCJ6AbaVazc0ot
         RYmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=qkjBVQEf9Juj8v88fKptbisnQ0tsiV+TS25Ncy8/abk=;
        b=gc4p4HFesQuEVbV3mAtqqEZQ3nWcpLhTLbMxVBQdE3x1JwCVP1A/9PGNvHsr2LbEF1
         R3ur3/eyaYwa8TjAmJk+19EIaVDKN2vcrJ91VWRlgZJwwsYibUAQNn+os2n8e9cc5VXy
         U+w6ZYMk4gHGMbJrfVm82rv+Lh2lF/5pp7T6hPX9zmfp0XsthaAy+aAbdDs/xKALjO7W
         5NRqFZEIPt5GDwfBz0RBMUat0FdKsZ4bxG+QsAumIrRA7nvLG9zCmkLVnfYOJ7FaeNvJ
         gAN5r2A8St8dXfuKkN33wUS9v0KGnsLlCn82BPtHbHKX26AtTsBGTOitDuE+r/YbX/wF
         4EpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="BchUQe/9";
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d11si350898otk.5.2020.03.10.05.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:01:23 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="BchUQe/9";
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id t14so5342506plr.8
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 05:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qkjBVQEf9Juj8v88fKptbisnQ0tsiV+TS25Ncy8/abk=;
        b=BchUQe/9R7my8DRWdhostxJYrTLcZjX9EbLZVKrD6aoU1MMuLFH2Rz1WHnbeKcPOuy
         9eaHzp6TCat1bMhg5APqVOVIdmebMgv2noPOcwuSBagx4C3bin063vlcQ10pRzLfhqYQ
         9pzBzaE/chQ7UifOe4XgXF6gS67tCzWk2Q0LctblJv5g2agAphsBrlrJ09pUoDAFEwLN
         n4Wj5ldi0jAzv+S+ukm+A/HgMQB1TVCPB71rjso1GYaSgvzGhxxKmGQ3ibJ94rhxBw8d
         zrhUFM+Bl0DXP2Tut2sB+mu7nPyDCdY17w0PV3PWpCs4KvYCn5tBcs1FF89T2vXszQwC
         UUqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qkjBVQEf9Juj8v88fKptbisnQ0tsiV+TS25Ncy8/abk=;
        b=gbTAam1lat6PdHsJU4VDH30hY5+VnDnjuEwlUdpIzHNkOpkg7+BCm8/OtqcF8N9eP8
         QrDpiKq2/gCrlg1DjW/HNQFBJQLZozigqWootTfiOmqAkip6AuZ90XAvejQMEl6HJ1Yx
         PEmqF4MrSGUkzIIEQKrAC3clvj+SdaPgQ42unL4OmZrLqEszBdDJnIwIp6Vva4fxa5ox
         ZQqgJDHXsEVs52M5oLYCOhSAPnt8Sas2n1PZ5gBwngIKTIhEBFDsRFNbA2u15qSA8TIl
         qZxLwWrlcyxtcztfnhfpJQOv0+RIK/YpJbkFduR1JqDFuk2/DIX7tcl1RzbXhZmKqb4J
         kE9Q==
X-Gm-Message-State: ANhLgQ2BW3ZBnlo+cvn+y+2yPi/KHRNvOtgokOQyG0O+G1JIkqStgDKG
	CdYR6yt6Af6V7TXkXzsUXgGjQQ==
X-Received: by 2002:a17:90a:33e5:: with SMTP id n92mr1280970pjb.39.1583841682489;
        Tue, 10 Mar 2020 05:01:22 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.173])
        by smtp.gmail.com with ESMTPSA id 3sm2350240pjg.27.2020.03.10.05.01.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 05:01:21 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 17:31:13 +0530
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 0/7] Cover letter
Message-ID: <20200310120113.GA11048@kaaira-HP-Pavilion-Notebook>
References: <20200309221449.GA5032@kaaira-HP-Pavilion-Notebook>
 <20200310090646.GA2479270@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310090646.GA2479270@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 10:06:46AM +0100, Greg Kroah-Hartman wrote:
> On Tue, Mar 10, 2020 at 03:44:49AM +0530, Kaaira Gupta wrote:
> > This patch set aims at improving the code style in a few drivers in
> > staging. They have been found using sparse, coccinelle, and
> > checkpatch.pl.
> > 
> 
> The cover letter should be auto-generated by 'git format-patch
> --cover-letter', and will contain a lot more information than just this
> paragraph.
> 
> Also, I did not see all 7 patches of this series on the mailing list,
> only 4 of them.  They were also not "threaded" properly, can you use
> 'git send-email' to resend all of these when you redo the series next?

Can you please guide me as to how I should thread the patches in a
patchset properly so that individual commits get to different patches 
and a cover-letter is generated as well. I am using mutt.

> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200310090646.GA2479270%40kroah.com.


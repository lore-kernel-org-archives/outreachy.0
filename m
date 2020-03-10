X-GM-THRID: 6802585330019991552
X-Received: by 2002:a37:98c7:: with SMTP id a190mr21103764qke.498.1583863997571;
        Tue, 10 Mar 2020 11:13:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4558:: with SMTP id z24ls1204243qtn.11.gmail; Tue, 10
 Mar 2020 11:13:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtW4RNwq3oGG2u21hciRIj+4fq3I4u8MtmAHtPy1KmkqnG1Y/59vLX2tPqm/N+W9KkhPW/H
X-Received: by 2002:ac8:5555:: with SMTP id o21mr18319635qtr.211.1583863996257;
        Tue, 10 Mar 2020 11:13:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583863996; cv=none;
        d=google.com; s=arc-20160816;
        b=tTlX9ELUpLu/HCygBbYKSKWQ/boaLqBb1gvjFmvzrLPdgGRECAZODWfK1NTH2qZgc1
         wA+6GV4laddzVd/W1lHArFY0FwIRmkNwFv1739kE2pWzRlQd5N0UwVG5eOVQqvtYXSAw
         3VNvZfuexPyqbVYpXRdt6mYUVSZvYuHmaubphzrlJAvzPlDNtLoS0NGRLJ2egRitZIbL
         inaOGv19Ztc2igtNlaTgjmgD/eqI+TXBUhQ1FSmzixPsts9Y80cbWdGyyhWsLr256fTn
         ctY/BvqDCD30FL14D2gozISWa8IBHKNJe1UlFMQjGHNxurmcr43x52H26FC9FGjnsfeo
         kkKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=7V/sAAnip3RAgo2hcx+ge9diIyOByx7oufDGNfPm/3g=;
        b=xvgGzkLOoiZrbkX+lF7YejUX6ynMJy4iPtRHaIjnFrdhafz0loB13LKMa71Emq6+Ve
         nlZBBhPy4ayoeR8gwJL0SynArqQhRZ/mXoGMelYx3ejsvzI3f85sfHKB7Fq4xFTRFKl6
         9elQ1cgZVkl3YWSAZ+klopVv8xWBQl2v9QNbD1ABfeg9o5OQI2UFlpY46u97WgnunGmB
         8TEBNng3NJAEBJ3ApAtb7qjfcLnl0HtbD0eFtS9G+gUPs311MR1POA+fCZPob3tF0B6u
         Uq3ntU3jj9tghYXfzZLZpoE9QtdkakKFEIf3wS9BnGcmZqT0u492GXT4SH8O52CbWV77
         EzOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=j6WP0uYG;
       spf=neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id w10si724711qtn.1.2020.03.10.11.13.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 11:13:15 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=j6WP0uYG;
       spf=neutral (google.com: 2607:f8b0:4864:20::444 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x444.google.com with SMTP id u68so6156718pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 11:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7V/sAAnip3RAgo2hcx+ge9diIyOByx7oufDGNfPm/3g=;
        b=j6WP0uYG+PL6BfNSe1TkzKK+LLuemwV8UrwW4zbyy51xQfEaabVvjQbnBaOG28ntPk
         bqZ10M15e6LL/sYopnD+5Mw/+LRkBB7qr69KBq9gfrSe4p/ENs3QACBIEt9CWeQ8NYSg
         eH7246eOeHRkw5lNtByB9vyBuSbwUe58KbnMXFvXOVf+Z8KnNVgqwIt/6xwsu1gjUu0/
         h4FGmmsA0SPuM1UrtTp3eRBBzvFwfZ/FogwXm+eDBD+EQHDpIsQDVfOepBMAOUGlHMDj
         s86rjxGZvgx+BHcl/SYhT6P+ocCMecP9ql9eaiqdilaak0G+8Uijs2WqFl2rCl3fwuB2
         UYpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7V/sAAnip3RAgo2hcx+ge9diIyOByx7oufDGNfPm/3g=;
        b=nZnBghYce2wpoWX3298Jz0IceMW7rslveFGnG1E41n1RNui4vHoMNXf1XSwZLkPuIM
         qotg5qi2qG/2hpRuPd2wz6kukZCAJUyvYbHm5fr63AtCMj9ulZhT5hORjPXec2XVR60g
         rDhDfnuLi+tqqz49dBZtxDnG6NmW/z60zUkI/IXY4es7C9x3M6gOy+KFl17Gyrix73LA
         tXENX7vIkp1U1FM505eofD6VHfc9xyXdYWnOTuM2riiKDjzqUNM9KuRbHEkXlHWkJOFf
         TEz2sd1SSHSnaW7UNEaX2YsVUfHu21sOg3azgtqw0hzHB4PrIJdQ9txCzlkOrT0wAA17
         2whQ==
X-Gm-Message-State: ANhLgQ3ZMx9u88U5vODGf8d/zBm0lzYhXgYzbdkTm6yiU5S0x02SZyXv
	w7keFlPYqoJYUs5vVnzXhAELDw==
X-Received: by 2002:a62:e909:: with SMTP id j9mr15463624pfh.134.1583863989053;
        Tue, 10 Mar 2020 11:13:09 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id u11sm3012232pjn.2.2020.03.10.11.13.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 11:13:08 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Tue, 10 Mar 2020 23:43:02 +0530
To: sbrivio@redhat.com
Cc: Stefano Brivio <sbrivio@redhat.com>, jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] Clean-ups in wfx driver
Message-ID: <20200310181302.GA29934@kaaira-HP-Pavilion-Notebook>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
 <20200310184033.007d0230@elisabeth>
 <20200310180748.GA29809@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310180748.GA29809@kaaira-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 11:37:49PM +0530, Kaaira Gupta wrote:
> On Tue, Mar 10, 2020 at 06:40:33PM +0100, Stefano Brivio wrote:
> > Kaaira,
> > 
> > On Tue, 10 Mar 2020 19:55:03 +0530
> > Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:
> > 
> > > The patchset removes a few unecessary spaces in some files in the
> > 
> > "unnecessary"
> 
> Thanks, I'll change the spelling errors.
> 
> > 
> > > driver. It also removes an unused structure and uneccessary variable
> > 
> > "unnecessary" :)
> > 
> > > declaration. It also assigns a bool instaed of a digit to a boolean
> > 
> > "instead"
> > 
> > > variable.
> > > 
> > > Kaaira Gupta (6):
> > >   staging: wfx: data_rx.c: remove space after cast
> > >   staging: wfx: change 1 to bool
> > >   staging: wfx: dat_tx.c: remove space after a cast
> > >   staging: wfx: data_tx.h: remove space after cast
> > >   staging: wfx: remove variable declaration
> > >   staging: wfx: remove unused structure
> > 
> > And as you're posting this series for the second time, you should
> > indicate this with v2 (check out the "--subject-prefix" option of git
> > format-patch), and indicate the change history for these patches -- see
> > other recent discussions on this list for examples of how it's done.
> 
> Hey! No, I am not posting this series for the second time. As was
> pointed out in my earlier patchset( which included 5/6 and 2/6 of this
> patch set) that I have to create a patch set of related changes or
> changes in the same driver, hence I sent this different patch set.

THe previous patch set stands discarded, as it was not a proper set. I
didn't even write a proper cover letter in that one :/

> 
> > 
> > I would also suggest that you give reviewers the time to answer your
> > questions, before re-posting. You had a question on 2/7, and I
> > understand it's getting late in your timezone... but you asked it just
> > three hours ago.
> 
> As for this, thanks for understanding. But that patch was different from
> any of the patches I Have sent here. That was for a change in vt6656.
> 
> Thanks for your time!
> 
> > 
> > -- 
> > Stefano
> > 
> > -- 
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200310184033.007d0230%40elisabeth.


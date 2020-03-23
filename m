X-GM-THRID: 6805399652543758336
X-Received: by 2002:ab0:13c4:: with SMTP id n4mr13534096uae.11.1584985954995;
        Mon, 23 Mar 2020 10:52:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:ce9a:: with SMTP id c26ls1879515vse.7.gmail; Mon, 23 Mar
 2020 10:52:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtesZsAnDtTP8aI+s6+/MxcJenhtXpM4jB12/6JErSx9NoKLaaagTUsjISMAsVBvnI7QZQy
X-Received: by 2002:a67:7c4:: with SMTP id 187mr17209297vsh.216.1584985953606;
        Mon, 23 Mar 2020 10:52:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584985953; cv=none;
        d=google.com; s=arc-20160816;
        b=f5FeVvbi4VFkZpvmw1HpcXFM4S9hCzElVgivSMlb9WS/JdVAH+qg8mnSrnYYoqlJec
         NmZHczabXmalOMR0CkmTiOklgQR1tiZ8i4FTfFNHUzI/3zzfSz25F7901IjVWqDbqVeF
         BpX0dijkVyzuARTLnG1q4839bfx0fN/xCHwrMgFQ26B9LaRgG9wvrG5uYoTRB00Wv3vl
         8W2gLcHz4BQ7FXS6b5ctJEtCbjx5W62xFbRRdhiNIfdT7hnTR5AcXSlAuyP1HkDQv0zR
         PFUc3/7qkqOh+NhBkLNxSqZyLt+lkmyYrFj7AsJ6hwrrpNexHOsPdExYx6UJ2pdwPS+Z
         J0EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NTsJVXFyBe5n2J4yvrNhtYB6s8FILu94rLXAvDE+4Gk=;
        b=XrpVyTmynoGuono9MfIovmhlaG3tfR5I1QM4DqYNMhjguBLuJDTphuvxOsp6EAM5aY
         aPv4jX2ebGvkAxp+tq7gHySut8GTjewbWrw60JQHywMtdIDyacHw2rJr08Onxij0Ukl4
         ZMg8lsMJkZ/bgTIAlKMxwqtbCDgMK/+vtbNZ+L/0bxZuTNbnJBEXlLh8Z/2nAUuMi3Jk
         Gmvgqt28jyk+loKLyeeKDUwSRit+39+2xpiM9+MFIC7SQH6EqLafjE8w7CyFDIuzDQCV
         GXckUWkIQJk5m/yB7F3JLbVLQGKRhDAurcWfUl0YcbZJ7pn5LmiTX+Jot1RbLx0XjIgv
         NRqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QqKcyBZO;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id t191si763188vkt.0.2020.03.23.10.52.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 10:52:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QqKcyBZO;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id g9so173460pjp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Mar 2020 10:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NTsJVXFyBe5n2J4yvrNhtYB6s8FILu94rLXAvDE+4Gk=;
        b=QqKcyBZOabFgMGkIZO+TEilyn0nNbsds6TzI6VKrhH3UaZ316WHPhXT7W5z9ibLcZZ
         0WdK7LJGolrpMlmObvNl33iYMNE61QNV1WO1tprnzIqew5+YnkZIANSR1iiAMKMm7VtQ
         /vDMVoM84lf7I0A3r279o3Hg4Sbkj2/4xSsTrIgsSnJdfRrZe80ayPyuzNv9mNi/KUMz
         o/yC18rucrBUcU20OwrRBN3QQQOPA/CZ9r/Nu+5DZU2BMv97KWGVRWbAT6R7QYiQlH84
         l+HUcnufMcljStmESnn9dZnDawarsJkIqEC4xSKgtUnsUXOp8s51XqBVhzd1LqMhQRwM
         U1ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NTsJVXFyBe5n2J4yvrNhtYB6s8FILu94rLXAvDE+4Gk=;
        b=eyGYH61PYBD3j4ZFRQRWeABIVov33U+BLq57A4Z+dXgGQB9oz4Nt5GcGJOFL8mAjwE
         pRNB2INsVsnQK99V6fUMlbSCWo8WIZqfhqz6waOv9aHcAyjizqqMnjL+CqhU1um3bcHS
         7inl3Ug1AA7nYVOF+Q4bo0V/qDcxHybhzCY9+9nqFpoWVFM+1TFcC2VMfPYXFwtviii0
         F6YFDKH28kwUk7kaIRj/aSZG55zvG4R5e6e9n3Mlmxq1X/4EeFTEVxIpTgA+NzXqZFu+
         icnUlYvqY737VusGWWg0Y/O+kqjRcGjeNmOhGTvl7NSCUYbASL/gbtDg1fmrzeml/qsm
         +nxg==
X-Gm-Message-State: ANhLgQ3oEAbdEOZD5fMR206EEI74FDXz8SXltk3Xy7DY/NfiQfdK/2xE
	Lt2q1AOXkLoaJHVtzxj/HTE=
X-Received: by 2002:a17:90a:fa96:: with SMTP id cu22mr482775pjb.187.1584985952666;
        Mon, 23 Mar 2020 10:52:32 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id 189sm4195902pgh.58.2020.03.23.10.52.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 10:52:32 -0700 (PDT)
Date: Mon, 23 Mar 2020 23:22:24 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Daniel Baluta <daniel.baluta@gmail.com>,
	kieran.bingham@ideasonboard.com,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald <pmeerw@pmeerw.net>,
	linux-iio <linux-iio@vger.kernel.org>
Subject: Re: [Outreachy kernel] Re: [PATCH v3 3/4] staging: iio: adc: ad7192:
 get_filter_freq code optimization
Message-ID: <20200323175223.GC22110@deeUbuntu>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
 <dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
 <CAHp75VfC=y1mHW5=ghwdMMZYg=00_a5RB0Phz4j_vM77pehvMA@mail.gmail.com>
 <20200323014935.48048405@elisabeth>
 <CAHp75VfF+oDWsOF+_=U6YBeP60XLF=SLYzExa=5WjLSgoMUw9A@mail.gmail.com>
 <20200323131531.1d6c8f93@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200323131531.1d6c8f93@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 23, 2020 at 01:15:31PM +0100, Stefano Brivio wrote:
> On Mon, 23 Mar 2020 11:28:52 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> 
> > On Mon, Mar 23, 2020 at 2:49 AM Stefano Brivio <sbrivio@redhat.com> wrote:
> > > On Mon, 23 Mar 2020 01:44:20 +0200
> > > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:  
> > > > On Sun, Mar 22, 2020 at 9:57 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:  
> > > > >
> > > > > Current implementation of the function ad7192_get_available_filter_freq
> > > > > repeats calculation of output data rate a few times. We can simplify
> > > > > these steps by refactoring out the calculation of fADC. This would also
> > > > > addresses the checkpatch warning of line exceeding 80 character.  
> > > >
> > > > I'm not sure you did an equivalent changes. I believe in the original
> > > > code precision is better. Consider low clock frequencies when 10 bit
> > > > right shift may hide some bits of the division.  
> > >
> > > Note that those bits are eventually "hidden" in the same way later,  
> > 
> > Even if mathematically (arithmetically) evaluation is correct, we have
> > to remember that computers are bad with floating point and especially
> > kernel, which uses integer arithmetic. That said, it's easy to get
> > off-by-one error (due to precision lost) if we do big division before
> > (not so big) multiplication.
> 
> That's exactly the point I was trying to explain below: swapping steps
> in a sequence of DIV_ROUND_CLOSEST() (*not* of arithmetic divisions),
> *should* not affect quantisation ("off-by-one") error.
> 
> I'm not entirely sure in this case, so a quick "demonstration" in
> Python or suchlike as you suggested would be nice to have, indeed.
> 
> > > despite the different sequence, due to DIV_ROUND_CLOSEST() being used
> > > at every step (both before and after the change) without other
> > > operations occurring.  
> > 
> > By the way, where AD7192_SINC3_FILTER and AD7192_SINC4_FILTER
> > multiplications disappear and why?
> 
> Those were in fact divisions (multiplications of the divisor). Overall,
> these steps are now arranged in a way closer to how they are presented
> in the datasheet mentioned here (up to "Chop Enabled" paragraph, page
> 26).
> 

Thank you Andy and Stefano for your comments. Its very thoughtful. I am
not much familiar with Python so far, but thinking on evaluating your
suggestion in a sample c program. I will share the outcome shortly.

Deepak.


> -- 
> Stefano
> 


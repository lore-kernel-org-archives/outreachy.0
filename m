X-GM-THRID: 6883926801253400576
X-Received: by 2002:ad4:472c:: with SMTP id l12mr15639680qvz.42.1603087367272;
        Sun, 18 Oct 2020 23:02:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7347:: with SMTP id q7ls3315138qtp.8.gmail; Sun, 18 Oct
 2020 23:02:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJySUHi5LVCPL7jY029m659iovs/4OuVzDZa2ifOH4rBv7cF7gz5RsfSgx2bU4mmCumgFe5o
X-Received: by 2002:ac8:5d09:: with SMTP id f9mr13793704qtx.33.1603087365892;
        Sun, 18 Oct 2020 23:02:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603087365; cv=none;
        d=google.com; s=arc-20160816;
        b=Mb9C567csbVxI1tXt2evZ09uQrZmCxfV7KoyhrsPKIcYNIBV7vd3d/CE07f3mf9I0e
         eJp+5XCwmVLOr9oJ4JjcszlrdsqpIkV3sQ4XF5iZAQCtbayxx+ukeU4hWg2H3+fw0ltB
         xIyoWBz5MLMTHyrWl5Tre/DvHec0PpvwzhYHA2qQwbnC8TB+5MHHI/eF8n31wTiNjF52
         zNpJF5I5+RH/2AmEcU1lf275hGm2kPCW2QsrSYY3lypa31bV654OPUa7tTqZYJnUxWs5
         UJFXVaJVwAP1oT0uL0HmEpe+4lzNyTfeB7B5/2hLVpk0Dxel9QEwcz5W80k13ZS+UFvx
         T/BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tPqCUQwRcj/TUsJOtF1A4cm//Q7lWtcgPzmMg/L46Uk=;
        b=EASoptgMg5rYfl5eTFmWCCEyyWDdp9jUsFRLvEeARlUOo29wIQhItMaATGidZCPax7
         fm+nL79OlIj9wbwcwn6/1+kRNdsfW8x3aaSJasJXOT7DlIgdAP3LujLjrpAHZABCOPmc
         CstWAqSNt8BxZ82Fp/nJuUoRCEyYQ5Yg5POMVIcZ7tBYlYUlx7OMskk4vPcsSSbdtvMH
         gvUYjkreo1E/ueRgsmkl0CSOzPKp+T/YCFYDfBP8fBcn0t4FAZHk/dQ5Jc9UZShUwQox
         h7SE1RH3qvGSRFIp1QOJxlAT9Oe2QNaKw8AjFxdW3I3ZfX5/p8j6VSPXyjH/ryKzQdl9
         MkAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s5yTadnA;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x11si578051qkn.0.2020.10.18.23.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 23:02:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s5yTadnA;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id q21so5369534pgi.13
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 23:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tPqCUQwRcj/TUsJOtF1A4cm//Q7lWtcgPzmMg/L46Uk=;
        b=s5yTadnADoMg3t7g5Ub96C9MjbaWe/YK8TmMVFqG9oYps0PileWb2T8uTXWbvXXhc6
         QHGm9yH01E7RwUMVRojAxgdGYT5n2LGHTtxVdXbDSO4Vyn/ZaGtKtY4nCi+BIzpVLB5r
         0G/U6kbRtLLgU44sSj/a+WjioMWuo5GvA0kV0x1065If+UAXBk+8K2dE+dP8vmentBTr
         HOPdIsIf/gD81p2lvv+zUcD8IF1I2bk14E026KqWOYjxtJHXt6z1gmUNdzrhaZLtzhAf
         2Jnx0WfodcvV4pcyUL8EYevqhNyUlQFWQlt0t/jDmbVCxWkj8Q1DmpdokldEq431n8dm
         AuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tPqCUQwRcj/TUsJOtF1A4cm//Q7lWtcgPzmMg/L46Uk=;
        b=IcMDV/UccePKmt6bPW1J7eupTzjImBNKMF3cYleFfqvWxd95NELdJf7VL54djUJR2R
         XpQBJ41PluqKcD5OvrMe0oU9UffOBCafaA3Kj1rrebxI1GciQ69GCnrZOtMlLJAYR5+H
         R5f+AHXmEMLgSr2CJklCOYFsWO4qKlWzYCMGe4skQyWuZhfHl38FxuqkpbodPppWLZR9
         EfVJQInCMFAl192vSgazKJ8pS8fFHz0eRDcVCakzuSIFdq5/iPXSVWOHcQ4HYm0Y3f0C
         SLRXvVoghhnFOc/jLQJ1OH52sri0HH1SIHyikqAuddgnY6ayDFLhyWs7tcgHVJY0G6qN
         9yDQ==
X-Gm-Message-State: AOAM532g/8AiNmbmNB4aWOdnlDcONtdisaNIAYP3UILrkqikQsz2xKsj
	R/N5uGNYRF9YoOee0xK9ERgBvYn4lSabLA==
X-Received: by 2002:a62:1806:0:b029:152:4311:a19d with SMTP id 6-20020a6218060000b02901524311a19dmr15884625pfy.20.1603087365077;
        Sun, 18 Oct 2020 23:02:45 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id q2sm9960858pfu.193.2020.10.18.23.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 23:02:44 -0700 (PDT)
Date: Mon, 19 Oct 2020 11:32:40 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Matthew Wilcox <willy@infradead.org>,
	Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201019060240.GA6306@ubuntu204>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <20201015192157.GC20115@casper.infradead.org>
 <20201018053243.GA98400@ubuntu204>
 <20201018053857.GA591645@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201018053857.GA591645@kroah.com>

On Sun, Oct 18, 2020 at 07:38:57AM +0200, Greg KH wrote:
> On Sun, Oct 18, 2020 at 11:02:43AM +0530, Deepak R Varma wrote:
> > On Thu, Oct 15, 2020 at 08:21:57PM +0100, Matthew Wilcox wrote:
> > > On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > > > The show() methods in device attributes should return the number of
> > > > bytes printed into the buffer which is the return value of scnprintf(). 
> > > > snprintf() returns the potential number of bytes that could be written
> > > > which may be greater than the actual length to be written.
> > > 
> > > There's a big patchset just gone into 5.10 yesterday which adds a new
> > > sysfs_emit() for show methods.  You probably want to use that instead
> > > of scnprintf().
> > > 
> > Hello Matthew,
> > I am able to build my staging branch into 5.9.0-rc8 release. Can you
> > please suggest how can I get 5.10?
> 
> Pull from Linus's tree right now, or pull from linux-next.

Thank you Greg. I assume you are fine with patches sent from that tree
base.

Deepak.


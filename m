X-GM-THRID: 6807662174396219392
X-Received: by 2002:a9d:7c90:: with SMTP id q16mr672282otn.104.1585345317900;
        Fri, 27 Mar 2020 14:41:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:c4c5:: with SMTP id g5ls1017198ooq.5.gmail; Fri, 27 Mar
 2020 14:41:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vupIYKZIy8q+289JoJTNe0rOFsyje46/IFNhjimWch/rbs9own1UO6AAQ77l5My+JLBORf6
X-Received: by 2002:a4a:8962:: with SMTP id g31mr1239329ooi.97.1585345316588;
        Fri, 27 Mar 2020 14:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585345316; cv=none;
        d=google.com; s=arc-20160816;
        b=lzrH+VSEwSbs1EEMP7tHuFgwNHQYJfqIUNiMCnhYvDEJLQ4IBvkHbDWqaGgoM2+Ab0
         1sM6CcESAS/HV/nNwFX6DDiirMNjGR9vsFBBvgnfOwzCglhtj0rtHvjailPkpmg4z65X
         K8RQERQ3UP2R2qrfsM5pF/48vRjQcKIgGg7GqalT0an9PU6OiFgY0Xj3+O7vITyDbJkH
         jh9B8PQOX6DQV6FXe5oiZIidXK3CUSDivznpr1IivBEqdn4PsEEolEyKqkMQONUqbSSb
         HK5Lv/oym2ttzn/9VvlVrtYjUug6dSDyvk32FrVJby0jo2nHB5iogsXOhFqjHiVehrrr
         FR4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=WxPLpDeMiINuSFCe2dvNDSfMOQfbPGc5T/lmp2r/NCA=;
        b=d0kMlq6YFy5WWbVLmtAvsP+Uut4ali6ylViqGisQMneNPwNeXBl+l+ekd2XST3NeDT
         AQ3BRkDReXYZCZr5SLMWcbKWtMH0/KJZx7beiuklGkPvCEfYfl3KlXaW5Rr12zgjulGs
         Iu/bmRhQ2TPWAZNduCKWnxAIYJhWSsWCav7ljTP9b8hHImKb1TAOl48ibfi66jGFevlb
         gDOLEbQpSdwSHvV5p6LQJ9+V7fzgLbpF6hAZiT6o8tlWaxVNqvX5+P9p3WdzisJe/quS
         W/ixb6Iyb26iwWJ9pAiJX9zRHy7colKtphjvc+krWHLZhUU2p3m3fUX5yhQfjaiqZsbu
         80zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKm4NkTI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id e21si720393oob.1.2020.03.27.14.41.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Mar 2020 14:41:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nKm4NkTI;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id l22so10101524oii.12
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2020 14:41:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=WxPLpDeMiINuSFCe2dvNDSfMOQfbPGc5T/lmp2r/NCA=;
        b=nKm4NkTI3nft4g76hjDrCCr1yYGR7wSgrGQdZOxeh3m03PK9OlYVjO7uEi4Babhu/2
         RsZtawDFQZOzVeqj5U6auiwsc14gheKprTIPlBdhP0wXPkp0TLiGRwnhoeL3hJMGDgku
         n7pai6r7HjFeRyqX/0ZYQYA2dwsk8VlIvhORn3sq9Tny1KxZgXabe1OeyPaNhfl90Kg5
         TLc5XFpFHVbUvzd17XntfQXmC2915TrLZ5TIJnmJOCRGGyRr2WxX+eHoF2VnJH2QdoEk
         3H76zUoTWF0ZgHJzUXIqNSq441HimHgpwILg8F9fggsb2/qeWpY5AiIrY309q/qN0UnN
         FrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=WxPLpDeMiINuSFCe2dvNDSfMOQfbPGc5T/lmp2r/NCA=;
        b=mhzi95srYTroCMpP+39rnyL1yFNAdoVk0HaV7OV/DrlTmF4kFDSyhzSQUhOm61RD5t
         mHxG9Gp4SAat8LG+SEBp41bv7LoQ0CAZSYETzelt0px7y2gAGb79WQ3fUpuZCKeA5SGO
         x1e3jir9+v/oqaunck4Yoy449hxv2s0dA+9NQkdNEEMuG+YQL1CfHsaAqGSr0hWdG6Ee
         AAffCAX0vOr+YoBtmtXWc2x+Sh08d2kfvMbBLjECcsDd2RLrXdBocXrG4YHYx8JOCawT
         IBzF3udE2PdYLIuJpOMCoaS5MlTYbe20WRyyGKH9QV0O4rR1DR487RMMa5PTpLUbIHbW
         GayA==
X-Gm-Message-State: ANhLgQ3HlyQeZujDernN4pB7I5YfAX18fgY+iJ4hdSohIN9pgl0bd6rL
	3LjGUY6Rn61SjlqC1rT4AZqUsOsFROY=
X-Received: by 2002:aca:484c:: with SMTP id v73mr682280oia.138.1585345316380;
        Fri, 27 Mar 2020 14:41:56 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id k64sm900198oia.57.2020.03.27.14.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Mar 2020 14:41:55 -0700 (PDT)
Message-ID: <7c66c1002ce64a8d03de072a5d1fb48ef9e2ebf8.camel@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: vt6656: remove
 unneeded variable: ret
From: John Wyatt <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Fri, 27 Mar 2020 14:41:50 -0700
In-Reply-To: <20200327045253.16c5617e@redhat.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
	 <20200324064545.1832227-2-jbwyatt4@gmail.com>
	 <20200324100323.GB7693@jiffies>
	 <575f10ed4f3be74c2515464220d17e17d9eae8dc.camel@gmail.com>
	 <20200325091541.GA15158@jiffies>
	 <61efe5ca2f1cb286d697504828b232455f2be44f.camel@gmail.com>
	 <20200327045253.16c5617e@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-27 at 04:52 +0100, Stefano Brivio wrote:
> Hi John,
> 
> On Thu, 26 Mar 2020 16:26:13 -0700
> John Wyatt <jbwyatt4@gmail.com> wrote:
> 
> > On Wed, 2020-03-25 at 09:15 +0000, Quentin Deslandes wrote:
> > > On 03/24/20 17:32:01, John Wyatt wrote:  
> > > > I do not know what these functions do.
> > > > 
> > > > There is no function documentation for:
> > > > vnt_exit_deep_sleep
> > > > vnt_mac_reg_bits_on
> > > > vnt_mac_reg_bits_off  
> > > 
> > > I understand, however discarding the return value of functions
> > > that
> > > could
> > > fail is not the best thing to do. Whatever those 3 functions are
> > > doing,
> > > you should rely on their return code, and if one of those fail,
> > > vnt_radio_power_on() should fail too.
> > >   
> > > > I am a new kernel developer intern with the Outreachy program.
> > > > I am
> > > > trying to fix a style issue reported by Coccinelle. I do not
> > > > have
> > > > that
> > > > much experience with writing drivers yet.  
> > > 
> > > Don't worry, I'm not that experienced either. If my request is
> > > out of
> > > scope for an Outreachy mentee, a more experienced contributor
> > > will
> > > pop
> > > in the discussion.  
> > 
> > To any of the Outreachy mentors please advise on what to do.
> > 
> > I was asked by Greg Kroah-Hartman to make this patch set, but
> > Quentin
> > Deslandes asked to return undocumented return codes for this patch
> > to
> > solve this coccinelle issue.
> 
> Strictly speaking, those are documented: C code (especially in
> kernel)
> is supposed to be self-documenting, and if you follow the call path
> (example for vnt_mac_reg_bits_off()) you'll find out that,
> eventually,
> you might get -EINVAL (not going to actually happen), -ENOMEM, -EIO
> (the only likely one, on communication error).
> 
> If you forward those return codes as Quentin suggested, those are
> handled properly by the callers, so I would say that's the way to go.
> 

Understood, will do.

Thank you Stefano. :)

Edit: forgot to CC mailing list.



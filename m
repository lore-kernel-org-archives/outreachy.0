X-GM-THRID: 6615030775466164224
X-Received: by 2002:a37:4702:: with SMTP id u2-v6mr15319308qka.60.1540250231051;
        Mon, 22 Oct 2018 16:17:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4fc4:: with SMTP id d187-v6ls1043851qkb.6.gmail; Mon, 22
 Oct 2018 16:17:10 -0700 (PDT)
X-Google-Smtp-Source: ACcGV608sPe7WPlpZ5J5Yx2TTANsJpaGH/6Dq9z5pF34AF2PCuBU4irzYlpBdEpxjzKj1bvfSJwn
X-Received: by 2002:ae9:c00b:: with SMTP id u11-v6mr25259999qkk.53.1540250230257;
        Mon, 22 Oct 2018 16:17:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540250230; cv=none;
        d=google.com; s=arc-20160816;
        b=r+Z8wM45Pax3rqciVM9j9BFBkmLeOJXvMoLPOIwOzznTTzMgm5TDToSGlQ1Z0n2oRC
         njgqkqUsiLMmu1GmyOQYJiUQ5X3Cnr0WlPuA9mP6fax82MxjBOr90U9IWEK8jiKCfbAZ
         NgTQ2PMeon3WQVKTzSOzs96p33Z0wmC9A/3qsvAK/86Enz2++gs7/XrFgGl48I1LYJnq
         Z7NW2uqG0R5NyJ3hban29xVoQKfWfBMgQkRVwUZ4k6FsWaeax1BOlWRvR8zv9kaA5HgB
         y7UwhroOZcOPetAuv+zrqMCvZjpOOlcNlR69nT9jVDEEs3K6rumNz4oalPkG48FGUv4L
         lIYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mI1rTv34UaUjXUhyWIXIy9Y1yBLS634wnqRpW4RXGo8=;
        b=qfl8Z8XEk4yjMAc8Zn49uPhrNb6yJHKhneP8WoO0UmK0sBZ9iGssMeeYaVFXBLOuJl
         LDi1sVg//23d/jzn/uzv9VtopqTEu42ExLV5pTH1qjxtAx4DXWX2Le/gYvr4XgJgOAnz
         tmoC9oWNUtG2vRgYVBgyKOuMkUd+KgbSl3jVs+53lGJdAYe1dwZ1T8gBaVijEvhPGtfq
         UOQpUy6ZRzLNBHsMJ5UloMY7r+ASvOaLiO8eNf55lKfpsm7h6vtJg9FG7SX7JNC4b+yU
         rg8vd0V0iSPHA4rQOmrQqXhZ5guAY0n9yKV+AphQNADdYEpU9/cs1sFWBBxivFlj4fv/
         CWxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkQWa7vm;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <m.maya.nakamura@gmail.com>
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id u203-v6si1323041qka.2.2018.10.22.16.17.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 16:17:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkQWa7vm;
       spf=pass (google.com: domain of m.maya.nakamura@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=m.maya.nakamura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x62b.google.com with SMTP id o19-v6so3976719pll.12
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 16:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mI1rTv34UaUjXUhyWIXIy9Y1yBLS634wnqRpW4RXGo8=;
        b=GkQWa7vm60zyfh1hbLZGT0Y35Pg6U89hOMRjccjUJ64oknlXFWHwwppifwXFEosp9a
         MPriSJ2ajtxK56YqeY2xirPjx++O7C6tRw0OEKuCCmPTPGsEcKtacbLJhEJ0Mp21v+m5
         TztWR33o6Vse74TAjN29tYztPHg9RFgjyw8vWmS01SKTdqFjTP/peb9KIaU0uGPcwo35
         m8CMFb+OyO6HdkHoYilmcsnUJhV7aqdmJSVMPO4CZrM5gdmX/V5x+T08HMT0xwxt4QPm
         8LfVeenIQCtP8BWo0J6YQMqqStJS6O9b+1QPSz2esK8kymVGFGQLdFDU7Y2iY8vT5ozj
         thVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mI1rTv34UaUjXUhyWIXIy9Y1yBLS634wnqRpW4RXGo8=;
        b=Sk+VuPZjXQ3oDF3vXJG6FPT/mU6h3C7FMDoH+P2yBEYZr7H00MGv567leBzrymcJzH
         2YcQ1kr6uIRvj854adXWp0joPqe2ry7X2wNlPBp6baLhcIn1uUqbYtH2EXsoJYB7/Rmz
         NscbhzNOIFgex/Vl/NjonETFWSzMhoH8J+rCCuvmbOHNd1+0s+FzPqhTimOUJgMzNwtF
         S/GmLi69KRxapcAPC3Y+mo09xlA4PTRBSplit9C3QKMKaPmU7xemLMslnvynheZrDEY0
         OgdQ6IEQY9xFRzRMrSXqY1rnzdN4r5MSY2EpLJzrYjL3szH094uMXPXqIhuzrQ53eH0F
         4Zwg==
X-Gm-Message-State: ABuFfogOc7tPK50oQXz7f6yMdkjmbHJXuYj+UbjXKbdCwE7fktav5E0B
	sDmPHzULjzju7oa4+i2EnDrUKZ7J
X-Received: by 2002:a17:902:708b:: with SMTP id z11-v6mr47689400plk.151.1540250229742;
        Mon, 22 Oct 2018 16:17:09 -0700 (PDT)
Return-Path: <m.maya.nakamura@gmail.com>
Received: from k-vBox (50-47-85-193.evrt.wa.frontiernet.net. [50.47.85.193])
        by smtp.gmail.com with ESMTPSA id 84-v6sm51136723pfs.108.2018.10.22.16.17.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 16:17:09 -0700 (PDT)
Date: Mon, 22 Oct 2018 16:17:07 -0700
From: Maya Nakamura <m.maya.nakamura@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 variable
Message-ID: <20181022231706.GA2384@k-vBox>
References: <20181022041747.GA2618@k-vBox>
 <alpine.DEB.2.21.1810220805200.2325@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810220805200.2325@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Oct 22, 2018 at 08:08:10AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 21 Oct 2018, Maya Nakamura wrote:
> 
> > Remove an unnecessary variable that is declared and assigned a value only
> > to return it. Issue found by Coccinelle's semantic patch results for
> > returnvar.cocci.
> 
> Just looking around in this code, just above there is a function with
> double { { } } that could be cleaned up.
> 
> Looking further, in phydm_process_rssi_ofdm there appear to be variables
> with parentheses around them.  Maybe you can look around in this file for
> other things to clean up.
> 
> The following does not look so good either:
> 
> 	if (entry->rssi_stat.ofdm_pkt ==
> 	    64) { /* speed up when all packets are OFDM*/
> 
> julia

Thank you for explaining to me what more I can do with the same file!
I will look for more and resubmit this patch, or I might be able to
try my first patchset.

Maya

> >
> > Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> > ---
> >  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > index 90a41c64c0c2..fdc9af56e9d7 100644
> > --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> > @@ -491,8 +491,7 @@ static u8 odm_sq_process_patch_rt_cid_819x_lenovo(struct phy_dm_struct *dm,
> >  						  u8 is_cck_rate, u8 pwdb_all,
> >  						  u8 path, u8 RSSI)
> >  {
> > -	u8 sq = 0;
> > -	return sq;
> > +	return 0;
> >  }
> >
> >  static u8 odm_evm_db_to_percentage(s8 value)
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181022041747.GA2618%40k-vBox.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1810220805200.2325%40hadrien.
> For more options, visit https://groups.google.com/d/optout.


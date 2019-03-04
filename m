X-GM-THRID: 6663863789016842240
X-Received: by 2002:a6b:ea12:: with SMTP id m18mr12196403ioc.35.1551715207091;
        Mon, 04 Mar 2019 08:00:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls5593553jaf.3.gmail; Mon, 04 Mar
 2019 08:00:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqyNlqUrkLSBbYeNlR3h1Zyj5pWtw9PDl03MdUXT420cbQMlHXJy1ymbKptDubAe6nip8mih
X-Received: by 2002:a02:3b19:: with SMTP id c25mr7940857jaa.0.1551715206267;
        Mon, 04 Mar 2019 08:00:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551715206; cv=none;
        d=google.com; s=arc-20160816;
        b=wpVlejwMcPo5IQmBv7Zxv6BM5u8ExX9HFtv9QDFxOsanH1C4La8caTZiqc0IbANlx2
         ozz0gqLBPF+2AQM0afjQJD5L3f0Bihaqn/JaEKLnqOh23/oLxPu+7VeatP8pz8qTl2VZ
         nSYhnOqZIOhKJBqO6L84OoUQxRGYJnVrlHMd+YWDVxgcyGwBgC7IZtjbaHCTMJxKakPR
         Rs+8c9Ui8AbPQGClmqWRMV7eLQWFFWEa5PwSGB9loXjGrtAFtKPFJubyAOe5FhxBqtkR
         SI0zMQ02+nOt0f+MrcI8x/C95dXQ76qZgk0U85XjRvTVGolmqQruULES5rMsf9sh1RVy
         tftA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=0+q1ZH2g96QNAKwC4wCItKSbjXMIwL9G4QLJtxEi9fA=;
        b=sxNfvPwqk9RVhhyaExnamc+p/a965nS3Roslf11LylKL9s4DKYCt/PIng+7izF1U7b
         9C3aeUWs2wBOvl17YLsjqlC+DXj6mzjWPB6ZOI4jtZY7QGFYvTYAkJci38tcIwVeLqX8
         VKrwJT0ZuhsJuVrMUxgBOoDvbdp2ziar0StUac7s5ZqMVeaPuC0dGNQDcefFTMCBgucU
         G/RPEZJTi/dcjUlzimfscPeM+tSBNE/byPF5hy0TZU4b7dOX0eV96oEgOQ4UuV5hi+Nr
         //u2AQ+QDaufjdsgwytQqWV7UQUSrV0GIEpaiglIQWtpslwx1pZsRCMP3FQ25dV3cxOS
         GnlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bx1bieAO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id f19si372414iol.4.2019.03.04.08.00.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 08:00:06 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bx1bieAO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id i8so4211023oib.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 08:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0+q1ZH2g96QNAKwC4wCItKSbjXMIwL9G4QLJtxEi9fA=;
        b=Bx1bieAOp2J0aOM308NDeqIea2COxG+6tF5dyYtiVajIIqzsRmYDng0SDgrzqlblG3
         ++gmtt4iZvYpVL1utVIPtfrQl7J7LFsi+DNtFjNgYgWWgGTI0KbQ+l3L5HS9WehlMnCh
         /ieHk9TVnR+y/L4nzPqOMcFt52b6tgWU+ypZWGYKML7b6r7nEHzskKrJU39QCi1JqhYm
         tk6cudS2jG75Mahi2NmLjEljBcBJiaYmGrDIeLcB9eTalgcFkk2wNe2r0RH3MZX+Nu/p
         OxiLEzUlSjBv69Tz2UwxEbCQJRHZop8axZjfKJoHkNy66Lp3Dt5tB+xnfNDrMORfQdhw
         o6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0+q1ZH2g96QNAKwC4wCItKSbjXMIwL9G4QLJtxEi9fA=;
        b=toMtkArMnDBcDQVpI9d9SSkpPeoKwdUGrsrfH1gDnNiLTPwlnHl1OdDh8u5oqSkrxO
         Pu8dJqob8EsOvkb0h6ljd6yy7My9LblxBgIt9UfZgylZq+YIHh58bY6ciG1JAhQRcBNi
         nGt+ZQyno97VmSC8yTBc7C7u9xOwP1nrkvuu45Vw26VPMbBIYBJbNlF2jcM0AvoD5JF6
         aQ7NYqOKX7yxy/0ToM3H8ZcH5a6NEYB8/YSXMKB2edAIYsj6D99mNGTLaq4fNPxXbpY0
         tz/9ENUws2SzjxHNNeEVB3jC11YILybXj1F4Ywl7Y0sxgXDfdwcXfusJf4CQhBuY/gN2
         sK8w==
X-Gm-Message-State: APjAAAUhcptQThUgoBXY6kKxeNxThM1wjs6rw1jiJ94wwNyXpHWOXSlr
	ZLOcpJi8WwShU3q0YK4MLOv6eQFudpY=
X-Received: by 2002:aca:f4d3:: with SMTP id s202mr12387403oih.178.1551715205664;
        Mon, 04 Mar 2019 08:00:05 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id e89sm2895393otb.30.2019.03.04.08.00.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 08:00:05 -0800 (PST)
Date: Mon, 4 Mar 2019 10:00:02 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Fix line over 80 characters
Message-ID: <20190304160001.GA20855@madhuleo>
References: <20190304011949.17148-1-madhumithabiw@gmail.com>
 <20190304074530.GB22711@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304074530.GB22711@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 04, 2019 at 08:45:30AM +0100, Greg KH wrote:
> On Sun, Mar 03, 2019 at 07:19:49PM -0600, Madhumitha Prabakaran wrote:
> > Fix the warning issued by checkpatch.pl
> > WARNING: line over 80 characters
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/vt6655/card.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> You sent multiple patches with the same subject line, and no hint as to
> what order they need to be applied in.
> 
> 
> I have now removed all of your pending patches from my "to review"
> queue, please fix them up and resend them properly.
> 
> thanks,
> 
> greg k-h

I will resend all the patches.
I only have 2 patches with same subject lines, other three patches have different subject line.
So do you want me to include v2 in the patches or I can send it as same, as it is removed from your "to review" queue.

thanks,

Madhumitha



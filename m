X-GM-THRID: 6746979289302827008
X-Received: by 2002:a17:906:4d95:: with SMTP id s21mr20825345eju.175.1570918942865;
        Sat, 12 Oct 2019 15:22:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4c51:: with SMTP id d17ls2814024ejw.8.gmail; Sat, 12
 Oct 2019 15:22:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyu0UuqlqCCgt+PvSUH73TqAD+ejJOD/FVjm3XMfSbm2jKkwQpaZAJy5hr7X8DzF9Z9Ruxa
X-Received: by 2002:a17:906:8286:: with SMTP id h6mr21037243ejx.258.1570918941900;
        Sat, 12 Oct 2019 15:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570918941; cv=none;
        d=google.com; s=arc-20160816;
        b=k1d0QSMteD6gqrjxuAFO9WpKDBYh5tGE8dgBBmMnf9z45MYB+cOiqMBWkmG+Z30bx/
         m+DzJYTGVI5KFlVKnkHSSqmcSQkmkfyX3j8FbskC4DAf555+hwKDoq5xMikfVP6OK5hc
         2UcbWMJsyYppQueSXbt5IYSFnoFVKSJREhASI5ziQbDp3n6M/QVRLS60HeyuuQhPOAS5
         224vRhqppD5OTqc/BvIbdWTL86i/y20Huu8ZOs92coGFuXJAGW5UW1BT20F6AT9kx9Af
         v9wVlrpN8eABUtf0fobecfXnsUXRiK7H3dVweJYugUVdFsdsg3VY4IYqj6fKkTG4ZfQZ
         IpQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=JFzKqMu/XOgZMy43SOwvpBuOXSOBfKqaUYBhEH3wBAI=;
        b=ouz95Bw/o4hAyXpCf4cYZX4ePf5nY6f3fIyfl8XuxLhHC9d00zgwwCwbYG2OGyEvBX
         tHnN9BmY9XhltuOfkUg//Q7miTcfa9P+A868AlVkcWqFsQxySNpLfUqz+XNIYILx0LJ+
         1S3F1xKIIxgonP5qivTqOcrYdJG616a4QvpuCX8v74rW3gdlq0BftfhQSFCXVBa6ABME
         YQeSxq8IXoAu1KT/N8vOUajQJe3eByNmGeT/YlVO4w8Ep4sWWIro1UNva06tYohyih+i
         6uBAxtTjgGd7psAlxUAewQEwR7M+iC70UKiSo4mkcR+oLJ2ecA/siSbqNQJ42jOmXpQR
         4Djg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DovncKaL;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r3si365808eds.2.2019.10.12.15.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Oct 2019 15:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DovncKaL;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id i16so13557083wmd.3
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Oct 2019 15:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JFzKqMu/XOgZMy43SOwvpBuOXSOBfKqaUYBhEH3wBAI=;
        b=DovncKaL/vLX3YEKzcWSlGdAVm31UdyIXs/xVZKeUBAQA4AmepkEkI395gfJs16TuU
         XHtEkew2bPZwQeuD6OY91q9m9Ba87pWJeIASGs414H1t7a9vptQWiDgHrftvao28A4sc
         WwQOZSmUoLOZxe00YxK4zNWRLBAO947An4AbCnpmjHsLuauhzUFFvdJAkMMnH01jLzOh
         9OYZ7XLtMaK6BA1uZQfG0Ez68KnwHTziqN+c9+RRV9ZVPCIqPrUOjIWLb142kfsTogqD
         F3Bvv3iniMFTA/NGjfiAYYiEiVbi8tjF1Kn489UUCRnE+UgI9AmUXdJJ7aZQi05PbqOC
         oheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=JFzKqMu/XOgZMy43SOwvpBuOXSOBfKqaUYBhEH3wBAI=;
        b=BSh159BcOO7nylkP8NHyOHnwoRsd4K6SqZlNO/mOZWIi0osXJFdn6XjZxAkS/WDYqZ
         LUtiAfpn7o9fhComY9hnY6JfAprdwIpj0nipMCP7Jqf7/mAVevrXb9yqGXd46Ezk6Y2g
         Npjx0XS5L8talSdlWOo+Y7j1tYGoEGkgvsgs+pSCziJQgoLtrpMdliL5KQ5yGYYg5EDK
         ydhNpHOpMczkamtlLmjZk1pFrSpbPuq1tlYztDmq01cuyqWTEnb5kX0pDZCM/zblXGNL
         1xms8ICUQxN3Hc68k7l0HaKdgAR+9wr92+uJoG7FfkXL0APvQ7SooeE/TVS4sWs03ArS
         QSpw==
X-Gm-Message-State: APjAAAXe1buAsvKv/dZbUVLyKUmH8VdGtd5lPUbxYdCWJ4awmu7tGLT7
	wQ6vkzhdZAq/TJiJgqp4yyWHnWfAu34ryQ==
X-Received: by 2002:a7b:caa9:: with SMTP id r9mr8444358wml.58.1570918941499;
        Sat, 12 Oct 2019 15:22:21 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id z189sm22874407wmc.25.2019.10.12.15.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2019 15:22:20 -0700 (PDT)
Date: Sun, 13 Oct 2019 01:22:15 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 3/5] staging: octeon: remove
 typedef declaration for cvmx_fau_reg_32
Message-ID: <20191012222215.GA30311@wambui>
Reply-To: alpine.DEB.2.21.1910122035380.3049@hadrien
References: <cover.1570821661.git.wambui.karugax@gmail.com>
 <b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910122035380.3049@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910122035380.3049@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sat, Oct 12, 2019 at 08:37:18PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 12 Oct 2019, Wambui Karuga wrote:
> 
> > Remove typedef declaration for enum cvmx_fau_reg_32.
> > Also replace its previous uses with new declaration format.
> > Issue found by checkpatch.pl
> >
> > Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> > ---
> >  drivers/staging/octeon/octeon-stubs.h | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> > index 0991be329139..40f0cfee0dff 100644
> > --- a/drivers/staging/octeon/octeon-stubs.h
> > +++ b/drivers/staging/octeon/octeon-stubs.h
> > @@ -201,9 +201,9 @@ union cvmx_helper_link_info {
> >  	} s;
> >  };
> >
> > -typedef enum {
> > +enum cvmx_fau_reg_32 {
> >  	CVMX_FAU_REG_32_START	= 0,
> > -} cvmx_fau_reg_32_t;
> > +};
> >
> >  typedef enum {
> >  	CVMX_FAU_OP_SIZE_8 = 0,
> > @@ -1178,16 +1178,18 @@ union cvmx_gmxx_rxx_rx_inbnd {
> >  	} s;
> >  };
> >
> > -static inline int32_t cvmx_fau_fetch_and_add32(cvmx_fau_reg_32_t reg,
> > +static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32 reg,
> >  					       int32_t value)
> 
> These int32_t's don't look very desirable either.  If there is only one
> possible definition, you can just replace it by what it is defined to be.
> 
> julia
> 
Ok, I'll look into refactoring this.

wambui karuga
> >  {
> >  	return value;
> >  }
> >
> > -static inline void cvmx_fau_atomic_add32(cvmx_fau_reg_32_t reg, int32_t value)
> > +static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32 reg,
> > +					 int32_t value)
> >  { }
> >
> > -static inline void cvmx_fau_atomic_write32(cvmx_fau_reg_32_t reg, int32_t value)
> > +static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32 reg,
> > +					   int32_t value)
> >  { }
> >
> >  static inline uint64_t cvmx_scratch_read64(uint64_t address)
> > @@ -1364,7 +1366,7 @@ static inline int cvmx_spi_restart_interface(int interface,
> >  }
> >
> >  static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
> > -						  cvmx_fau_reg_32_t reg,
> > +						  enum cvmx_fau_reg_32 reg,
> >  						  int32_t value)
> >  { }
> >
> > --
> > 2.23.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b7216f423d8e06b2ed7ac2df643a9215cd95be32.1570821661.git.wambui.karugax%40gmail.com.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910122035380.3049%40hadrien.


X-GM-THRID: 6802515514721566720
X-Received: by 2002:a5e:8204:: with SMTP id l4mr323951iom.31.1584473137257;
        Tue, 17 Mar 2020 12:25:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:d0e:: with SMTP id g14ls5026395ilj.0.gmail; Tue, 17
 Mar 2020 12:25:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsr0g65OQiwRa9xUAh4ZDQFrC87y4sFds04Uehta7L71SiWPRc2jbro8y8TBZRdbykSQgMg
X-Received: by 2002:a92:5b51:: with SMTP id p78mr393035ilb.250.1584473135847;
        Tue, 17 Mar 2020 12:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584473135; cv=none;
        d=google.com; s=arc-20160816;
        b=qV7cXfRB8Qq0lUzucOVZrDKHtDjKHokh7hSOCpKX4ZoZBv2dSHGK6gup1MrlH2NLZl
         t8Ub+TM5oheNpR30N3y2EzW/GrxrHhnmwPVI+2y92+yZtwC+9tsm8FCFstwN36/j5bY/
         pjS0ljM456wrI2uA9ferEvsCoXaSgVAI63JHjMqQ7GqpQtJx4fbfSr+HndInO2NmoD0T
         6P+lYAzuU63pno0/Wch6BG9URUTNcfi3N7DneQsKr7s8yfSua5HeklC/0q4KCivTGOVW
         t1GI4evj4K3CVIyGkJBdLxl/h+216CQDTNA7OycvOkhoClCybkjfXZpml9Ie6KQK02Ga
         sIow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=TK/v+6+lHsaXN0zMUXFOzf9mmyrhvX9ywENs3cu5Rug=;
        b=cGcFEnVibZKWBiKKcC4OG2K/7A4o8RuSphrruXsJ1GCZwAeJRXmflVaL/EgbsKMK7+
         Uw0wVcQ/FB8+cH0+05FVK/adPpbGHy50S8HVX0F6AoOyiKomXF42kMy2ycNP/Ih9U9eP
         0M909hc54MLLFVxCmTRjv98KOVXsNZfF7L508jBQLa88SlR1BdE6Xy1kRYMVO91TbM6T
         b7wCX5+Y9OSXXW4Efn//YFvP/SFALNC7IIE/9MF66ymsvhXVy5wKEybXkRYJWbGI4Fyt
         cxluqQakEi8uiFpYGGurtdLOiEjk07gHoF+uzHRjRm0R/ZGuuVgjRQVmQsI6rp+X2qRD
         sfKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=elzUORkE;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id b16si157295ion.0.2020.03.17.12.25.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 12:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=elzUORkE;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id h8so12260449pgs.9
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 12:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TK/v+6+lHsaXN0zMUXFOzf9mmyrhvX9ywENs3cu5Rug=;
        b=elzUORkEZHxSQc206tamacHewXrrGia14pGSwFHJqVoOA9YHpYRqVelOvv61NKWheK
         IW/9LMKaTVAeizziHdwAvVxuqC8VfWid/DPzRytnVNWaGWnpX9EoO+eyrPN/MsZzvPdE
         jg+H6G4EOKEVB8otDpxc+SFHDzjiboUZJNXIBWeVC/FV/l+6VuuBqN2JikiUjB4w9cF/
         hv9mWldu8XyDMqNaFOestOMb63yMs7tmyaJ1bL3QcbX/MgBosO6LOAd5hBMt2/qZ1BXe
         3wg+p8RVrfjVumPfEAfwzQbHedhjsIPxAd8UoPm1MQ7fskZDikEEWsNEPD0mjftQbLSk
         exHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TK/v+6+lHsaXN0zMUXFOzf9mmyrhvX9ywENs3cu5Rug=;
        b=ZZqBj2KFkfe2nXOw3i6I85n9D/L7EhadVR1amMLQeSteNqK2CVY5lN2BhFiviLk+WW
         4lO7//xx+edDa5vso1o/U2sPPu4RvDrGOFmRvDpsq+Fqj2ktC7xu4DISh1Zlt1OXbeIt
         8KEm4XJZECOpIvC2LA2E6MPIfXktUKJG/JqTzS9lxGgz7wnB7B0sqUoVl4xZ8Vj4AZhy
         anUJAD+CNbRlPt3W5b5xTy0h/uU76W2ZF0zU159npvk6aD3BreC12N71MWOsAvMzXoOw
         oGeS/ratQEgxZTOYDaNiriDfAD+om4hbzJUiyHplLaZmQkLMtKlVFWCppRC7/g0oAqes
         mYJw==
X-Gm-Message-State: ANhLgQ2xHVJ6MrA3DNANJvJhFvwrcz3Gp2OWmkLzxxcbHuw2IWTrIHzC
	zCESWc6Go0dT81zxRvHYkDQAc2my
X-Received: by 2002:a63:cc10:: with SMTP id x16mr710623pgf.81.1584473135147;
        Tue, 17 Mar 2020 12:25:35 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id a8sm3434874pgg.79.2020.03.17.12.25.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 12:25:34 -0700 (PDT)
Date: Wed, 18 Mar 2020 00:55:31 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
Message-ID: <20200317192530.GB22314@deeUbuntu>
References: <20200317140951.GA1362367@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317140951.GA1362367@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 17, 2020 at 03:09:51PM +0100, Greg KH wrote:
> Hi all,
> 
> I'm now caught up on all submitted outreachy patches that I can apply.

Thank you Greg for your time.

> 
> If you have not gotten an email from my patch system saying that your
> patch was applied, consider it lost, and please rebase and resend it.

If we have a patch where the review comments by the experts were not
implemented, but it was accepted by you, what should we do with those
now? Would you suggest sending in a fresh patch with the comments
implemented or a vn in continuation of the old patch?

> 
> thanks,
> 
> greg k-h
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200317140951.GA1362367%40kroah.com.


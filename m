X-GM-THRID: 6749942525265444864
X-Received: by 2002:a17:90a:d205:: with SMTP id o5mr7493494pju.46.1572047552788;
        Fri, 25 Oct 2019 16:52:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5107:: with SMTP id f7ls3324554pfb.2.gmail; Fri, 25 Oct
 2019 16:52:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzVzO4bZw6ShoI7Qp5PoHwwaVRogb3ALa45DS0QuRzmT08EKFlLHUcBjcCUxgqGzgwZSv95
X-Received: by 2002:a63:6989:: with SMTP id e131mr7537894pgc.190.1572047551828;
        Fri, 25 Oct 2019 16:52:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572047551; cv=none;
        d=google.com; s=arc-20160816;
        b=RLaiyHqjolb7dQNBxcZ2T3yBYbZrrscJN6mRIzwKvNaQ0Fm5HxzNhy2o2XYiPzSFjP
         9eMVP0a1mZzFegEV3EFZ/eudVp0R2LVmOWgBeaONK2RCTLsQDSy6gQQwD9KdwJuIkpfb
         cnuF8vWG1qnbZqOCpY0h6Oa+p4YKA6cPDEjb37o6afYldEUVWk0VFlcABw4vXpp7oFNo
         wJaTNJARlJ/rWi4nCotjm42aIibJXWTTTut1fJiwN0mR3sZG9MUkt2INnHeWVE4uepY0
         GeUYCB6Fp9FbE0MOpmU1zvEjPYShARoOehiMBVX8sRnwjI8sJxPO8Nlh3t3rYdJjRSUS
         4p6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=UNbSgliKo+Ioz10mnBmJP48XN2EPg4e2O+eKWZ0v7qQ=;
        b=ibhHpOW7mn2K0DpUdK3CpP2jQsteZ7gNTGbwWlR3rPsEoZMk54O59/Kwlhk7ICwwYT
         5KCLpUz/qbaz6qA9h4qykTyD3n9wELzoiorNApNgBMwBHGbkyKUEW4hS1+aeRGjbm7vM
         otYgbUMTj1HmCsq8ZDEBYWZj25mdSRf73OBY/8QkR8uvkmPnx0KoktcEJmMctTL0S8wk
         CVDWovABGfDfd7gV3lPBbPQmHiAH/xmCovvC/wYYfYWUyW6k1ouTwA3mqPFmLck/rv63
         W59wCkuRPaF5GkqbF7JfvUkdDjHEmUOLxCfH7BWjJ6AfwqC/Fnpj/5Xozl6ec9FzaKJC
         KErQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vLLEH516;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id b17si175132plz.1.2019.10.25.16.52.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:52:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vLLEH516;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id t20so5812499qtr.10
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 16:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UNbSgliKo+Ioz10mnBmJP48XN2EPg4e2O+eKWZ0v7qQ=;
        b=vLLEH516Om/Yg7yL4HyCADeCKI3hM1T1p5R2648TlPR31kvjO/ZF+Ico5K01y+8asV
         gwTAPy33r7iTW8Tc3jcJ+jLZL4MfQ1sAEQhQyuRN4Y84jc8te+PvrMNNXqPz4RTxUOAj
         Fz5VyClNMFOx43UdU+liGMMMBWNIN4Rg5cPWG+CWXyWOaNTHl/gyszg18MXuhIzMIwdM
         N+CK6w8tYn6CUx1xaDExvpMaV6z59wbj2/b2QNvVaDFZD0i6FJK5qlRkQe0ZA6dIi6RU
         qTZFF/FyzF6AWzreN6mj3AshAlnGbK2ZC/O891oOuNByeGzgl9QLU7HnEFiOlbL7x4Vo
         7rVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UNbSgliKo+Ioz10mnBmJP48XN2EPg4e2O+eKWZ0v7qQ=;
        b=S6kZsuncs1sSaWu8Pb73PvsvdPf8RE4Zlq6bGv4UReQXwSTyHKOPd1srK2C4FPPeWh
         PGQam8GIWQMOVj3wk/rxF4WoFrsGmvNNCz5bobsmLuvNMc2VENzsRy6H8Mk1Le2J7Rbh
         xBH5tuOvbftI92Z+NlbYHh31X6GeT3B6MmH96HICKmGF5wgmbUsL0Mr2N7UVBG8koiGL
         sZf2w4hnrKawrpgH8htIgN9gE8KpDEEClKBQ1V1zG8T6TdSswePk4Hy8c0nVMvw2ev7k
         hs7FjJUC7KooG2N0wYpQHNNyu41LKhSDX4NuzU3WK28ep50vedXVveR2Od1gEYA+lFTQ
         3veA==
X-Gm-Message-State: APjAAAVrCYfsqQrVjtVAennT8AAW8PMjPFYoZhFWwWr0uicSDC8dUMwC
	a4ShPxaQpi9GKWC6wAQxh9bhRUvf7h32pg==
X-Received: by 2002:ac8:45c7:: with SMTP id e7mr6068685qto.364.1572047551013;
        Fri, 25 Oct 2019 16:52:31 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id q204sm2689484qke.39.2019.10.25.16.52.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 16:52:30 -0700 (PDT)
Date: Fri, 25 Oct 2019 20:52:27 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: gasket: Fix line ending with a '('
Message-ID: <20191025235227.GA2512@cristiane-Inspiron-5420>
References: <20191020174415.GA3873@cristiane-Inspiron-5420>
 <20191025031249.GA511004@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191025031249.GA511004@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 24, 2019 at 11:12:49PM -0400, Greg Kroah-Hartman wrote:
> On Sun, Oct 20, 2019 at 03:44:15PM -0200, CristianeNaves wrote:
> > Fix line ending with a '('
> > 
> > Signed-off-by: 'Cristiane Naves <cristianenavescardoso09@gmail.com>'
> 
> Your From: line does not match this name :(
> 
> And why the ' characters?  It's not needed.
> 
> Please fix up and resend, thanks.
> 
> greg k-h

Thanks for the feedback! I just resent the patch.


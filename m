X-GM-THRID: 6804291594898898944
X-Received: by 2002:a05:600c:247:: with SMTP id 7mr24493445wmj.181.1584311522722;
        Sun, 15 Mar 2020 15:32:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls5695446wmk.0.canary-gmail; Sun,
 15 Mar 2020 15:32:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtk3i5XjSQKUN58WoGIUW8l823FkHJUz3UzcPfTwJiYYLqqt6WpJMjsEumtivonRu5/g76k
X-Received: by 2002:a05:600c:218f:: with SMTP id e15mr25223995wme.152.1584311521425;
        Sun, 15 Mar 2020 15:32:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584311521; cv=none;
        d=google.com; s=arc-20160816;
        b=nsQF8mN/OymGm7uKkgpfxiPmwE4LJokJV7iwFelvv7DDumh8d4cpf13f0Hh29DBmys
         JN9gi2x6Q0ZvFORWwv8UvfW4mIlFa+z6yK7pllWjElDrzUMOM6+oKv/wdKyR+tB8WZwl
         GD6NjMBRcvASZjXPCLt3vSQxFOy2VyfUltrApVz3YOzhFu+XvzFoUNkuFH+2uj09qFCH
         fbEKCR3U3fvL09yoZY0qq7L+lAzxzCJlKWg2KWQU0qyVAskWut115du69cn9IUlCGJOo
         kO+bR2fW+iYHKpT5VD8EZ8LEu+8k+CVA1X0FrCPOuqQ4apyvSvML452HZFd4/gyPqf23
         0EeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Xc0pigorCkfbuptu65bor8ELOJYLpEUjtoGCKBVbxso=;
        b=DJ2MDnPOnj+lfuLgp9FiXDlS9DaVOE8lKt3b7h9ZSwEqGzkj2i699/dl1Q5c9luKqn
         QzybGNa8xZfbf9+JizugFnGS3cvrcigE9MQs2Aj7G08KtMOGzhPpkzO3H9DgxcVCqR4W
         M05bHsb/q6ImaxLaUUCs+TIzrGLHs6pZWc42Q+UlGEve6FaWFkYq1C2H2flJ1gaKe6gl
         JMxzya/EstdIqqPkBk7Z3XzXWzMfO4JFMc6wJGqF+XVdQjy+5Z3z3xXX0LImpLJk5KAI
         4EXNyl11t0OWSDWQWFPfN0riZXiWTdDSX7+387Xt7Hhv+5sMBMMgIi2qtVMwqcsxD5oj
         FxuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TfcKuEeF;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id n7si885459wmc.1.2020.03.15.15.32.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 15:32:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=TfcKuEeF;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x342.google.com with SMTP id 6so15654150wmi.5
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 15:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Xc0pigorCkfbuptu65bor8ELOJYLpEUjtoGCKBVbxso=;
        b=TfcKuEeFFOHDbRlCYpHRSHgfy2V8KkR3FAtW4a8hfawMD/V/fEJiknty1d6gaJgJjj
         AScQUwsrl4MIb3I22bEYNeOLG4Rxh1EjArMNj6Xk4+8LGmT2KRi6fW20oIGZ+rGmElTz
         2npb0Q1RAAzD4TD/q5p7kW1SJBn4ClKp/k3so=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Xc0pigorCkfbuptu65bor8ELOJYLpEUjtoGCKBVbxso=;
        b=oyPa1SIxQCOWl93YA0/qbOa2EjWT+qsflbwjp4TwKqi4DsDPpMDirxb/yIudW1MxZi
         j/B444SfSLhe2fMrtHPuCBZc/M0zMhqtScI7jbVT7ZSBal0S2/FER25BZMl8G89h9wj2
         dRkqXyyr5e4lIJEKR6pfVyPBmL16opFK+PPMpDev0uBWwQ7qZJobxzyG7GqrHrxU6/uV
         ReRnc9gdArk0xDt6zUyDvHO5B2baMbVhG8H967D/N8InewoAT4uwLGcgj8jDLbBu9mUR
         5V/lJp4LdGKgvcfJbfvjZDQrpAPUcIHOc4jFmrmKAk+m3KlYCpgfXha6UcaGB7JEtr1f
         +Xag==
X-Gm-Message-State: ANhLgQ2e+GYiBGuEGg37k1UQp84m2/o08co3UdIURLsPSMYBRAyllfSU
	NbwQiqYZ3o/kg9FEHxOQvTomdogc7tvF6Q==
X-Received: by 2002:a1c:13:: with SMTP id 19mr24646391wma.183.1584311521042;
        Sun, 15 Mar 2020 15:32:01 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id s15sm73021508wrr.45.2020.03.15.15.32.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 15:32:00 -0700 (PDT)
Date: Sun, 15 Mar 2020 23:31:58 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	forest@alittletooquiet.net
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: device_main: switch
 multiple assignment for one assignment per line
Message-ID: <20200315223158.GB7722@supernova>
References: <20200315044620.14104-1-lu@pplo.net>
 <alpine.DEB.2.21.2003150856010.2645@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003150856010.2645@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 15, 2020 at 09:05:02AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 15 Mar 2020, Lourdes Pedrajas wrote:
> 
> > One assignment per line is preferred, instead of multiple assignments.
> > To prevent possible undefined behavior.
> 
> There is no possible undefined behavior.  The C semantics provides a
> definition of what this means.  On the other hand, people don't seem to be
> so familiar with what this semantics is.  Looking quickly with Google, I
> find some pages that think that it is the value of the left side
> expression and some pages that this that it is the value of the right side
> expression.  This can have an impact if the types are different and the
> assignment involves an implicit cast.  Here all the types are the same.
> 
> I'm not really sure which would be preferred.  The original code is a bit
> more concise.  The modified code is a bit more clear, because one can find
> what is assigned by just looking in one standard place, ie the left side
> of the code.
> 
> > Issue found with checkpath.
> 
> checkpatch :)
> 
> julia
>

I also was unsure if it was undefined behavior as checkpatch says, it
assign 3rd value to 2nd, and then to 1st, to me is clear.
The change may make the code more readable and would help people that is not 
familiar with multiple assignments.

If the maintainer agree, I will simply correct the typo in checkpatch :)

Thank you Julia!

Lourdes


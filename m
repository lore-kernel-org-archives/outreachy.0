X-GM-THRID: 6746422022313607168
X-Received: by 2002:a17:906:1ec6:: with SMTP id m6mr12620709ejj.6.1570786020145;
        Fri, 11 Oct 2019 02:27:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:d144:: with SMTP id br4ls1756368ejb.11.gmail; Fri,
 11 Oct 2019 02:26:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzfl2LuLWZIBYtYBb2hL5TspKBY0VxTph8aQ7d7bqoVXXgsa0ctv+UrKVJj/OB4VgBsaWBc
X-Received: by 2002:a17:906:e2c4:: with SMTP id gr4mr12739105ejb.89.1570786019253;
        Fri, 11 Oct 2019 02:26:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570786019; cv=none;
        d=google.com; s=arc-20160816;
        b=tcqr8qOiCzvBSR2xM0ritiLO/3W0XF1DJAAr8dcjCbmd+iw4f845sf5SgOdkLg03ws
         3Z3iv9TT8E1nsBOWZWMc/GfuFyElzGYWCBn6953t2dhvk1YYePioiEdS1OeYSM7Vy+Uo
         Rd/+lX3yvTuF0B683khGTfiV4wQd6T2+oaR5i9CMcr0kRS8YTfuI4hjToyEloCpL6+qc
         mQN9hpvgDeUTDMiG6YHAYRcu/zEviPuINDKYkyVowXRfwAOqb8AE4enYILM3XacwGfoL
         D0tpMJ5FafvTWX5ww+xLJ8kHUth5ucAbXAPo9jPzh/+WJAEuiNOD8j7aI7nioJXdbZwF
         Bdcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=dLVl3DsGhkxOyBDwhPCeN0ImQMXW3n75XQjG9mYAy/o=;
        b=uFot3Yoh2BR7cK5Tx0prlTFqEYwbdxfvmYAj3RybqSCQAsBGZ/QsQQoHNF8eqw4B6Y
         NFBJ47d2LDPxybRpGIOHY7BFZAgheRpG4Urvmm6gnNnItikzztrRoiYiL3hQ8EOUW9gb
         AX0auf+/dpQ8i004O94SqYy8DaekgSVypcZ+gAKOMUnH74Q6SJIBGebkix4knddsduKO
         dScZgyP1PCSXkoms5bk1TP65fZ41aDqPRtqd7JM5vZ7YQE4txnEp6AGsiyQ9EvxLY/V1
         /fCZSpLJf6tP2KM2/86/wpSQV1EmUfBt7+2MKWteWKGak04JlD9wMgoxa7mQ07PTte5T
         yMHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t8s5bxx7;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c31si127671edb.0.2019.10.11.02.26.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 02:26:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t8s5bxx7;
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id q9so11063705wrm.8
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 02:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dLVl3DsGhkxOyBDwhPCeN0ImQMXW3n75XQjG9mYAy/o=;
        b=t8s5bxx7C+fKPIIBPy949vMQclzBJ+lBKteDR4GyXhkirQvH5DZIeVDG9zdkq19UIj
         ge/gUM99tjtSovZSaFz1fPJBkubQkbXlg6Uh/bo3FTQpV3CIULT4EByCiGdNmK3/3Ysb
         /rDdqb8G5kinD39QAALmikeVvfBzJ0D4C/cIpzyY/jvtsu05VpUUYVFV8UqjiAeFjDHo
         +2mJzPoENqtE6XcC6LEcO0WFFs68/QioX7eQevfQQ11W5e2TfFzkSr8KJZyrwMedKhGv
         Ek4dE4/4lOlR4NiAEGmiB5RmFZ1ihMYUdlZ7fx/gzBJ5/fOqFSjrgRp4NXWW2+hGMLiU
         cUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=dLVl3DsGhkxOyBDwhPCeN0ImQMXW3n75XQjG9mYAy/o=;
        b=Qhwkc0EGwPKI3qm4YQgKCZeizWKIUUbXJNmJIoDFDyDrpQFCyHyou/rDNRB3rLzT3l
         gHo2gIJSqDQ3kMjM0o1nZ8Fdypk8cemmCLzIHhQRupDoHdkNtlmKYd4upZoR6r9Y4UZK
         isA/cl4lVXab0VmkTSh6KbVmMsfMtNC0rg02uPA6TI1OGKxGfW6X58JpglgeIffP9PpQ
         tFmg3JDGwAnxaLskJtqHlvoYap/KRBmUAIjvL0WhS+w1nULlylYaIvWeDs2PgMk+GKnf
         GomSXy4IzSoGFkDwesF2omxSGD2j/O8xPMmqdwxkuKu86TkNkRD6km7Ezy6XW1L1+1TZ
         qYxA==
X-Gm-Message-State: APjAAAX//g5bHeqDli+LAF+WTPTy326n1VNSj33L2UfRr4HBp/mpRU63
	pnK3NR2FyisXFFn3ss1SYlk=
X-Received: by 2002:adf:fecd:: with SMTP id q13mr11450759wrs.224.1570786018961;
        Fri, 11 Oct 2019 02:26:58 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id 36sm12179547wrp.30.2019.10.11.02.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 02:26:58 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:26:52 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH 2/5] staging: octeon: remove typedef declaration for
 cvmx_helper_link_info_t
Message-ID: <20191011092652.GB10328@wambui>
Reply-To: 20191011090213.GB1076760@kroah.com
References: <cover.1570773209.git.wambui.karugax@gmail.com>
 <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
 <20191011090213.GB1076760@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011090213.GB1076760@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 11:02:13AM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 09:02:39AM +0300, Wambui Karuga wrote:
> > -typedef union {
> > +union cvmx_helper_link_info_t {
> 
> I agree with Julia, all of the "_t" needs to be dropped as that is
> pointless.  It's a holdover from the original name where "_t" was trying
> to say that this is a typedef.  Gotta love abuse of hungarian notation
> :(
> 
> Please redo this patch series and resend.
> 
Great, I'll send an updated patch.
Thanks,
Wambui


X-GM-THRID: 6811040563999014912
X-Received: by 2002:a17:90b:1256:: with SMTP id gx22mr3976741pjb.160.1586039952175;
        Sat, 04 Apr 2020 15:39:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:332a:: with SMTP id m39ls10044834pjb.2.gmail; Sat,
 04 Apr 2020 15:39:11 -0700 (PDT)
X-Google-Smtp-Source: APiQypLlIFKlu2LawlN4pg1nC1OatZc5PZ6pnlJH/QEL+a7P4hCrTR+Ja2hF2Iv09GsQKSIb+jCE
X-Received: by 2002:a17:90a:9742:: with SMTP id i2mr18470189pjw.194.1586039951046;
        Sat, 04 Apr 2020 15:39:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586039951; cv=none;
        d=google.com; s=arc-20160816;
        b=1Er5zT3De9pTyWEYKiFUzoJXL/l1IoywYhMO64RqUpF5U6g1RvZDVXplWR+ojacQ5L
         S/HFKPuEH4VNC6ziX53cg5sc2R33R4vM93ESnsHmGnkAOru7T65fR3fypdw2nr+DCHuM
         ZM0I3+XdwZ8wSiasntG/3oltxd9FPQItMETKhOI7wXzfK1P0OTcB++KsiDZa7hw+k3Yb
         SRtFf6Ikq86PHDaA1c+6skj1FryghuBrr8vbJu4swNKTrIet0+T7GiymY8CL0Rn1PDtk
         rLqrbCeDIipcn27YwcgJbOe4GrLRrPuuHPErcbrs6NfGuF9hps/8lqN1h1CvsnAhZcN2
         gQJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=UvbFK3wfRAPguRK4RSKCOBqhbfBDCakMzWWu1HZkigg=;
        b=QQLjpbK82Cls22YCWFSsS31WZLG48iKvsbptA5kjKYuPjLsnApY5Uph0bdHcPDltmR
         ERo7GgADDP/B95SPC1hsXe1TZAiarYEHM6+PIE6RjQbwYHnJ94OgLKk9FjU5gvok9fy6
         QIwADUVSuuPjT1wEEb4gsHml8jB6RbmyYgUfwnL9OrHz4a9+HJYdyjgKb3IjuQUv7Vvs
         2phi7zJ6/mVd9A07K8cKIX7wxmGDS2qmyrA2PADcwjsAd8n/dhb272EY8iAF8PLn+Q/1
         IFoM1sgkqqJ8hKl/VGULjpWMhiIP0CMI13Qx7hHyD4uFXSujembXIszhZ07htlmXxhuW
         pqzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OI3zbugd;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id f8si991221pjw.3.2020.04.04.15.39.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Apr 2020 15:39:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OI3zbugd;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id c20so5556854pfi.7
        for <outreachy-kernel@googlegroups.com>; Sat, 04 Apr 2020 15:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=UvbFK3wfRAPguRK4RSKCOBqhbfBDCakMzWWu1HZkigg=;
        b=OI3zbugdNGK8EojVYaZ5TXtpSgAXmnz9hCX+C37DgYycZQGu1PuETcHyfFYXDGth3B
         7B5vhzUfjkk/116E9T5d8cErT688HTg2UKkign3YvBylUu7n1kWfrltSsdAA9Quz6Dyd
         C2A3k5+SdKwYFAgKWVUrAAkI+YQIgH6N5VRYzkJI8dNmjW0KFSorDUvs7hkcPKLkks/H
         aZeS8QK+pMzkxQOPeBSvuMz5JdJ8CiLelV43Hmv7tuPLkR4rj/tlaO/V7wsCY0biBo0v
         QhQB7TVFKf3EEkQ4Sz2Eqv6d3RrwvpOWP+PwqawAB9gqEk2xM5bNnz79yMK9et/TXn+7
         GMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=UvbFK3wfRAPguRK4RSKCOBqhbfBDCakMzWWu1HZkigg=;
        b=IQvogCOGfuzCl2DRQuQy3hxn8fdp1ezkU9msDTiAl4wub4tKNAh+A2QrELPuku+2Zr
         6YyhhzVjfv1/lgJWUQAPLuqIsj+esPbuTp6v+BM7oCIHPPgRU09Gr3hz8nDFTCmVFmN8
         Qj5kD3u0UtSYWQsyNSHOdEYSw4hC+6D3Lc/P+oBz4aqGRY3VOizH3UkxQ5vc4s0f4Ot8
         tB8Sz1OIJBP1GojqdjWA8UhBS2sjQWw01nrQypppAqsxf0Si61dY4r+WZGXPKRIqP0zD
         AQOhnhSx9Vlsk3vYCNQblJ5TRy44Ac75HnEPzXq0fy7+cFSppIXWWjhEKk11BFjRMmRv
         TmBg==
X-Gm-Message-State: AGi0PuZ0lj3qRvmTNDHvlTo4fkdBD5mjVYVDtKS+Yvg4MWjlKbLqV+u8
	+mMMNn4ITyfG5qVlLH7SzjgUzD/Mvd8=
X-Received: by 2002:a63:6482:: with SMTP id y124mr15137994pgb.239.1586039950727;
        Sat, 04 Apr 2020 15:39:10 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id q80sm8443237pfc.17.2020.04.04.15.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2020 15:39:10 -0700 (PDT)
Message-ID: <f5f8cd8590fd75e4514b91ced8078127df0bc9bd.camel@gmail.com>
Subject: Re: [Outreachy kernel] Outreachy reminder - final application
 deadline
From: John Wyatt <jbwyatt4@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>, Outreachy
	 <outreachy-kernel@googlegroups.com>
Date: Sat, 04 Apr 2020 15:39:04 -0700
In-Reply-To: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
References: 
	<CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Thu, 2020-04-02 at 14:45 +0530, Vaishali Thakkar wrote:
> Greeting Outreachy applicants,
> 
> Thank you for all your contributions in the Linux Kernel. This is a
> reminder for you all that Outreachy's final application deadline is
> approaching on April 7, 2020 - 4pm UTC.
> 
> Now is the time to record all your contributions and apply for the
> projects you're interested in. We would advise you to at least apply
> for 2 projects of your choice. And please do not wait to apply on the
> day of a deadline. You can always add more contributions until the
> deadline. Don't forget to add links to your patches while recording
> contributions on the website.

Hi Vaishali,

This is my first time as an Outreachy intern.

The website says I have created a final application for one of the
Linux projects.

Just to be sure: do I have to click a 'submit' button somewhere, or
when the deadline hits my application will be sent to the mentors?

> 
> If you have any query, feel free to contact me and project mentors.
> We
> wish you all the best for your applications.
> 
> Have a nice day!
> 
> 
> Helen Koike and Vaishali Thakkar
> Outreachy Linux Kernel Co-coordinator
> 



X-GM-THRID: 6658167413174960128
X-Received: by 2002:a63:5d1c:: with SMTP id r28mr3894341pgb.93.1550591992819;
        Tue, 19 Feb 2019 07:59:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a514:: with SMTP id s20ls5617576plq.0.gmail; Tue, 19
 Feb 2019 07:59:52 -0800 (PST)
X-Google-Smtp-Source: AHgI3Iap4buMjd4PMyQAhx74l0gGK0dThhXqcot5tl/pTC67R7+ir+4sjvOcNWbuAaLMtjMhhktB
X-Received: by 2002:a17:902:2a47:: with SMTP id i65mr9441628plb.20.1550591992176;
        Tue, 19 Feb 2019 07:59:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550591992; cv=none;
        d=google.com; s=arc-20160816;
        b=Bm5rwMUi3MkF3uCWZRvPdeTQ6tzt9ufAgxP5zV+Y0aSjlew5km4oT6JYPjE8Mc0D/s
         kA+G2LfCeJo+4/6wZTdzBJTT4j61xlD37Pf3f0prfkqznjJ+5LRVlIb5huuWAwBnk7h1
         pfWc/voXuTz8IWfQar6FuUMfFNJ2PElxRli5ePV/sb+xVRcRY6c/g4MXPu5Kh0yaCdsg
         k6orG6YEUOXjta2H5YPdzfMDVrV0DkapZS2VdhmM9mPkPX1BjBHnCPQA/TCpGx4pTgnz
         yEx3T0syVwKcJ/lGqxoGS0OwTE0JrcWaCA79pM21bUq3CnBLvWguURTo5k7e9lgS56Pa
         B03w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5Wwfq6gKWsUdJ89HgjemLxuPT19CuVnLiBUStrbp6Jg=;
        b=qxbuFE6eBToMlSSM+66VdqLC9iSsLii/sjaD5MiHbU1JE2vdGzStQ6JZfIPIOyEr8h
         0dq9BUAMv1z9ptVHNFbYqf3zpHYQsFuylH9hxiW4M1AtXiWCVwjM7Ro5BVPkVgzel/AM
         RfX41AFaxcNtmQuHWN8u0Ldda9Qq2Vz6Bxkl3VMXMNzCuDC2XZpU6TZSSSnsga60pmZA
         8XnzBOPgfs62e++//+84fhk4ETWFpBuvtZ2ny+K3DI/E/R5fEjWGDbYB0uOqom1cliWL
         JheFLgCjkbhunnkj/iTWO26RKeRKYajneM0EdCUd9Ct06lAG6+FghCtYNiCp29naAdXD
         7Rxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZjAZNU9;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com. [2607:f8b0:4864:20::529])
        by gmr-mx.google.com with ESMTPS id z184si38457pgd.0.2019.02.19.07.59.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 07:59:52 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) client-ip=2607:f8b0:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aZjAZNU9;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::529 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x529.google.com with SMTP id y4so10318522pgc.12
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 07:59:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5Wwfq6gKWsUdJ89HgjemLxuPT19CuVnLiBUStrbp6Jg=;
        b=aZjAZNU9xiJuRdxW7VYXPEm3ZWBxkJ4JDttPbgIeGWcW3krwRC5PCWUPTLGAgk+GLe
         Z9gRakG8VWdlOP7fpfPYGlmGmYKKCy6JnIi2TjrlmjVk7sLgs1hlUOanAj1A+YNyqO4X
         WrxnlaWpwwF7JNwGIo0sqd97gbHV3z62ucfd30A4MEFUQGXm009Hped1YiEfBLeFOqLu
         hy1VY9OUqvGwk0VYfIvlEStnLNqEWgx8J2MsvnyFe7JXcmEvUXtiJgHQJy2NuhcEg8Fp
         KTyeFuEaPliKwNVnx29FL90ed8C4UYl7kHHFo1VpU2DNS8WJl55cWlz86s4x0/8guXUN
         vW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5Wwfq6gKWsUdJ89HgjemLxuPT19CuVnLiBUStrbp6Jg=;
        b=gFZ1lTAOor7cosDBc5IK08vHXvT2UQqCkIliKh2RB502yrejW6vPStWBdyXHlFJQzo
         IEq4ceRyPLVuOVmum3z34RtNh8puqrTl1TG1m4oV8a6H/Uk5WElzDKLEwNRFK4TLKesE
         RDWaE9zNulcRmnMADS1nWcOKvYUPyzljVMbhzB+aWlcONuvg7LbyexuNm7cKluQMwZEZ
         WBfTIChHFRkuyf++ZfkT71W81Rb7dzFZTjVRcFTiJsChS5ZXQzuEG7t4amXgod8EDiGy
         09izbUyoVng2jvXlUTI12C3MsInmgrZBkWfREo8t7uKBPYiB17JkhhIn6amBGU4ql8+9
         kDvQ==
X-Gm-Message-State: AHQUAubGl8ICkZyLxe1LvZQEMLz5oWrUykNRHl+oBaMWSsqP/XNVdKVO
	cmXy2QCRs7W12pM9/kQZ1pemr3l8
X-Received: by 2002:a63:ff60:: with SMTP id s32mr27997848pgk.266.1550591991702;
        Tue, 19 Feb 2019 07:59:51 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.77.43.221])
        by smtp.gmail.com with ESMTPSA id n10sm29935934pfj.14.2019.02.19.07.59.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 07:59:51 -0800 (PST)
Date: Tue, 19 Feb 2019 21:29:42 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: supriya supugade <supu024135@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I didnt get message in log like "I can modify
 the Linux kernel!"
Message-ID: <20190219155942.GB18454@himanshu-Vostro-3559>
References: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8f0752e6-39e1-4047-8899-19866fdfe045@googlegroups.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Feb 15, 2019 at 02:10:04AM -0800, supriya supugade wrote:
>  
> I am following the link "https://kernelnewbies.org/FirstKernelPatch"
> 
> and modifying the driver in native Linux. I made a change in the 
> e1000_main.c file i.e inserted the line 
> 
> "printk(KERN_DEBUG "I can modify the Linux kernel!\n");" After recompiling 
> the kernel and rebooting it, I don't get the 
> 
> message "I can modify the Linux kernel!\" in the log files on typing "dmesg 
> | less". I am getting following error during installing changes.
> 
> Makefile:1281: recipe for target '_modinst_' failed
> make[1]: *** [_modinst_] Error 2
> Makefile:296: recipe for target '__build_one_by_one' failed
> make: *** [__build_one_by_one] Error 2
> 
> How should I proceed further?

Post your .config and full logs using pastebin.

I saw one more fellow struggling with this on kernelnewbies.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology


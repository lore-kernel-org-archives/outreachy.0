X-GM-THRID: 6252907967708921856
X-Received: by 10.50.176.231 with SMTP id cl7mr10456298igc.0.1455914434020;
        Fri, 19 Feb 2016 12:40:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.38.133 with SMTP id g5ls187852obk.43.gmail; Fri, 19 Feb
 2016 12:40:33 -0800 (PST)
X-Received: by 10.182.20.195 with SMTP id p3mr9004099obe.47.1455914433609;
        Fri, 19 Feb 2016 12:40:33 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qg0-x234.google.com (mail-qg0-x234.google.com. [2607:f8b0:400d:c04::234])
        by gmr-mx.google.com with ESMTPS id y131si834782ywc.0.2016.02.19.12.40.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 12:40:33 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) client-ip=2607:f8b0:400d:c04::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c04::234 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x234.google.com with SMTP id b67so71057148qgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 12:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=nRmMZCHTaCucH3hCT8tiOd64w/i1xxg+ScuThczOoBQ=;
        b=OGJmGLt7Xw+hCjjr2u6SBsFuJ8lymIyVQr0mB8jITKSZizwKL/gt0X/ld3DvCB+enQ
         4jYDt1UG2NYdjXhW7lqez8Smh2lOQSh/QTCbLkL4VnQbNXe0LJ3GsrMZNyDRwBA2FjQy
         0OwEGjl6n1ILEEhFHya3NuF7rCqeKLJ3gh2H5awG72E0zd6d2SO1WKwrJ3p+qvYXjlZL
         LEHkuX72HBIglA14txHVIJ1bgh/cNv2llqn9ZhMnTkgzP49eGGrBPHFAnl3BhdF0i4H+
         jV0zG0ZVxMmgj5miwrMpZXGQa/hPr69JE3/m+aSaxeS/FTNeLEK7lKE6CyMJ9b8fs+eI
         ud6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=nRmMZCHTaCucH3hCT8tiOd64w/i1xxg+ScuThczOoBQ=;
        b=eXzqnRuJewnoidGpMph3HjsMErzFYE0NlXpDUevvANuRJqLMxtTfnPiJvhPS+wdyhj
         64nzrw450JEO08caEwMHQ0/txUzCKJaGjoyYHAXbBa7ox/rZmOXjZxKf75MnkxcVAIUV
         gjQAoCC1PdzrLTFnifqFNoWJF78LkRleuaLqnqNre9vFYLrWV3e89kxsY+IbmzaphjTF
         Z5abara7jBFJLlaMa3CSzleT77VnhAUDdfa5Czx9CE9dKvIDBRETFFML3v+75tLZc8N/
         GgLUNJ1yhj/zk1z+Uo6oU6tDVHxYS9b71E2jb2eDk0n2QqiqOWPL9yYCZS1pJOwuibaw
         b8rA==
X-Gm-Message-State: AG10YOSetXRd0bJbq1vETW6ZHgMrZ2eM+IX7oixO+4YizqLmUU5GhnL1vaBnoavJd5LoF+DH02TWFT4sZwJpHA==
X-Received: by 10.140.88.202 with SMTP id t68mr18616213qgd.86.1455914433484;
 Fri, 19 Feb 2016 12:40:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Fri, 19 Feb 2016 12:39:54 -0800 (PST)
In-Reply-To: <20160219194548.GM13177@mtj.duckdns.org>
References: <20160219075654.GA12205@Karyakshetra> <20160219160442.GK13177@mtj.duckdns.org>
 <CAFNHFT96V4Pt==M0ZRup-iZDn3FE1SZ8T_m_sxqsg6gqQ=7K1Q@mail.gmail.com> <20160219194548.GM13177@mtj.duckdns.org>
From: Bhakti Priya <bhaktipriya96@gmail.com>
Date: Sat, 20 Feb 2016 02:09:54 +0530
Message-ID: <CAFNHFT8Q1PPg8Eu73_NHtbtqBTWaMqgtgHDXXU+3-mEnAFmtkA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: octeon: Use alloc_ordered_workqueue
To: Tejun Heo <tj@kernel.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Tejun,


I absolutely agree with you. And here's what I've understood.

On Sat, Feb 20, 2016 at 1:15 AM, Tejun Heo <tj@kernel.org> wrote:
> On Sat, Feb 20, 2016 at 01:05:39AM +0530, Bhakti Priya wrote:
>> On Fri, Feb 19, 2016 at 9:34 PM, Tejun Heo <tj@kernel.org> wrote:
>> > So, this is the mechanical conversion from
>> > create_singlethread_workqueue() to the new interface; however, that's
>> > not what we want to do.  Does it *need* to be ordered?  Does it *need*
>> > to be guaranteed to make forward progress because it's depended upon
>> > during memory reclaim?  Does it even *need* to be a separate
>> > workqueue?  You need to actually examine the specific use case and
>> > answer those questions before converting it and explain and justify
>> > the decision in the changelog.
>> >
>> According to my understanding, with cmwq, there's no need for
>> octeon/ethernet driver to use separate
>> a workqueue.  I have removed the dedicated workqueues from ethernet
>> and have used
>> system_wq instead. Please correct me I am wrong.
>
> I think that'd be the case but can you please explain how you reached
> that conclusion?  Explaining the process or justifications is often as
> or even more important as reaching the right conclusion as that allows
> other people to verify its correctness and helps correcting it if it
> turns out to be wrong.
>
In most cases, creating a whole set of worker threads in order to run a
function is overkill.  Also, there is no difference in execution
characteristics between using a dedicated wq and a system wq. The workqueue
in octeon/ethernet is a singlethread_workqueue and is not cpu-intensive or
high-priority. Hence system_wq is preferred.

Thanks,
Bhaktipriya


X-GM-THRID: 6949544081527668736
X-Received: by 2002:a05:6402:214:: with SMTP id t20mr24714416edv.229.1618125107012;
        Sun, 11 Apr 2021 00:11:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls1063934edc.0.gmail; Sun,
 11 Apr 2021 00:11:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/Q/8IDiK24nP73GSDYfx8Wx4NyuxxJcdiKBS2Kf1eO8ISV87dvRsEK2ttgFDsfi+kYPIq
X-Received: by 2002:a05:6402:6c2:: with SMTP id n2mr24453780edy.110.1618125105671;
        Sun, 11 Apr 2021 00:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618125105; cv=none;
        d=google.com; s=arc-20160816;
        b=W5koT7fcgV9rIFCif43JUwUKFS+9nw5HmVY33kVAmwQ9WlhXgQMkuUch+ca/PsOs7q
         6IS816dKWWmIcYSzGK0TQrcJvax5T2V39+PRHOuOQV9JnR+clySvekqBwYTr6WIYY9uV
         /ngZQllLqv8zKQFSHHoyXFE9lQoKKD0JWywq+8xudnKmpI3rATs/Z07tqdsdwFjENcL4
         xyZ7mlODW4o/d5/o8GNr/pdIgHn6RFBv7EjxMQsBrw7GRYqC5gOATe317Hr8Sy7XlUO+
         QIdoal+cV+RkDAcaJjF/a3sBqXhnQL5Ib1AECUcRRDMuTyA/LKqt/HT4nkNfxJNgVEgj
         NcjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2qQvGefAL3tZBLWIdiPaSRZ11kwhfAk0FTUmJJmz+7E=;
        b=I8b4iaaVdR8U0b0JCrud8tbPvcSwqvu0f1UOW5erFqM0rEXropSjZm/DvDZNSEWmqs
         QyW9mQaSmwnCbx1rtX12+7kmXIg8ugWXZHQEd56PjCAVc7MCKsDxgzKvXujTeQd4GclZ
         7xEUnQ93pf5/srLA0Bn2jN3YTRnPlk7ITGYLmDKrdIU6YGyH3r5czgZnS+8sse4ErPM+
         g4ZWlDDAdKF8ngWf1zFdQkD3ZlQ1HRDa3kF4MYolwXmqvpI2sLs4owT/Dpe65ZZ6i63o
         KoKypDjMmAIRoNw4ZBwi10uXvkUlaiQ7ooR9LsnkWAWLxE/+NfF2UtFPzNgrFJ3CoM0X
         0WgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RQSnQoAL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id r21si696007ejo.0.2021.04.11.00.11.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 00:11:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RQSnQoAL;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id z1so11262125edb.8
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 00:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2qQvGefAL3tZBLWIdiPaSRZ11kwhfAk0FTUmJJmz+7E=;
        b=RQSnQoALgoCXIk9RjZ5W3aFKQkerS55uQa2t2nGSLXNLhsvtKU15ibjXcPJ2N73cE1
         H4xqS37sdGcIK3wJgyqBfhHOc/C2KiD6qM8XCM8k3NthZPRgwpbKBBKEFR+PfkYKtwfl
         uzokBoRcFQZ2ObHxxZ081SOQxCj2Qsa0exxnRyBJvuwc8Gn6PBJwzxKvWCIAsaxpohwB
         l7n6WvJOYtnRmTqWRou5dNvTSMB4QOvuwb5WMaEWvY9RdMs+NORtpLGF2XIq9VEmHkJF
         VML3hwHAedqqNKKW0md8GtGK1TiY9zllV0DHbXAYl57qNXQPU/DeHZyvnIEKeG7nXOda
         h0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2qQvGefAL3tZBLWIdiPaSRZ11kwhfAk0FTUmJJmz+7E=;
        b=BCn84uy3P7WUl3ReUnAQ2kqdD8bdJNnk046SVux7/g0ItPVw4qph28n/UepHFsOZ5P
         T3Ph4KCVzkuyIFM9D1NtaV+Krd7QxgM5WQhIdnHsWst+dShNVoe4ztuFLp3gZka0X7eO
         C2aYP3+E1UIUXtupBLR2I83+RRBZDB7NGacYLbetADhhpmAkTQ5aHjVzy0kwtmGYb6os
         5gqprlL7luzMxIya7l80jmGl3UrQGzq9ZVrNFgGRnCgrPY0+Yl4xU4XLA2Plt0/gO7fr
         4F5ieeXolH1i8/6dcJZcklhFHINJJSNMR2xUS4uh4yny860l9iPMI3JZWPfUyWmC7GgS
         an6Q==
X-Gm-Message-State: AOAM533+QLIWmLUyiyKkDiMHl3u3k7wWOnQtGUV7P/7VSHQANrqxnZ2I
	UBaf9WbES4caMkr8wXL2bMk=
X-Received: by 2002:a50:eb8f:: with SMTP id y15mr24682645edr.115.1618125105440;
        Sun, 11 Apr 2021 00:11:45 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id j7sm4199225edv.40.2021.04.11.00.11.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 00:11:44 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/5] staging: rtl8723bs: Change
Date: Sun, 11 Apr 2021 09:11:43 +0200
Message-ID: <3154849.IkRRYng9eG@localhost.localdomain>
In-Reply-To: <YHKZlqFy15QC9Mzz@kroah.com>
References: <20210410150008.5460-1-fmdefrancesco@gmail.com> <YHKZlqFy15QC9Mzz@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, April 11, 2021 8:39:18 AM CEST Greg KH wrote:
> On Sat, Apr 10, 2021 at 05:00:03PM +0200, Fabio M. De Francesco wrote:
> > Remove camelcase, correct misspelled words in comments, remove an
> > unused
> > variable, change the type of a variable and its use, change comparisons
> > with 'true' in controlling expressions.
> > 
> > Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.
> 
> The subject line above is very odd :(
>
True. I've just read the output of git format in /tmp and noticed that the 
line with the "subject" was broken in two different one. I think I had 
pressed return while editing.

I'm about to send that series again with v3.

In the while I noticed you sent a note to let me know that the you have  
added the patch titled "staging: rtl8723bs: core: Remove an unused 
variable" to your staging git tree. 

I think this could be a potential issue because the same patch is in the 
series that I have to send anew. I put that patch in the series because 
yesterday you wrote that the message with subject "Outreachy patches caught 
up on.", asking to rebase and resend.

However, I'm about to send v3 of this patchset. I have no idea whether or 
not you will have problems in applying that. If you have problems with it, 
please let me know.

Thanks,

Fabio





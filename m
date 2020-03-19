X-GM-THRID: 6805826308521590784
X-Received: by 2002:aa7:c0cd:: with SMTP id j13mr1428234edp.287.1584606186607;
        Thu, 19 Mar 2020 01:23:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:f293:: with SMTP id f19ls812192edm.9.gmail; Thu, 19 Mar
 2020 01:23:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtIQ4K3gWauV5MabA31Y3C1qAdLoNyV66UHgvFC+YS2y4e11lyYsqwAYv5ciqsNiMM85m0V
X-Received: by 2002:a05:6402:1cb4:: with SMTP id cz20mr1518200edb.227.1584606185500;
        Thu, 19 Mar 2020 01:23:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584606185; cv=none;
        d=google.com; s=arc-20160816;
        b=IwM1MR9wI2R4itd+Bf9FsEpD5O2XcNhC0u+Qj41xpmlIrh1ds54UVI7egpHhUys8hN
         CeLtT0wDBbgrc/uRluG4XaS3k41Lp8v+k2Upt2jKMh+ArwHQ005gi9bAFhUGY+bbg9tz
         ABK6LF/clrCDMqxB5fOI7njLHYSO6L/AClsPFBptbQ29QmiWuT2/zHKtcSjYW6QF/ncw
         en+6ggIuvfrI9yvMf61oh8RxALndqZl+BzqUgZRvZayoBZW5L/dWhu4g5X88sgMVwWmz
         iVmn4Fqn5QF2cjm4Q/Nc6Dk8Ks2MEuGDCZnGvHQ0MFxxZBXawIBQ3zEf2mtHXnz78x0n
         pskA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=c/DO+N/diY5PVkXzGEDoiJXQehNSy3kVafgwecoNNNA=;
        b=cwivYvOh/WAwnDBqzuPQbHf0e9xEvfzKA6b4Y9e9vC0ABVqddZzNHRRUIJtjExbqzQ
         Lf1l6Hqzqv5sprtNpN4YpfP2S+Q2gHUnzT5ctuyOjig6y/8Pj5wCY0ZHaJy5E51Hryjd
         4vzQoZUCAjc+sDqQfZRrtOW6Oii6HAu3d1W679/bFgXACA165AtTxpfe1ZNPn/Agyq61
         2wDKsGWQEhXBtSZp0kLJNpJJMVCZs2r7ynQ0mP2aPClnNiGpLBnE1HPCT10lOHUt72aM
         XdkTY3j78iHr/MPr+CeMxBCuXMC55CYUh9lRIscJUlIuK5KVcrj3mjT8ANcY1ALRlQPn
         2Xbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id cw13si83657edb.2.2020.03.19.01.23.05
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 01:23:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26039 invoked from network); 19 Mar 2020 08:23:01 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 08:23:01 -0000
Date: Thu, 19 Mar 2020 13:52:54 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
Message-ID: <20200319082249.GC1723@tulip.local>
References: <20200319080144.GA1723@tulip.local>
 <20200319080905.GA3489391@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319080905.GA3489391@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > Hi,
> > 
> > I posted patches on Saturday. But I did not got a msg from Greg
> > about they being accepted. Yesterday Greg posted that he has
> > seen all outreachy patches upto now. And if we do not get reply's
> > for the patches we should resend. So I resent it yesterday.
> 
> What specific patches did you submit that you did not get a response on?
> I do not see any, but I might have missed some.  What is the message id
> or subject lines?
> 
> thanks,
> 
> greg k-h
>

They are:

Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
Message-Id: <20200317233020.575-1-vkor@vkten.in>

Subject: [RESEND PATCH] staging: rtl8188eu: include: Correct a typo in a comment
Message-Id: <20200317233845.894-1-vkor@vkten.in>

Subject: [RESEND PATCH] staging: rtl8192u: ieee80211: Correct a typo in a comment
Message-Id: <20200317234252.1128-1-vkor@vkten.in>

Subject: [RESEND PATCH] staging: rtl8712: Correct a typo in a comment
Message-Id: <20200317234701.1383-1-vkor@vkten.in>

Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
Message-Id: <20200317235413.1656-1-vkor@vkten.in>

Subject: [PATCH v2] staging: unisys: Documentation: Correct a long line in doc
Message-Id: <20200318002938.2326-1-vkor@vkten.in>

Subject: [PATCH v5] staging: sm750fb: Fix of long line in makefile variable
Message-Id: <20200318005820.2983-1-vkor@vkten.in>

Subject: [PATCH v3] staging: rtl8712: Fix for long lines in Kconfig help
Message-Id: <20200318011856.3547-1-vkor@vkten.in>

Subject: [RESEND PATCH] staging: rtl8723bs: hal: Correct typos and long line comments
Message-Id: <20200318013414.3861-1-vkor@vkten.in>

Subject: [RESEND PATCH 00/10] Correction of typos and long lines of comments
Message-Id: <cover.1584514678.git.vkor@vkten.in>

Subject: [PATCH v2 0/4] Correction of typos in comments
Message-Id: <cover.1584517384.git.vkor@vkten.in>

Subject: [PATCH v2 0/7] Correction of typos in comments
Message-Id: <cover.1584519269.git.vkor@vkten.in>

Subject: [PATCH v2] staging: vc04_services: interface: vchi: Correct long lines and style of comments
Message-Id: <20200319005434.1453-1-vkor@vkten.in>

Regards,
Veera


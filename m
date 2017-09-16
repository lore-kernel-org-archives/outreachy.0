X-GM-THRID: 6466263123755008000
X-Received: by 10.129.160.130 with SMTP id x124mr15474807ywg.138.1505551169618;
        Sat, 16 Sep 2017 01:39:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.94 with SMTP id s91ls7892476ioe.35.gmail; Sat, 16 Sep
 2017 01:39:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBYcj+ethWx87p2SI3XRcEfUBuqgknV12UNVDq2wEkYwnPty2LlLhqDXqzbEUTetG3RdfXj
X-Received: by 10.129.154.17 with SMTP id r17mr18211050ywg.102.1505551168648;
        Sat, 16 Sep 2017 01:39:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505551168; cv=none;
        d=google.com; s=arc-20160816;
        b=KiZzfzOCYtvijb0uq9njBYHPwCx51JQfKp4VqSM9OKi5ivZTu985nQ96NWFQll/7TN
         f81cDANHoP7XHq4f3HpgQsOCsOaceqMKQs1wY9V9GhsvnnPMxB/CWXK1bjw/M/fJCE71
         sDzgNLqY0genEAYgnOUpIm0qHFoIFaKTM8FVOguMqbKZHv2RIS7VcV6tLVfKg3j6ZcTw
         hqWv4l1nSQ7vXb/hhWzbFhJSx9jA5n+mkN6y+9kLWzQo+j/vX/YpMNfTfAaiCL1Rk17Y
         lv7NUHF5HdkYknnjSXv/Y1w6taabUf++tjCDfNdHxWkAjEr5O2v5Rr64bek7IlfhPkKG
         eSmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:arc-authentication-results;
        bh=AdBvr1b6ql0xERLaBtZfmbhKIg/X9QQwyyxeDxWCOOA=;
        b=juDJmy47GBkd71LvRtpFjk/WbnwxA1PvwwOyA2GKu+mDCNALDo7qumAu5etfInopYI
         JfS8zTxD7qLZjjwFbHRfKyEGGY7QrZZ9E6cKX42mpO7ZkMRjS0mzyr5RmPdKVPbltyzo
         vNQxElhqTVNwWEq33ks6l9NqQ1RdZdz8KmW4oGPe0LpMnXZwf5H45PZi20NEw0ryHkvS
         JzUw7oT+PF5Rg4qGQPez4K+q3POp6gE4gd6tFzfEhKR7qtvpEZ5AZXzXDlxfd4JP+VuY
         /Z9BVcE58+NKFdqfrvqvBVe0LyLisM40zbhopKvTm2YVVbio+YBdMY9JkVyHopKbVOdr
         RvZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.244 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0244.hostedemail.com. [216.40.44.244])
        by gmr-mx.google.com with ESMTPS id z203si28979itc.3.2017.09.16.01.39.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 01:39:28 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.244 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.244;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.244 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id 175BD180A68A4;
	Sat, 16 Sep 2017 08:39:28 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::,RULES_HIT:41:355:379:541:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:4321:4605:5007:6119:10004:10400:10450:10455:10848:11026:11232:11473:11657:11658:11914:12043:12296:12663:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:19904:19999:21080:21433:21451:21627:30003:30012:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: bead15_185131da9b25a
X-Filterd-Recvd-Size: 2321
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Sat, 16 Sep 2017 08:39:26 +0000 (UTC)
Message-ID: <1505551165.14664.1.camel@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: add comment
 for struct mutex definition
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Aastha Gupta
	 <aastha.gupta4104@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>
Date: Sat, 16 Sep 2017 01:39:25 -0700
In-Reply-To: <alpine.DEB.2.20.1709161020120.2943@hadrien>
References: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com>
	 <alpine.DEB.2.20.1709160948260.2943@hadrien>
	 <CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL+RW-CXQE+U-oDFq2Q@mail.gmail.com>
	 <alpine.DEB.2.20.1709161020120.2943@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.6-1ubuntu1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sat, 2017-09-16 at 10:23 +0200, Julia Lawall wrote:
> On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > On Sat, Sep 16, 2017 at 1:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> > > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> > > 
> > > > This patch fixes following checkpatch.pl checks:
> > > > CHECK: struct mutex definition without comment
[]
> > > > diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
[]
> > > > @@ -122,7 +122,7 @@ struct most_dev {
> > > >       bool is_channel_healthy[MAX_NUM_ENDPOINTS];
> > > >       struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
> > > >       struct usb_anchor *busy_urbs;
> > > > -     struct mutex io_mutex;
> > > > +     struct mutex io_mutex; /* synchronize I/O with disconnect */
> > > 
> > > Why did you choose this comment?
> > > 
> > > julia
> > 
> > The use of this struct mutex was mentioned before in the code.
> 
> I see that it is just in the doc of the same structure.  I'm not sure that
> a double comment is needed in this case. I wonder if checkpatch
> should/could be extended to address this.

I think that's not feasible.

checkpatch is a patch context based check and wouldn't
necessarily know that the mutex is documented elsewhere.



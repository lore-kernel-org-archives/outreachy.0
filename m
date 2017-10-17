X-GM-THRID: 6477808984307793920
X-Received: by 10.28.145.11 with SMTP id t11mr498641wmd.0.1508244267418;
        Tue, 17 Oct 2017 05:44:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.93.130 with SMTP id r124ls287713wmb.12.gmail; Tue, 17 Oct
 2017 05:44:26 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+Q5KBwkaUjxfXvzau2fdJgZjGxlibtgs8iQ5kvyxqKvr+zfvmmxJkgFchYtaFs47+ayJr/o
X-Received: by 10.28.4.210 with SMTP id 201mr489741wme.19.1508244266912;
        Tue, 17 Oct 2017 05:44:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508244266; cv=none;
        d=google.com; s=arc-20160816;
        b=TofOXSIyTRZWlCy7V/i7dtfNSkPxUg7UkfaoD5VajFmBAz/7+C/Tduu0FpzZALVUUt
         kexKxfEWoI3vy1C5+7sYYzeELlL8e/ScBoxmvSwZeF6TyRPaXjWY+LKRoCWgIVjhKBSJ
         ps55qI5QXoqYeYc3zDs1SHb74Tfznnhurhl1SXgewR+2pkt5vO/aUlkDbT0lRQw28MkA
         uDd7oh8ZMnrfA6+AhMR9JivZh9YgeIVu5JS/8HAEsuOIsI4z5Hw8lP7PACN4cHrj/w1M
         9GnZdeglsACs5QATIPYmiptvJ99P0EoXv/VR50uMO5yigRUoQP8R/EN4z4SkwJoTUUHQ
         eb6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=eFdt8GrjlJGK+LcBNX6uOclJxRExHxs8wmb2aY8k090=;
        b=jpU1N6mHindL9ZV3UilUZqjES9/MranGZ9MPaPPW+4IdlnpQeb4GZ4EGmP8LF6emZ8
         c3dbk5g4nX6igfA8wyBszw61z6WBzQUeTWeEAHPeYDmEulIoMgKgfJvAYzi3AQmiygP0
         ppGUIxxzCOzTm9maajErm1e91rqVmI5x2htPXRrB9Cw0xpb0Ox9oaHsQabh0yE7+/cmu
         IZXzTaWpBMeV8Suai48wlCkitgN5gNgYmUmnwlhe773E71QIb+fbw71actgple5MEwQa
         BiqHWTrIEI2JerFP1ctGcDLm+ASIObCJVt4Nr0ZdvHcjd9PPhBCJ4aufZkvODfoP/ZWr
         YbzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Return-Path: <pneira@us.es>
Received: from mail.us.es (mail.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id e29si230226wrg.2.2017.10.17.05.44.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 05:44:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) client-ip=193.147.175.20;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of pneira@us.es designates 193.147.175.20 as permitted sender) smtp.mailfrom=pneira@us.es
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 164BA5230B
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:44:25 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 0756FDA86D
	for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 14:44:25 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id F10C8DA875; Tue, 17 Oct 2017 14:44:24 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	HEADER_FROM_DIFFERENT_DOMAINS,SMTPAUTH_US2,USER_IN_WHITELIST
	autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id D3B9FDA861;
	Tue, 17 Oct 2017 14:44:22 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Tue, 17 Oct 2017 14:44:22 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (129.166.216.87.static.jazztel.es [87.216.166.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id 99C0F40584D3;
	Tue, 17 Oct 2017 14:44:22 +0200 (CEST)
Date: Tue, 17 Oct 2017 14:44:21 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] tests: xlate: print tests passed and error for
 testfile argument
Message-ID: <20171017124421.GA20525@salvia>
References: <20171017092458.18672-1-harshasharmaiitr@gmail.com>
 <20171017112757.GA8578@salvia>
 <CANMOCy0HPn+0v62=-rBqZzLFq9V28VswQDeW2x-MDofXDCt+Eg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANMOCy0HPn+0v62=-rBqZzLFq9V28VswQDeW2x-MDofXDCt+Eg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Oct 17, 2017 at 06:11:20PM +0530, Harsha Sharma wrote:
> On Tue, Oct 17, 2017 at 4:57 PM, Pablo Neira Ayuso <pablo@netfilter.org> wrote:
> > On Tue, Oct 17, 2017 at 02:54:58PM +0530, Harsha Sharma wrote:
> >> Print tests passed with errors and warnings when run with only specified
> >> test file.
> >
> > I would expect this works like this, for consistency with other test
> > infrastructure we have:
> >
> > # python xlate-test.py extensions/libxt_ecn.txlate
> > Error: test file does not exist
> >
> > I can see here this works like this:
> >
> > # python xlate-test.py libxt_ecn.txlate
> >
> > But as said, it is counterintuitive. Would you revisit this patch?
> What I have tried to do int this patch is
> for e.g.
> 
> # sudo python xlate-test.py libxt_ecn.txlate
> will not result into any output as all tests are passed
> but with this patch
> # sudo python xlate-test.py libxt_ecn.txlate  (gives output)
> ## libxt_ecn
> Ok
> src: iptables-translate -A INPUT -m ecn --ecn-ip-ect 0
> res: nft add rule ip filter INPUT ip ecn not-ect counter
> 
> Ok
> src: iptables-translate -A INPUT -m ecn --ecn-ip-ect 1
> res: nft add rule ip filter INPUT ip ecn ect1 counter
> 
> which is expected output as one should get to know if the tests are passed
> or not .
>
> Thanks. Please let me know if this is expected output or not.

I see, thanks for explaining.

I would prefer you make this converge with the output of
iptables-test.py. It would be great if you can update the
xlate-tests.py so the output looks the same.

Thanks!

